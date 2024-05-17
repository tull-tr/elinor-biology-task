<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="Elinor_Biology.ASPX.admin_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>דף מנהל</h1>
    <h3 style="color: lightseagreen; text-align: center; font-size: 40px"><% Response.Write(msg); %></h3>
</asp:Content>
