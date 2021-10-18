using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class ItemFacturaProveedorPorServicio
    {
        public int ID { get; set; }

        public ItemFacturaProveedor ItemFacturaProveedor { get; set; }
        public int ItemFacturaProveedorID { get; set; }

        public ArticuloServicio.Servicio Servicio { get; set; }
        public int ServicioID { get; set; }

    }
}
