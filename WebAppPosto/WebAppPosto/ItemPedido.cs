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
    
    public partial class ItemPedido
    {
        public ItemPedido()
        {
            this.Pedido = new HashSet<Pedido>();
        }
    
        public int codItemPedido { get; set; }
        public Nullable<int> codProduto { get; set; }
        public Nullable<decimal> quantidade { get; set; }
    
        public virtual Produto Produto { get; set; }
        public virtual ICollection<Pedido> Pedido { get; set; }
    }
}
