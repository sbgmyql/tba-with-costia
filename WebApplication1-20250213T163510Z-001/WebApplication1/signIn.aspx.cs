using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string errorMsg = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                User user = new User()
                {
                    FName = "Micheal",
                    LName = "Sabag",
                    UEmail = "sbgmyql@gmail.com",
                    UPass = "12345"
                };
                string ulogin = Request.Form["uLogin"];
                String upass = Request.Form["uPass"];
                if (user.UEmail == ulogin && user.UPass == upass)
                {
                    //Response.Redirect("MainPage.aspx"); 
                    //Response.Redirect($"MainPage.asp?ylogin={ulogin}&upass={upass}");
                    Session["currentUser"] = user;
                    Session.Timeout = 1;//1 minute
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    errorMsg = "credenchols incorrect";
                }
            }
        }
    }
}