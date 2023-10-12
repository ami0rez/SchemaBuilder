using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteSections
{
    public class WebsiteSectionRepository : CommonRepository, IWebsiteSectionRepository
    {

        private ApplicationDBContext _context = null;
        public WebsiteSectionRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }




        private IQueryable<WebsiteSection> getQuery(WebsiteSectionFilter filter)
        {
            var categoryIdList = new List<Guid>();
            var categoryIds = filter.categoryIds?.Split(",");
            if(categoryIds != null && categoryIds.Any())
            {
                foreach (var categoryId in categoryIds)
                {
                    if (Guid.TryParse(categoryId, out Guid categoryGuid))
                    {
                        categoryIdList.Add(categoryGuid);
                    }
                }
            }

            var query = _context.WebsiteSections.Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id) &&
                    e.categoryID == (filter.categoryId.HasValue ? filter.categoryId.Value : e.categoryID) &&
                    (!categoryIdList.Any() || categoryIdList.Contains(e.categoryID)) &&
                    e.groupName == (string.IsNullOrEmpty(filter.groupName) ? e.groupName : filter.groupName)
                    ));
            return query;

        }

        public async Task<int> GetCount(WebsiteSectionFilter filter)
        {
            if (filter != null)
            {
                return await getQuery(filter).CountAsync();
            }
            else
                return 0;
        }
        public async Task<List<WebsiteSection>> GetWebsiteSectionDtos(WebsiteSectionFilter filter)
        {

            if (filter != null)
            {
                var query = getQuery(filter).Select(i => new WebsiteSection()
                {
                    id = i.id,
                    groupName = i.groupName,
                    categoryID = i.categoryID,
                    name = i.name


                });


                return await query.ToListAsync();

            }

            else
                return null;
        }

        public async Task<List<WebsiteSection>> Get(WebsiteSectionFilter filter)
        {


            if (filter != null)
            {


                var query = getQuery(filter);

                return await query.ToListAsync();

            }

            else
                return null;
        }

        public async Task Add(WebsiteSection c)
        {
            _context.WebsiteSections.Add(c);
            await save(_context);

        }

        public async Task Edit(WebsiteSection c)
        {
            _context.Entry(c).State = EntityState.Modified;

            await save(_context);
        }
        public async Task Delete(WebsiteSectionFilter filter)
        {
            var c = await getQuery(filter).FirstOrDefaultAsync();
            if (c != null)
            {
                _context.Entry(c).State = EntityState.Deleted;
                await save(_context);
            }
        }

    }
}
