using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.DalPlatform
{
    public interface IDataAccess
    {
        public Task<bool> ExecuteNonQueryTransactionAsync(string storedProcedure, SqlParameter[] parameters);
        public Task<IEnumerable<IEnumerable<Object>>> ExecuteReadTransactionAsync(string storedProcedure, SqlParameter[] parameters, params Type[] additionalTypes);
    }
}
