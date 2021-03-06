﻿<%@ Page Title="Sökresultat" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sandals.aspx.cs" Inherits="casualshoes.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sökresultat</h2>

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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductId], [ProductPrice], P.ImgUrl,
FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName], ProductBrandId, Brand.BrandName
FROM Product P
INNER JOIN Brand ON P.ProductBrandId = Brand.BrandId
WHERE ([ProductName] like '%' + @Name + '%') OR ([BrandName] like '%' + @Name + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="Term" DbType="string" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
