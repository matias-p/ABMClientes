using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDeCompra
{
    public class ItemOrdenDeCompraPorServicio
    {
        public int ID { get; set; }

        public ItemOrdenDeCompra ItemOrdenDeCompra { get; set; }
        public int ItemOrdenDeCompraID { get; set; }

        public ArticuloServicio.Servicio Servicio { get; set; }
        public int ServicioID { get; set; }

    }
}
