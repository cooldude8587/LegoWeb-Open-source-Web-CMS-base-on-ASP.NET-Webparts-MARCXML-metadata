﻿// ----------------------------------------------------------------------
// <copyright file="UpgradeDatabase.cs" package="LEGOWEB">
//     Copyright (C) 2011 LEGOWEB.ORG. All rights reserved.
//     www.legoweb.org
//     License: GNU/GPL
//     LEGOWEB IS FREE SOFTWARE
// </copyright>
// ------------------------------------------------------------------------
using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LegoWebAdmin.BusLogic
{
    /// <summary>
    /// Summary description for UpgradeDatabase
    /// </summary>
    public static class UpgradeDatabase
    {
        public static void run_SQLScript(string sqlScript)
        {
            string connStr = ConfigurationManager.ConnectionStrings["LEGOWEBDB"].ConnectionString;
            SqlConnection connection = new SqlConnection(connStr);
            try
            {
                string strCommandName;
                SqlCommand objCommand;
                SqlParameter objParam;

                strCommandName = sqlScript;
                objCommand = new SqlCommand(strCommandName, connection);
                objCommand.CommandType = CommandType.Text;
                //Set the Parameters
                connection.Open();
                objCommand.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (connection != null)
                    connection.Close();
            }

        }

    }
}
