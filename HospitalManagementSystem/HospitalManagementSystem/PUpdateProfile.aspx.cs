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
    public partial class PUpdateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

                try
                {
                    using (con)
                    {
                        string query = "Select * from PatientInfo where Name ='" + Session["Name"] + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();

                        rdr.Read();

                        tbName.Text = rdr["Name"].ToString();
                        ddGender.SelectedValue = rdr["Gender"].ToString();
                        tbAge.Text = rdr["Age"].ToString();
                        tbContact.Text = rdr["Contact"].ToString();
                        tbAddress.Text = rdr["Address"].ToString();
                        tbEmail.Text = rdr["Email"].ToString();

                        
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: ", ex.Message);
                }
            }
        }

        protected void tbName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

            try
            {
                using (con)
                {
                    string query = "Update PatientInfo SET Name='"+tbName.Text+ "', Gender='" + ddGender.SelectedValue + "', Age='" + tbAge.Text + "', Contact='" + tbContact.Text + "', Address='" + tbAddress.Text + "', Email='" + tbEmail.Text + "' where Email= '" +Session["Email"] +"'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                Response.Write("Data Updated Successfully");
                Response.Redirect("~/DashBoardPatient.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: ", ex.Message);
            }
        }

    }
}