using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;


namespace GroupProjectV4
{
    //TODO:
    //delete user files from control panel
    //https://www.c-sharpcorner.com/UploadFile/99bb20/get-the-list-of-all-files-from-server-directory-in-Asp-Net/
    public partial class UserControlPanel : System.Web.UI.Page
    {
        string getUser()
        {
            // Check for Authentication Cookie
            FormsAuthenticationTicket ticket;
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
                return ticket.Name;
            }
            else return null;

        }
        string GetRole(string user)
        {
            string role = "";
            //check if user is null, and return if yeet.
            if (user == null)
            {
                return null;
            }
            else
            {
                // get SQL Connection String
                string constr = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
                // Set up SQL Query
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("GetRole");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", user);
                cmd.Connection = con;

                // Execute SQL Query
                con.Open();
                role = Convert.ToString(cmd.ExecuteScalar());
                con.Close();
                return role;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
            // Check for Authentication Cookie
            string user = getUser();
            string role = GetRole(user);

            // Redirect to login if not logged in
            if (user == null)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            if (role != "Admin")
            {
                GridView1.Visible = false;
                DetailsView2.Visible = false;
                Maps.Visible = false;
                
            }



        }
    }
}