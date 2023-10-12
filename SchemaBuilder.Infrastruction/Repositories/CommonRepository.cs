using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;
using System.Linq;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories
{
    public class CommonRepository
    {
        protected void Filtering(Paging filter, ref IQueryable<object> query)
        {

            if (filter.orderBy.HasValue)
            {
                if (filter.orderBy.Value == OrderBy.ascending)
                    query = query.OrderBy(filter.orderField + " asc");
                else
                    query = query.OrderBy(filter.orderField + " desc");
            }
            if (filter.pageNumber.HasValue)
            {
                query = query.Skip(filter.limit.Value * (filter.pageNumber.Value - 1));
            }
            if (filter.limit.HasValue)
            {
                query = query.Take(filter.limit.Value);
            }
        }




        protected async Task save(ApplicationDBContext _context)
        {
            bool saveFailed;
            do
            {
                saveFailed = false;

                try
                {
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException ex)
                {
                    saveFailed = true;
                    var entry = ex.Entries.Single();
                    entry.OriginalValues.SetValues(entry.GetDatabaseValues());
                }

            } while (saveFailed);
        }
    }
}
