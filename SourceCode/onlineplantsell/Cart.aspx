<%@ Page Title="" Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Cart.aspx.cs"
Inherits="onlineplantsell.Cart" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<h2>Shopping Cart</h2>

<asp:GridView
ID="GridView1"
runat="server"
AutoGenerateColumns="False">

<Columns>

<asp:BoundField
DataField="PlantName"
HeaderText="Plant Name" />

<asp:BoundField
DataField="Price"
HeaderText="Price" />

<asp:BoundField
DataField="Quantity"
HeaderText="Quantity" />

</Columns>

</asp:GridView>

<br />

<h3>Select Pot Type</h3>

<asp:RadioButtonList
ID="rblPot"
runat="server">

<asp:ListItem>
Plastic Pot
</asp:ListItem>

<asp:ListItem>
Ceramic Pot
</asp:ListItem>

<asp:ListItem>
Premium Pot
</asp:ListItem>

</asp:RadioButtonList>

<br />

<h3>Accessories</h3>

<asp:CheckBoxList
ID="cblAccessories"
runat="server">

<asp:ListItem>
Fertilizer
</asp:ListItem>

<asp:ListItem>
Garden Tools
</asp:ListItem>

<asp:ListItem>
Decorative Stones
</asp:ListItem>

</asp:CheckBoxList>

<br />

<asp:Button
ID="btnCheckout"
runat="server"
Text="Proceed To Checkout"
CssClass="btn"
OnClick="btnCheckout_Click" />

</asp:Content>