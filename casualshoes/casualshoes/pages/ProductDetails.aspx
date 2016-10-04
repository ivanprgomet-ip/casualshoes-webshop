<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="casualshoes.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- Display the item information that was clicked on right before user arrives here--%>
    <div class="QuantitySize">
        <div>
            <asp:Label ID="lbl_addToCartMsg" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Storlek:"></asp:Label>
            </div>
        <div>
            <asp:DropDownList ID="ddl_modelsize" runat="server" CssClass="SizeDDL">
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
            <asp:Label ID="Label1" runat="server" Text="Antal:"></asp:Label>
            </div>
        <div>
            <input type="number" id="num_quantity" min="1" max="10" value="1" runat="server" class="QuantityInput" />
        </div>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <h2>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' /></h2>
            <article id="product-details-container" class="adaptable-footer">
                <section id="product-details-images-section">
                    <aside>
                        <figure>
                            <img src='<%#Eval("ImgUrl") %>1.jpg' class="switch product-details-img-small" onclick="currentDiv(1)" />
                        </figure>
                        <figure>
                            <img src='<%#Eval("ImgUrl") %>2.jpg' class="switch product-details-img-small" onclick="currentDiv(2)" />
                        </figure>
                        <figure>
                            <img src='<%#Eval("ImgUrl") %>3.jpg' class="switch product-details-img-small" onclick="currentDiv(3)" />
                        </figure>
                    </aside>
                    <figure id="product-details-sideimages">
                        <img src='<%#Eval("ImgUrl") %>1.jpg' class="product-details-img-large slides" />
                        <img src='<%#Eval("ImgUrl") %>2.jpg' class="product-details-img-large slides" />
                        <img src='<%#Eval("ImgUrl") %>3.jpg' class="product-details-img-large slides" />
                    </figure>
                </section>
                <section id="product-details-specs-section">
                    <div>
                        <asp:DataList ID="BrandImg" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <img src='<%#Eval("ImgUrl") %>b.png' class="product-brand-img" />
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div>
                        <span id="product-price">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("RoundedPrice") %>' /></span>
                    </div>
                    <div>
                        <asp:Button ID="btn_addToCart" runat="server" Text="Lägg i kundkorg" OnCommand="btn_addToCart_Command" CommandName="AddingToCustomerCart" CommandArgument='<%#Eval("ProductId") + ","+Eval("ProductName") %>' />
                    </div>
                    <div>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDescription") %>' />
                        </p>
                    </div>
                </section>
            </article>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT [ProductId], [ProductDescription], [ImgUrl], [ProductPrice], FORMAT(ProductPrice, 'C', 'sv-SE') AS RoundedPrice, [ProductName] FROM [Product] WHERE ([ProductId] = @Product)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product" QueryStringField="ProductId" DbType="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT Product.ProductBrandId, Brand.imgUrl
FROM Product INNER JOIN Brand ON Product.ProductBrandId = Brand.BrandId WHERE ProductId= @Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product" QueryStringField="ProductId" DbType="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("slides");
            var dots = document.getElementsByClassName("switch");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex - 1].style.display = "block";

        }
    </script>
</asp:Content>
