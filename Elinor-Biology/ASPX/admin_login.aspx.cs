using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class admin_login : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uname = Request.Form["uname"];
                string password = Request.Form["password"];

                string fileName = "Database.mdf";
                string tableName = "adminTable";

                string sqlSelect = $"select * from {tableName} where uname = '{uname}'";
                string sqlSelect2 = $"select * from {tableName} where password = '{password}'";

                if (Helper.IsExist(fileName, sqlSelect) && Helper.IsExist(fileName, sqlSelect2))
                {
                    Session["admin"] = "yes";
                    Session["username"] = uname;
                    Response.Redirect("admin_controller.aspx");
                }
                else
                {
                    Session["admin"] = "no";
                    msg = "שם המשתמש או הסיסמה אינם נכונים";
                }
            }
        }
    }
}