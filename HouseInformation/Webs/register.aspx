<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Webs_register" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="../Styles/register.css" type="text/css"/>
        <link rel="stylesheet" href="../Styles/warn.css" type="text/javascript"/>
    <title>
    </title>
        <style>
            #Button2 {
            border:3px solid #F2F2F2;
            box-shadow:0px 0px 10px 5px #1874CD;
            outline:none;
            }
            
        </style>
    </head>
    <body>
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
   <form runat="server">
   <div id="container">
	<div id="navi"></div>
   <div id="a">
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="30pt" Font-Underline="True" ForeColor="#CC3300" Text="望 居 网"></asp:Label>
&nbsp;
       <asp:Label ID="Label2" runat="server" Text="| 注册通行证"></asp:Label>
       </div>
	<div id="content">
		
		
          
             <table style="margin:0 auto; width:400px;height:500px">
          <tr>
                  <td class="fontLeft"> 用户名：</td><td>
                      <input type="text" runat="server" id="username" class="test" name="txt_name" autofocus="autofocus" required ="required" placeholder ="请输入用户名"/>
                 </td>
               <td></td>
             </tr>
                 <tr>
                  <td class="fontLeft"> 密码：</td><td>
                      <input type="password" runat="server" class="test" id="passwd" name="txt_pass" required ="required" placeholder="请输入密码"  />
                 </td>

                      <td></td>
                     </tr>
                 <tr>
                   <td class="fontLeft">确定密码：</td><td><input type="password" class="test" runat="server" id="confirmpd" name="txt_pass" required ="required" placeholder="确认密码"  />
                  </td>
                      <td></td>
                       </tr>
                 <tr>
                     <td class="fontLeft">  
                 手机号码：</td><td><input type="Text" class="test" runat="server" id="phone" name="number" required ="required" onchange="checkPhone(this)" />
               </td>
                     <td><img class="show" src="../images/duigou3.png" width="20" height="20" id="dui1"/>
                         <img class="show" src="../images/cha1.png" width="20" height="20" id="cha1" />
                     </td>
                     </tr>
                 <tr> <td class="fontLeft">邮箱：</td><td>
                     &nbsp;&nbsp;
                     <input type="Text" class="test" runat="server" id="email" name="number" required ="required" onchange="checkEmail(this)" /> &nbsp;&nbsp;<%--<input type="submit" value="获取验证码"/>--%>
                 </td>
                     <td><img class="show" src="../images/duigou3.png" width="20" height="20" id="dui2"/>
                         <img class="show" src="../images/cha1.png" width="20" height="20" id="cha2" />
                     </td>
                     </tr>
                 
                 <tr><td colspan="2">
                    <asp:Button ID="Button2" CssClass="sumit" runat="server" BackColor="#836FFF" Font-Bold="True" Font-Size="16pt" ForeColor="white" Height="50px" Text="立 即 开 通" Width="246px" OnClick="Button2_Click" />
                  </td>
                     </tr>
                 <tr><td colspan="2" ><a href="Login1.aspx" style="float:right;">已有账号，直接登录</a></td></tr>
           </table>
       	
	</div>
	<div id="foot"></div>
</div>
  </form>
</body>
</html>
<script>
    function checkPhone(obj)
    {
        hidden("1");
        var re = /^1\d{10}$/;
        if (re.test(obj.value)) {
            document.getElementById("dui1").style.display = "block";
        } else {
            document.getElementById("cha1").style.display = "block";
        }
    }
    function checkEmail(obj)
    {
        hidden("2");
        var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
        if (re.test(obj.value)) {
            document.getElementById("dui2").style.display = "block";
        } else {
            document.getElementById("cha2").style.display = "block";
        }
    }


    function hidden(type)
    {
        if (type == "1")
        {
            var img = document.getElementById("dui1");
            img.style.display = "none";

            var img1 = document.getElementById("cha1");
            img1.style.display = "none";

        }
        if (type == "2")
        {

            var img = document.getElementById("cha2");
            img.style.display = "none";

            var img1 = document.getElementById("dui2");
            img1.style.display = "none";
        }
    }
    function hiddenTan() {
        document.getElementById("k").style.display = "none";
    }




    function showTan(str) {
        document.getElementById("k").style.display = "block";
        document.getElementById("neirong").innerText = str;
    }




    </script>