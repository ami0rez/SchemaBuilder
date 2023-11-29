using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories.CustomerInfos
{
    public class CustomerInfoRepository : CommonRepository, ICustomerInfoRepository
    {
        private ApplicationDBContext _context = null;
        public CustomerInfoRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }


        private async Task<IQueryable<CustomerInfo>> getCustomerInfoQuery(CustomerInfoFilter filter)
        {
            var flagList = new List<string>();

            var subcategory = false;

            var subs = new List<Guid>();

            return _context.Customers
                .Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id)));
        }



        public async Task<List<CustomerInfo>> Get(CustomerInfoFilter filter)
        {
            if (filter != null)
            {
                var customers = await (await getCustomerInfoQuery(filter)).ToListAsync();
                return customers;
            }
            else
                return null;
        }

        public async Task<List<CustomerInfo>> GetDto(CustomerInfoFilter filter)
        {
            if (filter == null)
                return null;

            IQueryable<CustomerInfo> query = null;

            query = (await getCustomerInfoQuery(filter));

            var customers = await query.ToListAsync();
            return customers;


        }

        public async Task<int> GetCount(CustomerInfoFilter filter)
        {
            if (filter != null)
            {
                return await (await getCustomerInfoQuery(filter)).CountAsync();
            }
            else
                return 0;
        }

        internal async Task AddRange(List<CustomerInfo> a)
        {
            foreach (var c in a)
            {
                _context.Customers.Add(c);
                await save(_context);
            }
        }
        public async Task Add(CustomerInfo c)
        {
            _context.Customers.Add(c);
            await save(_context);
        }

        public async Task Edit(CustomerInfo c)
        {
            _context.Entry(c).State = EntityState.Modified;

            await save(_context);
        }
        public async Task Delete(Guid CustomerInfoId)
        {

            var c = await _context.Customers.Where(e => e.id == CustomerInfoId).FirstOrDefaultAsync();
            if (c != null)
            {
                await Delete(c);
            }
            await save(_context);
        }
        public async Task Delete(CustomerInfo c)
        {
            _context.Entry(c).State = EntityState.Deleted;
            await save(_context);
        }

    }
}
