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
        public bool ExecuteNonQueryTransaction(string storedProcedure, SqlParameter[] parameters);
        public IEnumerable<IEnumerable<Object>> ExecuteReadTransaction(string storedProcedure, SqlParameter[] parameters, params Type[] additionalTypes);
    }
}
