using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenGaming
{
    public partial class ZenMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            logmal.InnerHtml = Convert.ToString(Session["user"]);
        }
        protected void LogoutFunction(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.RemoveAll();
                Response.Redirect("Homepage.aspx");
            }
        }
    }
}