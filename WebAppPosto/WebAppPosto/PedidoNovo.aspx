<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoNovo.aspx.cs" Inherits="WebAppPosto.PedidoNovo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Novo Vendedor</h3>
<p>
    <div class="stdform stdform2">
<label><asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></label>
<span class="field">
    <asp:TextBox ID="tbxNome" runat="server" class="longinput"></asp:TextBox></span>
    </div>
</p>
<p class="stdformbutton">
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" class="submit radius2" OnClick="btnSalvar_Click"/>&nbsp;
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" class="reset radius2" OnClick="btnCancelar_Click"/>
</p>
</asp:Content>
