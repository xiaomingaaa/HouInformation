<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="Webs_Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
   <%-- <link rel="stylesheet" href="../layui/css/layui.css" type="text/css" />--%>
    <link rel="stylesheet" href="../Styles/Login1.css" type="text/css"/>
    <link rel="stylesheet" href="../Styles/warn.css" type="text/css"/>
   <script src="../Scripts/jquery-1.8.0.js" type="text/javascript"></script>
    <script src="../Scripts/layer.js"></script>
    <script src="../Scripts/Login.js" type="text/javascript"></script>
    <%-- <script src="../layui/layui.js" type="text/javascript"></script>--%>
    <title></title>
</head>
<body onload="init()">
       <div class="k" id="k" runat="server">
        <div class="kuang"></div>
        <div class="kuang1">
            <div class="s"><span>温馨提示</span><span id="x" onclick="hiddenTan()">&#10005</span></div>
            <div class="x" >
                <div class="s1">
                    <span id="neirong" runat="server">alsdklaksjdasd</span>
                </div>
                <div class="s2">
                    <div class="OK" id="ok" onclick="hiddenTan()">确定</div>
                </div>
            </div>
        </div>
   </div>
 <form class="form1" runat="server">
<div class="container">
	
	<div class="navi"></div>
	<div class="content">
		<div class="left"></div>
		<div class="center">
            <div style="text-align:center;margin:0 auto; width:700px">
            <asp:Label ID="Label1" runat="server" Text="登录望居网" Font-Size="50px"  Height="100px" Width="300px" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
            </div>
                <br />
            <br />
            <br />
            <div>
             
            <div style="text-align:center;margin:0 auto; width:500px;">
            <table style="text-align:center; height: 200px; width: 370px;margin:0 auto;">
                <tr>
                    <td>
                       
            <asp:Label ID="Label2"  runat="server" Text="登录名：" Font-Size="Medium"></asp:Label>
                        </td>
                    <td>
            <input type="text" class="text" runat="server" id="username" placeholder="请输入邮箱" style="width:200px;height:30px;" onchange="checkuser(this)" required="required" />
            </td>
                    <td>
                        <img id="duigou" class="tupian" src="../images/duigou3.png" width="20" height="20" />
            <img id="cha" src="../images/cha1.png" class="tupian" width="20" height="20" />
            </td>
                        </tr>
                <tr><td>
                                <asp:Label ID="Label3" runat="server" Text="密码："  Font-Size="Medium"></asp:Label>
            </td>
                    <td>
            <asp:TextBox CssClass="text" ID="TextBox2" runat="server" Height="30px" Width="200px" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
                <td> </td>
                </tr>
                <tr><td colspan="3"> <asp:Button ID="Button1" CssClass="sumit" runat="server" Text="立 即 登 录" Height="50px" Width="260px" BackColor="#CC0000" Font-Size="Larger" OnClick="Button1_Click" OnClientClick="login()"  /></td></tr>
                    </table>
              
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <%-- <asp:LinkButton ID="LinkButton1" runat="server">忘记密码？</asp:LinkButton>--%>
           
            
         
            
             <br />
            <br />
            <br />
            <br />
            &nbsp;<asp:Label ID="Label4" runat="server" Text="没有望居网的通行证？"></asp:Label>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Webs/register.aspx">快来注册一个！</asp:LinkButton>
        </div>
            </div>
		<div class="right"></div>		
	</div>
	<div class="foot"></div>
</div>
    </div>
     <div style="display:none;" id="users"></div>
       </form>

  

</body>
</html>
