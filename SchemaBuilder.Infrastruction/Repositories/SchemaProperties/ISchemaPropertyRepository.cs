using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilder.Infrastruction.Repositories.WebsiteSections
{
    public interface ISchemaPropertyRepository
    {
        Task Edit(SchemaProperty schemaProperty);
        Task EditRange(IEnumerable<SchemaProperty> schemaProperties);
    }
}