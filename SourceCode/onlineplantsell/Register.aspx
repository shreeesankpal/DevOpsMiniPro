<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Register.aspx.cs"
Inherits="onlineplantsell.Register" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div class="form-box">

<h2 class="page-title"> User Registration</h2>


Name:

<asp:TextBox
ID="txtName"
runat="server"
CssClass="form-control">
</asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvName"
runat="server"
ControlToValidate="txtName"
ErrorMessage="Enter Name"
ForeColor="Red">
</asp:RequiredFieldValidator>

<br /><br />

Email:

<asp:TextBox
ID="txtEmail"
runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Enter Email"
ForeColor="Red">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
ID="revEmail"
runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+@\w+\.\w+"
ErrorMessage="Invalid Email"
ForeColor="Red">
</asp:RegularExpressionValidator>

<br /><br />

Mobile:

<asp:TextBox
ID="txtMobile"
runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvMobile"
runat="server"
ControlToValidate="txtMobile"
ErrorMessage="Enter Mobile"
ForeColor="Red">
</asp:RequiredFieldValidator>

<br /><br />

Password:

<asp:TextBox
ID="txtPassword"
runat="server"
TextMode="Password">
</asp:TextBox>

<asp:RequiredFieldValidator
ID="rfvPassword"
runat="server"
ControlToValidate="txtPassword"
ErrorMessage="Enter Password"
ForeColor="Red">
</asp:RequiredFieldValidator>

<br /><br />

Confirm Password:

<asp:TextBox
ID="txtConfirm"
runat="server"
TextMode="Password">
</asp:TextBox>

<asp:CompareValidator
ID="cvPassword"
runat="server"
ControlToCompare="txtPassword"
ControlToValidate="txtConfirm"
ErrorMessage="Password Mismatch"
ForeColor="Red">
</asp:CompareValidator>

<br /><br />

<asp:Button
ID="btnRegister"
runat="server"
Text="Register"
CssClass="btn"
OnClick="btnRegister_Click"/>

<br /><br />

<asp:Label
ID="lblMessage"
runat="server"
ForeColor="Green">
</asp:Label>

</div>

</asp:Content>