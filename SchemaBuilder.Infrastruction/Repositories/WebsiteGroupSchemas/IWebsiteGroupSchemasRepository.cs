using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas
{
    public interface IWebsiteGroupSchemasRepository
    {
        Task Add(WebsiteGroupSchema c);
        Task Delete(WebsiteGroupSchemaFilter filter);
        Task EditRange(IEnumerable<WebsiteGroupSchema> c);
        Task<List<WebsiteGroupSchema>> Get(WebsiteGroupSchemaFilter filter);
        Task<int> GetCount(WebsiteGroupSchemaFilter filter);
    }
}