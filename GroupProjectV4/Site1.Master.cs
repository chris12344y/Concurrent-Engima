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
    //I don't know how to actually figure out if a user has role "Admin" or not.
    //Might need Christian to do this with his database wizardry
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check for Authentication Cookie
            FormsAuthenticationTicket ticket;
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
                if (ticket.Name != "")
                {
                    UserNameTxtBox.Text = ticket.Name;
                    DetailsView1.Visible = true;
                    SignOutButton.Visible = true;
                    LogInButton.Visible = false;
                }
            }
            else
            {
                UserNameTxtBox.Text = null;
                LogInButton.Visible = true;
                SignOutButton.Visible = false;
            }
           

        }

        protected void SignOutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();

            //clear auth cookie
           
            //clear session cookue
      
            Response.Redirect("~/Default.aspx");
            //TODO: NONE OF THIS WORKS
            //That being said, none of this breaks anything really?
            //Just essentially the list of things I've tried to sign out
            // Check for Authentication Cookie
            /*
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                Request.Cookies[FormsAuthentication.FormsCookieName].Expires = DateTime.Now.AddDays(-1d);
            }

          
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
            Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            Session.Clear();
            Session.Abandon();

            FormsAuthentication.SignOut();
            Session.Abandon();
            
            FormsAuthentication.RedirectFromLoginPage("", false);
            */
        }
    }
}