<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="casualshoes.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- Display the item information that was clicked on right before user arrives here--%>
    <article id="product-details-wrapper">
        <h2>Produktnamn</h2>
        <div id="product-details-container">
            <aside>
                <figure>
                    <img src="../images/products/boot.png" class="product-details-img-small" />
                </figure>
                <figure>
                    <img src="../images/products/boot.png" class="product-details-img-small" />
                </figure>
                <figure>
                    <img src="../images/products/boot.png" class="product-details-img-small" />
                </figure>
            </aside>
            <figure>
                <img src="../images/products/boot.png" id="product-details-img-large" />
            </figure>
        </div>
    </article>
</asp:Content>
