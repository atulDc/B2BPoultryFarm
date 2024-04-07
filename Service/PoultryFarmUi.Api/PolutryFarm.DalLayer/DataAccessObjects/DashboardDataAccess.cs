using Common.DalPlatform;
using Farm.DalLayer.DalHelpers;
using Farm.DalLayer.DalInterfaces;
using Farm.DalLayer.EntityModels;
using System.Data.SqlClient;

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
            var resultSets = await this.dataAccess.ExecuteReadTransactionAsync(StoredProcedures.GetCategories, 
                parameters: null, 
                typeof(Categories)).ConfigureAwait(false);
            
            foreach (var resultSet in resultSets)
            {
               categories = resultSet.Cast<Categories>();
            }

            return categories;
        }

        public async Task<IEnumerable<Products>> GetProdcutsByCategoryID(Guid id)
        {
            IEnumerable<Products> products = Enumerable.Empty<Products>();
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@categoryGuid", id));

            var resultSets = await this.dataAccess.ExecuteReadTransactionAsync(StoredProcedures.GetProductsByCategoryID, 
                parameters, 
                typeof(Products)).ConfigureAwait(false);

            foreach (var resultSet in resultSets)
            {
                products = resultSet.Cast<Products>();
            }

            return products;
        }
    }
}
