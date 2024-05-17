var myVar = setInterval(function () { myTimer() }, 500);
function myTimer() {
    var d = new Date();
    var t = d.toLocaleTimeString();
    document.getElementById("myTime").innerHTML = t;
}
n = new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;