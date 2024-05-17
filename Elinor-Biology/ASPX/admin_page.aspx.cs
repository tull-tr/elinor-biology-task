using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class admin_page : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlSelect = "";

        string fileName = "Database.mdf";
        string tableName = "usersTable";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "אינך מנהל! אין לך גישה לדף זה";
                msg += "<a href='Main.aspx'>[ המשך ]</a>";
            }
            else
            {
                msg = "hello";
            }
        }
    }
}