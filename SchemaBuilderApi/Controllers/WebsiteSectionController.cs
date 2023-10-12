using Microsoft.AspNetCore.Mvc;
using SchemaBuilder.Api.Services.WebsiteSections;
using SchemaBuilder.Infrastruction.Data.Models;
using SlickyCommonLibrary.DomainUI;

namespace WebsiteSectionBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class WebsiteSectionController : ControllerBase
    {
        private IWebsiteSectionService _websiteSectionService;

        public WebsiteSectionController(IWebsiteSectionService websiteSectionService)
        {
            _websiteSectionService = websiteSectionService ?? throw new ArgumentNullException(nameof(websiteSectionService));
        }

        [HttpGet]
        public async Task<ActionResult> Get([FromQuery] WebsiteSectionFilter filter)
        {
            return Ok(await _websiteSectionService.GetWebsiteSections(filter));
        }

        //[Route("api/WebsiteSectionDto")]
        //public async Task<ActionResult> GetDtos([FromQuery] WebsiteSectionFilter filter)
        //{
        //    return Ok(await _websiteSectionService.GetWebsiteSectionDtos(filter));
        //}

        //[HttpPost]
        //public async Task<ActionResult> Post([FromBody] WebsiteSection b)
        //{
        //    await _websiteSectionService.AddWebsiteSection(b).ConfigureAwait(false);
        //    return Ok();
        //}

        //[HttpPut]
        //public async Task<ActionResult> Put([FromBody] WebsiteSection b)
        //{
        //    await _websiteSectionService.EditWebsiteSection(b).ConfigureAwait(false);
        //    return Ok();
        //}

        //[HttpDelete]
        //public async Task<ActionResult> Delete([FromQuery] WebsiteSectionFilter filter)
        //{
        //    await _websiteSectionService.DeleteWebsiteSection(filter);
        //    return Ok();
        //}
    }
}