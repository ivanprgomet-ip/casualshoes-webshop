<%@ Page Title="Lågskor" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LowShoes.aspx.cs" Inherits="casualshoes.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Lågskor</h2>

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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductId], [ImgUrl], [ProductPrice], [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId AND [ProductSize] =  @ProductSize )">
        <SelectParameters>
            <asp:Parameter DefaultValue="4" Name="ProductCategoryId" Type="Int32" />
            <asp:Parameter DefaultValue="40" Name="ProductSize" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
