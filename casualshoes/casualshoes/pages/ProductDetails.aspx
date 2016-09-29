<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="casualshoes.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%-- Display the item information that was clicked on right before user arrives here--%>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <h2><asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' /></h2>
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
            <figure>
                <img src='<%#Eval("ImgUrl") %>1.jpg' class="product-details-img-large slides" />
                <img src='<%#Eval("ImgUrl") %>2.jpg' class="product-details-img-large slides" />
                <img src='<%#Eval("ImgUrl") %>3.jpg' class="product-details-img-large slides" />
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
                <span id="product-price"><asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductPrice") %>' />kr</span>
            </div>
            <div>
                <input type="submit" value="Lägg i kundkorg" />
            </div>
            <div>
                <p><asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductDescription") %>' /></p>
            </div>
        </section>
    </article>
<br />
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Product] WHERE ([ProductId] = @Product)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product" QueryStringField="ProductId" DbType="Int32"/>
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
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";

}
</script>
    

       

</asp:Content>