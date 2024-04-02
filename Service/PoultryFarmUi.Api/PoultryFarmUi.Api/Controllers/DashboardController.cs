using Farm.DalLayer.DalInterfaces;
using Microsoft.AspNetCore.Mvc;
using PoultryFarmUi.Api.DTOModels;

namespace PoultryFarmUi.Api.Controllers
{
    [ApiController]
    [Route("dashboard")]
    public class DashboardController : ControllerBase
    {
        private readonly ILogger<DashboardController> _logger;
        private readonly IDashboardDataAccess dashboardDataAccess;

        public DashboardController(ILogger<DashboardController> logger, IDashboardDataAccess dashboardDataAccess)
        {
            _logger = logger;
            this.dashboardDataAccess = dashboardDataAccess;
        }

        [HttpGet(Name = "GetCategories")]
        public IEnumerable<Category> Get()
        {
            var categories = this.dashboardDataAccess.Category();
            return categories.Select(category => new Category() { CategoryName = category.CategoryName });
        }
    }
}
