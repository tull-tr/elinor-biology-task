<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="user_register.aspx.cs" Inherits="Elinor_Biology.ASPX.user_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טופס רישום</h1>
    <style>
        .msg{
            color: lightseagreen;
        }
        table {
            border-collapse: collapse;
        }
        td {
            padding: 10px;
            text-align: center;
        }
    </style>
    <form method="post" runat="server" onsubmit="return check();">
        <table style="float: left;margin-right:10px">
            <tr>
                <td>הפרטים שצריך למלא</td>
                <td>מילוי הטופס</td>
                <td>בדיקת טופס</td>
            </tr>
            <tr>
                <td><label for="uname">Username:</label></td>
                <td><input type="text" id="uname" name="uname" size ="40"></td>
                <td><span id="unameError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="fname">First name:</label></td>
                <td><input type="text" id="fname" name="fname" size ="40"></td>
                <td><span id="fnameError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="lname">Last name:</label></td>
                <td><input type="text" id="lname" name="lname" size ="40"></td>
                <td><span id="lnameError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" size ="40"></td>
                <td><span id="emailError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label>Choose your gender:</label></td>
                <td>
                    <input type="radio" id="m" name="gender" value="M">
                    <label for="m">male</label><br>
                    <input type="radio" id="f" name="gender" value="F">
                    <label for="f">female</label><br>
                    <input type="radio" id="s" name="gender" value="smth" />
                    <label for="s">something else</label><br />
                    <input type="radio" id="i" name="gender" value="i" />
                    <label for="i">i don't want to say</label>
                </td>
                <td><span id="genderError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label>Choose your hobbies:</label></td>
                <td>
                    <input type="checkbox" id="chess" name="hobbies" value="chess" />
                    <label for="chess">chess</label><br />
                    <input type="checkbox" id="football" name="hobbies" value="football" />
                    <label for="football">football</label><br />
                    <input type="checkbox" id="math" name="hobbies" value="math" />
                    <label for="math">math</label><br />
                    <input type="checkbox" id="sport" name="hobbies" value="sport" />
                    <label for="sport">sport</label><br />
                    <input type="checkbox" id="somethingElse" name="hobbies" value="something else" />
                    <label for="somethingElse">something else</label>
                </td>
                <td><span id="hobbiesError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="prefix">Phone Prefix:</label></td>
                <td>
                    <select id="prefix" name="prefix">
                        <option value="sel">select</option>
                        <option value="077">077</option>
                        <option value="08">08</option>
                        <option value="04">04</option>
                        <option value="03">03</option>
                        <option value="02">02</option>
                        <option value="057">057</option>
                        <option value="054">054</option>
                        <option value="053">053</option>
                        <option value="052">052</option>
                        <option value="050">050</option>
                    </select>
                </td>
                <td><span id="prefixError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="phoneNumber">Phone Number:</label></td>
                <td><input type="text" id="phoneNumber" name="phoneNumber" size ="40"></td>
                <td><span id="phoneNumberError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="yearBorn">Year Born:</label></td>
                <td><input type="text" id="yearBorn" name="yearBorn" size ="40"></td>
                <td><span id="yearBornError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="city">City:</label></td>
                <td>
                    <select id="city" name="city">
                        <option value="sel">Select City</option>
                        <option value="Ashdod">Ashdod</option>
                        <option value="Ashkelon">Ashkelon</option>
                        <option value="Beit Shemesh">Beit Shemesh</option>
                        <option value="Beer Sheva">Beer Sheva</option>
                        <option value="Bnei Brak">Bnei Brak</option>
                        <option value="Eilat">Eilat</option>
                        <option value="Haifa">Haifa</option>
                        <option value="Herzliya">Herzliya</option>
                        <option value="Holon">Holon</option>
                        <option value="Jerusalem">Jerusalem</option>
                        <option value="Kfar Saba">Kfar Saba</option>
                        <option value="Lod">Lod</option>
                        <option value="Netanya">Netanya</option>
                        <option value="Netivot">Netivot</option>
                        <option value="Petah Tikva">Petah Tikva</option>
                        <option value="Ramat Gan">Ramat Gan</option>
                        <option value="Rehovot">Rehovot</option>
                        <option value="Rishon LeZion">Rishon LeZion</option>
                        <option value="Tel Aviv">Tel Aviv</option>
                        <option value="Tiberias">Tiberias</option>
                    </select>
                </td>
                <td><span id="cityError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" size ="40"></td>
                <td><span id="passwordError" style="color: red;"></span></td>
            </tr>
            <tr>
                <td><label for="confirmPassword">Confirm Password:</label></td>
                <td><input type="password" id="confirmPassword" name="confirmPassword" size ="40"></td>
                <td><span id="confirmPasswordError" style="color: red;"></span></td>
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
                <td colspan="2" style="text-align: center;">
                    <input type="submit" onclick="check()" name="submit" id="submit" value="שלח" size="40"/>
                </td>
                <td><input type="reset" value="ניקוי"/></td>
            </tr>
        </table>
    </form>
        <table>
        <% Response.Write(st); %>
    </table>
    <center>
        <h3 class="msg"><% Response.Write(msg); %></h3>
    </center>
    <script src="JavaScript/Formcheck.js">
    </script>
</asp:Content>
