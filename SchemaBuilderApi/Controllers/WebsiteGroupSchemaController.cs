using Microsoft.AspNetCore.Mvc;
using SlickyCommonLibrary.DomainUI;
using SchemaBuilder.Api.Services.Categories;
using SchemaBuilder.Infrastruction.Data.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using SchemaBuilder.Api.Services.WebsiteGroupSchemas;
using System.Net;

namespace CategoryBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class WebsiteGroupSchemaController : ControllerBase
    {
        private IWebsiteGroupSchemaService _websiteGroupSchemaService;

        public WebsiteGroupSchemaController(IWebsiteGroupSchemaService websiteGroupSchemaService)
        {
            _websiteGroupSchemaService = websiteGroupSchemaService ?? throw new ArgumentNullException(nameof(websiteGroupSchemaService));
        }


        [HttpGet]
        public async Task<ActionResult> Get([FromQuery] WebsiteGroupSchemaFilter filter)
        {
            return Ok(await _websiteGroupSchemaService.GetWebsiteGroupSchemas(filter));
        }


        [HttpPost]
        public async Task<ActionResult> Post([FromBody] WebsiteGroupSchema b)
        {
            await _websiteGroupSchemaService.AddWebsiteGroupSchema(b).ConfigureAwait(false);
            return Ok();

        }

        [HttpPut]
        public async Task<ActionResult> Put([FromBody] IEnumerable<WebsiteGroupSchema> b)
        {
            await _websiteGroupSchemaService.UpdateWebsiteGroupsForSchemas(b).ConfigureAwait(false);
            return Ok();

        }


        [HttpDelete]
        public async Task<ActionResult> Delete([FromQuery] WebsiteGroupSchemaFilter filter)
        {
            await _websiteGroupSchemaService.DeleteWebsiteGroupSchema(filter);
            return Ok();
        }
    }
}