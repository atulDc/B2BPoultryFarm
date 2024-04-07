using Farm.DalLayer.EntityModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.DalLayer.DalInterfaces
{
    public interface IDashboardDataAccess
    {
        Task<IEnumerable<Categories>> GetCategories();
        Task<IEnumerable<Products>> GetProdcutsByCategoryID(Guid id);
    }
}
