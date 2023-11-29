using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SchemaBuilder.Infrastruction.Repositories.CustomerInfos;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.CustomerInfos
{
    public class CustomerInfoService : ICustomerInfoService
    {
        private ICustomerInfoRepository _customerInfoRepository = null;

        public CustomerInfoService(ICustomerInfoRepository CcstomerInfoRepository)
        {
            _customerInfoRepository = CcstomerInfoRepository;
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
