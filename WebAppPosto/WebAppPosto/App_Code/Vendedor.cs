using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppPosto
{
    public class Vendedor
    {
        private int codVendedor;

        public int CodVendedor
        {
            get { return codVendedor; }
            set { codVendedor = value; }
        }
        private string nome;

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }
    }
}