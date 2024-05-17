function check() {
    var errorMessages = "";

    var email = document.getElementById("email").value;
    var size = email.length;
    if (size < 6 || size > 30) {
        errorMessages += "Invalid email address (6-30 characters)\n";
        document.getElementById("emailError").innerText = "Invalid email address (6-30 characters)";
        return false;
    } else {
        document.getElementById("emailError").innerText = "";
    }

    var uname = document.getElementById("uname").value;
    if (uname.length < 2) {
        errorMessages += "Please enter a user name with at least two characters\n";
        document.getElementById("unameError").innerText = "Please enter a username with at least two characters";
        return false;
    } else {
        document.getElementById("unameError").innerText = "";
    }

    var fname = document.getElementById("fname").value;
    if (fname.length < 2) {
        errorMessages += "Please enter a first name with at least two characters\n";
        document.getElementById("fnameError").innerText = "Please enter a first name with at least two characters";
        return false;
    } else {
        document.getElementById("fnameError").innerText = "";
    }

    var lname = document.getElementById("lname").value;
    if (lname.length < 2) {
        errorMessages += "Please enter a last name with at least two characters\n";
        document.getElementById("lnameError").innerText = "Please enter a last name with at least two characters";
        return false;
    } else {
        document.getElementById("lnameError").innerText = "";
    }

    var selectedGender = document.querySelector('input[name="gender"]:checked');
    if (!selectedGender) {
        errorMessages += "Please choose your gender\n";
        document.getElementById("genderError").innerText = "Please choose your gender";
        return false;
    } else {
        document.getElementById("genderError").innerText = "";
    }


    var selectedHobbies = document.querySelectorAll('input[name="hobbies"]:checked');
    if (selectedHobbies.length === 0) {
        errorMessages += "Please choose at least one hobby\n";
        document.getElementById("hobbiesError").innerText = "Please choose at least one hobby";
        return false;
    } else {
        document.getElementById("hobbiesError").innerText = "";
    }


    var selectedPrefix = document.getElementById("prefix").value;
    if (selectedPrefix == "sel") {
        errorMessages += "Please choose a valid phone prefix\n";
        document.getElementById("prefixError").innerText = "Please choose a valid phone prefix";
        return false;
    } else {
        document.getElementById("prefixError").innerText = "";
    }

    var phoneNumber = document.getElementById("phoneNumber").value;
    var phoneNumberRegex = /^[0-9]+$/;
    if (!phoneNumber.match(phoneNumberRegex) || phoneNumber.length < 2) {
        errorMessages += "Please enter a valid phone number with at least two digits\n";
        document.getElementById("phoneNumberError").innerText = "Please enter a valid phone number with at least two digits";
        return false;
    } else {
        document.getElementById("phoneNumberError").innerText = "";
    }

    var yearBorn = document.getElementById("yearBorn").value;
    var yearBornRegex = /^\d{4}$/;
    if (!yearBorn.match(yearBornRegex)) {
        errorMessages += "Please enter a valid 4-digit year\n";
        document.getElementById("yearBornError").innerText = "Please enter a valid 4-digit year";
        return false;
    } else {
        document.getElementById("yearBornError").innerText = "";
    }


    var selectedCity = document.getElementById("city").value;
    if (selectedCity === "sel") {
        errorMessages += "Please choose a valid city\n";
        document.getElementById("cityError").innerText = "Please choose a valid city";
        return false;
    } else {
        document.getElementById("cityError").innerText = "";
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