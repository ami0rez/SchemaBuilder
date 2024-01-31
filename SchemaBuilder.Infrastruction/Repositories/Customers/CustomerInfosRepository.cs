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
                .Include(customer => customer.pages)
                .Include(customer => customer.peopleDetected)
                .Include(customer => customer.serviceDetected)
                .Include(customer => customer.associatedBusinessDetected)
                .Include(customer => customer.socialMedia)
                .Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id)));
        }

        private async Task<IQueryable<CustomerInfo>> getCustomerInfoForList(CustomerInfoFilter filter)
        {
            var flagList = new List<string>();

            var subs = new List<Guid>();

            return _context.Customers
                .Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id)));
        }



        public async Task<List<CustomerInfo>> Get(CustomerInfoFilter filter)
        {
            if (filter != null)
            {
                if (filter.id.HasValue)
                {
                    var customers = await (await getCustomerInfoQuery(filter)).ToListAsync();
                    return customers;
                }
                else
                {
                    var customers = await (await getCustomerInfoForList(filter)).ToListAsync();
                    return customers;
                }
                
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
            var filter = new CustomerInfoFilter
            {
                id = c.id
            };

            var query = await getCustomerInfoQuery(filter);

            var customer = await query.FirstOrDefaultAsync();
            if (customer != null)
            {
                customer.businessName = c.businessName;
                customer.address = c.address;
                customer.website = c.website;
                customer.ownerName = c.ownerName;
                customer.phone = c.phone;
                customer.businessCategoryId = c.businessCategoryId;
                customer.businessCategoryName = c.businessCategoryName;
                customer.contentRichness = c.contentRichness;
                customer.productDetectedRange = c.productDetectedRange;
                customer.status = c.status;

                if (customer.socialMedia != null && customer.socialMedia.Any())
                {
                    _context.CustomerSocialMedias.RemoveRange(customer.socialMedia);
                    customer.socialMedia = new List<CustomerSocialMedia>();
                }
                //if(customer.peopleDetected != null && customer.peopleDetected.Any())
                //{
                //    _context.CustomerPeople.RemoveRange(customer.peopleDetected);
                //}
                //if(customer.serviceDetected != null && customer.serviceDetected.Any())
                //{
                //    _context.CustomerServices.RemoveRange(customer.serviceDetected);
                //}
                //if(customer.associatedBusinessDetected != null && customer.associatedBusinessDetected.Any())
                //{
                //    _context.CustomerAssociatedBusinesses.RemoveRange(customer.associatedBusinessDetected);
                //}

                if (c.socialMedia != null && c.socialMedia.Any())
                {
                    foreach (var sm in c.socialMedia)
                    {
                        sm.customerId = customer.id;
                    }
                    _context.CustomerSocialMedias.AddRange(c.socialMedia);
                }
                //if (c.peopleDetected != null && c.peopleDetected.Any())
                //{
                //    _context.CustomerPeople.RemoveRange(c.peopleDetected);
                //}
                //if (c.serviceDetected != null && c.serviceDetected.Any())
                //{
                //    _context.CustomerServices.RemoveRange(c.serviceDetected);
                //}
                //if (c.associatedBusinessDetected != null && c.associatedBusinessDetected.Any())
                //{
                //    _context.CustomerAssociatedBusinesses.RemoveRange(c.associatedBusinessDetected);
                //}
                _context.Update(customer);
                await _context.SaveChangesAsync();
            }
        }
        public async Task Delete(Guid CustomerInfoId)
        {
            var filter = new CustomerInfoFilter
            {
                id = CustomerInfoId
            };

            var query = await getCustomerInfoQuery(filter);

            var c = await query.FirstOrDefaultAsync();

            if (c != null)
            {
                if (c.socialMedia != null && c.socialMedia.Any())
                {
                    _context.CustomerSocialMedias.RemoveRange(c.socialMedia);
                }
                if (c.peopleDetected != null && c.peopleDetected.Any())
                {
                    _context.CustomerPeople.RemoveRange(c.peopleDetected);
                }
                if (c.serviceDetected != null && c.serviceDetected.Any())
                {
                    _context.CustomerServices.RemoveRange(c.serviceDetected);
                }
                if (c.associatedBusinessDetected != null && c.associatedBusinessDetected.Any())
                {
                    _context.CustomerAssociatedBusinesses.RemoveRange(c.associatedBusinessDetected);
                }
                if (c.pages != null && c.pages.Any())
                {
                    _context.CustomerPages.RemoveRange(c.pages);
                }
                var customerJson = await _context.CustomerJsons.FirstOrDefaultAsync(json => json.customerId == CustomerInfoId);

                await Delete(c);

                if (customerJson != null)
                {
                    _context.CustomerJsons.Remove(customerJson);
                }
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
