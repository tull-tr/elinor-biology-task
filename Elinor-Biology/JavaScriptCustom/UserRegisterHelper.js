function detect() {
    var field = document.getElementById("field").value.toLowerCase();

    if (field === "gender") {
        var genderStr = "<select name='value'>";
        genderStr += "<option value='M'>Male</option>";
        genderStr += "<option value='F'>Female</option>";
        genderStr += "<option value='smth'>Something Else</option>";
        genderStr += "<option value='i'>I Don't Want To Say</option>";
        genderStr += "</select>";
        document.getElementById("query").innerHTML = genderStr;
    } else if (field === "yearborn") {
        var yearStr = "<select name='value'><option value='0'></option>";
        var currYear = new Date().getFullYear();
        var fromYear = currYear - 113;
        var toYear = currYear - 10;
        for (var i = fromYear; i < toYear; i++) yearStr += "<option value='" + i + "'>" + i + "</option>\n";
        document.getElementById("query").innerHTML = yearStr + "</select>";
    } else if (field === "prefix") {
        var prefixStr = "<select name='value'>";
        prefixStr += "<option value='050'>050</option>";
        prefixStr += "<option value='052'>052</option>";
        prefixStr += "<option value='053'>053</option>";
        prefixStr += "<option value='054'>054</option>";
        prefixStr += "<option value='057'>057</option>";
        prefixStr += "<option value='058'>058</option>";
        prefixStr += "<option value='077'>077</option>";
        prefixStr += "<option value='03'>03</option>";
        prefixStr += "<option value='02'>02</option>";
        prefixStr += "<option value='04'>04</option>";
        prefixStr += "<option value='08'>08</option>";
        prefixStr += "</select>";
        document.getElementById("query").innerHTML = prefixStr;
    } else if (field === "city") {
        var cityStr = "<select name='value'>";
        cityStr += "<option value='Ashdod'>Ashdod</option>";
        cityStr += "<option value='Ashkelon'>Ashkelon</option>";
        cityStr += "<option value='Beit Shemesh'>Beit Shemesh</option>";
        cityStr += "<option value='Beer Sheva'>Beer Sheva</option>";
        cityStr += "<option value='Bnei Brak'>Bnei Brak</option>";
        cityStr += "<option value='Eilat'>Eilat</option>";
        cityStr += "<option value='Haifa'>Haifa</option>";
        cityStr += "<option value='Herzliya'>Herzliya</option>";
        cityStr += "<option value='Holon'>Holon</option>";
        cityStr += "<option value='Jerusalem'>Jerusalem</option>";
        cityStr += "<option value='Lod'>Lod</option>";
        cityStr += "<option value='Netanya'>Netanya</option>";
        cityStr += "<option value='Netivot'>Netivot</option>";
        cityStr += "<option value='Petah Tikva'>Petah Tikva</option>";
        cityStr += "<option value='Ramat Gan'>Ramat Gan</option>";
        cityStr += "<option value='Rehovot'>Rehovot</option>";
        cityStr += "<option value='Rishon LeZion'>Rishon LeZion</option>";
        cityStr += "<option value='Tel Aviv'>Tel Aviv</option>";
        cityStr += "<option value='Tiberias'>Tiberias</option>";
        cityStr += "</select>";
        document.getElementById("query").innerHTML = cityStr;
    }
    else if (field === "hobbies") {
        var hobbiesStr = "<select name='value'>";
        hobbiesStr += "<option value='chess'>chess</option>";
        hobbiesStr += "<option value='football'>football</option>";
        hobbiesStr += "<option value='math'>math</option>";
        hobbiesStr += "<option value='sport'>sport</option>";
        hobbiesStr += "<option value='something else'>something else</option>";
        hobbiesStr += "</select>";
        document.getElementById("query").innerHTML = hobbiesStr;
    }
    else {
        document.getElementById("query").innerHTML = "<input type='text' name='value' size='40' />";
    }
}

function detect2() {
    var field2 = document.getElementById("field2").value.toLowerCase();

    if (field2 === "gender") {
        var genderStr = "<select name='value2'>";
        genderStr += "<option value2='M'>Male</option>";
        genderStr += "<option value2='F'>Female</option>";
        genderStr += "<option value2='smth'>Something Else</option>";
        genderStr += "<option value2='i'>I Don't Want To Say</option>";
        genderStr += "</select>";
        document.getElementById("query2").innerHTML = genderStr;
    } else if (field2 === "yearborn") {
        var yearStr = "<select name='value2'><option value2='0'></option>";
        var currYear = new Date().getFullYear();
        var fromYear = currYear - 113;
        var toYear = currYear - 10;
        for (var i = fromYear; i < toYear; i++) yearStr += "<option value2='" + i + "'>" + i + "</option>\n";
        document.getElementById("query2").innerHTML = yearStr + "</select>";
    } else if (field2 === "prefix") {
        var prefixStr = "<select name='value2'>";
        prefixStr += "<option value2='050'>050</option>";
        prefixStr += "<option value2='052'>052</option>";
        prefixStr += "<option value2='053'>053</option>";
        prefixStr += "<option value2='054'>054</option>";
        prefixStr += "<option value2='057'>057</option>";
        prefixStr += "<option value2='058'>058</option>";
        prefixStr += "<option value2='077'>077</option>";
        prefixStr += "<option value2='03'>03</option>";
        prefixStr += "<option value2='02'>02</option>";
        prefixStr += "<option value2='04'>04</option>";
        prefixStr += "<option value2='08'>08</option>";
        prefixStr += "</select>";
        document.getElementById("query2").innerHTML = prefixStr;
    } else if (field2 === "city") {
        var cityStr = "<select name='value2'>";
        cityStr += "<option value2='Ashdod'>Ashdod</option>";
        cityStr += "<option value2='Ashkelon'>Ashkelon</option>";
        cityStr += "<option value2='Beit Shemesh'>Beit Shemesh</option>";
        cityStr += "<option value2='Beer Sheva'>Beer Sheva</option>";
        cityStr += "<option value2='Bnei Brak'>Bnei Brak</option>";
        cityStr += "<option value2='Eilat'>Eilat</option>";
        cityStr += "<option value2='Haifa'>Haifa</option>";
        cityStr += "<option value2='Herzliya'>Herzliya</option>";
        cityStr += "<option value2='Holon'>Holon</option>";
        cityStr += "<option value2='Jerusalem'>Jerusalem</option>";
        cityStr += "<option value2='Lod'>Lod</option>";
        cityStr += "<option value2='Netanya'>Netanya</option>";
        cityStr += "<option value2='Netivot'>Netivot</option>";
        cityStr += "<option value2='Petah Tikva'>Petah Tikva</option>";
        cityStr += "<option value2='Ramat Gan'>Ramat Gan</option>";
        cityStr += "<option value2='Rehovot'>Rehovot</option>";
        cityStr += "<option value2='Rishon LeZion'>Rishon LeZion</option>";
        cityStr += "<option value2='Tel Aviv'>Tel Aviv</option>";
        cityStr += "<option value2='Tiberias'>Tiberias</option>";
        cityStr += "</select>";
        document.getElementById("query2").innerHTML = cityStr;
    }
    else if (field2 === "hobbies") {
        var hobbiesStr = "<select name='value2'>";
        hobbiesStr += "<option value2='chess'>chess</option>";
        hobbiesStr += "<option value2='football'>football</option>";
        hobbiesStr += "<option value2='math'>math</option>";
        hobbiesStr += "<option value2='sport'>sport</option>";
        hobbiesStr += "<option value2='something else'>something else</option>";
        hobbiesStr += "</select>";
        document.getElementById("query2").innerHTML = hobbiesStr;
    }
    else {
        document.getElementById("query2").innerHTML = "<input type='text' name='value2' size='40' />";
    }
}
