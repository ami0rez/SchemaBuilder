using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Infrastruction.Repositories.Categories
{
    public interface ICategoryRepository
    {
        Task Add(Category c);
        Task Delete(Category c);
        Task Delete(Guid CategoryId);
        Task Edit(Category c);
        Task<List<Category>> Get(CategoryFilter filter);
        Task<int> GetCount(CategoryFilter filter);
        Task<List<Category>> GetDto(CategoryFilter filter);
    }
}