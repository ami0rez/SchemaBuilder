using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.WebsiteGroupSchemas
{
    public interface IWebsiteGroupSchemaService
    {
        Task AddWebsiteGroupSchema(WebsiteGroupSchema c);
        Task DeleteWebsiteGroupSchema(WebsiteGroupSchemaFilter filter);
        Task EditRange(IEnumerable<WebsiteGroupSchema> c);
        Task<int> GetCount(WebsiteGroupSchemaFilter filter);
        Task<List<WebsiteGroupSchema>> GetWebsiteGroupSchemas(WebsiteGroupSchemaFilter filter);
    }
}