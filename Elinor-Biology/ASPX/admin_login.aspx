<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Elinor_Biology.ASPX.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>התחברות מנהל</h1>
    <br />
    <center>
        <form method="post" runat="server" onsubmit="return logcheck();">
            <table>
                <tr>
                    <td><label for="uname">Username:</label></td>
                    <td><input type="text" id="uname" name="uname" size ="40"></td>
                    <td><span id="unameError" style="color: red;"></span></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input required type="password" id="password" name="password" size ="40"></td>
                    <td><span id="passwordError" style="color: red;"></span></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                    <input type="submit" onclick="logcheck()" name="submit" id="submit" value="שלח" size="40"/>
                    </td>
                    <td><input type="reset" value="ניקוי"/></td>
                </tr>
            </table>
        </form>
        <br />
        <span class="textbox"><strong>Forgot Password? <a href="admin_reset_password.aspx"> Reset Here</a></strong></span>
        <br />
        <h3 style="color: lightseagreen"><% Response.Write(msg); %></h3>
    </center>
    <style>
        .textbox{
            background-color: lawngreen;
            color:green;
            padding: 3px;
            font-size: 30px;
        }
    </style>

    <script src="JavaScriptCustom/ValidateAdminDetails.js">
    </script>
</asp:Content>
