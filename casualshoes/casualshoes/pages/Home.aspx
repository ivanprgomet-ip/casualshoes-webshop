<%@ Page Title="Hem" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="casualshoes.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <article id="HomeBannerId">
      <a href="http://localhost:40582/pages/ProductDetails.aspx?productID=8"><img src="../images/jpeg/banner-main.jpg" alt="main banner" /></a>
    </article>
    <article id="PopularProductsId">
        <h1 class="header-banner">Mest Populära</h1>
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
                    <div class="product-list-container" >
                        <a runat="server" class="catalog" href='<%#"ProductDetails.aspx?productID="+ Eval("ProductID")%>' > 
                        <div>
                            <img src='<%#Eval("ImgUrl") %>1.jpg'/>
                        </div>
                        <div>
                           <%#Eval("ProductName") %>
                        </div>
                        <div>
                            <%#Eval("ProductPrice") %>
                        </div></a>
                    </div>
                </article>
              
            </ItemTemplate>
        </asp:ListView>
    </article>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductId], [ImgUrl], [ProductPrice], [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="ProductCategoryId" Type="Int32" />
       <%-- <asp:Parameter DefaultValue="4" Name="Value" Type="Int32" />--%>
        </SelectParameters>
    </asp:SqlDataSource>

    </article>
    <article id="BrandsId">
        <h1 class="header-banner">Varumärken</h1>
        <div id="associatedBrandsId">
            <img src="../images/jpeg/brands.jpg" />
        </div>
    </article>
</asp:Content>
