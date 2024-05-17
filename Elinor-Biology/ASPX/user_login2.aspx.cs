using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class user_login2 : System.Web.UI.Page
    {
        public string msg; //הגדרת משתנים שתוכנם יוצג בצד הלקוח
        public string sqlLogin; //הגדרת משתנים שתוכנם יוצג בצד הלקוח
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"]; //שליפת מידע מהתופס
                string pw = Request.Form["pw"];

                string fileName = "userDB.mdf"; //שם המסד נתונים
                string tableName = "usersTbl"; //שם הטבלה במסד נתונים

                sqlLogin = "SELECT * FROM " + tableName +
                " WHERE uName= '" + uName + "' AND pw= '" + pw + "'"; //שאילתת SELECTלאיתור המשתמש

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "משתמש לא נמצא";
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Session["uName"] = table.Rows[0]["uName"]; //שישמור את שם המשתמש session אובייקט מסוג
                    Session["userFName"] = table.Rows[0]["fName"];// שישמור את שם הפרטי להצגה בדף session אובייקט מסוג
                    Response.Redirect("HomePage.aspx"); //מעבר אוטומטי לדף אחר כשמתרחש אירוע כלשהו

                }


                if (length == 0)
                {
                    msg = "משתמש לא נמצא";
                    Response.Redirect("login.aspx");
                }
                else
                {
                    //עדכון מונה מבקרים-- 
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Session["uName"] = table.Rows[0]["uName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Response.Redirect("HomePage.aspx");
                }
            }
        }
    }
}