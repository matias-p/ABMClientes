using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDeCompra
{
    public class OrdenDeCompra
    {
        public int ID { get; set; }

        public Proveedor.Proveedor Proveedor { get; set; }
        public int ProveedorID { get; set; }

        public DateTime fechaEmision { get; set; }

        public decimal montoTotal { get; set; }

        public short diasDeVigencia { get; set; }

        public decimal totalPrecioLista { get; set; }

        public ClasificacionComprobante.EstadoPorTipoComprobante EstadoPorTipoComprobante { get; set; }
        public int EstadoPorTipoComprobanteID { get; set; }

        public decimal importeIVA { get; set; }

       public DateTime fechaAlta { get; set; }

    }
}
