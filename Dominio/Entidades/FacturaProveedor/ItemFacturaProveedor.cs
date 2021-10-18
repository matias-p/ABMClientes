using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class ItemFacturaProveedor
    {
        public int ID { get; set; }

        public Cotizacion.ItemCotizacion ItemCotizacion { get; set; }
        public int ItemCotizacionID { get; set; }

        public FacturaProveedor FacturaProveedor { get; set; }
        public int FacturaProveedorID { get; set; }

        public short cantidad { get; set; }

        public decimal precioNeto { get; set; }

        public decimal precioDeLista { get; set; }

        public decimal precioTotal { get; set; }

        public decimal impuestoInterno { get; set; }

        public decimal importeIva { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public decimal montoNoFiscal { get; set; }

    }
}
