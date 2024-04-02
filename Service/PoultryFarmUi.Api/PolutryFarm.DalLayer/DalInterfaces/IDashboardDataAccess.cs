using PolutryFarm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.DalLayer.DalInterfaces
{
    public interface IDashboardDataAccess
    {
        IEnumerable<Categories> Category();
    }
}
