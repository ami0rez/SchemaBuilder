using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.WebsiteSections;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.WebsiteSections
{
    public class WebsiteSectionService : IWebsiteSectionService
    {
        private IWebsiteSectionRepository _websiteSectionRepository = null;

        public WebsiteSectionService(IWebsiteSectionRepository websiteSectionRepository)
        {
            _websiteSectionRepository = websiteSectionRepository;
        }

        public async Task<List<WebsiteSection>> GetWebsiteSections(WebsiteSectionFilter filter)
        {
            return await _websiteSectionRepository.Get(filter);
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
