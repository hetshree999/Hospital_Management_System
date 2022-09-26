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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelLogin.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["hospitalmanagement"].ConnectionString;


            try
            {
                using (con)
                {
                    string query = "SELECT Email,Password FROM PatientInfo WHERE Email='" + tbUserName.Text + "'and Password='" + tbPassword.Text + "'";

                    if (rblLogin.SelectedValue == "Doctor")
                    {
                        //hlRegister.Visible = false;
                        query = "SELECT Email,Password FROM DoctorInfo WHERE Email='" + tbUserName.Text + "'and Password='" + tbPassword.Text + "'";
                    }
                    if(rblLogin.SelectedValue == "Patient")
                    {
                        //hlRegister.Visible = true;
                    }
                    SqlCommand cmd = new SqlCommand(query, con);
                    using (cmd)
                    {
                        con.Open();
                        //string @Email = tbUserName.Text;
                        //cmd.Parameters.AddWithValue("@Email", tbUserName.Text);
                        //string @Password = tbPassword.Text;
                        SqlDataReader rdr = cmd.ExecuteReader();

                        if(rdr.Read()){
                            Session["Email"] = tbUserName.Text;
                            Response.Redirect("~/DashBoardPatient.aspx");
                        }

                        rdr.Close();
                    }
                }
                Response.Write("Login Successfully.");
            }
            catch(Exception ex)
            {
                Console.WriteLine("Error: ", ex.Message);
            }
        }

        protected void btnQuestion_Click(object sender, EventArgs e)
        {
            if (rblLogin.SelectedValue == "Doctor")
            {
                PanelLogin.Visible = true;
                hlRegister.Visible = false;
            }
            if (rblLogin.SelectedValue == "Patient")
            {
                PanelLogin.Visible = true;
                hlRegister.Visible = true;
            }
        }

        protected void rblLogin_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}