using Microsoft.AspNetCore.Mvc;
using SlickyCommonLibrary.DomainUI;
using SchemaBuilder.Api.Services.Categories;
using SchemaBuilder.Infrastruction.Data.Models;

namespace CategoryBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class CategoryController : ControllerBase
    {
        private ICategoryService _schemaService;

        public CategoryController(ICategoryService schemaService)
        {
            _schemaService = schemaService ?? throw new ArgumentNullException(nameof(schemaService));
        }


        [HttpGet]
        public async Task<ActionResult> Get([FromQuery] CategoryFilter filter)
        {
            return Ok(await _schemaService.Get(filter));
        }


        [HttpPost]
        public async Task<ActionResult> Post([FromBody] Category a)
        {
            await _schemaService.Add(a).ConfigureAwait(false);
            return Ok();
        }

        [HttpPut]
        public async Task<ActionResult> Put([FromBody] Category a)
        {
            await _schemaService.Edit(a);
            return Ok();
        }

        [HttpDelete]
        public async Task<ActionResult> DeleteCategory([FromQuery] CategoryFilter filter)
        {
            if (filter.id.HasValue)
            {
                try
                {
                    await _schemaService.Delete(filter.id.Value);
                    return Ok();
                }
                catch
                {
                    return BadRequest("Category was not deleted. You can not delete this Category");
                }
            }

            return BadRequest();
        }

    }
}