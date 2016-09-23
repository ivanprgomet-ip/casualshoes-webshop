<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="casualshoes.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <fieldset>
         <%-- todo: fix validation. connect to database and add new customer --%>
            <legend>Enter Information</legend>
            <table>
                <tr>
                    <td>Firstname:
                    </td>
                    <td>
                        <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                    </td>
                    <td>Lastname:
                    </td>
                    <td>
                        <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Adress:
                    </td>
                    <td>
                        <asp:TextBox ID="adress" runat="server"></asp:TextBox>
                    </td>
                    <td>City:
                    </td>
                    <td>
                        <asp:TextBox ID="city" runat="server"></asp:TextBox>
                    </td>
                    <td>Zip:
                    </td>
                    <td>
                        <asp:TextBox ID="zip" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email/login:
                    </td>
                    <td>
                        <asp:TextBox ID="emailUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>Password:
                    </td>
                    <td>
                        <input type="password" id="password" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="btn_submitNew" runat="server" Text="Button" OnClick="btn_submitNew_Click"/>
        </fieldset>
</asp:Content>
