using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology
{
    public partial class MySite : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            //---מחרוזת הברכה---
            loginMsg = "<h3>שלום ";
            loginMsg += Session["guest"].ToString();
            loginMsg += "</h3>";
            //--- מחרוזת ברכה + תפריט ראשי מותאמים לסוג המשתמש---


            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<a href=\"admin_controller.aspx\"><img src=\"../ImagesLibrary/Menu/pic11.0.png\" class=\"menuPics\" id=\"managerpage\" onmouseover=\"showIcon(managerpage, '../ImagesLibrary/Menu/pic11.1.png')\" onmouseout=\"showIcon(managerpage, '../ImagesLibrary/Menu/pic11.0.png')\" /></a><br />";
                loginMsg += "<a href=\"user_logout.aspx\"><img src=\"../ImagesLibrary/Menu/pic10.0.png\" class=\"menuPics\" id=\"logout2\" onmouseover=\"showIcon(logout2, '../ImagesLibrary/Menu/pic10.1.png')\" onmouseout=\"showIcon(logout2, '../ImagesLibrary/Menu/pic10.0.png')\" /></a><br />";


            }
            else if (Session["user"].ToString() == "no" && Session["admin"].ToString() == "no")
            {

                loginMsg += "<a href=\"user_register.aspx\"><img src=\"../ImagesLibrary/Menu/pic8.0.png\" class=\"menuPics\" id=\"signup\" onmouseover=\"showIcon(signup, '../ImagesLibrary/Menu/pic8.1.png')\" onmouseout=\"showIcon(signup, '../ImagesLibrary/Menu/pic8.0.png')\" /></a><br />";
                loginMsg += "<a href=\"user_login2.aspx\"><img src=\"../ImagesLibrary/Menu/pic7.0.png\" class=\"menuPics\" id=\"form\" onmouseover=\"showIcon(form, '../ImagesLibrary/Menu/pic7.1.png')\" onmouseout=\"showIcon(form, '../ImagesLibrary/Menu/pic7.0.png')\" /></a><br />";
                loginMsg += "<a href=\"admin_login.aspx\"><img src=\"../ImagesLibrary/Menu/pic15.0.png\" class=\"menuPics\" id=\"loginA\" onmouseover=\"showIcon(loginA, '../ImagesLibrary/Menu/pic15.1.png')\" onmouseout=\"showIcon(loginA, '../ImagesLibrary/Menu/pic15.0.png')\" /></a><br />";
            }
            else
            {
                loginMsg += "<a href=\"UserUpdate.aspx\"><img src=\"../ImagesLibrary/Menu/pic9.0.png\" class=\"menuPics\" id=\"update\" onmouseover=\"showIcon(update, '../ImagesLibrary/Menu/pic9.1.png')\" onmouseout=\"showIcon(update, '../ImagesLibrary/Menu/pic9.0.png')\" /></a><br />";

                loginMsg += "<a href=\"user_logout.aspx\"><img src=\"../ImagesLibrary/Menu/pic10.0.png\" class=\"menuPics\" id=\"logout2\" onmouseover=\"showIcon(logout2, '../ImagesLibrary/Menu/pic10.1.png')\" onmouseout=\"showIcon(logout2, '../ImagesLibrary/Menu/pic10.0.png')\" /></a><br />";
                loginMsg += "<a href=\"admin_login.aspx\"><img src=\"../ImagesLibrary/Menu/pic15.0.png\" class=\"menuPics\" id=\"loginA\" onmouseover=\"showIcon(loginA, '../ImagesLibrary/Menu/pic15.1.png')\" onmouseout=\"showIcon(loginA, '../ImagesLibrary/Menu/pic15.0.png')\" /></a><br />";

            }

        }
    }
}