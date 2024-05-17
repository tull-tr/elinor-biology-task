using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class admin_reset_password : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uname = Request.Form["uname"];
                string password = Request.Form["password"];
                string quest1 = Request.Form["quest1"];
                string quest2 = Request.Form["quest2"];

                string fileName = "Database.mdf";
                string tableName = "adminTable";

                string sqlSelect = $"SELECT * FROM {tableName} WHERE uname = '{uname}' AND quest1 = '{quest1}' AND quest2 = '{quest2}'";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    string sqlUpdate = $"UPDATE {tableName} SET password = '{password}' WHERE uname = '{uname}'";
                    msg = "הסיסמה שונתה בהצלחה";
                    Helper.DoQuery(fileName, sqlUpdate);
                }
                else
                {
                    msg = "אחד מן הפרטים לא מתאים, הסיסמה לא שונתה";
                }
            }
        }
    }
}