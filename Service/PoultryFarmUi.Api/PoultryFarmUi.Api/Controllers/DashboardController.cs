using AutoMapper;
using Farm.BplLayer.BplInterfaces;
using Microsoft.AspNetCore.Mvc;
using PoultryFarmUi.Api.DTOModels;

namespace PoultryFarmUi.Api.Controllers
{
    [ApiController]
    [Route("api/inventory")]
    public class DashboardController : ControllerBase
    {
        private readonly ILogger<DashboardController> logger;
        private readonly IMapper mapper;
        private readonly IDashboardSvc dashboardSvc;

        public DashboardController(ILogger<DashboardController> logger, IMapper mapper, IDashboardSvc dashboardSvc)
        {
            this.logger = logger;
            this.mapper = mapper;
            this.dashboardSvc = dashboardSvc;
        }

        [HttpGet]
        [Route("categories")]
        [ProducesResponseType(typeof(IEnumerable<Category>), 200)]
        [ProducesResponseType(404)]
        [ProducesResponseType(500)]
        public async Task<IActionResult> GetCategories()
        {
            try
            {
                var categories = await this.dashboardSvc.GetCategories().ConfigureAwait(false);
                if (categories == null || categories.Count() == 0)
                {
                    return NotFound();
                }

                var categoryListDto = this.mapper.Map<IEnumerable<Category>>(categories);
                return Ok(categoryListDto);
            }
            catch (Exception ex)
            {
                this.logger.LogError($"TimeStamp: {DateTime.Now}, Error Message: {ex.Message} \n");
                return StatusCode(500, "Internal server error.");
            }
        }
    }
}
