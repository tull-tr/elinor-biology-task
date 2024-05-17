using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class user_delete : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uname = Request.Form["uname"];
                string fileName = "Database.mdf";
                string tableName = "usersTable";
                string sqlSelect = $"SELECT * FROM {tableName} WHERE uname = '{uname}'";
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    string sqlDelete = $"DELETE FROM {tableName} WHERE uname = '{uname}'";
                    Helper.DoQuery(fileName, sqlDelete);
                    msg = "המשתמש נמחק בהצלחה";

                }
                else
                {
                    msg = "שם המשתמש לא נמצא במערכת, אנא נסה שנית עם שם משתמש אחר";
                }
            }
        }
    }
}