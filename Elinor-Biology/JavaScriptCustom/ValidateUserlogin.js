function logcheck() {
    var errorMessages = "";

    var uname = document.getElementById("uname").value;
    if (uname.length < 2) {
        errorMessages += "Please enter a user name with at least two characters\n";
        document.getElementById("unameError").innerText = "Please enter a user name with at least two characters";
        return false;
    } else {
        document.getElementById("unameError").innerText = "";
    }

    var password = document.getElementById("password").value;
    if (password.length < 6 || password.length > 8) {
        errorMessages += "Please enter a password between 6 and 8 characters\n";
        document.getElementById("passwordError").innerText = "Please enter a password between 6 and 8 characters";
        return false;
    } else {
        document.getElementById("passwordError").innerText = "";
    }
}