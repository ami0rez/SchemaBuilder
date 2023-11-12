using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas
{
    public class WebsiteGroupSchemasRepository : CommonRepository, IWebsiteGroupSchemasRepository
    {

        private ApplicationDBContext _context = null;
        public WebsiteGroupSchemasRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }



        private IQueryable<WebsiteGroupSchema> getQuery(WebsiteGroupSchemaFilter filter)
        {
            var listofGroupNames = filter.groupNameList?.Split(',');
            var query = _context.WebsiteGroupSchemas.Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id) &&
                    e.groupName == (string.IsNullOrEmpty(filter.groupName) ? e.groupName : filter.groupName) &&
                    (listofGroupNames == null
                    || !listofGroupNames.Any()
                    || listofGroupNames.Contains(e.groupName)
                    )));

            return query;

        }

        public async Task<int> GetCount(WebsiteGroupSchemaFilter filter)
        {
            if (filter != null)
            {
                return await getQuery(filter).CountAsync();
            }
            else
                return 0;
        }

        public async Task<List<WebsiteGroupSchema>> Get(WebsiteGroupSchemaFilter filter)
        {


            if (filter != null)
            {


                var query = getQuery(filter);

                return await query.ToListAsync();

            }

            else
                return null;
        }

        public async Task Add(WebsiteGroupSchema c)
        {
            _context.WebsiteGroupSchemas.Add(c);
            await save(_context);

        }

        public async Task EditRange(IEnumerable<WebsiteGroupSchema> websiteGroupSchemas)
        {
            foreach (var websiteGroupSchema in websiteGroupSchemas)
            {
                _context.Entry(websiteGroupSchema).State = EntityState.Modified;
            }

            await save(_context);
        }

        public async Task Delete(WebsiteGroupSchemaFilter filter)
        {
            var list = await getQuery(filter).ToListAsync();
            if (list != null)
            {
                foreach (var c in list)
                {
                    _context.Entry(c).State = EntityState.Deleted;
                    await save(_context);
                }
            }
        }


    }
}
