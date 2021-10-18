using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class ItemCotizacionPorServicio
    {
        public int ID { get; set; }

        public ItemCotizacion ItemCotizacion { get; set; }
        public int ItemCotizacionID { get; set; }

        public ArticuloServicio.Servicio Servicio { get; set; }
        public int ServicioID { get; set; }

    }
}
