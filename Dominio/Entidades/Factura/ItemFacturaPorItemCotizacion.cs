using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class ItemFacturaPorItemCotizacion
    {
        public int ID { get; set; }

        public ItemFactura ItemFactura { get; set; }
        public int ItemFacturaID { get; set; }

        public Cotizacion.ItemCotizacion ItemCotizacion { get; set; }
        public int ItemCotizacionID { get; set; }

    }
}
