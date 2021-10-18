using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDePagoProveedor
{
    public class OrdenDePagoPorVencimientoProveedor
    {
        public int ID { get; set; }

        public FacturaProveedor.VencimientoProveedor VencimientoProveedor { get; set; }
        public int VencimientoProveedorID { get; set; }

        public OrdenDePagoProveedor OrdenDePagoProveedor { get; set; }
        public int OrdenDePagoProveedorID { get; set; }

        public decimal importe { get; set; }

        public bool terminaDeSaldarVencimiento { get; set; }

    }
}
