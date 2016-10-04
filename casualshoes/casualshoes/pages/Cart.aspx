<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2 class="h2-center">Din Kundvarukorg</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="ProductId,ModelSize" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <%--<asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" InsertVisible="False" ReadOnly="True" />--%>
                <asp:BoundField DataField="BrandName" HeaderText="BrandName" SortExpression="BrandName" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <%--<asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />--%>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="ModelSize" HeaderText="ModelSize" SortExpression="ModelSize" />
                <%--<asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" InsertVisible="False" ReadOnly="True" />--%>
                <%--<asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />--%>
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT Product.ProductId, Brand.BrandName, Product.ProductName, Product.ProductPrice, Product.ProductDescription, Category.CategoryName, OrderDetail.Quantity, OrderDetail.ModelSize, OrderHead.OrderId, OrderHead.CustomerId, (Product.ProductPrice*Quantity) as total
					FROM Category INNER JOIN
					Brand INNER JOIN
					OrderHead INNER JOIN
					Customer ON OrderHead.CustomerId = Customer.CustomerId INNER JOIN
					OrderDetail ON OrderHead.OrderId = OrderDetail.OrderId INNER JOIN
					Product ON OrderDetail.ProductId = Product.ProductId ON Brand.BrandId = Product.ProductBrandId ON Category.CategoryId = Product.ProductCategoryId
					WHERE Customer.CustomerId = @CustomerId"
            DeleteCommand="DELETE FROM OrderDetail WHERE ProductId=@ProductId AND ModelSize=@ModelSize">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" />
                  <asp:Parameter Name="ModelSize" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="CustomerId" SessionField="customerId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <section id="cart-options-section">
        <asp:Button ID="Button1" runat="server" Text="Fortsätt Shoppa" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Bekräfta Köp" OnClick="Button2_Click" />
    </section>

</asp:Content>

