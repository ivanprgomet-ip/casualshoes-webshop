

<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Shopping Cart</h2>

    
    
        <div id="CartMainbody">

            <h3>1. Kontrolera bestälning</h3>

            <div id="ListItems">

                <%--comentar om at använda gridviwe--%>

                


              
            
            <div id="Pannelbody" >

              
                <table style="width:100%">
                    <thead>
                        <tr>
                            <th id="TabBild" >Bild</th>
                            <th id="TabArt" >artikel</th>
                            <th id="TabAnt" >Antal</th>
                            <th id="TabPris" >Pris</th>
                            <th id="TabBort" >Tabort</th>

                        </tr>
                        

                    </thead>

                    <tbody>
                        <tr class="articelrow">
                            <td class="ProdImage" >Enbild</td>
                            <td class="ProdDetails">En beskrivning</td>
                            <td class="ProdAmount" >En mängd</td>
                            <td class="ProdPrice" >Ett pris</td>
                            <td class="ProdRemove" >X</td>

                        </tr>
                        <tr class="articelrow">
                            <td class="ProdImage" >Enbild</td>
                            <td class="ProdDetails">En beskrivning</td>
                            <td class="ProdAmount" >En mängd</td>
                            <td class="ProdPrice" >Ett pris</td>
                            <td class="ProdRemove" >X</td>

                        </tr>

                    </tbody>
                </table>

            </div>
            <h3></h3>
        <div id="Pannelsumma" >
            <table id="ShowCash" >
                <tbody>
                    <tr>
                        <td>Posten</td>
                        <td>0kr</td>
                    </tr>
                    <tr>
                        <td>Faktura avgift</td>
                        <td>0kr</td>
                    </tr>
                    <tr>
                        <td>Totalt att betala</td>
                        <td>0kr</td>
                    </tr>
                    <tr>
                        <td>Var av Momns</td>
                        <td>0kr</td>
                    </tr>

                </tbody>
            </table>

        </div>
        </div>
             <h3>2. Välj leverans sät</h3>
            <div id="RowOfDeliveries"   >

                <div class="pading" >
                    <div class="RowChoise">
                       <div class="ChoiseInfo">
                           <asp:CheckBox ID="CheckBox1" runat="server" />
                           <label>Sättet 1 att leverar</label>
                           
                       </div>
                       <div class="ChoisePrice">
                           <p>Kostnad för leverans</p>
                       </div>

                     </div>
                    <div class="RowChoise">
                       <div class="ChoiseInfo">
                           <asp:CheckBox ID="CheckBox2" runat="server" />
                           <label>Sättet 2 att leverar</label>
                       </div>
                       <div class="ChoisePrice">
                           <p>Kostnad för leverans</p>
                       </div>

                     </div>
                </div>
            

        </div>

              <h3>3. Slutför köp</h3>
            <div id="FinnalBuy" >
                <div class="pading">
                    
                    <div id="cardpayrow">
                        <h4>Använd kreditkort</h4>
                       <div class="HalfRowLeft">
                           <div class="FullRow">
                                <div class="BMargin">
                                    <label>Förnamn</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="FullRow">
                                <div class="BMargin">
                                   <label>Gatuadress</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="FullRow">
                                <div class="BmarginFloatL">
                                   <label>Postnr</label>
                                    <input type="text" class="postnr"/>
                                </div>
                               <div class="BmarginFloatL">
                                   <label>Postort</label>
                                    <input type="text"/>
                                </div>
                           </div>   
                           
                       </div>
                       <div class="HalfRowRight">
                            <div class="FullRow">
                                <div class="BMargin">
                                   <label>E-postadres</label>
                                    <input type="text"/>
                                </div>
                           </div> 
                            <div class="FullRow">
                                <div class="BMargin">
                                   <label>Mobiltelefon</label>
                                    <input type="text"/>
                                </div>
                                
                           </div>
                            
                       </div>

                     </div>
                    <div id="Fakturapay">
                        <h4>Använd faktura</h4>

                    </div>

                    <div id="Internetbankapay">
                        <h4>Använd Internetbank</h4>
                        <div class="HalfRowLeft">
                           <div class="FullRow">
                                <div class="BMargin">
                                    <label>Förnamn</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="FullRow">
                                <div class="BMargin">
                                   <label>Gatuadress</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="FullRow">
                                <div class="BmarginFloatL">
                                   <label>Postnr</label>
                                    <input type="text" class="postnr"/>
                                </div>
                               <div class="BmarginFloatL">
                                   <label>Postort</label>
                                    <input type="text"/>
                                </div>
                           </div>   
                           
                       </div>
                       <div class="HalfRowRight">
                            <div class="FullRow">
                                <div class="BMargin">
                                   <label>E-postadres</label>
                                    <input type="text"/>
                                </div>
                           </div> 
                            <div class="FullRow">
                                <div class="BMargin">
                                   <label>Mobiltelefon</label>
                                    <input type="text"/>
                                </div>
                                
                           </div>
                            
                       </div>
                    </div>
                    
                    <asp:Button ID="Button1" runat="server" Text="Igenomför köp" />

                </div>
        </div>


    </div>

    
    




</asp:Content>

