<%@ Page Title="Sneakers" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sneakers.aspx.cs" Inherits="casualshoes.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Sneakers</h2>

    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <div>
                <%-- Todo skapa bild class  --%>
                <div>image</div>
                <div>Name</div>
                <div>Pris</div>
            </div>

        </ItemTemplate>

    </asp:ListView>

</asp:Content>
