using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Airbnb.DAL;
namespace Airbnb
{
    public partial class login : Page
    {
        myDAL dal = new myDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Click(object sender, EventArgs e)
        {
            String emailID = email.Text.Trim();
            String pw = password.Text.Trim();
            


            int found;
            found = myDAL.login(emailID, pw);

            if (found ==0)
            {
                //loginGrid.DataSource = DT;
                //loginGrid.DataBind();
                
                returnMsg.InnerHtml = Convert.ToString("Login Successful");
                //LoginResponse.Text = Convert.ToString("Login Successful");
            }
            else if(found==-1)
            {
                //LoginResponse.Text = "Login Failed";
                returnMsg.InnerHtml= Convert.ToString("Login Failed");
                //loginGrid.DataSource =null;
                //loginGrid.DataBind();
                //Response.Redirect("LogIn.aspx");

            }
        }
    }
}