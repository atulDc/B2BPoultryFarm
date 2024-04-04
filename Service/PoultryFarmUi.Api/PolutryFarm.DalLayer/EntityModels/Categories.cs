using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PolutryFarm.DalLayer.EntityModels
{
    public class Categories
    {
        public int CategoryId { get; set; }
        public string CategoryGuid { get; set; }
        public string CategoryKey { get; set; }
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }
        public string FilePath { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime LastUpdate { get; set; }
    }
}
