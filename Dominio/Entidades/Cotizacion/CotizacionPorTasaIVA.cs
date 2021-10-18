using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class CotizacionPorTasaIVA
    {
        public int ID { get; set; }

        public Cotizacion Cotizacion { get; set; }
        public int CotizacionID { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public decimal monto { get; set; }

        public decimal noGravado { get; set; }

    }
}
