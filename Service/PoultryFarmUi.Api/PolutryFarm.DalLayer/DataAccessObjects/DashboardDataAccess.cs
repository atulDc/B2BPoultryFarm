using PolutryFarm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common.DalPlatform;
using Farm.DalLayer.DalHelpers;
using Farm.DalLayer.DalInterfaces;

namespace Farm.DalLayer.DataAccessObjects
{
    public class DashboardDataAccess: IDashboardDataAccess
    {
        IDataAccess dataAccess;
        public DashboardDataAccess(IDataAccess dataAccess) 
        {
            this.dataAccess = dataAccess;
        }

        public async Task<IEnumerable<Categories>> GetCategories()
        {
            IEnumerable<Categories> categories = Enumerable.Empty<Categories>();
            var resultSets = await this.dataAccess.ExecuteReadTransactionAsync(StoredProcedures.Categories, parameters: null, typeof(Categories)).ConfigureAwait(false);
            foreach (var resultSet in resultSets)
            {
               categories = resultSet.Cast<Categories>();
            }
            return categories;
        }
    }
}
