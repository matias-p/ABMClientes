using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDePagoProveedor
{
    public class OrdenDePagoProveedor
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Proveedor.Proveedor Proveedor { get; set; }
        public int ProveedorID { get; set; }

        public long numero { get; set; }

        public decimal importe { get; set; }

        public ClasificacionComprobante.EstadoPorTipoComprobante EstadoPorTipoComprobante { get; set; }
        public int EstadoPorTipoComprobanteID { get; set; }

        public string observacion { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
