using Microsoft.AspNetCore.Mvc;
using PoultryFarmUi.Api.DTOModels;

namespace PoultryFarmUi.Api.Controllers
{
    [ApiController]
    [Route("dashboard")]
    public class DashboardController : ControllerBase
    {
        private readonly ILogger<DashboardController> _logger;

        public DashboardController(ILogger<DashboardController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetCategories")]
        public IEnumerable<Category> Get()
        {
            return Enumerable.Empty<Category>();
        }
    }
}
