using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class ItemCotizacion
    {
        public int ID { get; set; }

        public Cotizacion Cotizacion { get; set; }
        public int CotizacionID { get; set; }

        public short cantidad { get; set; }

        public decimal precioNeto { get; set; }

        public decimal precioTotal { get; set; }

        public decimal precioLista { get; set; }

        public decimal impuestoInterno { get; set; }

        public decimal importeIva { get; set; }

        public General.TasaIVA TasaIVA { get; set; }

        public int TasaIVAID { get; set; }

    }
}
