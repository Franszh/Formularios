<%@ Page Title="" Language="C#" MasterPageFile="~/MasterP.Master" AutoEventWireup="true" CodeBehind="Formulario2.aspx.cs" Inherits="Formularios.Formulario2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestion de Archivo</h1>
    <div id="container2">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Cargar" OnClick="Button1_Click" /><asp:Label runat="server" ID="LabelError" ForeColor="Red"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="DescargarGridView_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="Descargar" Text="Descargar" ButtonType="Button" ShowHeader="True" HeaderText="Descargar"></asp:ButtonField>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
