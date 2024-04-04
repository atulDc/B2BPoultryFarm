using System;
using System.Data;
using System.Transactions;
using System.Data.SqlClient;
using Microsoft.Extensions.Options;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;


namespace Common.DalPlatform
{
    public class DataAccessLayer : IDataAccess
    {
        private readonly string connectionString;

        public DataAccessLayer(IOptions<DBSettings> dbSettings)
        {
            this.connectionString = dbSettings.Value.DbConnectionString;
        }

        private async Task<int> ExecuteNonQueryStoredProcedure(string procedureName, SqlParameter[] parameters)
        {
            using (var conn = new SqlConnection(this.connectionString))
            {
                await conn.OpenAsync();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddRange(parameters);
                    return await command.ExecuteNonQueryAsync(); ;
                }
            }
        }

        public async Task<bool> ExecuteNonQueryTransactionAsync(string storedProcedure, SqlParameter[] parameters)
        {
            int rowCount = 0;
            using (var scope = new TransactionScope())
            {
                try
                {
                    rowCount = await ExecuteNonQueryStoredProcedure(storedProcedure, parameters);
                    scope.Complete();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }

            try
            {
                if (rowCount > 0)
                {
                    return true;
                }

                return false;
            }
            catch (Exception ex)
            {
                throw;
            }
        }


        private async Task<IEnumerable<DataTable>> ExecuteStoredProcedureAsync(string procedureName, SqlParameter[] parameters)
        {
            IEnumerable<DataTable> resultSets = Enumerable.Empty<DataTable>();
            using (var conn = new SqlConnection(this.connectionString))
            {
                await conn.OpenAsync();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    if (parameters is not null && parameters.Length > 0)
                    {
                        command.Parameters.AddRange(parameters);
                    }

                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        List<DataTable> resultSetsList = new List<DataTable>();
                        do
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);
                            resultSetsList.Add(dataTable);
                        } while (!reader.IsClosed && await reader.NextResultAsync());
                        resultSets = resultSetsList;
                    }
                }
            }

            return resultSets;
        }

        public async Task<IEnumerable<IEnumerable<Object>>> ExecuteReadTransactionAsync(string storedProcedure, SqlParameter[] parameters, params Type[] additionalTypes)
        {
            var resultSets = Enumerable.Empty<DataTable>();
            using (var scope = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled))
            {
                try
                {
                    resultSets = await ExecuteStoredProcedureAsync(storedProcedure, parameters);
                    scope.Complete();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }

            try
            {
                IEnumerable<IEnumerable<Object>> dataObjects = additionalTypes
                    .Zip<Type, DataTable, IEnumerable<Object>>(resultSets, (Type typeItem, DataTable dt) =>
                    {
                        PropertyInfo[] properties = typeItem.GetProperties();
                        IEnumerable<DataRow> dataRows = dt.Rows.Cast<DataRow>();
                        List<Object> instanceList = new List<Object>();
                        foreach (var row in dataRows)
                        {
                            Object instance = Activator.CreateInstance(typeItem);

                            foreach (var property in properties)
                            {
                                if (property.CanWrite)
                                {
                                    if (property.PropertyType == typeof(int))
                                        property.SetValue(instance, Convert.ToInt32(row[property.Name]));
                                    else if (property.PropertyType == typeof(string))
                                        property.SetValue(instance, row[property.Name].ToString());
                                    else if (property.PropertyType == typeof(DateTime))
                                        property.SetValue(instance, Convert.ToDateTime(row[property.Name]));
                                    else if (property.PropertyType == typeof(decimal))
                                        property.SetValue(instance, Convert.ToDecimal(row[property.Name]));
                                }
                            }
                            instanceList.Add(instance);
                        }

                        return instanceList;
                    });

                return dataObjects;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
