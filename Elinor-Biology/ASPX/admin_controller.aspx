<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="admin_controller.aspx.cs" Inherits="Elinor_Biology.ASPX.admin_controller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>בקרת מנהל</h1>
    <ul>
            <li>
                <a href="ShowTable.aspx">טבלת מנהל</a>
            </li>
            <li>
                <a href="addadmin.aspx">הוספת מנהל</a>
            </li>
            <li>
                <a href="deleteuser.aspx">מחיקת משתמש</a>
            </li>
            <li>
                <a href="SimpleSelect.aspx">שאילתה פשוטה</a>
            </li>
            <li>
                <a href="ComplexSelect.aspx">שאילתה מורכבת</a>
            </li>
            <li>
                <a href="select1.aspx">שאילתה מספר 1</a>
            </li>
            <li>
                <a href="selectMain.aspx">שאילתה מספר 2</a>
            </li>
            <li>
                <a href="selectMain2.aspx">שאילתה מספר 3</a>
            </li>
            <li>
                <a href="select8.aspx">שאילתה מספר 4</a>
            </li>
            <li>
                <a href="select9.aspx">שאילתה מספר 5</a>
            </li>
    </ul>
</asp:Content>