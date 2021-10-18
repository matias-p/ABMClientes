using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class ItemFacturaProveedorPorArticulo
    {
        public int ID { get; set; }

        public ItemFacturaProveedor ItemFacturaProveedor { get; set; }
        public int ItemFacturaProveedorID { get; set; }

        public ArticuloServicio.Articulo Articulo { get; set; }
        public int ArticuloID { get; set; }

    }
}
