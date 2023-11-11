<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="Formularios.Formulario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="container"> 
        <h1 class="txtBox" >Registrarse</h1>
        <asp:TextBox ID="TextBox1" CssClass="txtBox" runat="server" placeholder="Mail"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Debe completar Email" ControlToValidate="TextBox1" ForeColor="Red" Display="None"></asp:RequiredFieldValidator><asp:RegularExpressionValidator runat="server" ErrorMessage="El Email debe ser de tipo: Ejemplo@ejemplo.com" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ControlToValidate="TextBox1" Display="None"></asp:RegularExpressionValidator><br/>
        <asp:TextBox ID="TextBox2" CssClass="txtBox" runat="server" placeholder="Nombre De Usuarios"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Debe completar Nombre de Usuario" ControlToValidate="TextBox2" ForeColor="Red" Display="None"></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="TextBox3" CssClass="txtBox" runat="server" placeholder="Edad" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Debe completar el campo de Edad" ControlToValidate="TextBox3" ForeColor="Red" Display="None"></asp:RequiredFieldValidator><asp:RangeValidator runat="server" ErrorMessage="La edad debe ser mayor a 15" MinimumValue="15" MaximumValue="99" ControlToValidate="TextBox3" Type="Integer" Display="None"></asp:RangeValidator><br />
        <asp:TextBox ID="TextBox4" CssClass="txtBox" runat="server" placeholder="Contraseña"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Debe proporcionar una contraseña" ControlToValidate="TextBox4" ForeColor="Red" Visible="False" Display="None"></asp:RequiredFieldValidator><asp:CompareValidator runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToValidate="TextBox5" ControlToCompare="TextBox4" Display="None"></asp:CompareValidator><br />
        <asp:TextBox ID="TextBox5" CssClass="txtBox" runat="server" placeholder="Repetir Contraseña"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Debe repetir su contraseña" ControlToValidate="TextBox5" ForeColor="Red" Display="None"></asp:RequiredFieldValidator><br />
        <asp:Button ID="Button1"  CssClass="txtBox" runat="server" Text="Enviar" OnClick="Button1_Click" /><asp:ValidationSummary runat="server" ForeColor="Red"></asp:ValidationSummary>

    </div>
</asp:Content>
