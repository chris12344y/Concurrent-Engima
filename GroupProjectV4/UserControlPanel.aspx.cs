using System;
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

        protected void Page_Load(object sender, EventArgs e)
        {

            // Check for Authentication Cookie
            string user = getUser();

            // Redirect to login if not logged in
            if (user == null)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            


        }
    }
}