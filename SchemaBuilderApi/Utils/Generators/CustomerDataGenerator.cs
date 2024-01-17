using Newtonsoft.Json;
using SchemaBuilder.Api.Models.Customer;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;
using System.Collections.Generic;
using System.ComponentModel;
using System.Dynamic;

namespace SchemaBuilder.Api.Utils.Generators
{
    public class CustomerDataGenerator
    {

        static int limit = 100; // Set your desired depth limit
        static int depth = 0;
        static int jsonDepth = 0;

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

            var groupedWebGrpSchema = websiteGroupSchema.GroupBy(webGrpSchema => webGrpSchema.groupName).ToList();

            //foreach (var group in groupedWebGrpSchema)
            //{
            //    var pageId = customer.pages.First(page => page.groupName == group.Key).id;
            //    var page = await GneratePageWithFields(group, pageId);
            //    customerData.pages.Add(page);
            //}
            foreach (var page in customer.pages)
            {
                var group = groupedWebGrpSchema.First(groupSchema => groupSchema.Key == page.groupName);
                var pageSchema = await GneratePageWithFields(group, page);
                customerData.pages.Add(pageSchema);
            }

            return customerData;
        }

        /// <summary>
        /// Gnerate Customer Page With Fields from the group item
        /// </summary>
        /// <param name="group"></param>
        /// <returns></returns>
        private static async Task<CustomerDataPage> GneratePageWithFields(IGrouping<string, WebsiteGroupSchema> group, CustomerPage page)
        {
            var pageSchema = new CustomerDataPage
            {
                id = page.id,
                name = page.name,
                url = page.url,
                groupName = group.Key,
                schemaFields = new List<CustomerDataSchema>()
            };

            var webSiteGroupSchemaList = group.Where(webGrpSchema => webGrpSchema.visible && webGrpSchema.schema != null && webGrpSchema.schema.properties.Any());

            foreach (var webSiteGroupSchema in webSiteGroupSchemaList)
            {
                if (webSiteGroupSchema != null)
                {
                    var (fields, objects) = await GnerateFields(webSiteGroupSchema.schema);

                    depth = 0;
                    var schema = new CustomerDataSchema
                    {
                        id = webSiteGroupSchema.schemaId,
                        name = webSiteGroupSchema.schema.name,
                        fields = fields,
                        valueTemplate = objects
                    };
                    pageSchema.schemaFields.Add(schema);
                }
            }
            return pageSchema;
        }

        /// <summary>
        /// Generate Catgegory Schemas
        /// </summary>
        /// <param name="customer"></param>
        /// <param name="websiteGroupSchema"></param>
        /// <returns></returns>
        public static async Task<List<CustomerDataSchema>> GetCatgegorySchemas(List<WebsiteGroupSchema> websiteGroupSchemaList)
        {
            List<CustomerDataSchema> schemaFieldList = new List<CustomerDataSchema>();

            foreach (var websiteGroupSchema in websiteGroupSchemaList)
            {
                if (websiteGroupSchema != null && websiteGroupSchema.visible && !schemaFieldList.Any(schema => schema.id == websiteGroupSchema.schemaId))
                {
                    var (fields, objects) = await GnerateFields(websiteGroupSchema.schema);
                    depth = 0;
                    var schema = new CustomerDataSchema
                    {
                        id = websiteGroupSchema.schemaId,
                        name = websiteGroupSchema.schema.name,
                        fields = fields
                    };
                    schemaFieldList.Add(schema);
                }
            }

            return schemaFieldList;
        }

        /// <summary>
        /// Gnerate Fields from a schema
        /// </summary>
        /// <param name="schema"></param>
        /// <returns></returns>
        private static async Task<(List<CustomerDataField>, dynamic)> GnerateFields(Schema schema)
        {
            depth++;

            var fields = new List<CustomerDataField>();
            dynamic dynamicObject = new ExpandoObject();

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
                field.datatype = property.datatype;

                if (property.datatype == Datatype.schema && depth < limit)
                {
                    field.schemaRefId = property.schemaDataTypeId.Value;
                    if (property.schemaDataType != null)
                    {
                        var (nestedFields, nestedObject) = await GnerateFields(property.schemaDataType);
                        field.schemaRef = new CustomerDataSchemaField
                        {
                            id = property.schemaDataType.id,
                            name = property.schemaDataType.name,
                            datatype = property.datatype,
                            fields = nestedFields
                        };
                        ((IDictionary<string, object>)dynamicObject)[field.name] = nestedObject;
                    }
                }
                else
                {
                    string dataType = field.datatype.ToString();
                    ((IDictionary<string, object>)dynamicObject)[field.name] = dataType;
                }
                fields.Add(field);
            }
            return (fields, dynamicObject);
        }
    }
}
