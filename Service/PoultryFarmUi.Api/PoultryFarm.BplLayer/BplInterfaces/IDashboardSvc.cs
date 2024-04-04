using PolutryFarm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.BplLayer.BplInterfaces
{
    public interface IDashboardSvc
    {
        Task<IEnumerable<Categories>> GetCategories();
    }
}
