<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoLista.aspx.cs" Inherits="WebAppPosto.TipoLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de Tipos</h3>
<br />
    <asp:Button ID="btnNovoTipo" runat="server" Text="Novo Tipo" OnClick="btnNovoTipo_Click"/>
<br />
    <asp:GridView ID="gvwTipos" runat="server" AutoGenerateColumns="False" class="stdtable" AllowPaging="True" AllowSorting="True" ShowFooter="True">
        
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="codTipo" DataNavigateUrlFormatString="TipoEditar.aspx?Cod={0}&Op=A" DataTextField="codTipo" DataTextFormatString=" " Text="" ItemStyle-Width="30px"  ControlStyle-CssClass="btn btn3 btn_book"/>
            <asp:HyperLinkField DataNavigateUrlFields="codTipo" DataNavigateUrlFormatString="TipoEditar.aspx?Cod={0}&Op=D" DataTextField="codTipo" DataTextFormatString=" " Text=""  ItemStyle-Width="30px" ControlStyle-CssClass="btn btn3 btn_trash"/>
            <asp:BoundField DataField="Nome" />
        </Columns>
    </asp:GridView>
</asp:Content>
