using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class CotizacionPorCondicionDeVenta
    {
        public int ID { get; set; }

        public Cotizacion Cotizacion { get; set; }
        public int CotizacionID { get; set; }

        public General.CondicionDeVenta CondicionDeVenta { get; set; }
        public int CondicionDeVentaID { get; set; }

        public decimal montoAAplicar { get; set; }

        public decimal importe { get; set; }

        public short orden { get; set; }

        public decimal restante { get; set; }

        public short cantidadCuotas { get; set; }

        public decimal interes { get; set; }

        public decimal importeMonedaExtranjera { get; set; }

        public bool esAnticipo { get; set; }

        public DateTime fechaAlta { get; set; }
    }
}
