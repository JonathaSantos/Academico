using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppPosto
{
    public partial class PedidoNovo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/VendedorLista.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Vendedor vendedor = new Vendedor();

            vendedor.Nome = tbxNome.Text;
            VendedorOad.Inserir(vendedor);
           

            
        }
    }
}