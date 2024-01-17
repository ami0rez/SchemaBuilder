using SchemaBuilder.Api.Models.Customer;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.WebsiteSections
{
    public interface IWebsiteSectionService
    {
        Task AddWebsiteSection(WebsiteSection c);
        Task DeleteWebsiteSection(WebsiteSectionFilter filter);
        Task EditWebsiteSection(WebsiteSection c);
        Task<int> GetCount(WebsiteSectionFilter filter);
        Task<List<WebsiteSection>> GetWebsiteSectionDtos(WebsiteSectionFilter filter);
        Task<List<WebsiteSection>> GetWebsiteSections(WebsiteSectionFilter filter);
        Task<List<CustomerDataSchema>> GetCatgegorySchemas(Guid categoryId);
    }
}