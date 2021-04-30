using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;


namespace GroupProjectV4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
		protected void Page_Load(object sender, EventArgs e)
		{
			// Check for Authentication Cookie
			FormsAuthenticationTicket ticket;
			if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
			{
				ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
				Login1.InstructionText = "Logged in as " + ticket.Name;
			}
		}


		protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
		{
			string userName;
			// get SQL Connection String
			string constr = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;

			// Set up SQL Query
			SqlConnection con = new SqlConnection(constr);
			SqlCommand cmd = new SqlCommand("ValidateUser");
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@Username", Login1.UserName);
			cmd.Parameters.AddWithValue("@Password", Login1.Password);
			cmd.Connection = con;

			// Execute SQL Query
			con.Open();
			userName = Convert.ToString(cmd.ExecuteScalar());
			con.Close();

			// Set Authenication Cookie
			if (userName != "")
			{
				//FormsAuthentication.SetAuthCookie(userName,false);
				e.Authenticated = true;
				FormsAuthentication.RedirectFromLoginPage(userName, false);
				
			}
		
		}
	}
}