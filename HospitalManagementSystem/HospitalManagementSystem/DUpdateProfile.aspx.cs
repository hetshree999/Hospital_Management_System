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
    public partial class DUpdateProfile : System.Web.UI.Page
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
                        string query = "Select * from DoctorInfo where DoctorName = '" + Session["DName"] +"' ";

                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        rdr.Read();

                        tbDName.Text = rdr["DoctorName"].ToString();
                        ddDSpecial.SelectedValue = rdr["DoctorSpecialization"].ToString();
                        tbDConFee.Text = rdr["ConculatancyFee"].ToString();
                        tbDContact.Text = rdr["Contact"].ToString();
                        tbDEmail.Text = rdr["Email"].ToString();
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("Error: "+ ex.Message);
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

            try
            {
                using (con)
                {
                    string query = "Update DoctorInfo Set DoctorName ='" + tbDName.Text + "', DoctorSpecialization = '" + ddDSpecial.SelectedValue + "', ConculatancyFee= '" + tbDConFee.Text + "', Contact= '" + tbDContact.Text +"', Email= '" + tbDEmail.Text+"' where Email = '"+ Session["DEmail"] +"'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                Response.Write("Data Updated Successfully");
                Response.Redirect("~/DashBoardDoctor.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}