<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Login.aspx.cs"
Inherits="onlineplantsell.Login" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div class="form-box">

<h2 class="page-title">
Login </h2>

Email:

<asp:TextBox
ID="txtEmail"
runat="server">
</asp:TextBox>

<br /><br />

Password:

<asp:TextBox
ID="txtPassword"
runat="server"
TextMode="Password">
</asp:TextBox>

<br /><br />

<asp:Button
ID="btnLogin"
runat="server"
Text="Login"
CssClass="btn"
OnClick="btnLogin_Click"/>

<br /><br />

<asp:Label
ID="lblMsg"
runat="server"
ForeColor="Red">
</asp:Label>

</div>

</asp:Content>