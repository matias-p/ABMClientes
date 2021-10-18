using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class ItemFacturaPorServicio
    {
        public int ID { get; set; }

        public ItemFactura ItemFactura { get; set; }
        public int ItemFacturaID { get; set; }

        public ArticuloServicio.Servicio Servicio { get; set; }
        public int ServicioID { get; set; }

    }
}
