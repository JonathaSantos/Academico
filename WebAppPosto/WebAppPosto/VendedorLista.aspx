<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VendedorLista.aspx.cs" Inherits="WebAppPosto.VendedorLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de Vendedores</h3>
<br />
    <asp:Button ID="btnNovoVendedor" runat="server" Text="Novo Vendedor" OnClick="btnNovoVendedor_Click" />
<br />
    <asp:GridView ID="gvwVendedores" runat="server" AutoGenerateColumns="False" class="stdtable" AllowPaging="True" AllowSorting="True" ShowFooter="True">
        
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="CodVendedor" DataNavigateUrlFormatString="VendedorEditar.aspx?Cod={0}&Op=A" DataTextField="CodVendedor" DataTextFormatString=" " Text="" ItemStyle-Width="30px"  ControlStyle-CssClass="btn btn3 btn_book"/>
            <asp:HyperLinkField DataNavigateUrlFields="CodVendedor" DataNavigateUrlFormatString="VendedorEditar.aspx?Cod={0}&Op=D" DataTextField="CodVendedor" DataTextFormatString=" " Text=""  ItemStyle-Width="30px" ControlStyle-CssClass="btn btn3 btn_trash"/>
            <asp:BoundField DataField="Nome" />
        </Columns>
    </asp:GridView>

</asp:Content>
