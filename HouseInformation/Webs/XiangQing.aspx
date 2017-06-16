 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="XiangQing.aspx.cs" Inherits="Webs_XiangQing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../Styles/XiangQing.css" type ="text/css"/>
    <link rel="stylesheet" href="../layui/css/layui.css" type="text/css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 31%;
        }
    </style>
    <script src="../Scripts/Ajax.js"></script>
</head>
<body   onload="guanzhu1('1')">
    <form id="form1" runat="server">
    <a href="page1.html" class="change" title="点击查看详情">望城居</a>
    <input type="search" name="use_search" placeholder="请输入要查找的内容" />&nbsp;&nbsp;<input type="submit" />
    <br/>
    <br/>
    <br/>
    <div id="container">
        <div id="top"><img src="../images/h.jpg" class="pic" /></div>
        <div id="navi">
          <a href="DisplayPage.aspx">首页</a><a href="DisplayPage.aspx">新房</a><a href="DisplayPage.aspx">二手房</a><a href="DisplayPage.aspx">租房</a><a href="DisplayPage.aspx">出租房</a><a href="Fabufangyuan.aspx" target="_blank">发布房源</a><a href="admin.aspx" target="_blank">我的管理</a>
        </div>
        <div id="content">
            <div id="left">
              <ol>
                <h1>区域</h1>
                <li>金水</li>
                <li>二七</li>
                <li>郑东新区</li>
                <li>管城</li>
                <li>惠济</li>
                <li>中原</li>
                <h1>价格</h1>
                <li>5000以下</li>
                <li>5000-7000</li>
                <li>7000-8000</li>
                <li>8000-9000</li>
                <li>10000以上</li>
     
               </ol>
            </div>
            <div id="right">
                 <table style="margin-left: 33px">
                     <tr>
                          <td width="400">
                             <div>
                                <asp:Image ID="Image1" runat="server" Height="360px" ImageUrl="~/images/室内环境.jpg" Width="400px" />
                             </div>
                          </td>
                          <td width="350" rowspan="2">
                              <table id ="b"  borde="0" cellspacing="0" cellpadding="0" >
                                  <tr> 
                                     <td height="25" colspan="2" align="center">&nbsp;<font color="#ff6600" size="3"></font></td>
                                  </tr>
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 参考价格：</td>
                                     <td width="72%" height="22">住宅 <font color="#ff6600" size="6px"><%=price %></font>元/m2</td>
                                  </tr>
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/>开发商：</td>
                                     <td height="22"><%=builder %></td>
                                  </tr>
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 联系电话：</td>
                                     <td height="22"><font color="#ff6600" size="6px"><%=phone %></font></td>
                                  </tr>
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 建筑类别：</td>
                                     <td height="22" class="auto-style1"><%=buildtype %></td>
                      　          </tr>
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 产权年限：</td>
                                     <td height="22" class="auto-style2"><%=useYear %></td>
                                  </tr>
                                  <tr>
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 装修状况：</td>
                                     <td height="22"><%=decorate %></td>
                                  </tr> 
                                  <tr> 
                                     <td class="auto-style3">&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 楼盘地址：</td>
                                     <td height="22"><%=address %></td>
                                  </tr>
                                  <tr> 
                                     <td>&nbsp;<img src="../images/orange-bullet.gif" height="7" width="9"/> 环线位置：</td>
                                     <td height="22"><%=location %></td>
                                  </tr>
                                  <tr>
                                      <td></td>
                                      <td><div style="width:45px;height:30px;cursor:pointer;" onclick="guanzhu1('2')">
                                          <img src="../images/guanzhu.png" width="100" height="40" id="guanzhu" />

                                          </div></td>
                                      </tr>
                              </table>
                          </td>
                     </tr>

                 </table>
            </div>
        </div>
        <div id="a">
            <table >
                <tr><font color="#ff6600" size="6px">楼房概述</font>
                </tr>
            </table>
            <div class="c" >
              <table >
                <tr>
                    <td class="f">小区环境</td>
                </tr>
                <tr>
                    <td >
                        <div align="center">
                            <%--<asp:Image ID="Image2" runat="server" Height="325px" ImageUrl="<%=imageUrl %>" Width="500px" />--%>
                            <img src="<%=imageUrl %>" width="500" height="325" />
                         </div>
                    </td>
                    <td >
                        <table style="margin-left:30px">
                            <tr><td class="d">开盘时间</td></tr>
                            <tr><td class="e"><%=starttime %></td></tr>
                            <tr><td class="d">交易时间</td></tr>
                            <tr><td class="e"><%=saletime %></td></tr>
                            <tr><td class="d">特色卖点</td></tr>
                            <tr><td class="e"><%=special %></td></tr>
                            <tr><td class="d">优惠政策</td></tr>
                            <tr><td class="e"><a href="Kanfangtuan.aspx">看房团</a></td></tr>
                            <tr><td class="d">销售状态</td></tr>
                            <tr><td class="e"><%=status %></td></tr>
                            <tr><td class="d"><a href="#" title="点击查看许可证">销售许可证</a></td></tr>
                        </table>
                    </td>
                </tr>
              </table>
            </div>
            <table >
                <tr><font color="#ff6600" size="6px">交通配套</font></tr>
            </table>
            <div id="k">
                <table >
                    <tr>
                        <td id="m" colspan="3"><%=traffic %></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <table class ="n">
                                <tr ><td class="f">交通</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=traffic %></font></td></tr>
                                <tr><td class="e"><%=traffic %></td></tr>
                            </table>
                        </td>
                        <td >
                             <table class ="n">
                                <tr ><td class="f">商业</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=bussiness %></font></td></tr>
                                <tr><td class="e"><%=bussiness %></td></tr>
                             </table>
                        </td>
                        <td >
                             <table class ="n">
                                <tr ><td class="f">教育</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=bussiness %></font></td></tr>
                                <tr><td class="e"><%=bussiness %></td></tr>
                             </table>
                        </td>     
                    </tr>
                    <tr>
                        <td>
                           <table class ="n">
                                <tr ><td class="f">教育</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=park %></font></td></tr>
                                <tr><td class="e"><%=park %></td></tr>
                             </table>
                        </td>
                        <td >
                             <table class ="n">
                                <tr ><td class="f">教育</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=sencery %></font></td></tr>
                                <tr><td class="e"><%=sencery %></td></tr>
                             </table>
                        </td>
                        <td >
                             <table class ="n">
                                <tr ><td class="f">医院</td></tr>
                                <tr><td><font color="#333333" size="3px"><%=hospital %></font></td></tr>
                                <tr><td class="e"><%=hospital %></td></tr>
                             </table>

                        </td>
                        
                    </tr>
                </table>

            </div>

        </div>
        </div>


        <div id="pinglun" class="pinglun" runat="server">
            <div class="daohang">
                <span class="count">网友评论(68)</span>
                <a class="fa" href="#ccc">发表评论</a>
                <hr style="background-color:green"/>
            </div>
            <div class="mycontent" id="contentArea">
               <div style="width:500px;">
                   <span style="color:darkgray">21楼:asd 发表于2013-10-31 12:39</span>
                   <a class="fa" onclick="showCDiv()">回复评论</a><br/>
                   <span>这真的是一栋好房子</span>
                   </div>
                
                </div>




            <div id="fa" style="display:none;">
            <div name="ccc" style="margin-bottom: 20px; width: 500px;">
    <textarea class="layui-textarea" id="LAY_demo1" style="display: none">
        把编辑器的初始内容放在这textarea即可
    </textarea>
</div> 

    <div class="site-demo-button" style=" width:500px;">
        <button class="layui-btn site-demo-layedit" style="float:right;margin-left:5px" data-type="content">发送</button>
        <input type="button" class="layui-btn site-demo-layedit" style="float:right;" onclick="hiddenDiv()" value="关闭" />
    </div>
                </div>
            </div>

          <div style="width:980px;margin:0 auto; background-color:white;height:200px;">   
       <div id="fa1" style="display:block;">
            <div name="ccc" style="margin-bottom: 20px; width: 500px;">
    <textarea class="layui-textarea" id="LAY_demo2" style="display: none">
        把编辑器的初始内容放在这textarea即可
    </textarea>
</div> 

    <div class="site-demo-button" style=" width:500px;">
        <button class="layui-btn site-demo-layedit" style="float:right;margin-left:5px" data-type="text">发送</button>
        
    </div>
                </div>   </div>
        
          <div id="usercontent">

           
        </div>
        
       
        <div id="foot" style="margin-top:20px;">
             <div class="footerBox">版权所有:望城居有限公司</div>
             <div class="footerbot">脚注信息:添加友情链||接合作商家||特别推荐||联系本站方式</div>
        </div>
        <div id="flag" style="display:none;">
            <%=userid %>|<%=houseid %>
            </div>
 
  </form>
</body>
</html>
<script src="../layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    function showCDiv()
    {
        var str = document.getElementById("fa");
        str.style.display = "block";
    }
function hiddenDiv()
{
var str=document.getElementById("fa");
str.style.display = "none";
}

layui.use('layedit', function(){
  var layedit = layui.layedit
  ,$ = layui.jquery;
  var index = layedit.build('LAY_demo1', {
      tool: ['face',  'unlink', '|', 'left', 'center', 'right']
    , height: 100
  })
    //最下方的自定义评论框
  var index1 = layedit.build('LAY_demo2', {
      tool: ['face', 'unlink', '|', 'left', 'center', 'right']
 , height: 100
  })
  //编辑器外部操作
    //编辑器外部操作
  var active = {
      content: function () {
         postContent(layedit.getContent(index)); //获取编辑器内容
      }
    , text: function () {
        //alert(layedit.getContent(index1));
       postContent(layedit.getContent(index1));  //获取编辑器纯文本内容
    }
    , selection: function () {
        alert(layedit.getSelection(index));
    }
  };

  $('.site-demo-layedit').on('click', function () {
      var type = $(this).data('type');
      active[type] ? active[type].call(this) : '';
  });
  //自定义工具栏
});

function postContent(str)
{
    var xmlhttp;

    var parms = document.getElementById("flag").innerText;
   // alert(parms);
    if (window.XMLHttpRequest) {
        //针对非IE6，IE5的浏览器
        xmlhttp = new XMLHttpRequest();
    }
    else {
        // IE6, IE5 浏览器执行代码
        xmlhttp = new ActiveXObject();
    }
    var a = 1;
    //alert(parms);
    //chang事件共被触发了五次状态从0-4
    xmlhttp.onreadystatechange = function () {
        //准备状态四表示的是服务器已经成功处理
        if (xmlhttp.readyState = 4 && xmlhttp.status == 200) {
            //添加逻辑
            //服务器响应的字符串
            
            //处理回发的状态信息
            var s = xmlhttp.responseText;
            if (a == 1 && (s != "" || s != null)) {
                alert(s);
                a = 0;
            }
            //服务器响应的xml文件
            // xmlhttp.responseXML;
        }


    }
    xmlhttp.open("POST", "insertContent.aspx?parms=" + parms+"&content="+str, true);
    xmlhttp.send();
}





</script>