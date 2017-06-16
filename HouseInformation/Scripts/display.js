function ahidden(obj,type)
{
    obj.style.display = "none";
    var s1 = type + "|";
    var str = document.getElementById("flag").innerText;
    var str1 = str.replace(s1, "");
    document.getElementById("flag").innerText=str1;
}
function aclick(obj, type)
{
    var div = document.getElementById("flag");
    div.innerText += type + "|";//把选中的类别标记在文本内容中
   // div.style.display = "block";
    var a = "<a href='#' onclick='ahidden(this,1)'>" + obj.innerText + "</a>";
    document.getElementById("select").innerHTML += a;
}
function getData()
{
    var content = document.getElementById("flag").innerText;
    var xmlhttp;
    if (window.XMLHttpRequest) {
        //针对非IE6，IE5的浏览器
        xmlhttp = new XMLHttpRequest();
    }
    else {
        // IE6, IE5 浏览器执行代码
        xmlhttp = new ActiveXObject();
    }

    //alert(parms);
    //chang事件共被触发了五次状态从0-4
    xmlhttp.onreadystatechange = function () {
        //准备状态四表示的是服务器已经成功处理
        if (xmlhttp.readyState = 4 && xmlhttp.status == 200) {
            //添加逻辑
            //服务器响应的字符串
            var s = document.getElementById("right");
            //处理回发的状态信息
            var html = xmlhttp.responseText;
            //if (html == "-1") {
               
            //    s.style.backgroundImage = "url(../images/cha1.png)";
            //}
            //else {
            //    s.innerText = html;
                
            //}
            s.innerHTML = html;
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }
      
    }
    xmlhttp.open("POST", "displayData.aspx?parms=" + content, true);
    xmlhttp.send();
}
function getshowData(type)
{
    var xmlhttp;
    if (window.XMLHttpRequest) {
        //针对非IE6，IE5的浏览器
        xmlhttp = new XMLHttpRequest();
    }
   
    else {
        // IE6, IE5 浏览器执行代码
        xmlhttp = new ActiveXObject();
    }
   
    //alert(parms);
    //chang事件共被触发了五次状态从0-4
    xmlhttp.onreadystatechange = function () {
        //准备状态四表示的是服务器已经成功处理
        if (xmlhttp.readyState = 4 && xmlhttp.status == 200) {
            //添加逻辑
            //服务器响应的字符串
            var s = document.getElementById("right");
            //处理回发的状态信息
            s.innerHTML = xmlhttp.responseText;
           
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }

    }
    xmlhttp.open("POST", "getshowData.aspx?type=" + type, true);
    xmlhttp.send();
}
