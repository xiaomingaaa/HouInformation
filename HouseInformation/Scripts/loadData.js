function load()
{
   // alert("lail");
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
            var s = document.getElementById("showcontent");
            //处理回发的状态信息
            s.innerHTML= xmlhttp.responseText;
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }

    }
    xmlhttp.open("POST", "loadData.aspx", true);
    xmlhttp.send();
}
