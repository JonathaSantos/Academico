//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAppPosto
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tipo
    {
        public Tipo()
        {
            this.Produto = new HashSet<Produto>();
        }
    
        public int codTipo { get; set; }
        public string nome { get; set; }
    
        public virtual ICollection<Produto> Produto { get; set; }
    }
}
