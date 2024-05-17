<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="add_admin_to_db.aspx.cs" Inherits="Elinor_Biology.ASPX.add_admin_to_db" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>הוספת מנהל</h1>
    <center>
        <table>
            <form method="post" runat="server">
                <tr>
                    <td><label for="uname">Username:</label></td>
                    <td><input required type="text" id="uname" name="uname" size ="40"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" name="submit" id="submit" value="שלח" size="40"/>
                    </td>
                </tr>
            </form>
        </table>
    </center>
    <h3 style="color:lightseagreen; font-size: 30px; text-align: center"><% Response.Write(msg); %></h3>
    <a href="adminMain.aspx"><h3 style="color:lightseagreen; font-size: 30px; text-align: center">חזרה לעמוד בקרת מנהל</h3></a>
</asp:Content>
