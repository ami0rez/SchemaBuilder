using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories
{
    public interface ISchemaRepository
    {
        Task Add(Schema c);
        Task Delete(Guid SchemaId);
        Task Delete(Schema c);
        Task Edit(Schema c);
        Task Edit(SchemaProperty c);
        Task<List<Schema>> Get(SchemaFilter filter);
        Task getAllSchema(Schema parent);
        Task<int> GetCount(SchemaFilter filter);
        Task<List<Schema>> GetDto(SchemaFilter filter);
    }
}