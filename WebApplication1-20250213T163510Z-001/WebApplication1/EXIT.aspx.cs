﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["currentUser"] != null)
            {
                Session.Clear();
                Session.Abandon();
            }
            Response.Redirect("signIn.aspx");
        }
    }
}