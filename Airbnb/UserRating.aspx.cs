﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airbnb
{
    public partial class UserRating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void user_Click(object sender,EventArgs e)
        {
            returnMsg.InnerHtml = Convert.ToString("Thank You");
        }
    }
}