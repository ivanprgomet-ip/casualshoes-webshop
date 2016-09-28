<%@ Page Title="Sneakers" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sneakers.aspx.cs" Inherits="casualshoes.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sneakers</h2>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div>
                <table class="product-list-table">
                      <tr>
                        <td>
                           <img src='<%#Eval("ImgUrl") %>1.jpg' width="250px" height="250px"/> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%#Eval("ProductName") %>  
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%#Eval("ProductPrice") %>
                        </td>
                    </tr>
                  
                   

                </table>


                <%-- Todo skapa bild class  --%>
              
                
            </div>

        </ItemTemplate>

    </asp:ListView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=CasualShoesDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ImgUrl], [ProductPrice], [ProductName] FROM [Product] WHERE ([ProductCategoryId] = @ProductCategoryId AND [ProductSize] =  @ProductSize )">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="ProductCategoryId" Type="Int32" />
        <asp:Parameter DefaultValue="40" Name="ProductSize" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
