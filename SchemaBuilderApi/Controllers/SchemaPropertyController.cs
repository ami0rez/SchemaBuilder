using Microsoft.AspNetCore.Mvc;
using SchemaBuilder.Api.Services.Categories;
using SchemaBuilder.Api.Services.SchemaPropertys;
using SchemaBuilder.Infrastruction.Data.Models;

namespace SchemaBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SchemaPropertyController : ControllerBase
    {
        private ISchemaPropertyService _schemaPropertyService;

        public SchemaPropertyController(ISchemaPropertyService schemaPropertyService)
        {
            _schemaPropertyService = schemaPropertyService ?? throw new ArgumentNullException(nameof(schemaPropertyService));
        }


        [HttpPut]
        public async Task<ActionResult> SchemaPropertyPost([FromBody] List<SchemaProperty> properties)
        {
            await _schemaPropertyService.EditRange(properties);
            return Ok();

        }
    }
}