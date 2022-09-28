using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class DPatientHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DashBoardDoctor.aspx");
        }

        protected void GVDPatientHistory_SelectedIndexChanged1(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

            try
            {
                using (con)
                {
                    string query = "Update Appoiment Set Action = '" + GVDPatientHistory.Rows[GVDPatientHistory.Rows.Count - 1].Cells[7].Text + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query,con);
                    SqlDa
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            */
        }

    }
}