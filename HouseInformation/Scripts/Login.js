//function submit_login()
//{
//    var userid = $("#userid").val();
//    var userpwd = $("#password").val();
//    if (userid == "" || userpwd == "")
//    {
//        alert("用户名或密码不能为空！");
//        return false;
//    }
//    $.ajax({
//        type: "get",
//        url: "~/Login.aspx.cs?userid=" + userid + "&pwd" + userpwd,
//        cache: false,
//        success: function (reg) {
//            var arr = reg.split('#');
//            var returnval = arr[0].toString();
//            var tag = arr[0].toString();
//            if (returnval == "0") {
//                window.location.href("url");
//            }
//            else
//                $("#tag").text(tag);
//        },
//        error:
//            $("#tag").text("本不应该看到此信息，那估计是你太帅/漂亮了")
//    });
//}

function CheckInput()
{
    var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
    var button = document.getElementById("Button1");
    if (pattern.test($("#Button1").val()))
    {
        alert("请不要输入特殊字符！");
    }
    
}
function init()
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
            var s = document.getElementById("users");
            //处理回发的状态信息
            s.innerText = xmlhttp.responseText;
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }
       
    }
    xmlhttp.open("POST", "getusers.aspx", true);
    xmlhttp.send();
}

function checkuser(obj) {
    var div = document.getElementById("users");
    var content = div.innerText;
    var arr = content.split('*');
    //for (var i = 0,l=arr.length; i < l; i++)
    //{
    //    var arrary = arr[i].split('|');
    //    if (arrary[0] != obj.value.toString()) {
    //        var span = document.getElementById("label");
    //        span.innerText = "不存在此用户名:" + arrary[i] + ":" + arr[i].toString() + ":" + obj.value;
    //    }
    //    else {
    //        var span = document.getElementById("label");
    //        span.innerText = "正确";
    //    }
    //}
    var cha = document.getElementById("cha");
    var duigou = document.getElementById("duigou");
    cha.style.display = "none";
    duigou.style.display = "none";
    for(var value of arr)
    {
        if (value != null && value != "")
        {
            var array = value.split('|');
            if (array[0] != obj.value.toString()) {
                
               
                duigou.style.display = "none";
                cha.style.display = "block";
            }
            else {
                cha.style.display = "none";
                duigou.style.display = "block";
                return;
            }
        }

    }
}
function login()
{
    var div = document.getElementById("users");
    var content = div.innerText;
    var arr = content.split('*');
    var username = document.getElementById("username");
    var passwd = document.getElementById("TextBox2");
    var flag = false;
    for(var value of arr)
    {
        if (value != null && value != "")
        {
            var array = value.split('|');
            if (array[0] == username.value.toString()&&array[1]==passwd.value.toString()) {
               
                flag = true;
               
            }

        }

    }
    if (!flag)
    {
        showTan("用户名或密码错误");
    }
}
function hiddenTan()
{
    document.getElementById("k").style.display = "none";
}




function showTan(str){
    document.getElementById("k").style.display = "block";
    document.getElementById("neirong").innerText = str;
}
