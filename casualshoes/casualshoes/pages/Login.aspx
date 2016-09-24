<%@ Page Title="Logga In" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="casualshoes.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>login page</h2>
    <table>
        <tr>
            <td>Mail:</td>
            <td>
                <asp:TextBox ID="txt_login_mail" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txt_login_password" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_login" runat="server" Text="Login" />
            </td>
        </tr>
    </table>

    <span>Don't have an Account? <a href="Signup.aspx">Sign Up</a>!</span>
</asp:Content>
