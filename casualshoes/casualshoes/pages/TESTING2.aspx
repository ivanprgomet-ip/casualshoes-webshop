<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TESTING2.aspx.cs" Inherits="casualshoes.pages.TESTING2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        thid datalist displays all customers:<asp:DataList ID="DataList1" runat="server" DataKeyField="CustomerId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                CustomerId:
                <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                <br />
                Firstname:
                <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Eval("Firstname") %>' />
                <br />
                Lastname:
                <asp:Label ID="LastnameLabel" runat="server" Text='<%# Eval("Lastname") %>' />
                <br />
                Adress:
                <asp:Label ID="AdressLabel" runat="server" Text='<%# Eval("Adress") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                ZipCode:
                <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                EmailUsername:
                <asp:Label ID="EmailUsernameLabel" runat="server" Text='<%# Eval("EmailUsername") %>' />
                <br />
            <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    
        <br />
        <br />
        Choose a category of products to display
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList2" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource3" >
            <ItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' />
                <br />
                CategoryName:
                <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                <br />
                BrandName:
                <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                ImgUrl:
                <asp:Label ID="ImgUrlLabel" runat="server" Text='<%# Eval("ImgUrl") %>' />

                <asp:Image ID="Image1" runat="server" Width="175px" Height="175px" ImageUrl='<%# Eval("ImgUrl")+"1.jpg"%>'/>
                <asp:Image ID="Image2" runat="server" Width="175px" Height="175px" ImageUrl='<%# Eval("ImgUrl")+"2.jpg" %>'/>
                <asp:Image ID="Image3" runat="server" Width="175px" Height="175px" ImageUrl='<%# Eval("ImgUrl")+"3.jpg" %>'/>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="spAllProductsByCategoryName" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Category" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
