<%@ Page Title="Sneakers" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sneakers.aspx.cs" Inherits="casualshoes.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sneakers</h2>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           
            


                 <div class="product-list-flex-cont">
                     <div class="product-list-flex-item">
                         <div >
                               <img src='<%#Eval("ImgUrl") %>1.jpg' width="250px" height="250px"/> 
                          </div>
                         <div  class="product-list-table-child">      
                    
                                <%#Eval("ProductName") %>  
                        </div>
                         <div  class="product-list-table-child">
                                <%#Eval("ProductPrice") %>
                         </div>
                    </div>

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
