using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Farm.DalLayer.EntityModels
{
    public class Products
    {
        public int ProductID { get; set; }
        public Guid ProductGUID { get; set; }
        public int CategoryID { get; set; }
        public Guid CategoryGUID { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public bool IsAvailable { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime LastUpdate { get; set; }
    }
}
