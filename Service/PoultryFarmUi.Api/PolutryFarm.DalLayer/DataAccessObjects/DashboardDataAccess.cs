using PolutryFarm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common.DalPlatform;

namespace Farm.DalLayer.DataAccessObjects
{
    public class DashboardDataAccess
    {
        DataAccessLayer dataAccess;
        DashboardDataAccess(DataAccessLayer dataAccess) 
        {
            this.dataAccess = dataAccess;
        }

        public IEnumerable<Categories> Category()
        {
            return this.dataAccess.ExecuteReadTransaction<Categories>();
        }
    }
}
