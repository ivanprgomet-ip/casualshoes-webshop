<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmedBuy.aspx.cs" Inherits="casualshoes.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section id="purchase-completed-section">
        <p>Thank you for your purchase at CasualShoes.com!<br /> We hope you will be happy with your products. </p>
        <p>Please, take a moment to check that all the information below is correct: </p>
        <p>
            <asp:Label ID="lbl_confirmedBuyMsg" runat="server" Text=""></asp:Label>
        </p>
    </section>
</asp:Content>
