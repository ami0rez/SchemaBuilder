using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteSections
{
    public interface IWebsiteSectionRepository
    {
        Task Add(WebsiteSection c);
        Task Delete(WebsiteSectionFilter filter);
        Task Edit(WebsiteSection c);
        Task<List<WebsiteSection>> Get(WebsiteSectionFilter filter);
        Task<int> GetCount(WebsiteSectionFilter filter);
        Task<List<WebsiteSection>> GetWebsiteSectionDtos(WebsiteSectionFilter filter);
    }
}