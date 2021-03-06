using System;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Configuration;

namespace GroupProjectV4
{
    //TODO: ensure only admins can sign in
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check for Authentication Cookie
            FormsAuthenticationTicket ticket;
            string uName = "";
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                try
                {
                    ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);

                    if (ticket.Name != "")
                    {
                        uName = ticket.Name;
                        UserNameTxtBox.Text = uName;
                        DetailsView1.Visible = true;
                        SignOutButton.Visible = true;
                        UploadMapButton.Visible = true;

                        LogInButton.Visible = false;
                        SignUpButton.Visible = false;
                    }
                    else
                    {
                        UserNameTxtBox.Text = null;
                        LogInButton.Visible = true;
                        SignUpButton.Visible = true;

                        SignOutButton.Visible = false;
                        UploadMapButton.Visible = false;
                    }
                }

                catch {
                    UserNameTxtBox.Text = null;
                    LogInButton.Visible = true;
                    SignUpButton.Visible = true;

                    SignOutButton.Visible = false;
                    UploadMapButton.Visible = false;
                }
            }
            string role = "";
            // get SQL Connection String
            string constr = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
            // Set up SQL Query
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("GetRole");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", uName);
            cmd.Connection = con;

            // Execute SQL Query
            con.Open();
            role = Convert.ToString(cmd.ExecuteScalar());
            con.Close();

            if(role == "Admin")
            {
                controlPanelBtn.Visible = true;
                AddUserButton.Visible = true;
            }
            else
            {
                controlPanelBtn.Visible = false;
                AddUserButton.Visible = false;
            }
        }

        protected void SignOutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}