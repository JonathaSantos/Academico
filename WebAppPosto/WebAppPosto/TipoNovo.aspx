<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoNovo.aspx.cs" Inherits="WebAppPosto.TipoNovo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Novo Vendedor</h3>
<p>
    <div class="stdform stdform2">
<label><asp:Label ID="lblNomeTipo" runat="server" Text="Nome"></asp:Label></label>
<span class="field">
    <asp:TextBox ID="tbxNomeTipo" runat="server" class="longinput"></asp:TextBox></span>
    </div>
</p>
<p class="stdformbutton">
    <asp:Button ID="btnSalvarTipo" runat="server" Text="Salvar" class="submit radius2" OnClick="btnSalvarTipo_Click"/>&nbsp;
    <asp:Button ID="btnCancelarTipo" runat="server" Text="Cancelar" class="reset radius2" OnClick="btnCancelarTipo_Click"/>
</p>
</asp:Content>
