<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Checkout.aspx.cs"
Inherits="onlineplantsell.Checkout" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<h2>Checkout</h2>

Address:

<asp:TextBox
ID="txtAddress"
runat="server"
TextMode="MultiLine">
</asp:TextBox>

<br /><br />

Payment Method:

<asp:RadioButtonList
ID="rblPayment"
runat="server">

<asp:ListItem>
Cash On Delivery
</asp:ListItem>

<asp:ListItem>
UPI
</asp:ListItem>

<asp:ListItem>
Credit Card
</asp:ListItem>

</asp:RadioButtonList>

<br />

<asp:Button
ID="btnPlaceOrder"
runat="server"
Text="Place Order"
OnClick="btnPlaceOrder_Click" />

</asp:Content>