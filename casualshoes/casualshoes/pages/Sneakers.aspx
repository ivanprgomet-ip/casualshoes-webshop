<%@ Page Title="Sneakers" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sneakers.aspx.cs" Inherits="casualshoes.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sneakers</h2>
    <asp:Button ID="SortByBrand" runat="server" OnClick="SortByBrand_Click" Text="Sortera efter märke" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" class="sort"/>
        <asp:Button ID="SortByPrice" runat="server" OnClick="SortByPrice_Click" Text="Sortera efter pris" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" class="sort" />
        <asp:Button ID="SortByName" runat="server" OnClick="SortByName_Click" Text="Sortera efter namn" BackColor="#F5F0E9" BorderStyle="None" Font-Bold="True" Font-Size="Small" class="sort" />
        

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
            <%--<asp:Parameter DefaultValue="40" Name="ProductSize" Type="Int32" />--%>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>