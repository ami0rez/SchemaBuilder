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


        [HttpGet("GetCatgegorySchemas")]
        public async Task<ActionResult> GetCatgegorySchemas([FromQuery] Guid categoryId)
        {
            return Ok(await _websiteSectionService.GetCatgegorySchemas(categoryId));
        }
    }
}