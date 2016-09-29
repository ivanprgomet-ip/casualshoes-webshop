<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Shopping Cart</h2>

    
    
        <div id="Mainbody" style=" width:98%; padding:10px 10px ">

            <h3>1. Kontrolera bestälning</h3>

            <div id="ListItems">

                <%--comentar om at använda gridviwe--%>
              
            
            <div id="Pannelbody" style="height:300px; width:100%; border: 1px solid black; margin-top: 10px;"  >

              
                <table style="width:100%">
                    <thead>
                        <tr>
                            <th style="text-align:left">bild</th>
                            <th style="text-align:left; width:70%"; >artikel</th>
                            <th style="text-align:left">antal</th>
                            <th style="text-align:left">pris</th>
                            <th style="text-align:left">tabort</th>

                        </tr>
                        

                    </thead>

                    <tbody>
                        <tr class="articelrow">
                            <td class="Image" style="text-align:left">Enbild</td>
                            <td class="Details" style="text-align:left; width:70%">En beskrivning</td>
                            <td class="Amount" style="text-align:left">En mängd</td>
                            <td class="Price" style="text-align:left">Ett pris</td>
                            <td class="Price" style="text-align:center">X</td>

                        </tr>
                        <tr class="articelrow">
                            <td class="Image" style="text-align:left">Enbild</td>
                            <td class="Details" style="text-align:left; width:70%">En beskrivning</td>
                            <td class="Amount" style="text-align:left">En mängd</td>
                            <td class="Price" style="text-align:left">Ett pris</td>
                            <td class="Price" style="text-align:center">X</td>

                        </tr>

                    </tbody>
                </table>

            </div>
            <h3></h3>
        <div id="Pannelsumma" style=" height:90px ; width:100%;border: 1px solid black; margin-top: 10px;"  >
            <table style="width:30%; float:right">
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
            <div id="SatLeverans" style=" height:90px ; width:100%;border: 1px solid black; margin-top: 10px;"  >

                <div id="pading2" style="padding:10px; ">
                    <div id="Inforcol">
                       <div style="float:left; width:50%;border: 1px solid black">
                           <p>Välj hur producten ska levereras</p>
                       </div>
                       <div style="float:right; width:49%">
                           <p>Kostnad för leverans</p>
                       </div>

                     </div>
                </div>
            

        </div>

              <h3>3. Slutför köp</h3>
            <div id="Slutkop" style="height:600px; width:100%;border:1px solid black; margin-top: 10px;"  >
                <div id="pading" style="padding:10px">
                    
                    <div id="cardpayrow" style="height:170px ;border:1px solid black;  margin-bottom:10px">
                        <h4>Använd kreditkort</h4>
                       <div style="float:left; width:50%">
                           <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                    <label>Förnamn</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="row" style=" width:100%; ">
                                <div class="form" style="margin-bottom:10px">
                                   <label>Gatuadress</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px; float:left">
                                   <label>Postnr</label>
                                    <input type="text" style="width:40px"/>
                                </div>
                               <div class="form" style=" margin-bottom:10px; float:left">
                                   <label>Postort</label>
                                    <input type="text"/>
                                </div>
                           </div>   
                           
                       </div>
                       <div style="float:right; width:50%">
                            <div class="row" style=" width:100%; ">
                                <div class="form" style="margin-bottom:10px">
                                   <label>E-postadres</label>
                                    <input type="text"/>
                                </div>
                           </div> 
                            <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                   <label>Mobiltelefon</label>
                                    <input type="text"/>
                                </div>
                                
                           </div>
                            
                       </div>

                     </div>
                    <div id="Fakturapay" style="border:1px solid black;  margin-bottom:10px">
                        <h4>Använd faktura</h4>

                    </div>

                    <div id="Internetbankapay" style="height:170px; border:1px solid black;  margin-bottom:10px">
                        <h4>Använd Internetbank</h4>
                        <div style="float:left; width:50%">
                           <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                    <label>Förnamn</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                   <label>Gatuadress</label>
                                    <input type="text"/>
                                </div>
                           </div>
                           <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px; float:left">
                                   <label>Postnr</label>
                                    <input type="text" style="width:40px"/>
                                </div>
                               <div class="form" style="margin-bottom:10px; float:left">
                                   <label>Postort</label>
                                    <input type="text"/>
                                </div>
                           </div>   
                           
                       </div>
                       <div style="float:right; width:50%">
                            <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                   <label>E-postadres</label>
                                    <input type="text"/>
                                </div>
                           </div> 
                            <div class="row" style=" width:100%; ">
                                <div class="form" style=" margin-bottom:10px">
                                   <label>Mobiltelefon</label>
                                    <input type="text"/>
                                </div>
                                
                           </div>
                            
                       </div>
                    </div>
                    <input type="button" value="Bekräfta köp"/>
                    
                </div>
        </div>


    </div>

    
    




</asp:Content>

