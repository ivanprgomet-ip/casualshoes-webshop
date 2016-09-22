<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="casualshoes.WebForm8" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakta oss</h1>
    <table>
        <tr>
            <td>
                <label>Namn:</label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="txt_fullname" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_fullname" ErrorMessage="firstname required" Display="Static" EnableClientScript="false" />
            </td>
        </tr>
        <tr>
            <td>
                <label>Din Gmail:</label>

            </td>
            <td>
                <asp:TextBox runat="server" ID="txt_email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_email" ErrorMessage="Ange din mail" Display="Static" EnableClientScript="false" />
                <asp:RegularExpressionValidator ID="rev_emailValidatior" runat="server" ControlToValidate="txt_email" ErrorMessage="Du måste ange en riktig Email" Display="Static" EnableClientScript="false" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
            </td>

        </tr>
        <tr>
            <td>
                <label>Meddelande:</label>
            </td>
            <td>
                <asp:TextBox ID="txt_comments" TextMode="multiline" Columns="50" Rows="5" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_comments" ErrorMessage="Du måste ange något innehåll till ditt mail" Display="Static" EnableClientScript="false" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button runat="server" ID="btn_sendMail" Text="Skicka medellande" OnClick="btn_sendMail_Click" />
                <asp:Label runat="server" ID="lbl_sentMessage"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
