<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="casualshoes.WebForm10" %>

<asp:Content ID="SignupID" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <fieldset>
        <legend>Enter Information</legend>
        <table>
            <tr>
                <td>
                    Firstname:
                </td>
                <td>
                    <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                </td>
                <td>
                    Lastname:
                </td>
                <td>
                    <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Adress:
                </td>
                <td>
                    <asp:TextBox ID="adress" runat="server"></asp:TextBox>
                </td>
                <td>City:
                </td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
                <td>
                    Zip:
                </td>
                <td>
                    <asp:TextBox ID="zip" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>
                    Delivery Adress:
                </td>
                <td>
                    <asp:TextBox ID="deliveryAdress" runat="server"></asp:TextBox>
                </td>
                <td>Delivery City:
                </td>
                <td>
                    <asp:TextBox ID="deliveryCity" runat="server"></asp:TextBox>
                </td>
                <td>
                    Delivery Zip:
                </td>
                <td>
                    <asp:TextBox ID="DeliveryZip" runat="server"></asp:TextBox>
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
                    <input type="password" id="TextBox1" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit" runat="server"/>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
