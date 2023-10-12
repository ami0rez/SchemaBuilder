using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilder.Api.Services.SchemaPropertys
{
    public interface ISchemaPropertyService
    {
        Task Edit(SchemaProperty c);
        Task EditRange(IEnumerable<SchemaProperty> schemaProperties);
    }
}