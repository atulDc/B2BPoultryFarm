using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.DalLayer.DalHelpers
{
    static public class StoredProcedures
    {
        public static string GetCategories = "Inventory.GetCategories";
        public static string GetProductsByCategoryID = "Inventory.GetProductsByCategoryId";
    }
}
