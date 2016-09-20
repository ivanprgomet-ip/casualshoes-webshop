<%@ Page Title="Hem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="casualshoes.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <article id="HomeBannerId">
        <h1>Welcome to CasualShoes.com, your nr.1 store for shoes!</h1>
        <img src="../images/jpeg/mainbanner.jpg" alt="main banner of site" />
    </article>
    <article id="PopularProductsId">
        <h2>Popular Products</h2>
        <div id="popularProductsContainerId">
            <img src="../images/png/boot.png" />
            <img src="../images/png/boot.png" />
            <img src="../images/png/boot.png" />
            <img src="../images/png/boot.png" />
        </div>
    </article>
    <article id="BrandsId">
        <h2>Associated Brands</h2>
        <div id="associatedBrandsId">
            <img src="../images/jpeg/brands.jpg" />
        </div>
    </article>
</asp:Content>