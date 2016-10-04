<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="casualshoes.WebForm8"  %>

<%--<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakta oss</h1>
    <div>
        <label>Namn*</label>
        <asp:TextBox runat="server" ID="name" />
        <asp:RequiredFieldValidator runat="server" ID="rfvname" ControlToValidate="name" ErrorMessage="Enter namn"/>
 </div>
    <div>
        <label>E-mail*</label>
        <asp:TextBox runat="server" ID="email" />
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="email" ErrorMessage="Enter email" Display="Dynamic" />
   
</div>
  
    <div>
        <label>Medellande*</label>
        <asp:Textbox  runat="server" ID="medellande"/>
    </div>
    <asp:Button runat="server" ID="btnSkicka" Text="Skicka medellande" />
=======--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakta oss</h1>
  <%--  <table>
        <tr>
            <td>
                <label>Namn:</label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="txt_fullname" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_fullname" ErrorMessage="firstname required" Display="Static" EnableClientScript="false" />
            </td>
        </tr>
        <tr>
            <td>
                <label>Din Gmail:</label>

            </td>
            <td>
                <asp:TextBox runat="server" ID="txt_email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_email" ErrorMessage="Ange din mail" Display="Static" EnableClientScript="false" />
                <asp:RegularExpressionValidator ID="rev_emailValidatior" runat="server" ControlToValidate="txt_email" ErrorMessage="Du måste ange en riktig Email" Display="Static" EnableClientScript="false" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
            </td>

        </tr>
        <tr>
            <td>
                <label>Meddelande:</label>
            </td>
            <td>
                <asp:TextBox ID="txt_comments" TextMode="multiline" Columns="50" Rows="5" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_comments" ErrorMessage="Du måste ange något innehåll till ditt mail" Display="Static" EnableClientScript="false" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button runat="server" ID="btn_sendMail" Text="Skicka medellande" OnClick="btn_sendMail_Click" />
                <asp:Label runat="server" ID="lbl_sentMessage"></asp:Label>
            </td>
        </tr>
    </table>
>>>>>>> master--%>

    <%-- Variant tree --%>

    <asp:Panel runat="server">
       
               <asp:Label runat="server">Name*:</asp:Label><br />
           <asp:TextBox runat="server" ID="txtName" class="form"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Name required" Display="Static" EnableClientScript="false" />
          
        
        

        <br /><br />

        <asp:Label runat="server">Email*:</asp:Label><br />
        <asp:TextBox runat="server" ID="txtEmail"  class="form"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email required" Display="Static" EnableClientScript="false" />
        <asp:RegularExpressionValidator ID="rev_emailValidatior" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required valid email" Display="Static" EnableClientScript="false" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
        <br /><br />

        <asp:Label runat="server">Subject*:</asp:Label><br />
        <asp:TextBox runat="server" ID="txtSubject"  class="form" ></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject required" Display="Static" EnableClientScript="false" />
        <br /><br />

      

        <asp:Label runat="server" >Message*:</asp:Label><br />
        <textarea runat="server" id="txtMessage" rows="7" columns="20" class="txt-area"></textarea>
         <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage" ErrorMessage="Message required" Display="Static" EnableClientScript="false" />
        <br />

        <asp:Button runat="server" ID="btnReset" Text="Reset" onClick="btnReset_Click1" />

        <asp:Button runat="server" ID="btnSend" Text="Send"  onClick="btnSend_Click1"  class="form-send" />
        

        <br />


    </asp:Panel>

</asp:Content>
