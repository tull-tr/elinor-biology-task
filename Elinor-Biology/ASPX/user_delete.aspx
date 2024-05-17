<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="user_delete.aspx.cs" Inherits="Elinor_Biology.ASPX.user_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>מחיקת משתמש</h1>
    <center>
        <form method="post" runat="server" onsubmit="return logcheck();">
            <table>
                <tr>
                    <td><label for="uname">Enter the username of the person you want to delete:</label></td>
                    <td><input type="text" id="uname" name="uname" size ="40"></td>
                    <td><span id="unameError" style="color: red;"></span></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                    <input type="submit" onclick="logcheck()" name="submit" id="submit" value="שלח" size="40"/>
                    </td>
                    <td><input type="reset" value="ניקוי"/></td>
                </tr>
            </table>
        </form>
        <h3 style="color: lightseagreen"><% Response.Write(msg); %></h3>
        <a href="admin_controller.aspx"><h3 style="color:lightseagreen; font-size: 30px; text-align: center">חזרה לעמוד בקרת מנהל</h3></a>
    </center>
    <script>
    function logcheck() {
        var uname = document.getElementById("uname").value;
        if (uname.length < 2) {
            errorMessages += "Please enter a user name with at least two characters\n";
            document.getElementById("unameError").innerText = "Please enter a first name with at least two characters";
            return false;
        } else {
            document.getElementById("unameError").innerText = "";
        }
    </script>
</asp:Content>
