using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories.Categories
{
    public class CategoryRepository : CommonRepository, ICategoryRepository
    {
        private ApplicationDBContext _context = null;
        public CategoryRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }


        private async Task<IQueryable<Category>> getCategoryQuery(CategoryFilter filter)
        {
            var flagList = new List<string>();
            if (filter.searchFlags != null)
                flagList = new List<string>(filter.searchFlags.Split(','));
            var subcategory = false;

            var subs = new List<Guid>();
            if (subcategory && filter.parentId.HasValue)
            {
                subs = await GetCategoryChildrenIds(filter.parentId.Value);
            }

            return _context.Categories
                .Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id)
                    &&
                      ((!string.IsNullOrEmpty(filter.name)) && (e.name.ToLower().Contains(filter.name.ToLower())) || (filter.name == null) == true) &&
                      ((subcategory && subs.Contains(e.id)) ||
                       (e.parentId == (filter.parentId.HasValue ? filter.parentId.Value : e.parentId) || e.id == (filter.parentId.HasValue ? filter.parentId.Value : e.parentId))
                      ) &&
                    e.parentId == (filter.showNoParents.HasValue ? (filter.showNoParents.Value ? null : e.parentId) : e.parentId)
                    ));
        }



        public async Task<List<Category>> Get(CategoryFilter filter)
        {
            if (filter != null)
            {
                var categories = await (await getCategoryQuery(filter)).ToListAsync();

                foreach (var item in categories)
                {
                    item.fullName = GetCategoryParents(item.id);
                    item.fullParentsIds = GetCategoryParentIds(item.id);
                }
                return categories;
            }
            else
                return null;
        }

        public async Task<List<Category>> GetDto(CategoryFilter filter)
        {
            if (filter == null)
                return null;



            IQueryable<Category> query = null;

            query = (await getCategoryQuery(filter));

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


            var categories = await query.ToListAsync();

            foreach (var item in categories)
            {
                item.fullName = GetCategoryParents(item.id);
            }
            return categories;


        }

        public async Task<int> GetCount(CategoryFilter filter)
        {
            if (filter != null)
            {
                return await (await getCategoryQuery(filter)).CountAsync();
            }
            else
                return 0;
        }

        private string GetCategoryParents(Guid id)
        {
            var me = _context.Categories.Where(e => e.id == id).FirstOrDefault();
            if (me.parentId.HasValue)
            {
                var name = _context.Categories.Where(e => e.id == me.parentId).FirstOrDefault().name;
                var parentId = _context.Categories.Where(e => e.id == me.parentId).FirstOrDefault().parentId;
                if (parentId.HasValue)
                    return GetCategoryParents(parentId.Value) + " / " + name + " / " + me.name;
                else
                    return name + " / " + me.name;
            }
            else
                return me.name;
        }
        private string GetCategoryParentIds(Guid id)
        {
            var me = _context.Categories.Where(e => e.id == id).FirstOrDefault();
            if (me.parentId.HasValue)
            {
                var name = _context.Categories.Where(e => e.id == me.parentId).FirstOrDefault().id;
                var parentId = _context.Categories.Where(e => e.id == me.parentId).FirstOrDefault().parentId;
                if (parentId.HasValue)
                    return GetCategoryParentIds(parentId.Value) + " / " + name.ToString() + " / " + me.name.ToString();
                else
                    return name.ToString() + " / " + me.name.ToString();
            }
            else
                return me.id.ToString();

        }

        private async Task<List<Guid>> GetCategoryChildrenIds(Guid id)
        {
            var childrenIds = new List<Guid>();
            var children = await _context.Categories.Where(e => e.parentId == id).Select(x => x.id).ToListAsync();
            childrenIds.AddRange(children);

            foreach (var child in children)
            {
                childrenIds.AddRange(await GetCategoryChildrenIds(child));
            }

            return childrenIds;


        }

        internal async Task AddRange(List<Category> a)
        {
            foreach (var c in a)
            {
                _context.Categories.Add(c);
                await save(_context);
            }
        }
        public async Task Add(Category c)
        {
            _context.Categories.Add(c);
            await save(_context);
        }

        public async Task Edit(Category c)
        {
            _context.Entry(c).State = EntityState.Modified;

            await save(_context);
        }
        public async Task Delete(Guid CategoryId)
        {

            var c = await _context.Categories.Where(e => e.id == CategoryId).FirstOrDefaultAsync();
            if (c != null)
            {
                await Delete(c);
            }
            await save(_context);
        }
        public async Task Delete(Category c)
        {
            _context.Entry(c).State = EntityState.Deleted;
            await save(_context);
        }

    }
}
