using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services
{
    public interface ISchemaService
    {
        Task Add(Schema c);
        Task Delete(int c);
        Task DeleteSchema(Schema c);
        Task Edit(Schema c);
        Task Edit(SchemaProperty c);
        Task<List<Schema>> Get(SchemaFilter filter);
        Task<int> GetCount(SchemaFilter filter);
        Task<List<Schema>> GetDto(SchemaFilter filter);
    }
}