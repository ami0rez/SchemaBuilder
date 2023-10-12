using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas;
using SlickyCommonLibrary.DomainUI;
using System.Linq;

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

        public async Task UpdateWebsiteGroupsForSchemas(IEnumerable<WebsiteGroupSchema> websiteGroupSchemas)
        {
            var groups = websiteGroupSchemas.GroupBy(schema => schema.groupName);
            foreach (var group in groups) { 
                await _websiteGroupSchemaRepository.Delete(new WebsiteGroupSchemaFilter { groupName = group.Key });
                foreach (var item in group)
                {
                    await _websiteGroupSchemaRepository.Add(item);
                }
            }   

        }

        public async Task DeleteWebsiteGroupSchema(WebsiteGroupSchemaFilter filter)
        {
            await _websiteGroupSchemaRepository.Delete(filter);
        }


    }
}
