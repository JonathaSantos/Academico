using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppPosto
{
    public partial class VendedorLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvwVendedores.DataSource = VendedorOad.Listar();
            gvwVendedores.DataBind();
            //Vendedor vendedor = new Vendedor();
            //vendedor.Nome = "Brasil";

            //VendedorOad.Inserir(vendedor);

        }

        protected void btnNovoVendedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/VendedorNovo.aspx");
        }

        
    }
}