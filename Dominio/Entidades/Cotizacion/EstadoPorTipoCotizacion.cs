using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class EstadoPorTipoCotizacion
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public TipoCotizacion TipoCotizacion { get; set; }
        public int TipoCotizacionID { get; set; }

        public bool puedeVencer { get; set; }

    }

}
