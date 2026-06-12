<%@ Page Title=""
Language="C#"
MasterPageFile="~/Site1.Master"
AutoEventWireup="true"
CodeBehind="Home.aspx.cs"
Inherits="onlineplantsell.Home" %>

<asp:Content
ID="Content1"
ContentPlaceHolderID="head"
runat="server">
</asp:Content>

<asp:Content
ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

    <div class="hero">

    <div>

        <h4>ALL</h4>

        <h1 style="color:#ff7f32;">
            PLANTS
        </h1>

        <h2>FOR YOUR HOME</h2>

        <p>
            Bring nature closer to your life
            with beautiful indoor and outdoor plants.
        </p>

        <asp:Button
            ID="btnShop"
            runat="server"
            Text="Shop Now"
            CssClass="btn"
            OnClick="btnShop_Click"/>

    </div>

    <div>

        <asp:Image
            ID="Image1"
            runat="server"
            Width="500"
            ImageUrl="~/Images/banner1.jpg"/>

        <br />
        <br />

        <asp:Label
ID="lblVisitors"
runat="server">
</asp:Label>

    </div>

</div>

</asp:Content>