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

        static int limit = 100; // Set your desired depth limit
        static int depth = 0;

        /// <summary>
        /// Generate Customer Json Data
        /// </summary>
        /// <param name="customer"></param>
        /// <param name="websiteGroupSchema"></param>
        /// <returns></returns>
        public static async Task<string> GenerateCustomerJson(CustomerInfo customer, List<WebsiteGroupSchema> websiteGroupSchema)
        {
            try
            {
                var customerData = await GenerateCustomerData(customer, websiteGroupSchema);
                var customerJson = JsonConvert.SerializeObject(customerData);
                return customerJson;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
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
                var pageId = customer.pages.First(page => page.name == group.Key).id;
                var page = await GneratePageWithFields(group, pageId);
                customerData.pages.Add(page);
            }

            return customerData;
        }

        /// <summary>
        /// Gnerate Customer Page With Fields from the group item
        /// </summary>
        /// <param name="group"></param>
        /// <returns></returns>
        private static async Task<CustomerDataPage> GneratePageWithFields(IGrouping<string, WebsiteGroupSchema> group, Guid pageId)
        {
            var page = new CustomerDataPage
            {
                id = pageId,
                groupName = group.Key,
                schemaFields = new List<CustomerDataSchema>()
            };

            var webSiteGroupSchemaList = group.Where(webGrpSchema => webGrpSchema.visible && webGrpSchema.schema != null && webGrpSchema.schema.properties.Any());

            foreach (var webSiteGroupSchema in webSiteGroupSchemaList)
            {
                if (webSiteGroupSchema != null)
                {
                    var schemaFields = await GnerateFields(webSiteGroupSchema.schema);
                    depth = 0;
                    var schema = new CustomerDataSchema
                    {
                        id = webSiteGroupSchema.schemaId,
                        name = webSiteGroupSchema.schema.name,
                        fields = schemaFields
                    };
                    page.schemaFields.Add(schema);
                }
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
            depth++;

            var fields = new List<CustomerDataField>();

            foreach (var property in schema.properties)
            {
                if (!property.visible)
                {
                    continue;
                }
                var field = new CustomerDataField();
                field.id = property.id;
                field.name = property.name;
                field.friendlyName = property.friendlyName;
                field.value = "";

                if (property.datatype == Datatype.schema && depth < limit)
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
