<%@ Page Title="Hem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="casualshoes.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <article id="HomeBannerId">
        <h2>Welcome to CasualShoes.com, your nr.1 store for shoes!</h2>
        <img src="mainBanner.jpg" alt="main banner of site" />
    </article>
    <article id="PopularProductsId">
        <h3>Popular Products</h3>
        <div id="popularProductsContainerId">
            <img src="mostPopular1.jpg" />
            <img src="mostPopular2.jpg" />
            <img src="mostPopular3.jpg" />
            <img src="mostPopular4.jpg" />
        </div>
    </article>
    <article id="BrandsId">
        <h3>Associated Brands</h3>
        <div id="associatedBrandsId">
            <img src="brand1.jpg" />
            <img src="brand2.jpg" />
            <img src="brand3.jpg" />
            <img src="brand4.jpg" />
            <img src="brand5.jpg" />
            <img src="brand6.jpg" />
            <img src="brand7.jpg" />
            <img src="brand8.jpg" />
        </div>
    </article>
</asp:Content>