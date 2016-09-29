<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- a stored procedure that takes in a customer id. inside the sp the customerID is used to get
        the customers orderID, which in turn is used to select that orders product information etc. 
        back here, the total price is calculated programatically and displayed as total price for order etc. --%>
    <h2>Shopping Cart</h2>

    <%-- the listview will be split up into 3 sections: Idem description, specs such as quantity and size, and price for the item(s) --%>
    <article>
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
    </article>

    <article>
        <%-- total price for the order will be displayed here --%>
    </article>







</asp:Content>

