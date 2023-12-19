using Microsoft.AspNetCore.Mvc;
using SchemaBuilder.Api.Services.CustomerInfos;
using SchemaBuilder.Infrastruction.Data.Models.Customer;
using SlickyCommonLibrary.DomainUI;

namespace CustomerInfoBuilderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class CustomerInfoController : ControllerBase
    {
        private ICustomerInfoService _customerInfoService;

        public CustomerInfoController(ICustomerInfoService CcstomerInfoService)
        {
            _customerInfoService = CcstomerInfoService ?? throw new ArgumentNullException(nameof(CcstomerInfoService));
        }


        [HttpGet]
        public async Task<ActionResult> Get([FromQuery] CustomerInfoFilter filter)
        {
            return Ok(await _customerInfoService.Get(filter));
        }


        [HttpPost]
        public async Task<ActionResult> Post([FromBody] CustomerInfo a)
        {
            await _customerInfoService.Add(a).ConfigureAwait(false);
            return Ok();
        }


        [HttpGet("GenerateCustomerJson")]
        public async Task<ActionResult> GenerateCustomerJson([FromQuery] Guid customerId)
        {
            await _customerInfoService.GenerateCustomerJson(customerId).ConfigureAwait(false);
            return Ok();
        }


        [HttpGet("GetCustomerJson")]
        public async Task<ActionResult> GetCustomerJson([FromQuery] Guid customerId)
        {
            var customers = await _customerInfoService.getCustomerJson(customerId).ConfigureAwait(false);
            return Ok(customers);
        }

        [HttpPut]
        public async Task<ActionResult> Put([FromBody] CustomerInfo a)
        {
            await _customerInfoService.Edit(a);
            return Ok();
        }

        [HttpDelete]
        public async Task<ActionResult> DeleteCustomerInfo([FromQuery] CustomerInfoFilter filter)
        {
            if (filter.id.HasValue)
            {
                try
                {
                    await _customerInfoService.Delete(filter.id.Value);
                    return Ok();
                }
                catch
                {
                    return BadRequest("CustomerInfo was not deleted. You can not delete this CustomerInfo");
                }
            }

            return BadRequest();
        }

    }
}