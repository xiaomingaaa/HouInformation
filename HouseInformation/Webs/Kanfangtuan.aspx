 <%@ Page AutoEventWireup="true" CodeFile="Kanfangtuan.aspx.cs" Inherits="Kanfangtuan" Language="C#" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>看房团</title>
    <link href="../Styles/Kanfangtuan.css" rel="stylesheet" />
    <link href="../Styles/warn.css" rel="stylesheet" />
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=nN4fc9GcIBa3mbNqxL3CvfGb&v=1.1&services=true">
</script>
    
    <script type="text/javascript" src="../scripts/loaddata.js"></script>
   
 
    




</head>
<body onload="load()">
   
     <div class="k" id="k"  runat="server">
        <div class="kuang" ></div>
        <div class="kuang1" style="height:300px;">
            <div class="s"><span>温馨提示</span><span id="x" onclick="hiddenTan()">&#10005</span></div>
            <div class="x">
                <div class="s1" style="height:400px;">
                    <span id="neirong" runat="server"></span>
                </div>
               
            </div>
        </div>
   </div>


    <form id="form1" runat="server">
        <div class="dad">
<div id="container">
     <div id="top"><img src="../images/h.jpg" class="pic" /></div>
     <div id="navi">
     
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/Webs/DisplayPage.aspx">首页</asp:LinkButton><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/Webs/DisplayPage.aspx">&nbsp;&nbsp;新房</asp:LinkButton><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" PostBackUrl="~/Webs/DisplayPage.aspx">&nbsp;&nbsp;二手房</asp:LinkButton>
         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" PostBackUrl="~/Webs/DisplayPage.aspx">&nbsp;&nbsp;租房</asp:LinkButton>
      <a href="Fabufangyuan.aspx">&nbsp;&nbsp;发布房源</a><a href="admin.aspx">&nbsp;&nbsp;我的管理</a>
     
     </div>
    </div>
        <div id="left">
            <div id="kong">
            </div>
            <span class="border">看房线路</span><br />
            <span><a href="http://www.baidu.com">【2017-05-07】龙湖-荥阳线</a></span>
            <asp:Label ID="Label4" runat="server" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="#999999" Height="17px" Text="热门区域" Width="69px"></asp:Label>
        </div>
        <div id="right">
            <div id="kong">
            </div>
            <div style="float:right">
            <span class="border" id="what" style="cursor:pointer;" onclick="showTan('随着社会的发展，城市的不断建设，城市变得越来越庞大，出行的路途也越来越遥远；随着物质质量的提高，百姓的眼光和需求也不段的增加；百姓置业也不再是局限于局部，逐渐走出自己所在的城区或城市。房产商为了适应当前环境，提高自己的利益，打出自己的品牌，更加有效的增加客源和销售量，以旅游和团购的思路为基础，以车代步方便快捷方式为有房产需求的客户提供接、看、送一体化的旅游加购房营销新模式称之为看房团。')">什么是看房团</span>
        </div>
            </div>
            <div id="showcontent" runat="server">
      
                </div>
        <div id="foot" onclick="test()">
             <div class="footerBox">版权所有:望城居有限公司</div>
             <div class="footerbot">脚注信息:添加友情链||接合作商家||特别推荐||联系本站方式</div>
        </div>
            </div>
        <div style="margin:0 auto;text-align:center;width:980px;height:500px;background:#eee;display:none;" id="show" class="ll">
            <div style="float:right;width:30px;height:30px;cursor:pointer;" id="hid" onclick="F()">
                <img class="xz"  src="../images/cha1.png" width="30" height="30" />
                </div>
            <div style="width:980px;height:500px;">
                
        <div id="showmap" style="float:left;width:600px;height:500px;border:1px solid gray">
            </div>
            <div id="result" style="float:left;width:340px;height:500px;background:#eee;overflow-y:scroll;">
                </div>
                </div>
            </div>
        <div id="point" style="display:none;">

      </div>
    </form>
</body>
</html>
<script type="text/javascript">
    var map = new BMap.Map("showmap");

    map.addControl(new BMap.NavigationControl());   // 添加平移缩放控件
    map.addControl(new BMap.ScaleControl());        // 添加比例尺控件
    map.addControl(new BMap.OverviewMapControl());  // 添加缩略地图控件

    map.addControl(new BMap.MapTypeControl());      // 添加地图类型控件
    map.setCurrentCity("郑州");                     // 设置地图显示的城市

   
   
    map.enableScrollWheelZoom();                    // 启用滚轮放大缩小


    map.centerAndZoom(new BMap.Point(117.995681, 37.391121), 14);

    function findWay(startpoi,endpoi) {
        //var start = document.getElementById("placeStart");    //设定起点
        //var end = document.getElementById("placeEnd");       //设定终点
        //if (start.value.length <= 0) {
        //    alert("请输入起点");   //起点为空，弹出警告
        //    start.focus();        //起点为空，把焦点放在起点处
        //    return;
        //}
        //if (end.value.length <= 0) {
        //    alert("请输入终点");   //终点为空，弹出警告
        //    end.focus();          //终点为空，把焦点放在起点处
        //    return;
        //}

        var driving = new BMap.DrivingRoute(map, { renderOptions: {     //创建驾车导航对象
            map: map,
            panel: "result",
            autoViewport: true
        }
        });

        driving.setSearchCompleteCallback(function (result) {                //判断是否有此路线
            if (driving.getStatus() == BMAP_STATUS_SUCCESS) {
            }
            else {
                alert("没有搜索到路线，请确定起始点是否有效!");
                start.focus();
            }
        })

        driving.search(startpoi, endpoi);    //查询路线

    }

    function show()
    {
        var e = document.getElementById("result");
        alert(e.innerText);
    }
    function F()
    {
        var div = document.getElementById("show");
        div.style.display = "none";
    }
    function showDiv(str)
    {
        var id = str.className;
        //alert(id);
        var div = document.getElementById("show");
        div.style.display = "block";
        var getpoi = document.getElementById(id);
       var str1 = getpoi.innerText;
        // alert(str1);

        var arr = str1.split('|');
        //alert(arr[0]);

       // alert(arr[0] + "###" + arr[1]);
        findWay(arr[0],arr[1])
    }
  
    function baoming(obj)
    {
        //alert("asdsad");
        var id= obj.id;
        var xmlhttp;
        //alert(id);

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
                
                //处理回发的状态信息
                var s = xmlhttp.responseText;
               // alert(s);
                //
                obj.value = "已报名";
                //服务器响应的xml文件
                // xmlhttp.responseXML;
            }

        }
        xmlhttp.open("POST", "baoming.aspx?groupid="+id, true);
        xmlhttp.send();
    }
    function hiddenTan() {
        document.getElementById("k").style.display = "none";
    }




    function showTan(str) {
        document.getElementById("k").style.display = "block";
        document.getElementById("neirong").innerText = str;
    }

</script>
