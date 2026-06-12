<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="PlantDetails.aspx.cs"
Inherits="onlineplantsell.PlantDetails" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

    <div style="padding:40px;">

<asp:Image
ID="imgPlant"
runat="server"
Width="100"/>

<br /><br />

<asp:Label
ID="lblName"
runat="server"
Font-Size="XX-Large">
</asp:Label>

<br /><br />

<asp:Label
ID="lblPrice"
runat="server">
</asp:Label>

<br /><br />

<asp:Label
ID="lblDescription"
runat="server">
</asp:Label>

<br /><br />

<asp:Button
ID="btnAddCart"
runat="server"
Text="Add To Cart"
CssClass="btn"
OnClick="btnAddCart_Click"/>

</div>

</asp:Content>