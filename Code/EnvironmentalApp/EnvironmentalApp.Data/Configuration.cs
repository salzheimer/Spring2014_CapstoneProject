﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;

namespace EnvironmentalApp.Data
{
    public class Configuration:Core.Configuration.IConfiguration
    {

        public string GetPiServerConnectionString()
        {

            var connString = System.Configuration.ConfigurationManager.ConnectionStrings["piServer"].ConnectionString;
            return connString;


        }
        public static OdbcConnection GetPiServerConnection(string piServerConnectionString)
        {
            OdbcConnection piConnection = null;
            try
            {
                piConnection = new OdbcConnection(piServerConnectionString);
                return piConnection;
            }
            catch (OdbcException ex)
            {
                throw ex;
            }

           
        }

        public string GetSqlServerConnectionString()
        {
            throw new NotImplementedException();
        }
    }
}
