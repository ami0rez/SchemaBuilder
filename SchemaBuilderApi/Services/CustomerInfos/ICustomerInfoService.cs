using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.CustomerInfos
{
    public interface ICustomerInfoService
    {
        Task Add(CustomerInfo c);
        Task Delete(Guid c);
        Task DeleteCustomerInfo(CustomerInfo c);
        Task Edit(CustomerInfo c);
        Task<List<CustomerInfo>> Get(CustomerInfoFilter filter);
        Task<int> GetCount(CustomerInfoFilter filter);
        Task<List<CustomerInfo>> GetDto(CustomerInfoFilter filter);
    }
}