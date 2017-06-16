<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Webs_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员</title>
   
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
            
            flex-direction: column;
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
        display:none;
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
        #rentData {
             width:90%;
        height:90%;
         margin:0 auto;
        margin-top:20px;
        overflow-x:scroll;
        display:none;
        }
        #concern {
  width:90%;
        height:90%;
         margin:0 auto;
        margin-top:20px;
        overflow-x:scroll;
        display:none;
        }
        .aa {
        text-decoration:none;
        }
    </style>
</head>
<body style="background-image:url(../images/背景.jpg);" onload="init()" >
    <form runat="server" id="ff">
    <div class="main">
        <div class="left">
            <div class="wangluo">个人房源管理</div>
            <div class="wangluo1" id="Wangluo1">
                <div class="l" onclick="showDIV('d1')">录入出租房源</div>
                <div class="l" onclick="hiddenDiv()">
                   
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="White" CssClass="aa">管理出租房源</asp:LinkButton></div>
              
           <div class="l">
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="aa" ForeColor="White" OnClick="LinkButton2_Click">我的关注</asp:LinkButton>
               </div>

            

         
           
          </div>
        </div>
        <div class="right">
           <%-- <div class="xiaokuang">
                <div class="xiaokuang1" onclick="S4()">住宅</div>
                <div class="xiaokuang1" onclick="S5()">别墅</div>
                <div class="xiaokuang1" onclick="S6()">商铺</div>
            </div>--%>
            
            <div class="kuang" id="zz">
                <div id="concern" runat="server" style="display:none">
                   <asp:GridView ID="GridView2" runat="server"></asp:GridView> 
                </div>
                    <div id="newData" runat="server" style="display:none">
                        <asp:GridView ID="GridView3" runat="server"></asp:GridView>
                        </div>
                <div id="rentData" runat="server" >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateColumns="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="houseid"></asp:GridView>    
                </div>


                <div class="l1" id="d1">
                 <div class="one">
                   <div class="top">
                   <div class="left1">
                       <div class="xx" >房源地址 :</div>
                       <div class="xx" >价格 :</div>
                       
                       <div class="xx" >面积 :</div>
                       <div class="xx" >电话 :</div>
                       <div class="xx" >装修状况 :</div>
                       <div class="xx" >业主有话说 :</div>
                       <div class="xx" id="id1_7">房源图 :</div>
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" placeholder="请输入房子地址" id="id1_1" runat="server" /></div>
                       <div class="xx1"><input id="id1_2" runat="server" type="text" placeholder="例如15000" /></div>
                       <div class="xx1"><input id="id1_3" runat="server" type="text" placeholder="请输入房源面积" /></div>
                       <div class="xx1"><input id="id1_4" runat="server" type="text" placeholder="请输入业主电话" /></div>
                       <div class="xx1"><input id="id1_5" runat="server" type="text" placeholder="请输入房源装修状况" /></div>
                       <div class="xx1"><textarea id="id1_6" runat="server"></textarea></div>
                       <div class="xx1">
                           <asp:FileUpload ID="FileUpload1" runat="server" class="wj" BorderColor="White" BorderWidth="0px" ForeColor="#0066FF"/></div>
                   </div>
                   </div>
                   <div class="bottom">
                       <div class="tijiao">
                           <asp:Button ID="Button1" runat="server" Text="确认发布" class="tj" OnClick="Button1_Click" /> </div>
                   </div>
               </div>
                    </div>
               <div class="l1" id="d2">
                 <div class="one">
                   <div class="top">
                   <div class="left1">
                       <div class="xx">房源地址 :</div>
                       <div class="xx">价格 :</div>
                       
                       <div class="xx">面积 :</div>
                       <div class="xx">电话 :</div>
                       <div class="xx">装修状况 :</div>
                       <div class="xx">物业类型 :</div>
                       <div class="xx">开发商 :</div>
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" id="id2_1" runat="server" placeholder="请输入房子地址" /></div>
                       <div class="xx1"><input type="text" id="id2_2" runat="server" placeholder="例如15000" /></div>
                       <div class="xx1"><input type="text" id="id2_3" runat="server" placeholder="请输入房源面积" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入业主电话" id="id2_4" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源装修状况" id="id2_5" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="个人房源或开发商房源" id="id2_6" runat="server" /></div>
                        <div class="xx1"><input type="text" placeholder="请输入开发商" id="id2_7" runat="server" /></div>
                      
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
                       <div class="xx">使用年限 :</div>
                       <div class="xx">环线位置 :</div>
                       
                       <div class="xx">销售状况 :</div>
                       <div class="xx">开盘时间 :</div>
                       <div class="xx">交易时间 :</div>
                       <div class="xx">优惠政策 :</div>
                       <div class="xx">售楼地址 :</div>
                     
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" placeholder="请输入房子地址" id="id2_8" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="例如15000" id="id2_9" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源面积" id="id2_10" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入业主电话" id="id2_11" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源装修状况" id="id2_12" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="个人房源或开发商房源" id="id2_13" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="请输入开发商" id="id2_14" runat="server" /></div>
                        
                   </div>
                      </div>
                   <div class="bottom">
                       <div class="tijiao1"><input type="button" value="上一页" class="tj" onclick="document.getElementById('d3').style.display = 'none'; document.getElementById('d2').style.display = 'block';"/></div>
                       <div class="tijiao1"><input type="button" value="下一页" class="tj" onclick="document.getElementById('d3').style.display = 'none'; document.getElementById('d4').style.display = 'block';"/></div>
                   </div>
                    
                </div>
                      
              
            </div>
                <div class="l1" id="d4">
                <div class="two">
                  <div class="top">
                   <div class="left1">
                       <div class="xx">周边状况 :</div>
                       <div class="xx">交通状况 :</div>
                       
                       <div class="xx">周边景观 :</div>
                       <div class="xx">周边公园 :</div>
                       <div class="xx">周边商业 :</div>
                       <div class="xx">周边医院 :</div>
                       <div class="xx">学校配套 :</div>
                     
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" placeholder="请输入房子地址" id="id2_15" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="例如15000" id="id2_16" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源面积" id="id2_17" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入业主电话" id="id2_18" runat="server" /></div>
                       <div class="xx1"><input type="text" placeholder="请输入房源装修状况" id="id2_19" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="个人房源或开发商房源" id="id2_20" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="请输入开发商" id="id2_21" runat="server" /></div>
                        
                   </div>
                      </div>
                   <div class="bottom">
                       <div class="tijiao1"><input type="button" value="上一页" class="tj" onclick="document.getElementById('d4').style.display = 'none'; document.getElementById('d3').style.display = 'block';"/></div>
                       <div class="tijiao1"><input type="button" value="下一页" class="tj" onclick="document.getElementById('d4').style.display = 'none'; document.getElementById('d5').style.display = 'block';"/></div>
                   </div>
                    
                </div>
                      
              
            </div>

                <div class="l1" id="d5">
                 <div class="one">
                   <div class="top">
                   <div class="left1">
                       <div class="xx">内部配套 :</div>
                       <div class="xx">售楼类型 :</div>
                       <div class="xx">售楼电话 :</div>
                       <div class="xx">业主有话说 :</div>
                       
                       <div class="xx">房源图 :</div>
                      
                   </div>
                    <div class="right1">
                        <div class="xx1"><input type="text" placeholder="请输入内部配套" id="id2_22" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="请输入售楼类型如：住宅，别墅" id="id2_23" runat="server" /></div>
                         <div class="xx1"><input type="text" placeholder="请输入售楼电话" id="id2_24" runat="server" /></div>
                       <div class="xx1"><textarea id="id2_25" runat="server"></textarea></div>
                       <div class="xx1">
                           <asp:FileUpload ID="FileUpload2" runat="server" class="wj" BorderColor="White" BorderWidth="0px" ForeColor="#0066FF" />
                       </div>
                      
                      
                   </div>
                       </div>
                   <div class="bottom">
                       <div class="tijiao">
                           
                      <input type="button" value="上一页" class="tj" onclick="document.getElementById('d4').style.display = 'block'; document.getElementById('d5').style.display = 'none';"/>
                      <asp:Button ID="Button2" runat="server" Text="确认发布" CssClass="tj" OnClick="Button2_Click" />
                            </div>
                   </div>
               </div>
                    </div>


                </div>
            </div>
            <div class="kuang1" id="bs">别墅</div>
            <div class="kuang2" id="sp">商铺</div>
        </div>
  
    <script>
        function S()
        {
             var b=document.getElementById('Wangluo1');
              var b1=document.getElementById('Geren1');
               var b2=document.getElementById('Yezhu1');
               
               b.style.display='none';
               b1.style.display='none';
               b2.style.display='none';
               
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
         function S3()
        {
            S();
            var a=document.getElementById('Yezhu1');
            a.style.display='block';
         }
         function init()
         {
            // document.getElementById("zz").style.backgroundImage="url(../images/hs5.jpg)";
         }
         function SS()
        {
             var b=document.getElementById('zz');
              var b1=document.getElementById('bs');
               var b2=document.getElementById('sp');
               
               b.style.display='none';
               b1.style.display='none';
               b2.style.display='none';
               
        }
        function S4()
        {
            SS();
            var a=document.getElementById('zz');
            a.style.display='block';
        }
         function S5()
        {
            SS();
            var a=document.getElementById('bs');
            a.style.display='block';
        }
         function S6()
        {
            SS();
            var a=document.getElementById('sp');
            a.style.display='block';
         }
         function showDIV(id)
         {
             document.getElementById("concern").style.display = "none";
             document.getElementById("rentData").style.display = "none";
             for (var i = 1; i <= 5; i++)
             {
                 var div = document.getElementById("d" + i);
                 div.style.display = "none";
             }
             var data = document.getElementById("rentData");
             data.style.display = "none";
             var div = document.getElementById(id);
             div.style.display = "block";
         }
         function hiddenDiv()
         {
             for (var i = 1; i <= 5; i++) {
                 var div = document.getElementById("d" + i);
                 div.style.display = "none";
             }
         }
    </script>
        </form>
</body>
</html>
