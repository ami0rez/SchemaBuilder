using Newtonsoft.Json;
using SchemaBuilder.Api.Models.Customer;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.Enums;
using System.Collections.Generic;

namespace SchemaBuilder.Api.Utils.Generators
{
    public class CustomerDataGenerator
    {

        /// <summary>
        /// Generate Customer Json Data
        /// </summary>
        /// <param name="customer"></param>
        /// <param name="websiteGroupSchema"></param>
        /// <returns></returns>
        public static async Task<string> GenerateCustomerJson(CustomerInfo customer, List<WebsiteGroupSchema> websiteGroupSchema)
        {
            var customerData = await GenerateCustomerData(customer, websiteGroupSchema);
            var customerJson = JsonConvert.SerializeObject(customerData);
            return customerJson;
        }

        /// <summary>
        /// Generate Customer Json Data
        /// </summary>
        /// <param name="customer"></param>
        /// <param name="websiteGroupSchema"></param>
        /// <returns></returns>
        public static async Task<CustomerData> GenerateCustomerData(CustomerInfo customer, List<WebsiteGroupSchema> websiteGroupSchema)
        {
            var customerData = new CustomerData
            {
                customerId = customer.id,
                pages = new List<CustomerDataPage>()
            };
            customerData.categoryId = customer.businessCategoryId;
            customerData.categoryName = customer.businessName;

            if (!customer.pages.Any())
            {
                return customerData;
            }

            var groupNames = string.Join(',', customer.pages.Select(page => page.name).ToList());

            var groupedWebGrpSchema = websiteGroupSchema.GroupBy(webGrpSchema => webGrpSchema.groupName).ToList();

            foreach (var group in groupedWebGrpSchema)
            {
                var page = await GneratePageWithFields(group);
                customerData.pages.Add(page);
            }

            return customerData;
        }

        /// <summary>
        /// Gnerate Customer Page With Fields from the group item
        /// </summary>
        /// <param name="group"></param>
        /// <returns></returns>
        private static async Task<CustomerDataPage> GneratePageWithFields(IGrouping<string, WebsiteGroupSchema> group)
        {
            var page = new CustomerDataPage
            {
                groupName = group.Key,
                fields = new List<CustomerDataField>()
            };

            var webSiteGroupSchema = group.FirstOrDefault(webGrpSchema => webGrpSchema.schema != null && webGrpSchema.schema.properties.Any());

            if (webSiteGroupSchema != null)
            {
                page.fields = await GnerateFields(webSiteGroupSchema.schema);
            }

            return page;
        }

        /// <summary>
        /// Gnerate Fields from a schema
        /// </summary>
        /// <param name="schema"></param>
        /// <returns></returns>
        private static async Task<List<CustomerDataField>> GnerateFields(Schema schema)
        {
            var fields = new List<CustomerDataField>();

            foreach (var property in schema.properties)
            {
                var field = new CustomerDataField();
                field.id = property.id;
                field.name = property.name;
                field.value = "";

                if (property.datatype == Datatype.schema)
                {
                    field.schemaRefId = property.schemaDataTypeId.Value;
                    if (property.schemaDataType != null)
                    {
                        field.schemaRef = new CustomerDataSchemaField
                        {
                            id = property.schemaDataType.id,
                            name = property.schemaDataType.name,
                            fields = await GnerateFields(property.schemaDataType)
                        };
                    }
                }
                fields.Add(field);
            }
            return fields;
        }
    }
}
