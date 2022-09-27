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
    public partial class PBookAppoiment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    string query = "INSERT INTO Appoiment (PName, Gender, DOB, Contact, Address, City, AppoimentDate, AppoimnetTime, Department, Docotor, Action, Email) VALUES (@PName, @Gender, @DOB, @Contact, @Address, @City, @AppoimentDate, @AppoimnetTime, @Department, @Docotor, @Action, @Email)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@PName", tbName.Text);
                    cmd.Parameters.AddWithValue("@Gender", ddGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@DOB", tbdob.Text);
                    cmd.Parameters.AddWithValue("@Contact", tbContact.Text);
                    cmd.Parameters.AddWithValue("@Address", tbAddress.Text);
                    cmd.Parameters.AddWithValue("@City", tbCity.Text);
                    cmd.Parameters.AddWithValue("@AppoimentDate", tbAppoDate.Text);
                    cmd.Parameters.AddWithValue("@AppoimnetTime", tbAppoTime.Text);
                    cmd.Parameters.AddWithValue("@Department", ddDepartment.SelectedValue);
                    cmd.Parameters.AddWithValue("@Docotor", ddlDoctor.SelectedValue);
                    cmd.Parameters.AddWithValue("@Action", "Pending");
                    cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                    cmd.ExecuteNonQuery();

                    Response.Write("Appoiement Booked successfully.");
                    Response.Redirect("~/DashBoardPatient.aspx");
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine("Error: ", ex.Message);
            }
        }
    }
}