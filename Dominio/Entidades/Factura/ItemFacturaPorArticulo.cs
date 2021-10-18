using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class ItemFacturaPorArticulo
    {
        public int ID { get; set; }

        public ArticuloServicio.Articulo Articulo { get; set; }
        public int ArticuloID { get; set; }

        public ItemFactura ItemFactura { get; set; }
        public int ItemFacturaID { get; set; }

    }
}
