<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="casualshoes.WebForm8"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakta oss</h1>
 

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
        <asp:Label runat="server" ID="stateEmail"></asp:Label>
         <br />


    </asp:Panel>

</asp:Content>
