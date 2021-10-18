using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class FacturaProveedor
    {
        public int ID { get; set; }

        ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public string letra { get; set; }

        public long numero { get; set; }

        public Proveedor.Proveedor Proveedor { get; set; }
        public int ProveedorID { get; set; }

        public DateTime fechaEmision { get; set; }

        public decimal montoTotal { get; set; }

        public bool estaCancelada { get; set; }

        public bool cuentaCorriente { get; set; }

        public decimal importeIVA { get; set; }

        public decimal montoNoFiscal { get; set; }

        public ClasificacionComprobante.EstadoPorTipoComprobante EstadoPorTipoComprobante { get; set; }
        public int EstadoPorTipoComprobanteID { get; set; }

        public Persona.ResponsabilidadIVA ResponsabilidadIVA { get; set; }
        public int ResponsabilidadIVAID { get; set; }

        public DateTime fechaAlta { get; set; }
    }
}
