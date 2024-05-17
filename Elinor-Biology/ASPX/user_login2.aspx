<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="user_login2.aspx.cs" Inherits="Elinor_Biology.ASPX.user_login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            margin: 0px auto;
            direction: rtl;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <form method="post" runat="server">
            <h1>כניסת משתמש</h1>
            <table>
                <tr>
                    <td>שם משתמש:</td>
                    <td>
                        <input type="text" name="uName" id="Name" /></td>
                </tr>
                <tr>
                    <td>סיסמה:</td>
                    <td>
                        <input type="password" name="pw" id="pw" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" name="submit" value="התחבר" /></td>
                </tr>
            </table>
        </form>
    </center>
</asp:Content>
