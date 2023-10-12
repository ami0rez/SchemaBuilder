using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.Categories
{
    public interface ICategoryService
    {
        Task Add(Category c);
        Task AddRange(List<Category> a);
        Task Delete(Guid c);
        Task DeleteCategory(Category c);
        Task Edit(Category c);
        Task<List<Category>> Get(CategoryFilter filter);
        Task<int> GetCount(CategoryFilter filter);
        Task<List<Category>> GetDto(CategoryFilter filter);
    }
}