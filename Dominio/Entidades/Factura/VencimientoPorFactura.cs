using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class VencimientoPorFactura
    {
        public int ID { get; set; }

        public Vencimiento Vencimiento { get; set; }
        public int VencimientoID { get; set; }

        public Factura Factura { get; set; }
        public int FacturaID { get; set; }

        public General.CondicionDeVenta CondicionDeVenta { get; set; }
        public int CondicionDeVentaID { get; set; }

    }
}
