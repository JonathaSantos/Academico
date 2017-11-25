using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppPosto
{
    public partial class VendedorEditar : System.Web.UI.Page
    {
        String NomeVendedorNovo;
        protected void Page_Load(object sender, EventArgs e)
        {
            NomeVendedorNovo = tbxNomeEditar.Text;
            string codigo = Request["Cod"];
            string operacao = Request["Op"];

            Vendedor vendedor = new Vendedor();
            vendedor.CodVendedor = Convert.ToInt16(codigo);
            vendedor = VendedorOad.Obter(vendedor);
            tbxNomeEditar.Text = vendedor.Nome;
        }

        protected void btnCancelarEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/VendedorEditar.aspx");
        }

        protected void btnSalvarEditar_Click(object sender, EventArgs e)
        {
            
            Vendedor vendedor = ObterRequest();
           // vendedor.Nome = tbxNomeEditar.Text;//
            VendedorOad.Alterar(vendedor);

            Response.Redirect("/VendedorLista.aspx");
        }
        protected void btnExcluirEditar_Click(object sender, EventArgs e)
        {
           
            Vendedor vendedor = ObterRequest();
            VendedorOad.Excluir(vendedor);
            Response.Redirect("/VendedorLista.aspx");
        }
        public Vendedor ObterRequest()
        {
            string codigo = Request["Cod"];
            string operacao = Request["Op"];

            Vendedor vendedor = new Vendedor();
            vendedor.CodVendedor = Convert.ToInt16(codigo);
            vendedor = VendedorOad.Obter(vendedor);
            //
            if (operacao.Equals("A"))
	        {
                vendedor.Nome = NomeVendedorNovo;
                   
	        }
           
           
            return vendedor;
        } 
    }
}