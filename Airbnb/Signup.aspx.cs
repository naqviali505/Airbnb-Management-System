using Airbnb.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace Airbnb
{
    public partial class Signup :System.Web.UI.Page
    {
        myDAL dal = new myDAL();
        public void signup_Click(object sender, EventArgs e)
        {
            DataTable DT = new DataTable();
            //bool flagempt = false;
            String fullname = fname.Text.Trim();
            String username = lname.Text.Trim();
            String pw = password.Text.Trim();
            string emailID=email.Text.Trim();
            string phoneNo = phone.Text.Trim();
            string BillAdd = BAdd.Text.Trim();
            if (fullname.Length == 0)
            {
                
                retmsg7.InnerHtml = Convert.ToString("Full Name cannot be empty");
            }
            if (username.Length == 0)
            {
                
                retmsg6.InnerHtml = Convert.ToString("User name cannot be empty");
            }
            if (emailID.Length == 0)
            {
                
                retmsg5.InnerHtml = Convert.ToString("Email cannot be empty");
            }
            if (pw.Length == 0)
            {
                
                retmsg4.InnerHtml = Convert.ToString("Password cannot be empty");
            }
            if (phoneNo.Length != 11)
            {
                
                retmsg3.InnerHtml = Convert.ToString("Phone Number can only be an 11 digit number");
            }
            if (BillAdd.Length == 0)
            {
                
                retmsg2.InnerHtml = Convert.ToString("Home Address cannot be empty");
            }
            //int found;
            //found = 
            
            if (dal.Signup_guest(fullname, username, pw, emailID, phoneNo, BillAdd, ref DT) == -1)
            {

                returnMsg.InnerHtml = Convert.ToString("SignUp UnSuccessful");
            }
            else
            {
                returnMsg.InnerHtml = Convert.ToString("SignUp Successful");

            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void fname_TextChanged(object sender, EventArgs e)
        {

        }
        public void lname_TextChanged(object sender, EventArgs e)
        {

        }
        public void email_TextChanged(object sender, EventArgs e)
        {

        }
        public void password_TextChanged(object sender, EventArgs e)
        {

        }
        public void phone_TextChanged(object sender, EventArgs e)
        {

        }
        public void BAdd_TextChanged(object sender, EventArgs e)
        {

        }
    }
}