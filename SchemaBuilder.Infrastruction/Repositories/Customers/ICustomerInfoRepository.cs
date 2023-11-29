using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.CustomerInfos
{
    public interface ICustomerInfoRepository
    {
        Task Add(CustomerInfo c);
        Task Delete(CustomerInfo c);
        Task Delete(Guid CustomerInfoId);
        Task Edit(CustomerInfo c);
        Task<List<CustomerInfo>> Get(CustomerInfoFilter filter);
        Task<int> GetCount(CustomerInfoFilter filter);
        Task<List<CustomerInfo>> GetDto(CustomerInfoFilter filter);
    }
}