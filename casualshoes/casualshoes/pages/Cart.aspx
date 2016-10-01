<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Din Kundvarukorg</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="BrandName" HeaderText="BrandName" SortExpression="BrandName" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="ModelSize" HeaderText="ModelSize" SortExpression="ModelSize" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT Brand.BrandName, Product.ProductName, Product.ProductPrice, Product.ProductDescription, Category.CategoryName, OrderDetail.Quantity, OrderDetail.ModelSize, OrderHead.OrderId, OrderHead.CustomerId
FROM     Category INNER JOIN
                  Brand INNER JOIN
                  OrderHead INNER JOIN
                  Customer ON OrderHead.CustomerId = Customer.CustomerId INNER JOIN
                  OrderDetail ON OrderHead.OrderId = OrderDetail.OrderId INNER JOIN
                  Product ON OrderDetail.ProductId = Product.ProductId ON Brand.BrandId = Product.ProductBrandId ON Category.CategoryId = Product.ProductCategoryId
				  WHERE Customer.CustomerId = @CustomerId">
            <SelectParameters>
                <asp:SessionParameter Name="CustomerId" SessionField="customerId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

    

</asp:Content>

