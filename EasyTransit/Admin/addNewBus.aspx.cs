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
    public partial class addNewBus : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        string busID="B100";
       

        protected void Page_Load(object sender, EventArgs e)
        {

                GenerateAutoID();

        }

        private void GenerateAutoID()
        {
            //SqlConnection con = new SqlConnection(sqlcon);

            //con.Open();
            //SqlCommand cmd = new SqlCommand("select count(bus_id) from bus_details", con);
            //int i = Convert.ToInt32(cmd.ExecuteScalar());
            //con.Close();
            //i++;
            //lblbusid.Text = busID + i.ToString(); 

            string tableColumnName = "bus_id";
            string defColValue = "B1001";
            string tableName = "bus_details";
            autogenerateid autoid = new autogenerateid();
            string _get = autoid.AutogenerateID(tableColumnName, defColValue, tableName);
            string[] _sepID = _get.Split('0');
            int i = Convert.ToInt32(_sepID[1]);
            i++;
            lblbusid.Text = busID + 1;
         
        }

        protected void btnAddBus(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(sqlcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into bus_details (bus_id,bcompany_id,bus_type,capacity) values(@bus_id,@bcompany_id, @bus_type,@capacity)", con);
            cmd.Parameters.AddWithValue("@bus_id", lblbusid.Text);
            cmd.Parameters.AddWithValue("@bcompany_id", DropDownListcom.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@bus_type", DropDownListcetagory.SelectedValue);
            cmd.Parameters.AddWithValue("@capacity", txtBusCap.Text);
            GenerateAutoID();
            cmd.ExecuteNonQuery();

            con.Close();
          
            ClearTextBox();

        }
  
        private void ClearTextBox()
        {
            lblbusid.Text = "";
            DropDownListcom.SelectedItem.Value = "";
            DropDownListcetagory.SelectedItem.Text = "";
            txtBusCap.Text = "";
        }
    }
}