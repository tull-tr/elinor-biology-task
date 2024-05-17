using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class user_login : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["loginAttempts"] = 0;
            }

            if (Request.Form["submit"] != null)
            {
                string uname = Request.Form["uname"];
                string password = Request.Form["password"];

                string fileName = "Database.mdf";
                string tableName = "usersTable";

                string sqlSelect = $"SELECT * FROM {tableName} WHERE uname = '{uname}' AND password = '{password}'";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    Session["user"] = "yes";
                    msg = "התחברת בהצלחה";
                    Session["username"] = uname;
                    Session["loginAttempts"] = 0;
                }
                else
                {
                    int loginAttempts = (int)Session["loginAttempts"] + 1;
                    Session["loginAttempts"] = loginAttempts;

                    if (loginAttempts >= 5)
                    {
                        Response.Redirect("reset.aspx");
                    }
                    else
                    {
                        Session["user"] = "no";
                        msg = "שם המשתמש או הסיסמה אינם נכונים";
                    }
                }
            }
        }
    }
}