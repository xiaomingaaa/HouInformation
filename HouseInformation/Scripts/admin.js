function bghover(obj, flag)
{
    if (flag)
    {
        obj.style.color = '#000000';
    }
    else {
        obj.style.color = '#00CCFF';
    }
}
function mousedown(obj,flag)
{
    var span1 = document.getElementById("s1");
    span1.style.background = "#CCCCCC";

    var span2 = document.getElementById("s2");
    span2.style.background = "#CCCCCC";

    var span3 = document.getElementById("s3");
    span3.style.background = "#CCCCCC";

    obj.style.background = "#00CCFF";
    var div;
    if (flag == 1) {
        div = document.getElementById("show1");
        div.style.display = "block";
        var div1 = document.getElementById("show2");
        div1.style.display = "none";
        var div2 = document.getElementById("show3");
        div2.style.display = "none";
    }
    else if (flag == 2) {
        div = document.getElementById("show2");
        div.style.display = "block";
        var div1 = document.getElementById("show1");
        div1.style.display = "none";
        var div2 = document.getElementById("show3");
        div2.style.display = "none";
    }
    else if (flag == 3) {
        div = document.getElementById("show3");
        div.style.display = "block";
        var div1 = document.getElementById("show1");
        div1.style.display = "none";
        var div2 = document.getElementById("show2");
        div2.style.display = "none";
    }
    else
    {
        alert("您不该看到本消息，可能是太帅/漂亮了");
    }
}
function show()
{
    var div = document.getElementById("show1");
    div.style.display = "block";
}