using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebAppPosto
{
    public partial class TipoNovo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelarTipo_Click(object sender, EventArgs e)
        {
            Response.Redirect("/TipoLista.aspx");
        }

        protected void btnSalvarTipo_Click(object sender, EventArgs e)
        {
            
            Tipo tipo = new Tipo();
            tipo.Nome = tbxNomeTipo.Text;
            
            TipoOad.Inserir(tipo);
           

            
        }
    }
}