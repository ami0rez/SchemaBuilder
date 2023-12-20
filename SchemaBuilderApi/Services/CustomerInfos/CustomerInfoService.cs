using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using SchemaBuilder.Api.Models.Customer;
using SchemaBuilder.Api.Services.AzureQuee;
using SchemaBuilder.Api.Utils.Generators;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SchemaBuilder.Infrastruction.Repositories.CustomerInfos;
using SchemaBuilder.Infrastruction.Repositories.CustomerJsons;
using SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;

namespace SchemaBuilder.Api.Services.CustomerInfos
{
    public class CustomerInfoService : ICustomerInfoService
    {
        private ICustomerInfoRepository _customerInfoRepository = null;
        private IWebsiteGroupSchemasRepository _websiteGroupSchemasRepository = null;
        private ICustomerJsonRepository _customerJsonRepository = null;
        private IQueueService _queueService = null;

        public CustomerInfoService(
            ICustomerInfoRepository customerInfoRepository,
            IWebsiteGroupSchemasRepository websiteGroupSchemasRepository,
            ICustomerJsonRepository customerJsonRepository,
            IQueueService queueService
            )
        {
            _customerInfoRepository = customerInfoRepository ?? throw new ArgumentNullException(nameof(customerInfoRepository));
            _websiteGroupSchemasRepository = websiteGroupSchemasRepository ?? throw new ArgumentNullException(nameof(websiteGroupSchemasRepository));
            _customerJsonRepository = customerJsonRepository ?? throw new ArgumentNullException(nameof(customerJsonRepository));
            _queueService = queueService ?? throw new ArgumentNullException(nameof(queueService));
        }

        public async Task<List<CustomerInfo>> Get(CustomerInfoFilter filter)
        {
            return await _customerInfoRepository.Get(filter);
        }
        public async Task<List<CustomerInfo>> GetDto(CustomerInfoFilter filter)
        {
            return await _customerInfoRepository.GetDto(filter);
        }

        public async Task<int> GetCount(CustomerInfoFilter filter)
        {
            return await _customerInfoRepository.GetCount(filter);
        }

        public async Task Add(CustomerInfo c)
        {
            await _customerInfoRepository.Add(c);
            await SendQueueMessage(c);

        }

        /// <summary>
        /// Sends a message to the queue based on customer information.
        /// </summary>
        /// <param name="customerInfo">The customer information to include in the queue message.</param>
        /// <returns>A task representing the asynchronous operation.</returns>
        public async Task SendQueueMessage(CustomerInfo customerInfo)
        {
            // Create an anonymous object with selected customer information for the queue message
            var queueMessageObject = new
            {
                customerId = customerInfo.id,
                website = customerInfo.website
            };

            // Serialize the anonymous object to a JSON string
            var queueMessageString = JsonConvert.SerializeObject(queueMessageObject);

            // Enqueue the JSON string message to the queue
            await _queueService.EnqueueMessageAsync(queueMessageString);
        }

        public async Task GenerateCustomerJson(Guid customerId)
        {
            var jsonContent = await GetCustomerJson(customerId);

            var customerJson = new CustomerJson
            {
                customerId = customerId,
                jsonTemplate = jsonContent,
                status = CustomerProcessingStatus.notProcessed
            };

            await _customerJsonRepository.Add(customerJson);
        }

        public async Task<List<CustomerJson>> getCustomerJson(Guid customerId)
        {
            var customerjsonfilter = new CustomerJsonFilter
            {
                customerId = customerId
            };
            var customerJson = await _customerJsonRepository.Get(customerjsonfilter);
            return customerJson;
        }

        private async Task<string> GetCustomerJson(Guid customerId)
        {

            var filter = new CustomerInfoFilter
            {
                id = customerId
            };
            var customers = await _customerInfoRepository.Get(filter);
            if (customers == null || !customers.Any())
            {
                // trow error, no item found with that id
            }
            var customer = customers[0];


            var groupNames = string.Join(',', customer.pages.Select(page => page.name).ToList());

            var websiteGroupSchemas = new WebsiteGroupSchemaFilter
            {
                groupNameList = groupNames
            };

            var websiteGroupSchema = await _websiteGroupSchemasRepository
                .getQuery(websiteGroupSchemas)
                .Include(webGrpSchema => webGrpSchema.schema)
                    .ThenInclude(schema => schema.properties)
                .Include(webGrpSchema => webGrpSchema.schema)
                    .ThenInclude(schema => schema.properties)
                        .ThenInclude(property => property.schemaDataType)
                            .ThenInclude(schema => schema.properties)
                .ToListAsync();

            var customerData = await CustomerDataGenerator.GenerateCustomerJson(customer, websiteGroupSchema);
            return customerData;
        }



        public async Task Edit(CustomerInfo c)
        {
            await _customerInfoRepository.Edit(c);
        }

        public async Task Delete(Guid c)
        {
            await _customerInfoRepository.Delete(c);
        }
        public async Task DeleteCustomerInfo(CustomerInfo c)
        {
            await _customerInfoRepository.Delete(c);
        }
    }
}
