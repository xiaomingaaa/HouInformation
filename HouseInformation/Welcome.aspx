<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel ="stylesheet" href="Styles/Welcome.css" type ="text/css"/>
    
    <title></title>
</head>
<body  style="background-image:url(images/背景.jpg); background-repeat:no-repeat;background-attachment:fixed;background-size:100% ">
    <form id="form1" runat="server">
         <div id="container">

    <table style="width:1000px;height:200px"cellpadding="0"  cellspacing="0" >
      <tr>
      <td id ="navigation" >
         <marquee behavior="scroll" direction="left" scrollamount="10" scrolldelay="10">欢迎您访问望居客</marquee><br/>              
      </td>
     </tr>
        <tr>
           <td id ="navigation1" >
          <h2>筑我所想 住您所爱</h2>
               <h2>生活在此 理想在此</h2> 
               </td>
            </tr>
        
    </table>
             <table style="width:1000px;height:100px"cellpadding="0"  cellspacing="0" >
                 <tr>
            <td  style="width:700px;height:100px">
                </td>
             <td  style="width:300px;height:100px">
                 <a href="Webs/Login1.aspx"><img src="images/点击.gif" width="335" height="60"></a>
                 <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/点击.gif" AlternateText="请点击" Height="60px" Width="335px" OnClick="ImageButton1_Click"   />--%>
                 <h2 id="na">请点击开启买房旅程~</h2></td>
            </tr>
             </table>
    </div>
    
    </form>
</body>
</html>
