using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elinor_Biology.ASPX
{
    public partial class user_register : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                st += "<table dir = 'ltr' border = '1' style=\"float: right;\">";
                st += "<tr><th colspan='2'>הפרטים שהתקבלו</th></tr>";

                string uname = Request.Form["uname"];
                string fname = Request.Form["fname"];
                string lname = Request.Form["lname"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string hobbies = Request.Form["hobbies"];
                string prefix = Request.Form["prefix"];
                string phoneNumber = Request.Form["phoneNumber"];
                string yearBorn = Request.Form["yearBorn"];
                string city = Request.Form["city"];
                string password = Request.Form["password"];
                string quest1 = Request.Form["quest1"];
                string quest2 = Request.Form["quest2"];

                st += "<tr><td>Username: </td><td>" + uname + "</td></tr>";
                st += "<tr><td>First Name: </td><td>" + fname + "</td></tr>";
                st += "<tr><td>Last Name: </td><td>" + lname + "</td></tr>";
                st += "<tr><td>Email: </td><td>" + email + "</td></tr>";
                st += "<tr><td>Gender: </td><td>" + gender + "</td></tr>";
                st += "<tr><td>Hobbies: </td><td>" + hobbies + "</td></tr>";
                st += "<tr><td>Prefix: </td><td>" + prefix + "</td></tr>";
                st += "<tr><td>Phone Number: </td><td>" + phoneNumber + "</td></tr>";
                st += "<tr><td>Year Born: </td><td>" + yearBorn + "</td></tr>";
                st += "<tr><td>City: </td><td>" + city + "</td></tr>";
                st += "<tr><td>Quest 1: </td><td>" + quest1 + "</td></tr>";
                st += "<tr><td>Quest 2: </td><td>" + quest2 + "</td></tr>";

                st += "</table>";

                // --------------------------------------------------------

                string fileName = "Database.mdf";
                string tableName = "usersTable";
                int yrBorn = int.Parse(yearBorn);

                string sqlSelect = $"select * from {tableName} where email = '{email}'";
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "האימייל תפוס, נסה שוב עם אימייל אחר";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"insert into {tableName} ";
                    sqlInsert += $"values ('{uname}', N'{fname}', N'{lname}', '{email}', ";
                    sqlInsert += $"'{gender}', N'{hobbies}', '{city}', '{password}', '{phoneNumber}',  ";
                    sqlInsert += $"'{prefix}', ";
                    sqlInsert += $"'{yrBorn}',";
                    sqlInsert += $"'{quest1}',";
                    sqlInsert += $"'{quest2}')";
                    sqlMsg = sqlInsert;

                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "הרשומה התווספה בהצלחה";
                }
            }
        }
    }
}