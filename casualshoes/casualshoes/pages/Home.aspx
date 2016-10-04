<%@ Page Title="Hem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="casualshoes.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <article id="HomeBannerId">
        <a href="http://localhost:40582/pages/ProductDetails.aspx?productID=8">
            <img src="../images/jpeg/banner-main.jpg" alt="main banner" /></a>
    </article>
    <article id="PopularProductsId">
        <h1 class="header-banner">Våra Rekomendationer</h1>
        <%-- <div id="popularProductsContainerId">

            <a href="ProductDetails.aspx">
                <figure>
                    <img src="../images/products/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
            <a href="ProductDetails.aspx">
                <figure>
                    <img src="../images/products/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
          <a href="ProductDetails.aspx">
                <figure>
                    <img src="../images/products/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
            <a href="ProductDetails.aspx">
                <figure>
                    <img src="../images/products/boot.png" />
                    <figcaption>
                        <span>Birkenstock</span>
                        <span>Model 78</span>
                        <span>699 Sek</span>
                    </figcaption>
                </figure>
            </a>
        </div>--%>
        <article class="product-catalog-wrapper">

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>

                    <article id="products-catalog">
                        <div class="product-list-container">
                            <a runat="server" class="catalog" href='<%#"ProductDetails.aspx?productID="+ Eval("ProductID")%>'>
                                <div>
                                    <img src='<%#Eval("ImgUrl") %>1.jpg' />
                                </div>
                                <div>
                                    <%#Eval("ProductName") %>
                                </div>
                                <div>
                                    <%#Eval("RoundedPrice") %>
                                </div>
                            </a>
                        </div>
                    </article>

                </ItemTemplate>
            </asp:ListView>
        </article>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductId], [ImgUrl], [ProductPrice], FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="ProductCategoryId" Type="Int32" />
                <%-- <asp:Parameter DefaultValue="4" Name="Value" Type="Int32" />--%>
            </SelectParameters>
        </asp:SqlDataSource>

    </article>
    <article id="BrandsId">
        <h1 class="header-banner">Varumärken</h1>
        <div id="associatedBrandsId">
            <img src="../images/jpeg/brands.jpg" usemap="#BrandMap" />
            <map name="BrandMap" id="ImageMaps">
                <area alt="Birkenstock" href="SearchResult.aspx?Term=Birkenstock" shape="rect" coords="0,2,124,73" style="outline: none;" target="_self" />
                <area alt="Haflinger" href="SearchResult.aspx?Term=Haflinger" shape="rect" coords="177,2,338,75" style="outline: none;" target="_self" />
                <area alt="Johnston & Murphy" href="SearchResult.aspx?Term=Johnston+%26+Murphy" shape="rect" coords="382,2,576,75" style="outline: none;" target="_self" />
                <area alt="Clarks" href="SearchResult.aspx?Term=Clarks" shape="rect" coords="634,3,777,76" style="outline: none;" target="_self" />
                <area alt="Josef Seibel" href="SearchResult.aspx?Term=Josef+Seibel" shape="rect" coords="800,5,924,68" style="outline: none;" target="_self" />
                <area alt="Dansko" href="SearchResult.aspx?Term=Dansko" shape="rect" coords="503,87,622,152" style="outline: none;" target="_self" />
                <area alt="Cole Haan" href="SearchResult.aspx?Term=Cole+Haan" shape="rect" coords="288,91,448,151" style="outline: none;" target="_self" />
            </map>

        </div>
    </article>
</asp:Content>
