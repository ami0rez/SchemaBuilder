using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services
{

    public class SchemaService : ISchemaService
    {
        private ISchemaRepository _schemaRepository = null;

        public SchemaService(ISchemaRepository schemaRepository)
        {
            _schemaRepository = schemaRepository;
        }

        public async Task<List<Schema>> Get(SchemaFilter filter)
        {
            return await _schemaRepository.Get(filter);
        }
        public async Task<List<Schema>> GetDto(SchemaFilter filter)
        {
            return await _schemaRepository.GetDto(filter);
        }

        public async Task<int> GetCount(SchemaFilter filter)
        {
            return await _schemaRepository.GetCount(filter);
        }

        public async Task Add(Schema c)
        {
            await _schemaRepository.Add(c);

        }

        public async Task Edit(Schema c)
        {
            await _schemaRepository.Edit(c);
        }
        public async Task Edit(SchemaProperty c)
        {
            await _schemaRepository.Edit(c);
        }

        public async Task Delete(Guid c)
        {
            await _schemaRepository.Delete(c);
        }
        public async Task DeleteSchema(Schema c)
        {
            await _schemaRepository.Delete(c);
        }

    }
}
