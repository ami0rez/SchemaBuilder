using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteSections
{
    public class SchemaPropertyRepository : CommonRepository, ISchemaPropertyRepository
    {

        private ApplicationDBContext _context;
        public SchemaPropertyRepository(ApplicationDBContext dbContext)
        {
            _context = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
        }

        public async Task Edit(SchemaProperty schemaProperty)
        {
            _context.Entry(schemaProperty).State = EntityState.Modified;
            await save(_context);
        }

        public async Task EditRange(IEnumerable<SchemaProperty> schemaProperties)
        {
            foreach (var schemaProperty in schemaProperties)
            {
                _context.Entry(schemaProperty).State = EntityState.Modified;
            }
            await save(_context);
        }

    }
}
