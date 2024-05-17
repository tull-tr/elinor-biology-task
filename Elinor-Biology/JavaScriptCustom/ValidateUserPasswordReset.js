function resetcheck() {
    var errorMessages = "";

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