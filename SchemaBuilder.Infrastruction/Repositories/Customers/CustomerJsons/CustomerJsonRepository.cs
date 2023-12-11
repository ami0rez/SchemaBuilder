using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories.CustomerJsons
{
    public class CustomerJsonRepository : CommonRepository, ICustomerJsonRepository
    {
        private ApplicationDBContext _context = null;
        public CustomerJsonRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }


        private async Task<IQueryable<CustomerJson>> getCustomerJsonQuery(CustomerJsonFilter filter)
        {
            var flagList = new List<string>();

            var subcategory = false;

            var subs = new List<Guid>();

            return _context.CustomerJsons
                .Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id)));
        }



        public async Task<List<CustomerJson>> Get(CustomerJsonFilter filter)
        {
            if (filter != null)
            {
                var customers = await (await getCustomerJsonQuery(filter)).ToListAsync();
                return customers;
            }
            else
                return null;
        }

        public async Task<List<CustomerJson>> GetDto(CustomerJsonFilter filter)
        {
            if (filter == null)
                return null;

            IQueryable<CustomerJson> query = null;

            query = (await getCustomerJsonQuery(filter));

            var customers = await query.ToListAsync();
            return customers;


        }

        public async Task<int> GetCount(CustomerJsonFilter filter)
        {
            if (filter != null)
            {
                return await (await getCustomerJsonQuery(filter)).CountAsync();
            }
            else
                return 0;
        }

        internal async Task AddRange(List<CustomerJson> a)
        {
            foreach (var c in a)
            {
                _context.CustomerJsons.Add(c);
                await save(_context);
            }
        }
        public async Task Add(CustomerJson c)
        {
            _context.CustomerJsons.Add(c);
            await save(_context);
        }

        public async Task Edit(CustomerJson c)
        {
            _context.Entry(c).State = EntityState.Modified;

            await save(_context);
        }
        public async Task Delete(Guid CustomerJsonId)
        {

            var c = await _context.CustomerJsons.Where(e => e.id == CustomerJsonId).FirstOrDefaultAsync();
            if (c != null)
            {
                await Delete(c);
            }
            await save(_context);
        }
        public async Task Delete(CustomerJson c)
        {
            _context.Entry(c).State = EntityState.Deleted;
            await save(_context);
        }

    }
}
