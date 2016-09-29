<%@ Page Title="Sandaler" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sandals.aspx.cs" Inherits="casualshoes.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sökresultat</h2>

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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM Product WHERE ([ProductName] like '%' + @Name + '%' AND ProductSize = 40)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="Term" DbType="string"/>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
