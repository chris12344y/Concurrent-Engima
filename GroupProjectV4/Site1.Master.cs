using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace GroupProjectV4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check for Authentication Cookie
            FormsAuthenticationTicket ticket;
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
                UserNameTxtBox.Text = ticket.Name;
            }
            else UserNameTxtBox.Text = null;
        }
    }
}