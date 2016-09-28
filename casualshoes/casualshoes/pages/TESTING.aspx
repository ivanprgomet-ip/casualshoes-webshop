<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TESTING.aspx.cs" Inherits="casualshoes.pages.TESTING" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Return all products from a specific category<br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="CategoryName" DataValueField="CategoryName">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lbl_output" runat="server" Text="Products get printed HERE"></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
