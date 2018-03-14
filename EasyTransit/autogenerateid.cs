using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EasyTransit
{
    public class autogenerateid
    {
        public string AutogenerateID(string dbotabcol,string dbotabcolv, string dbotab)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select isnull(max(" + dbotabcol + "), '" + dbotabcolv + "') from " + dbotab + "", con);
            string id = cmd.ExecuteScalar().ToString();
            return id;
        }
    }
}