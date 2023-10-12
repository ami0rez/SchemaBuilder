using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories.Categories;
using SlickyCommonLibrary.DomainUI;

namespace SchemaBuilder.Api.Services.Categories
{
    public class CategoryService : ICategoryService
    {
        private ICategoryRepository _categoryRepository = null;

        public CategoryService(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }

        public async Task<List<Category>> Get(CategoryFilter filter)
        {
            return await _categoryRepository.Get(filter);
        }
        public async Task<List<Category>> GetDto(CategoryFilter filter)
        {
            return await _categoryRepository.GetDto(filter);
        }

        public async Task<int> GetCount(CategoryFilter filter)
        {
            return await _categoryRepository.GetCount(filter);
        }

        public async Task Add(Category c)
        {
            await _categoryRepository.Add(c);

        }

        public async Task Edit(Category c)
        {
            await _categoryRepository.Edit(c);
        }

        public async Task Delete(Guid c)
        {
            await _categoryRepository.Delete(c);
        }
        public async Task DeleteCategory(Category c)
        {
            await _categoryRepository.Delete(c);
        }

        public async Task AddRange(List<Category> a)
        {
            //await _categoryRepository.AddRange(a);
        }
    }
}
