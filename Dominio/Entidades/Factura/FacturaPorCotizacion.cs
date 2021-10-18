using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class FacturaPorCotizacion
    {
        public int ID { get; set; }

        public Factura Factura { get; set; }
        public int FacturaID { get; set; }

        public Cotizacion.Cotizacion Cotizacion { get; set; }
        public int CotizacionID { get; set; }

        public TipoRelacionFacturaCotizacion TipoRelacionFacturaCotizacion { get; set; }
        public int TipoRelacionFacturaCotizacionID { get; set; }

    }
}
