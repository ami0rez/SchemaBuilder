using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;
using SlickyCommonLibrary.Enums;
using System.Linq.Dynamic.Core;

namespace SchemaBuilder.Infrastruction.Repositories
{
    public class SchemaRepository : CommonRepository, ISchemaRepository
    {

        private ApplicationDBContext _context = null;
        public SchemaRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext;
        }


        private async Task<IQueryable<Schema>> getSchemaQuery(SchemaFilter filter)
        {

            var subs = new List<Guid>();

            var schemasQuery = _context.Schemas.AsQueryable();

            if (filter.showLevel1Properties.HasValue && filter.showLevel1Properties.Value)
            {
                schemasQuery = schemasQuery.Include(query => query.properties).AsQueryable();
            }
            
            return schemasQuery.Where(e => (
                    e.id == (filter.id.HasValue ? filter.id.Value : e.id) &&
                    e.parentId == (filter.parentId.HasValue ? (filter.parentId.Value) : ((filter.showNoParents.HasValue ? (filter.showNoParents.Value ? null : e.parentId) : e.parentId))) &&
                    e.master == (filter.master.HasValue ? filter.master.Value : e.master)
                    ));
        }

        public async Task<List<Schema>> Get(SchemaFilter filter)
        {
            if (filter != null)
            {
                var c = await (await getSchemaQuery(filter)).ToListAsync();

                return c;
            }
            else
                return null;
        }

        public async Task<List<Schema>> GetDto(SchemaFilter filter)
        {
            if (filter == null)
                return null;



            IQueryable<Schema> query = null;

            query = (await getSchemaQuery(filter));

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


            var c = await query.Select(x => new Schema()
            {
                id = x.id,
                name = x.name,
                parentId = x.parentId,
                properties = x.properties.Select(z => new SchemaProperty()
                {
                    id = z.id,
                    name = z.name,
                    datatype = z.datatype,
                    schemaDataTypeId = z.schemaDataTypeId,
                    schemaId = z.schemaId,
                    visible = z.visible,
                    friendlyName = z.friendlyName
                }).ToList()
            }).ToListAsync();


            if (c.Any() && c.Count() == 1 && (!filter.showLevel1Properties.HasValue || (filter.showLevel1Properties.HasValue && !filter.showLevel1Properties.Value)))
            {
                if (schemaIds == null)
                    schemaIds = new List<Guid>();
                schemaIds.Add(c.First().id);
                await getAllSchema(c.First());
                schemaIds.Remove(c.First().id);
            }

            return c;
        }

        private List<Guid> schemaIds;
        public async Task getAllSchema(Schema parent)
        {
            if (parent.properties.Any(x => x.datatype == Datatype.schema))
            {
                foreach (var propertyDto in parent.properties.Where(x => x.datatype == Datatype.schema))
                {
                    if (!schemaIds.Contains(propertyDto.schemaId.HasValue? propertyDto.schemaId.Value : Guid.Empty))
                    {
                        var schemas = await GetDto(new SchemaFilter() { id = propertyDto.schemaId});
                        if (schemas.Any())
                            propertyDto.schema = schemas.First();
                    }
                }
            }

            return;

        }

        private async Task getLevel1Schema(Schema parent)
        {
            if (parent.properties.Any(x => x.datatype == Datatype.schema))
            {
                foreach (var propertyDto in parent.properties.Where(x => x.datatype == Datatype.schema))
                {
                    if (!schemaIds.Contains(propertyDto.schemaId.HasValue ? propertyDto.schemaId.Value : Guid.Empty))
                    {
                        var schemas = await GetDto(new SchemaFilter() { id = propertyDto.schemaId });
                        if (schemas.Any())
                            propertyDto.schema = schemas.First();
                    }
                }
            }
            schemaIds.Remove(parent.id);
            return;

        }
        public async Task<int> GetCount(SchemaFilter filter)
        {
            if (filter != null)
            {
                return await (await getSchemaQuery(filter)).CountAsync();
            }
            else
                return 0;
        }




        public async Task Add(Schema c)
        {
            _context.Schemas.Add(c);
            await save(_context);

        }

        public async Task Edit(Schema c)
        {
            _context.Entry(c).State = EntityState.Modified;

            await save(_context);
        }

        public async Task Edit(SchemaProperty c)
        {
            _context.Entry(c).State = EntityState.Modified;
            await save(_context);
        }
        public async Task Delete(Guid SchemaId)
        {

            var c = await _context.Schemas.Where(e => e.id == SchemaId).FirstOrDefaultAsync();
            if (c != null)
            {
                await Delete(c);
            }
            await save(_context);
        }
        public async Task Delete(Schema c)
        {
            _context.Entry(c).State = EntityState.Deleted;
            await save(_context);
        }

    }
}