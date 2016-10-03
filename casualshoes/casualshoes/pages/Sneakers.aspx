<%@ Page Title="Sneakers" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sneakers.aspx.cs" Inherits="casualshoes.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sneakers</h2>
    <asp:Label ID="Label1" runat="server" Text="Sortera efter: " CssClass="sort" Font-Bold="True"></asp:Label>
    <asp:Button ID="SortByBrand" runat="server" OnClick="SortByBrand_Click" Text="Märke" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" CssClass="sort" />
    <asp:Button ID="SortByPrice" runat="server" OnClick="SortByPrice_Click" Text="Pris" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" CssClass="sort" />
    <asp:Button ID="SortByName" runat="server" OnClick="SortByName_Click" Text="Namn" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" CssClass="sort" />




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
            <asp:Parameter DefaultValue="1" Name="ProductCategoryId" Type="Int32" />
            <%--<asp:Parameter DefaultValue="40" Name="ProductSize" Type="Int32" />--%>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
