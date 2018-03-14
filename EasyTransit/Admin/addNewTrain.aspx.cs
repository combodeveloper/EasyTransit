using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace EasyTransit.Admin
{
    public partial class addNewTrain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sqlcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                using (SqlConnection con = new SqlConnection(sqlcon))
                {
                    SqlDataAdapter sda1 = new SqlDataAdapter("select tcompany_name from Train_company ", con);
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    DropDownListcom.Items.Add("Select Company Name");

                    foreach (DataRow row in dt1.Rows)
                    {
                        DropDownListcom.Items.Add(row["tcompany_name"].ToString());
                    }
                    SqlDataAdapter sda = new SqlDataAdapter("select routeid from route_details", con);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DropDownListroute.Items.Add("Select Train RouteId");
                    foreach (DataRow row in dt.Rows)
                    {
                        DropDownListroute.Items.Add(row["routeid"].ToString());
                    }

                }

            }
        }
    }
}