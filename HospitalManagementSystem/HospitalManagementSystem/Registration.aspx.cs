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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;

            string query = "INSERT INTO PatientInfo (Name, Gender, Age, Contact, Address, Email, Password, ConPassword) VALUES(@Name, @Gender, @Age, @Contact, @Address, @Email, @Password, @ConPassword)";

            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", tbName.Text);
                        cmd.Parameters.AddWithValue("@Gender", ddGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Age", tbAge.Text);
                        cmd.Parameters.AddWithValue("@Contact", tbContact.Text);
                        cmd.Parameters.AddWithValue("@Address", tbAddress.Text);
                        cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
                        cmd.Parameters.AddWithValue("@Password", tbPassword.Text);
                        cmd.Parameters.AddWithValue("@ConPassword", tbConPassword.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        
                        /*SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read())
                        {
                            Session["Name"] = tbName.Text;
                        }*/
                    }

                    
                }
                Response.Write("Registration Successfully.");
                Response.Redirect("~/Login.aspx");
            }
            catch(Exception ex)
            {
                Console.WriteLine("Error: ", ex.Message);
            }
        }
    }
}