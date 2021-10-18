using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class ItemCotizacionPorArticulo
    {
        public int ID { get; set; }

        public ItemCotizacion ItemCotizacion { get; set; }
        public int ItemCotizacionID { get; set; }

        public ArticuloServicio.Articulo Articulo { get; set; }
        public int ArticuloID { get; set; }

    }
}
