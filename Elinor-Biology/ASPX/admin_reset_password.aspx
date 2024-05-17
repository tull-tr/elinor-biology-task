<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="admin_reset_password.aspx.cs" Inherits="Elinor_Biology.ASPX.admin_reset_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>שחזור סיסמת מנהל</h1>
<center>
    <form method="post" runat="server" onsubmit="return resetcheck();">
        <table>
            <tr>
                <td><label for="uname">Username:</label></td>
                <td><input type="text" id="uname" name="uname" size ="40"></td>
                <td><span id="unameError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="quest1">What street do you live on?</label></td>
                <td><input type="text" id="quest1" name="quest1" size ="40"></td>
                <td><span id="quest1Error" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="quest2">What is your best friend's name?</label></td>
                <td><input type="text" id="quest2" name="quest2" size ="40"></td>
                <td><span id="quest2Error" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="password">New Password:</label></td>
                <td><input required type="password" id="password" name="password" size ="40"></td>
                <td><span id="passwordError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="confirmPassword">Confirm Password:</label></td>
                <td><input required type="password" id="confirmPassword" name="confirmPassword" size ="40"></td>
                <td><span id="confirmPasswordError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                <input type="submit" onclick="resetcheck()" name="submit" id="submit" value="שלח" size="40"/>
                </td>
                <td><input type="reset" value="ניקוי"/></td>
            </tr>
        </table>
    </form>
    <h3 style="color: lightseagreen"><% Response.Write(msg); %></h3>
</center>
<script>
    function resetcheck() {
        var uname = document.getElementById("uname").value;
        if (uname.length < 2) {
            errorMessages += "Please enter a first name with at least two characters\n";
            document.getElementById("unameError").innerText = "Please enter a username with at least two characters";
            return false;
        } else {
            document.getElementById("fnameError").innerText = "";
        }
        var password = document.getElementById("password").value;
        if (password.length < 6 || password.length > 8) {
            errorMessages += "Please enter a password between 6 and 8 characters\n";
            document.getElementById("passwordError").innerText = "Please enter a password between 6 and 8 characters";
            return false;
        } else {
            document.getElementById("passwordError").innerText = "";
        }

        var confirmPassword = document.getElementById("confirmPassword").value;
        if (confirmPassword !== password) {
            errorMessages += "Passwords do not match\n";
            document.getElementById("confirmPasswordError").innerText = "Passwords do not match";
            return false;
        } else {
            document.getElementById("confirmPasswordError").innerText = "";
        }

        var quest1 = document.getElementById("quest1").value;
        if (quest1.length < 2) {
            errorMessages += "Please enter an answer with at least two characters\n";
            document.getElementById("quest1Error").innerText = "Please enter an answer with at least two characters";
            return false;
        } else {
            document.getElementById("quest1Error").innerText = "";
        }

        var quest2 = document.getElementById("quest1").value;
        if (quest2.length < 2) {
            errorMessages += "Please enter an answer with at least two characters\n";
            document.getElementById("quest2Error").innerText = "Please enter an answer with at least two characters";
            return false;
        } else {
            document.getElementById("quest2Error").innerText = "";
        }

        if (errorMessages !== "") {
            return;
        } else {
            document.forms[0].submit();
        }
    }
</script>
</asp:Content>

