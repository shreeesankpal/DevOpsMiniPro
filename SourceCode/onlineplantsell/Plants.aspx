<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
AutoEventWireup="true" CodeBehind="Plants.aspx.cs"
Inherits="onlineplantsell.Plants" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">

    <style>

.title{
    text-align:center;
    color:#2e7d32;
    margin-top:20px;
}

.search-box{
    text-align:center;
    margin:20px;
}

.plant-card{
    width:350px;
    background:white;
    border-radius:15px;
    box-shadow:0px 0px 10px #ccc;
    padding:15px;
    margin:15px;
    text-align:center;
}

.plant-img{
    width:320px;
    height:220px;
    object-fit:cover;
    border-radius:10px;
}

.price{
    color:green;
    font-size:22px;
    font-weight:bold;
}

.btn-view{
    background:#2e7d32;
    color:white;
    padding:10px 20px;
    text-decoration:none;
    border-radius:5px;
}

</style>

</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

    <h1 class="title">
Our Plants Collection
</h1>

<div class="search-box">

Search Plant :

<asp:TextBox
ID="txtSearch"
runat="server">
</asp:TextBox>

<asp:Button
ID="btnSearch"
runat="server"
Text="Search"
OnClick="btnSearch_Click" />

</div>

<center>

<asp:DataList
    ID="dlPlants"
    runat="server"
    RepeatColumns="4"
    RepeatDirection="Horizontal"
    CellPadding="10">

<ItemTemplate>

<div class="plant-card">

<asp:Image
ID="imgPlant"
runat="server"
CssClass="plant-img"
ImageUrl='<%# "~/Images/" + Eval("ImageURL") %>' />

<br /><br />

<h2>
<%# Eval("PlantName") %>
</h2>

<div class="price">
₹ <%# Eval("Price") %>
</div>

<p>
<%# Eval("Description") %>
</p>

<asp:HyperLink
ID="lnkView"
runat="server"
CssClass="btn-view"
Text="View Details"
NavigateUrl='<%# "PlantDetails.aspx?PlantID=" + Eval("PlantID") %>' />

</div>

</ItemTemplate>

</asp:DataList>

</center>

</asp:Content>