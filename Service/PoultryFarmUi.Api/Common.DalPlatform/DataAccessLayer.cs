using System;
using System.Data;
using System.Transactions;
using System.Data.SqlClient;
using Microsoft.Extensions.Options;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;


namespace Common.DalPlatform
{
    public class DataAccessLayer : IDataAccess
    {
        private readonly string connectionString;

        public DataAccessLayer(IOptions<DBSettings> dbSettings)
        {
            this.connectionString = dbSettings.Value.DbConnectionString;
        }

        private int ExecuteNonQueryStoredProcedure(string procedureName, SqlParameter[] parameters)
        {
            using (var conn = new SqlConnection(this.connectionString))
            {
                conn.Open();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddRange(parameters);
                    return command.ExecuteNonQuery();
                }
            }
        }

        public bool ExecuteNonQueryTransaction(string storedProcedure, SqlParameter[] parameters)
        {
            using (var scope = new TransactionScope())
            {
                try
                {
                    int rowCount = ExecuteNonQueryStoredProcedure(storedProcedure, parameters);
                    scope.Complete();

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
        }

        private IEnumerable<DataTable> ExecuteStoredProcedure(string procedureName, SqlParameter[] parameters)
        {
            IEnumerable<DataTable> resultSets = Enumerable.Empty<DataTable>();
            using (var conn = new SqlConnection(this.connectionString))
            {
                conn.Open();
                using (var command = new SqlCommand(procedureName, conn))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    if (parameters is not null && parameters.Length > 0)
                    {
                        command.Parameters.AddRange(parameters);
                    }

                    using (var reader = command.ExecuteReader())
                    {
                        List<DataTable> resultSetsList = new List<DataTable>();
                        do
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);
                            resultSetsList.Add(dataTable);
                        } while (!reader.IsClosed && reader.NextResult());
                        resultSets = resultSetsList;
                    }
                }
            }

            return resultSets;
        }

        public IEnumerable<IEnumerable<Object>> ExecuteReadTransaction(string storedProcedure, SqlParameter[] parameters, params Type[] additionalTypes)
        {
            using (var scope = new TransactionScope())
            {
                try
                {
                    var resultSets = ExecuteStoredProcedure(storedProcedure, parameters);
                    scope.Complete();

                    IEnumerable<IEnumerable<Object>> dataObjects = additionalTypes
                        .Zip<Type, DataTable, IEnumerable<Object>>(resultSets, (Type typeItem, DataTable dt) =>
                        {  
                            PropertyInfo[] properties = typeItem.GetProperties();
                            IEnumerable<DataRow> dataRows = dt.Rows.Cast<DataRow>();
                            List<Object> instanceList = new List<Object>();
                            foreach(var row in dataRows)
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
                                        else if(property.PropertyType == typeof(decimal))
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
}
