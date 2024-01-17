using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Api.Models.Customer;
using SchemaBuilder.Api.Utils.Generators;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas;
using SchemaBuilder.Infrastruction.Repositories.WebsiteSections;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.WebsiteSections
{
    public class WebsiteSectionService : IWebsiteSectionService
    {
        private IWebsiteSectionRepository _websiteSectionRepository = null;
        private IWebsiteGroupSchemasRepository _websiteGroupSchemasRepository = null;

        public WebsiteSectionService(
            IWebsiteGroupSchemasRepository websiteGroupSchemasRepository, 
            IWebsiteSectionRepository websiteSectionRepository)
        {
            _websiteSectionRepository = websiteSectionRepository ?? throw new ArgumentNullException(nameof(websiteSectionRepository));
            _websiteGroupSchemasRepository = websiteGroupSchemasRepository ?? throw new ArgumentNullException(nameof(websiteGroupSchemasRepository));
        }

        public async Task<List<WebsiteSection>> GetWebsiteSections(WebsiteSectionFilter filter)
        {
            return await _websiteSectionRepository.Get(filter);
        }

        public async Task<List<CustomerDataSchema>> GetCatgegorySchemas(Guid categoryId)
        {
            var pagesFiler = new WebsiteSectionFilter
            {
                categoryId = categoryId
            };

            var pages = await _websiteSectionRepository.Get(pagesFiler);
            if (pages == null || !pages.Any())
            {
                // trow error, no item found with that id
            }

            var groupNames = string.Join(',', pages.Select(page => page.groupName).ToList());

            var websiteGroupSchemas = new WebsiteGroupSchemaFilter
            {
                groupNameList = groupNames
            };

            var websiteGroupSchema = await _websiteGroupSchemasRepository
                .getQuery(websiteGroupSchemas)
                .Include(webGrpSchema => webGrpSchema.schema)
                    .ThenInclude(schema => schema.properties)
                .Include(webGrpSchema => webGrpSchema.schema)
                    .ThenInclude(schema => schema.properties)
                        .ThenInclude(property => property.schemaDataType)
                            .ThenInclude(schema => schema.properties)
                .ToListAsync();

            var customerData = await CustomerDataGenerator.GetCatgegorySchemas(websiteGroupSchema);
            return customerData;
        }

        public async Task<List<WebsiteSection>> GetWebsiteSectionDtos(WebsiteSectionFilter filter)
        {
            return await _websiteSectionRepository.GetWebsiteSectionDtos(filter);
        }
        public async Task<int> GetCount(WebsiteSectionFilter filter)
        {
            return await _websiteSectionRepository.GetCount(filter);
        }

        public async Task AddWebsiteSection(WebsiteSection c)
        {
            await _websiteSectionRepository.Add(c);

        }

        public async Task EditWebsiteSection(WebsiteSection c)
        {
            await _websiteSectionRepository.Edit(c);
        }

        public async Task DeleteWebsiteSection(WebsiteSectionFilter filter)
        {
            await _websiteSectionRepository.Delete(filter);
        }


    }
}
