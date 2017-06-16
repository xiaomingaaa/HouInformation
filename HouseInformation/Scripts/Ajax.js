

function Test1(str)
{
    $.ajax();
}
function insert(type,parms) {
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
            var s = document.getElementById("s");
            //处理回发的状态信息
            s.innerText = xmlhttp.responseText;
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }
        else
        {
            alert("发送数据出错，请重试！！");
        }
    }
    xmlhttp.open("POST", "Input.aspx?parms="+parms+"&type="+type, true);
    xmlhttp.send();

}


function uploadImage(str) {
    var upload = document.getElementById(str);
    if (upload.value == null || upload.value == "") {
        alert("请先添加图片");
        document.getElementById(str).focus();
        return;
    }
    //for (var i = 1; i <= count; i++) {
    //    //发送到服务器的数据
    //    postdata = postdata + document.getElementById("id1_" + i).value + "|";
    //}
    $('#ff').ajaxSubmit({
        type: "POST",//提交类型  
        dataType: "Text",//返回结果格式  
        url: "../Handler.ashx",//请求地址  
       
        success: function (data) {//请求成功后的函数  

            //if (data.status == "warning") {//返回警告  
            //    alert(data.msg);
            //} else if (data.status == "success") {//返回成功  
            //    $("#div_temporaryImage").append("<img style='width:300px;height:300px;' src='" + data.msg + "' /><span>临时素材mediaId:" + data.uploadmsg.media_id + "</span>");
            //}
            if (data == "" || data == null) {
                alert("返回空字符串--1");
            }
            else
                alert(data);
        },
        error: function (data) {

            if (data == "" || data == null) {
                alert("返回空字符串--2");
            }
            else
                alert("hahahah");
        },//请求失败的函数  
        async: true

    });

}
function t()
{
    alert("lail1");
}
function guanzhu1(parm)
{
    //alert("来了:"+parm);
    var flag = document.getElementById("flag");
    var str = flag.innerText;
    var xmlhttp;
    
    
    if (window.XMLHttpRequest) {
        //针对非IE6，IE5的浏览器
        xmlhttp = new XMLHttpRequest();
    }
    else {
        // IE6, IE5 浏览器执行代码
        xmlhttp = new ActiveXObject();
    }
   // var test = "";
    //alert(parms);
    //chang事件共被触发了五次状态从0-4
    xmlhttp.onreadystatechange = function () {
        //准备状态四表示的是服务器已经成功处理
        if (xmlhttp.readyState = 4 && xmlhttp.status == 200) {
            //添加逻辑
            //服务器响应的字符串
            
            //处理回发的状态信息
            var request = xmlhttp.responseText;

            //test = request;
           // alert(request+":");
            if (request == "1") {
                var button = document.getElementById("guanzhu");
                //这个就是1已关注
               // alert("已关注")
                button.setAttribute("src","../images/yiguanzhu.png");
                //button.style.backgroundImage = "url()";
            }
           
            //已经关注
            
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }
       
    }
    //alert(test);
    xmlhttp.open("POST", "guanzhu.aspx?parms=" + str+"&type="+parm, true);
    xmlhttp.send();
}
