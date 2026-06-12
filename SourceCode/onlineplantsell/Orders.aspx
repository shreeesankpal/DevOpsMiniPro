<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Orders.aspx.cs"
Inherits="onlineplantsell.Orders" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<h2>My Orders</h2>

<asp:GridView
ID="GridView1"
runat="server"
Width="100%">
</asp:GridView>

</asp:Content>