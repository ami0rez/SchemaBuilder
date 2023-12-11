using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.CustomerJsons
{
    public interface ICustomerJsonRepository
    {
        Task Add(CustomerJson c);
        Task Delete(CustomerJson c);
        Task Delete(Guid CustomerJsonId);
        Task Edit(CustomerJson c);
        Task<List<CustomerJson>> Get(CustomerJsonFilter filter);
        Task<int> GetCount(CustomerJsonFilter filter);
        Task<List<CustomerJson>> GetDto(CustomerJsonFilter filter);
    }
}