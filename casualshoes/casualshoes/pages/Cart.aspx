<%@ Page Title="Kundvarukorg" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="casualshoes.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Shopping Cart</h2>

    
    
        <div id="Mainbody" style=" width:98%; padding:10px 10px ">

            <h3>1. Kontrolera bestälning</h3>

            <div id="ListItems">

                // comentar om at använda gridviwe
              
            
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
            

        </div>

              <h3>3. Slutför köp</h3>
            <div id="Slutkop" style=" height:90px ; width:100%;border: 1px solid black; margin-top: 10px;"  >
            

        </div>
    </div>

    
    




</asp:Content>

