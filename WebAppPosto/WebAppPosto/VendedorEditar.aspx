<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VendedorEditar.aspx.cs" Inherits="WebAppPosto.VendedorEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Editar Vendedor</h3>
<p>
    <div class="stdform stdform2">
<label><asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></label>
<span class="field">
    <asp:TextBox ID="tbxNomeEditar" runat="server" class="longinput"></asp:TextBox></span>
    </div>
</p>
<p class="stdformbutton">
    <asp:Button ID="btnSalvarEditar" runat="server" Text="Salvar" class="submit radius2" OnClick="btnSalvarEditar_Click"/>&nbsp;&nbsp;
    <asp:Button ID="btnExcluirEditar" runat="server" Text="Excluir" class="submit radius2" OnClick="btnExcluirEditar_Click"/>&nbsp;&nbsp;
    <asp:Button ID="btnCancelarEditar" runat="server" Text="Cancelar" class="reset radius2" OnClick="btnCancelarEditar_Click"/>
</p>
</asp:Content>
