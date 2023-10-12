using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SchemaBuilder.Api.Services;
using SchemaBuilder.Infrastruction.Data.Models;
using SchemaBuilder.Infrastruction.Repositories;
using SlickyCommonLibrary.DomainUI;
using System.Net;

namespace SchemaBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SchemaController : ControllerBase
    {
        private ISchemaService _schemaService;

        public SchemaController(ISchemaService schemaService)
        {
            _schemaService = schemaService ?? throw new ArgumentNullException(nameof(schemaService));
        }


        [HttpGet]
        public async Task<ActionResult> Get([FromQuery] SchemaFilter filter)
        {
            return Ok(await _schemaService.Get(filter));
        }

        [HttpPost]
        public async Task<ActionResult> Post([FromBody] Schema a)
        {

            await _schemaService.Add(a).ConfigureAwait(false);
            return Ok();

        }

        [HttpPut]
        public async Task<ActionResult> Put([FromBody] Schema a)
        {
            await _schemaService.Edit(a);
            return Ok();

        }

        [HttpDelete]
        public async Task<ActionResult> DeleteSchema([FromQuery] SchemaFilter filter)
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
                    return BadRequest("Schema was not deleted. You can not delete this Schema");
                }
            }

            return BadRequest();
        }

        [HttpDelete]
        [Route("api/DeleteAllSchemas")]
        public async Task<ActionResult> DeleteAllSchemas()
        {

            var filter = new SchemaFilter();
            var cores = await _schemaService.Get(filter);

            foreach (var c in cores)
            {
                await _schemaService.DeleteSchema(c);
            }
            return Ok();
        }




        [HttpPut]
        [Route("api/SchemaProperty")]
        public async Task<ActionResult> Put([FromBody] SchemaProperty a)
        {
            await _schemaService.Edit(a);

            return Ok();

        }
    }
}