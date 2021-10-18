using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ReciboProveedor
{
    public class ReciboProveedor
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public long numero { get; set; }

        public decimal importe { get; set; }

        public string observacion { get; set; }

        public bool anulado { get; set; }

        public DateTime fechaAlta { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public OrdenDePagoProveedor.OrdenDePagoProveedor OrdenDePagoProveedor { get; set; }
        public int OrdenDePagoProveedorID { get; set; }

        public Proveedor.Proveedor Proveedor { get; set; }
        public int ProveedorID { get; set; }

    }
}
