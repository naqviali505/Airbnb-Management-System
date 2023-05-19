using Airbnb.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airbnb
{
    public partial class Booking : System.Web.UI.Page
    {
        myDAL dal = new myDAL();
        public void booking_Click(object sender, EventArgs e)
        {
            string promo = Promo.Text.Trim();
            string emailID = email.Text.Trim();
            string checkin = arrival.Text.Trim();
            string checkout = departure.Text.Trim();
            string numb_rooms = room.Text.Trim();
            string list = DropDownList1.SelectedValue.Trim();
            int var = 0, var1 = 0;
            

            DataTable dt = new DataTable();
            int found = dal.booking(promo,emailID, checkin, checkout, numb_rooms, list, var,ref dt);
            if (found !=-1)
            {
                //if (promo.Length != 0)
                //{
                //    found = Int16.Parse(promo);
                //}
                //if (emailID.Length == 0)
                //{
                //    Div2.InnerHtml = Convert.ToString("Email ID Cannot be empty");
                //}
                //if (numb_rooms.Length == 0)
                //{
                //    retmsg5.InnerHtml = Convert.ToString("This textbox cannot be empty");
                //}
                if (list == "Single Bed")
                {
                    var = 50 * Int16.Parse(numb_rooms);
                    var1 = var*(found/100);
                    var = var - var1;
                }
                else if (list == "Double Bed")
                {
                    var = 100 * Int16.Parse(numb_rooms);
                    var1 = var * (found / 100); ;
                    var = var - var1;
                }
                else if (list == "Triple Bed")
                {
                    var = 150 * Int16.Parse(numb_rooms);
                    var1 = var * (found / 100);
                    var = var - var1;
                }
                else if (list == "Quad Bed")
                {
                    var = 200 * Int16.Parse(numb_rooms);
                    var1 = var * (found / 100);
                    var = var - var1;
                }
                string s = var.ToString();

                returnMsg.InnerHtml = Convert.ToString("Booking Successful.The total cost is "+s);
                
                
            }
            else if(found==-1)
            {
                
                    returnMsg.InnerHtml = Convert.ToString("Booking UnSuccessful");
            }
        }
        protected void promo_TextChanged(object sender, EventArgs e)
        {

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