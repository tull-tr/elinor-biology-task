using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class add_admin_to_db : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string fileName = "Database.mdf";
                string tableName = "usersTable";
                string admintableName = "adminTable";
                string uname = Request.Form["uname"];

                string sqlSelect = $"select * from {tableName} where uname = '{uname}'";
                string sqlSelect2 = $"select * from {admintableName} where uname = '{uname}'";

                if (Helper.IsExist(fileName, sqlSelect2))
                {
                    msg = "המשתמש שהזנת כבר מנהל";
                }
                else
                {
                    if (Helper.IsExist(fileName, sqlSelect))
                    {
                        msg = "המשתמש שהזנת הוא עכשיו מנהל";
                        sqlSelect = $"insert into {admintableName} select * from {tableName} where uname = '{uname}'";
                        sqlMsg = sqlSelect;
                        Helper.DoQuery(fileName, sqlSelect);
                        msg = "הרשומה התווספה בהצלחה לטבלת המנהלים";
                    }
                    else
                    {
                        msg = "שם המשתמש לא קיים במערכת";
                    }
                }
            }
        }
    }
}