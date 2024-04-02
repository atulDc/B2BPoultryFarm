using System;
using System.Data;
using System.Transactions;
using System.Data.SqlClient;
using Microsoft.Extensions.Options;

namespace Common.DalPlatform
{
    public class DataAccessLayer
    {
        private readonly string connectionString;

        public DataAccessLayer(IOptions<DBSettings> dbSettings)
        {
            this.connectionString = dbSettings.Value.DbConnectionString;
        }

        private DataTable ExecuteStoredProcedure(string procedureName, SqlParameter[] parameters)
        {
            using (var conn = new SqlConnection(this.connectionString))
            {
                conn.Open();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddRange(parameters);

                    DataTable dataTable = new DataTable();
                    using (var reader = command.ExecuteReader())
                    {
                        dataTable.Load(reader);
                    }

                    return dataTable;
                }
            }
        }

        private void ExecuteNonQueryStoredProcedure(string procedureName, SqlParameter[] parameters)
        {
            using (var conn = new SqlConnection(this.connectionString))
            {
                conn.Open();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddRange(parameters);
                    command.ExecuteNonQuery();
                }
            }
        }

        public void ExecuteNonQueryTransaction<T>(SqlParameter[] parameters) where T : IEntityData
        {
            using (var scope = new TransactionScope())
            {
                try
                {                
                        ExecuteNonQueryStoredProcedure(nameof(T), parameters);

                    scope.Complete(); 
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        public void ExecuteReadTransaction<T>(SqlParameter[] parameters) where T : class, IEntityData
        {
            using (var scope = new TransactionScope())
            {
                try
                {
                    ExecuteStoredProcedure(nameof(T), parameters);

                    scope.Complete();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }
    }
}
