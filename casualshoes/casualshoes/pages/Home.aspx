<%@ Page Title="Hem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="casualshoes.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <article id="HomeBannerId">
        <img src="../images/jpeg/mainbanner.jpg" alt="main banner of site" />
    </article>
    <article id="PopularProductsId">
        <h1 class="header-banner">Mest Populära</h1>
        <div id="popularProductsContainerId">

            <a href="Boots.aspx">
                <figure>
                    <img src="../images/png/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
            <a href="Boots.aspx">
                <figure>
                    <img src="../images/png/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
            <a href="Boots.aspx">
                <figure>
                    <img src="../images/png/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
            <a href="Boots.aspx">
                <figure>
                    <img src="../images/png/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
        </div>
    </article>
    <article id="BrandsId">
        <h1 class="header-banner">Varumärken</h1>
        <div id="associatedBrandsId">
            <img src="../images/jpeg/brands.jpg" />
        </div>
    </article>
</asp:Content>
