using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.WebsiteGroupSchemas
{
    public class WebsiteGroupSchemaService : IWebsiteGroupSchemaService
    {
        private IWebsiteGroupSchemasRepository _websiteGroupSchemaRepository = null;

        public WebsiteGroupSchemaService(IWebsiteGroupSchemasRepository websiteGroupSchemaRepository)
        {
            _websiteGroupSchemaRepository = websiteGroupSchemaRepository ?? throw new ArgumentNullException(nameof(websiteGroupSchemaRepository));
        }

        public async Task<List<WebsiteGroupSchema>> GetWebsiteGroupSchemas(WebsiteGroupSchemaFilter filter)
        {
            return await _websiteGroupSchemaRepository.Get(filter);
        }


        public async Task<int> GetCount(WebsiteGroupSchemaFilter filter)
        {
            return await _websiteGroupSchemaRepository.GetCount(filter);
        }

        public async Task AddWebsiteGroupSchema(WebsiteGroupSchema c)
        {
            await _websiteGroupSchemaRepository.Add(c);

        }

        public async Task EditRange(IEnumerable<WebsiteGroupSchema> c)
        {
            await _websiteGroupSchemaRepository.EditRange(c);
        }

        public async Task DeleteWebsiteGroupSchema(WebsiteGroupSchemaFilter filter)
        {
            await _websiteGroupSchemaRepository.Delete(filter);
        }


    }
}
