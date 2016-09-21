<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="casualshoes.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- Display the item information that was clicked on right before user arrives here--%>

    <h2>Produktnamn</h2>

    <article id="product-details-container">
        <section id="product-details-images-section">
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
        </section>

        <section id="product-details-specs-section">
            <div>
                <figure>
                    <img src="somebrand.jpg" />
                </figure>
            </div>
            <div>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="Välj Storlek" Value=""></asp:ListItem>
                    <asp:ListItem Value="36">36</asp:ListItem>
                    <asp:ListItem Value="37">37</asp:ListItem>
                    <asp:ListItem Value="38">38</asp:ListItem>
                    <asp:ListItem Value="39">39</asp:ListItem>
                    <asp:ListItem Value="40">40</asp:ListItem>
                    <asp:ListItem Value="41">41</asp:ListItem>
                    <asp:ListItem Value="42">42</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <span id="product-price">999 sek</span>
            </div>
            <div>
                <input type="submit" value="Lägg i kundkorg" />
            </div>
            <div>
                <p>blablabla blablalba balblablajdflak</p>
            </div>
        </section>
    </article>

</asp:Content>
