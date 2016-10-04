<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="casualshoes.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <fieldset>
        <%-- todo: fix validation --%>
        <legend>Enter Information</legend>
        <table>
            <tr>
                <td>Firstname:
                </td>
                <td>
                    <asp:textbox id="firstname" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator runat="server" controltovalidate="firstname" errormessage="Ange förnamn" display="Static" enableclientscript="false" />
                </td>
                <td>Lastname:
                </td>
                <td>
                    <asp:textbox id="lastname" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator runat="server" controltovalidate="lastname" errormessage="Ange efternamn" display="Static" enableclientscript="false" />
                </td>
            </tr>
            <tr>
                <td>Adress:
                </td>
                <td>
                    <asp:textbox id="adress" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator runat="server" controltovalidate="adress" errormessage="Ange din adress som produkter kommer skickas till" display="Static" enableclientscript="false" />
                </td>
                <td>City:
                </td>
                <td>
                    <asp:textbox id="city" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator runat="server" controltovalidate="city" errormessage="Ange staden du bor i" display="Static" enableclientscript="false" />
                </td>
                <td>Zip:
                </td>
                <td>
                    <asp:textbox id="zip" runat="server"></asp:textbox>
                    <asp:regularexpressionvalidator runat="server" controltovalidate="zip" errormessage="Du måste ange en godkänd zip" display="Static" enableclientscript="false" validationexpression="(^\d{5}$)|" />
                    <%--reqex för zip--%>
                </td>
            </tr>
            <tr>
                <td>Email/login:
                </td>
                <td>
                    <asp:textbox id="emailUsername" runat="server"></asp:textbox>
                    <asp:regularexpressionvalidator id="rev_emailValidatior" runat="server" controltovalidate="emailUsername" errormessage="Du måste ange en godkänd Email" display="Static" enableclientscript="false" validationexpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                </td>
                <td>Password:
                </td>
                <td>
                    <input type="password" id="password" runat="server" />
                    <asp:requiredfieldvalidator runat="server" controltovalidate="password" errormessage="Du måste ange ett lösenord" display="Static" enableclientscript="false" />

                </td>
            </tr>
        </table>
        <asp:button id="btn_submitNew" runat="server" text="Signup" onclick="btn_submitNew_Click" />
        <br />
        <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
    </fieldset>
</asp:Content>
