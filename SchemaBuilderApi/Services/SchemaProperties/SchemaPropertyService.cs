using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.WebsiteSections;

namespace SchemaBuilder.Api.Services.SchemaPropertys
{
    public class SchemaPropertyService : ISchemaPropertyService
    {
        private ISchemaPropertyRepository _schemaPropertiesRepository = null;

        public SchemaPropertyService(ISchemaPropertyRepository schemaPropertiesRepository)
        {
            _schemaPropertiesRepository = schemaPropertiesRepository ?? throw new ArgumentNullException(nameof(schemaPropertiesRepository));
        }


        public async Task Edit(SchemaProperty c)
        {
            await _schemaPropertiesRepository.Edit(c);
        }


        public async Task EditRange(IEnumerable<SchemaProperty> schemaProperties)
        {
            await _schemaPropertiesRepository.EditRange(schemaProperties);
        }
    }
}
