using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class VencimientoPorFacturaProveedor
    {
        public int ID { get; set; }

        public FacturaProveedor FacturaProveedor { get; set; }
        public int FacturaProveedorID { get; set; }

        public VencimientoProveedor VencimientoProveedor { get; set; }
        public int VencimientoProveedorID { get; set; }

        public General.CondicionDeVenta CondicionDeVenta { get; set; }
        public int CondicionDeVentaID { get; set; }

    }
}
