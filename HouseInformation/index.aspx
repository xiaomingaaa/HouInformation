<%@ Page Language="C#" MasterPageFile="~/MasterSite.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<asp:Content id="Content2" ContentPlaceHolderID="head" runat="server">
        
 </asp:Content>
<asp:Content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        


  
    <div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
   <input id="button1" type="button" runat="server" value="baocun" onserverclick="button1_ServerClick"/>


</asp:Content>