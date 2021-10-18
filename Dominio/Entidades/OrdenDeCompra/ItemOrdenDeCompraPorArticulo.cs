using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDeCompra
{
    public class ItemOrdenDeCompraPorArticulo
    {
        public int ID { get; set; }

        public ItemOrdenDeCompra ItemOrdenDeCompra { get; set; }
        public int ItemOrdenDeCompraID { get; set; }

        public ArticuloServicio.Articulo Articulo { get; set; }
        public int ArticuloID { get; set; }

    }
}
