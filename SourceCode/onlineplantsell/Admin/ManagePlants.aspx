<%@ Page Language="C#"
AutoEventWireup="true"
CodeBehind="ManagePlants.aspx.cs"
Inherits="onlineplantsell.Admin.ManagePlants" %>

<form runat="server">

<h2>Manage Plants</h2>

Plant Name:

<asp:TextBox
ID="txtPlant"
runat="server">
</asp:TextBox>

Price:

<asp:TextBox
ID="txtPrice"
runat="server">
</asp:TextBox>

<asp:Button
ID="btnAdd"
runat="server"
Text="Add Plant"
OnClick="btnAdd_Click" />

<br /><br />

<asp:GridView
ID="GridView1"
runat="server">
</asp:GridView>

</form>