using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"].ToString() == "no" && Session["admin"].ToString() == "no")
            {
                msg = "שלום אורח";
            }
            else if (Session["user"].ToString() == "yes")
            {
                string username = Session["username"].ToString();
                msg += "שלום";
                msg += "<br/>";
                msg += username;
            }
            else
            {
                string username = Session["username"].ToString();
                msg += "שלום";
                msg += "<br/>";
                msg += username;
                msg += "<br/>";
                msg += "המנהל";
                msg += "<a href='admin_controller.aspx'>בקרת מנהל</a>";
            }
        }
    }
}