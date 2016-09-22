<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="casualshoes.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakta oss</h1>
    <div>
        <label>Namn*</label>
        <asp:TextBox runat="server" ID="name" />
        <asp:RequiredFieldValidator runat="server" ID="rfvname" ControlToValidate="name" ErrorMessage="Enter namn"/>
 </div>
    <%--<div>
        <label>E-mail*</label>
        <asp:TextBox runat="server" ID="email" />
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="email" ErrorMessage="Enter email" Display="Dynamic" />
   
</div>--%>
<%--    <div>
        <label>Medellande*</label>
        <asp:Textbox  runat="server" ID="medellande"/>
    </div>--%>
    <asp:Button runat="server" ID="btnSkicka" Text="Skicka medellande" />
</asp:Content>
