using Farm.BplLayer.BplInterfaces;
using Farm.DalLayer.DalInterfaces;
using PolutryFarm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.BplLayer.Services
{
    public class DashboardSvc: IDashboardSvc
    {
        private readonly IDashboardDataAccess dataAccess;
        public DashboardSvc(IDashboardDataAccess dataAccess) 
        { 
            this.dataAccess = dataAccess;
        }
        public async Task<IEnumerable<Categories>> GetCategories()
        {
            return await this.dataAccess.GetCategories().ConfigureAwait(false);
        }

    }
}
