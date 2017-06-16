<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Webs/Fabufangyuan.aspx.cs" Inherits="Webs_Fabufangyuan" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>发布房源</title>
   
    <%--<script type="text/javascript" src="../Scripts/admin.js"></script>
    <script type="text/javascript" src="../Scripts/Ajax.js"></script>--%>
    <script src="../Scripts/jquery-1.8.0.js" type="text/javascript" ></script>
    <script src="../Scripts/jquery.form.js" type="text/javascript" ></script>
    <script src="../Scripts/Ajax.js" type="text/javascript"></script>
    <style>
        .main{
            width: 900px;
            height: 500px;
            /*width: 1350px;
            height: 750px;*/
            display: flex;
            justify-content: space-between;
            margin: 0 auto;
            margin-top: calc(50vh - 250px);
            border-radius: 10px;
            background: #FBFBFF;
           
        }
        .left{
            width: 30%;
            height: 100%;
            font-size: 16px;
            /*display: flex;*/
            /*flex-direction: column;*/
            justify-content: space-around;
            font-family: "Microsoft YaHei",微软雅黑;
            color: white;
        }
        .right{
            width: 68%;
            height: 100%;
            border-radius:10px;
            position: relative;
        }
        .wangluo1,.geren1,.yezhu1{
            display: none;
            width: 75%;
            height: 30%;
            margin: 0 auto;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            background: #2894FF;
            margin-top: -7px;
            border-top: 5px solid #ACD6FF;
            
             
        }
        .wangluo1{
            display: block;
        }
        .wangluo,.geren,.yezhu,.wode,.lishi,.liulan{
             width: 80%;
             border: 5px solid #ACD6FF;
             height: 9%;
             margin: 0 auto;
             text-align: center;
             line-height: 46px;
             border-radius: 5px;
             transition: transform 0.1s linear;
             background: #2894FF;

        }
        .left div:hover{
            cursor: pointer;
        }
        .wangluo:hover,.geren:hover,.yezhu:hover,.wode:hover,.lishi:hover,.liulan:hover{
             transform: scale(1.02);
            
         
        }
        .l{
            width: 95%;
            height: 22%;
            text-align: center;
            border-bottom: 2px solid #ACD6FF;
            margin: 5px auto;
            font-size: 12px;
            line-height: 30px;
        }
        .l:first-child
        {
            border-top: none;
            margin-top: 0px;
        }
        .l:last-child
        {
            border-bottom: none;
        }
        .l:hover{font-size: 14px;}
        .kuang{
            width: 95%;
            height: 95%;
            margin: 0 auto;
            margin-top: 15px;
         border: 5px solid #ACD6FF;
         border-radius: 10px;
        }
        .kuang1{
            width: 95%;
            height: 95%;
            margin: 0 auto;
            margin-top: 15px;
           border: 5px solid #ACD6FF;
            display: none;
            border-radius: 10px;
        }
        .kuang2{
            width: 95%;
            height: 95%;
            margin: 0 auto;
            margin-top: 15px;
       border: 5px solid #ACD6FF;
             display: none;
             border-radius: 10px;
        }
        .xiaokuang{
            width: 36%;
            height: 25px;
         
            position: absolute;
            left: 20px;
            top: -10px;
        }
        .xiaokuang1{
            width: 28%;
            height: 100%;
            border: 2px solid #ACD6FF;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            display: inline-block;
            cursor: pointer;
            line-height: 25px;
            text-align: center;
            background: #2894FF;
            color: white;
            font-family: "Microsoft YaHei",微软雅黑;
            font-size: 14px;
        }
        .kuang, .kuang1, .kuang2 {     
        }
        .one {
        width:100%;
        height:100%;
        
    
       
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        }
        .l1 {
         width:90%;
        height:90%;
         margin:0 auto;
        margin-top:20px;
        display:block;
        }
         .two {
        width:90%;
        height:90%;
        
        margin:0 auto;
        margin-top:20px;
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        
        }
        .top {
        
        width:100%;
        height:85%;
    
        display:flex;
        justify-content:space-between;

        
        }
        .bottom {
        width:100%;
        height:10%;
       
        }
        .left1 {
        
        width:35%;
        height:100%;
       
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        }
         .right1 {
        
        width:55%;
        height:100%;
        
         display:flex;
        flex-direction:column;
        justify-content:space-between;
        }
        .xx,.xx1 {
        width:100%;
        height:10%;
    

        }
        .xx {
        text-align:right;
        font-size:15px;
        line-height:30px;
        font-family: "Microsoft YaHei",微软雅黑;
        color:#2894FF;

        }
        .xx1 {
        text-align:left;
        font-size:15px;
        line-height:30px;
        font-family: "Microsoft YaHei",微软雅黑;
        }
        .tijiao {
        width:40%;
        height:100%;
       
        border-radius:10px;
        margin:0 auto;
     
        }
        input {
        width:60%;
        height:100%;
        border:2px solid #ACD6FF;
        box-sizing:border-box;
        }
         textarea {
        width:60%;
        height:100%;
        border:2px solid #ACD6FF;
        box-sizing:border-box;
        }
        .tj {
        width:100%;
        background:#2894FF;
        border-radius:5px;
        color:white;
         font-family: "Microsoft YaHei",微软雅黑;
        }
        .wj {
        height:100%;
        border:none;
        color:white;
         font-family: "Microsoft YaHei",微软雅黑;
        }
        .tijiao1 {
             width:40%;
        height:100%;
        text-align:center;
        border-radius:10px;
        margin:0 auto;
        display:inline-block;}
        .bottom {
        text-align:center;}
      
    </style>
</head>
<body style="background-image:url(../images/背景.jpg);" onload="showDIV('d1')" >
    <form runat="server" id="ff">
    <div class="main">
       <%-- <div class="left">
            <div class="wangluo" onclick="S1()">新房</div>
            <div class="wangluo1" id="Wangluo1">
                <div class="l" onclick="showDIV('d1')">录入出租房源</div>
                <%--<div class="l">管理出租房源</div>--%>
                
                <%--<div class="l">管理出售房源</div>--%>
           <%-- </div>
            <div class="geren" onclick="S2()">二手房</div>
            <div class="geren1" id="Geren1">
                 <div class="l" onclick="showDIV('d1')">录入出租房源</div>
                <div class="l" onclick="showDIV('d2')">录入出售房源</div>
            </div>--%>
            <%--<div class="yezhu" onclick="S3()">？？</div>
            <div class="yezhu1" id="Yezhu1">
                 <div class="l">录入房源</div>
                <%--<div class="l">管理房源</div>
            </div>--%>

         <%--   <div class="wode">我的关注</div>
            <div class="lishi">发送历史记录</div>
            <div class="liulan">浏览记录</div>--%>
       <%-- </div>--%>
       
           <%-- <div class="xiaokuang">
                <div class="xiaokuang1" onclick="S4()">住宅</div>--%>
               <%-- <div class="xiaokuang1" onclick="S5()">别墅</div>
                <div class="xiaokuang1" onclick="S6()">商铺</div>--%>
            
            
            <div class="kuang" id="zz">
                <div class="l1" id="d1">
                 <div class="one">
                   <div class="top">
                   <div class="left1">
                       <div class="xx" >房源地址 :</div>
                       <div class="xx" >价格 :</div>
                       
                       <div class="xx" >面积 :</div>
                       <div class="xx" >电话 :</div>
                       <div class="xx" >户型 :</div>
                       <div class="xx" >业主有话说 :</div>
                       <div class="xx" id="id1_7">房源图 :</div>
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" runat="server" placeholder="请输入房子地址" id="id1_1" /></div>
                       <div class="xx1"><input id="id1_2" runat="server" type="text" placeholder="例如15000" /></div>
                       <div class="xx1"><input id="id1_3" type="text" runat="server" placeholder="请输入房源面积" /></div>
                       <div class="xx1"><input id="id1_4" type="text" runat="server" placeholder="请输入业主电话" /></div>
                       <div class="xx1"><input id="id1_5" type="text" placeholder="例如3室2厅" runat="server" /></div>
                       <div class="xx1"><textarea id="id1_6" runat="server"></textarea></div>
                       <div class="xx1">
                           <asp:FileUpload ID="FileUpload1" runat="server" class="wj" BorderColor="White" BorderWidth="0px" ForeColor="#0066FF"/></div>
                   </div>
                   </div>
                   <div class="bottom">
                       <div class="tijiao">
                           <asp:Button ID="Button1" runat="server" Text="确认发布" CssClass="tj" OnClick="Button1_Click" />
                           <%--<input type="button" id="submit" value="确认发布" class="tj" />--%>

                       </div>
                   </div>
               </div>
                    </div>
               <div class="l1" id="d2">
                 <div class="one">
                   <div class="top">
                   <div class="left1">
                       <div class="xx">房源地址 :</div>
                       <div class="xx">户型 :</div>
                       
                       <div class="xx">面积 :</div>
                       <div class="xx">楼层 :</div>
                       <div class="xx">朝向 :</div>
                       <div class="xx">价格 :</div>
                       <div class="xx">姓名 :</div>
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" id="id2_1" runat="server" placeholder="请输入房子地址" /></div>
                       <div class="xx1"><input type="text" placeholder="例如三室两厅" id="id2_2" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源面积" id="id2_3" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入楼层" id="id2_4" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入朝向" id="id2_5" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入价格" id="id2_6" runat="server" /></div>
                        <div class="xx1"><input type="text" placeholder="请输入姓名" id="id2_7" runat="server" /></div>
                      
                   </div>
                       </div>
                   <div class="bottom">
                       <div class="tijiao">
                           <input type="button" value="下一页" class="tj" onclick="document.getElementById('d3').style.display = 'block'; document.getElementById('d2').style.display = 'none';"/>
                       </div>
                   </div>
               </div>
                    </div>
                  <div class="l1" id="d3">
                <div class="two">
                  <div class="top">
                   <div class="left1">
                       <div class="xx">手机号 :</div>
                       <div class="xx">装修情况 :</div>
                       
                       <div class="xx">开发商 :</div>
                       
                       <div class="xx" >房源图 :</div>
                     
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" placeholder="请输入手机号" id="id2_8" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="例如装修情况" id="id2_9" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入开发商名" id="id2_10" runat="server" /></div>
                       
                       <%--<div class="xx1"><input type="text" placeholder="请输入房源装修状况" /></div>--%>
                        <div class="xx1">
                           <asp:FileUpload ID="FileUpload2" runat="server" class="wj" BorderColor="White" BorderWidth="0px" ForeColor="#0066FF"/></div>
                        <%-- <div class="xx1"><input type="text" placeholder="个人房源或开发商房源" /></div>
                         <div class="xx1"><input type="text" placeholder="请输入开发商" /></div>--%>
                        
                   </div>
                      </div>
                   <div class="bottom">
                       <div class="tijiao1"><input type="button" value="上一页" class="tj" onclick="document.getElementById('d3').style.display = 'none'; document.getElementById('d2').style.display = 'block';"/></div>
                  
                                          
                       <div class="tijiao"><input type="button"  value="确认发布" class="tj" onclick="uploadImage('FileUpload1',count)"/></div>
                   
                   </div>
                    
                </div>
                      
              
            </div>
               


                </div>
          
        </div>
  
    <script>
        function S()
        {
             var b=document.getElementById('Wangluo1');
              var b1=document.getElementById('Geren1');
               //var b2=document.getElementById('Yezhu1');
               
               b.style.display='none';
               b1.style.display='none';
               //b2.style.display='none';
               
        }
        function S1()
        {
            S();
            var a=document.getElementById('Wangluo1');
            a.style.display='block';
        }
         function S2()
        {
            S();
            var a=document.getElementById('Geren1');
            a.style.display='block';
        }
        // function S3()
        //{
        //    S();
        //    var a=document.getElementById('Yezhu1');
        //    a.style.display='block';
        //}
         function SS()
        {
             var b=document.getElementById('zz');
              //var b1=document.getElementById('bs');
               //var b2=document.getElementById('sp');
               
               b.style.display='none';
               //b1.style.display='none';
               //b2.style.display='none';
               
        }
        function S4()
        {
            SS();
            var a=document.getElementById('zz');
            a.style.display='block';
        }
        // function S5()
        //{
        //    SS();
        //    var a=document.getElementById('bs');
        //    a.style.display='block';
        //}
        // function S6()
        //{
        //    SS();
        //    var a=document.getElementById('sp');
        //    a.style.display='block';
        // }
         function showDIV(id)
         {
             for (var i = 1; i <= 3; i++)
             {
                 var div = document.getElementById("d" + i);
                 div.style.display = "none";
             }
             var div = document.getElementById(id);
             div.style.display = "block";
         }
        
    </script>
        </form>
</body>
</html>
