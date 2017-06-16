<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayPage.aspx.cs" Inherits="Webs_DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" href="../Styles/Display.css" type ="text/css"/>
    <script src="../Scripts/display.js" type="text/javascript"></script>
    <title>望居网</title>
</head>
<body  style="background-image:url(images/背景.jpg); background-repeat:no-repeat;background-attachment:fixed;background-size:100% " onload="getshowData('1')">
    <form runat="server">
        <div style="margin:0 auto;width:980px;"><div>
<a href="page1.html" class="change" title="点击查看详情">望城居</a>
<input type="search" name="use_search" placeholder="请输入要查找的内容" />&nbsp;&nbsp;<input type="submit" />
            </div>
            <div style="float:right;">
               欢迎<%=Session["username"] %>来到望城居！</div>
        </div>
<br />
<br />
<br />

<div id="container">
    
     <div id="top"><img src="../images/h.jpg" class="pic" /></div>
    <%--<div id="select" class="selectA">
        <dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
         
			</dl>



    </div>--%>
     <div id="navi">
         
     <a onclick="getshowData('1')">首页</a><a onclick="getshowData('1')">新房</a><a onclick="getshowData('2')">二手房</a><a onclick="getshowData('3')">出租</a><a href="Fabufangyuan.aspx" target="_blank">发布房源</a><a href="admin.aspx" target="_blank">我的后台</a>
     
     </div>
    

     <div id="content" >
          <div id="right" style="overflow-x:scroll;text-align:center">
           

<%--               <div class="div_k">
       <div class="div_m">
        <div class="div_s">
            <div class="div_pic"><a><img src="../images/hs1.jpg" class="img_pic"/></a></div>
            <div class="div_t">
                <div class="div_zi">啦啦啦dasd</div>
                <span>待售</span>
                <div class="div_zi">啦啦</div>
                <div class="div_zi">啦啦啦</div>
                <div class="div_zi">品牌地产</div>82
            </div>
            <div class="div_r">
                <div class="div-l1">参考均价 ：</div>
                <span class="div_sp0">8300</span>
                <div class="div-l1">元 / ㎡</div>
                <div>
                <div class="div-pic2"></div>
                <span class="div-sp">15515642697</span>
                 <span class="div-sp">转 </span>
                <span class="div-sp">4545646</span>
                </div>
            </div>
        </div>
        <div class="div_x">
            <div style="float:left;width:70px;margin-top:15px;">
            <span>动 态</span></div>

        <div style="width:100px;text-align:left;">jskhbnsma</div> 
        </div>
         
       </div>
   </div> --%>



             <%-- <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
              <table style="width: 780px; height: 760px; background-repeat: repeat-x;">
              <tr>
                  <td style="width:190px;height:190px;>  
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                      </td>
              </tr>
              <tr>
                  <td style="width:190px;height:190px;>  
                     <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                      </td>
              </tr>
              <tr>
                  <td style="width:190px;height:190px;>  
                      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                      </td>
                  <td style="width:190px;height:190px;">
                      <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                      </td>
              </tr>
              
                  </table>--%>
              <%--<a href="XiangQing.aspx"><img src="../images/hs1.jpg" class="p" /></a> 
              
              <a href="XiangQing.aspx"><img src="../images/hs2.jpg" class="p" /></a>

              <a href="XiangQing.aspx"><img src="../images/hs3.jpg" class="p" /></a>
              
              <a href="XiangQing.aspx"><img src="../images/hs4.jpg" class="p" /></a>
             
              <a href="XiangQing.aspx"><img src="../images/hs5.jpg" class="p" /></a>
              
              <a href="XiangQing.aspx"><img src="../images/hs7.jpg" class="p" /></a> --%>
                    
            

             <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>

          </div>
          <div id="left">
       
         <ol>
            <h1>区域</h1>
             <%--<li><asp:Button ID="Button1" runat="server" Text="金水" OnClick="Button1_Click"/></li>--%>
            <li><a onclick="getshowData('4')">金水</a></li>
            <li><a onclick="getshowData('5')">二七</a></li>
            <li><a onclick="getshowData('6')">郑东新区</a></li>
            <li><a onclick="getshowData('7')">管城</a></li>
            <li><a onclick="getshowData('8')">惠济</a></li>
            <li><a onclick="getshowData('9')">中原</a></li>
             <h1>价格</h1>
            <li><a onclick="getshowData('10')">5000以下</a></li>
            <li><a onclick="getshowData('11')">5000-7000</a></li>
            <li><a onclick="getshowData('12')">7000-8000</a></li>
            <li><a onclick="getshowData('13')">8000-9000</a></li>
            <li><a onclick="getshowData('14')">1000以上</a></li>                                    
            <%--<li>5000以下</li>
            <li>5000-7000</li>
            <li>7000-8000</li>
            <li>8000-9000</li>
            <li>10000以上</li>--%>
     
         </ol>
          </div>
         
     </div>
    
     <div id="foot">
     <div class="footerBox">版权所有:望城居有限公司</div>
     <div class="footerbot">脚注信息:添加友情链||接合作商家||特别推荐||联系本站方式</div>
</div>
    </div>
        <div id="flag" style="display:block;"></div>
    </form>
</body>
</html>