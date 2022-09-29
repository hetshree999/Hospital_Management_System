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
    public partial class AddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

            string query = "INSERT INTO DoctorInfo (DoctorName, DoctorSpecialization, ConculatancyFee, Contact, Email, Password, ConPassword) VALUES(@DoctorName, @DoctorSpecialization, @ConculatancyFee, @Contact, @Email, @Password, @ConPassword)";

            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        
                        cmd.Parameters.AddWithValue("@DoctorName", tbDName.Text);
                        cmd.Parameters.AddWithValue("@DoctorSpecialization", ddDSpecial.SelectedValue);
                        cmd.Parameters.AddWithValue("@ConculatancyFee", tbDConFee.Text);
                        cmd.Parameters.AddWithValue("@Contact", tbDContact.Text);
                        cmd.Parameters.AddWithValue("@Email", tbDEmail.Text);
                        cmd.Parameters.AddWithValue("@Password", tbDPassword.Text);
                        cmd.Parameters.AddWithValue("@ConPassword", tbDConPassword.Text);
                        con.Open();
                        
                        cmd.ExecuteNonQuery();
                        /*SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read())
                        {
                          Session["DoctorName"] = tbDName.Text;
                        }*/
                    }


                }
                Response.Write("Registration Successfully.");
                Response.Redirect("~/DashBoardAdmin.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: ", ex.Message);
            }
        }
    }
}