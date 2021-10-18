using System;
using Dominio.Entidades;

namespace Dominio.Entidades.OrdenDeCompra
{
    public class ItemOrdenDeCompra
    {
        public int ID { get; set; }

        public OrdenDeCompra OrdenDeCompra { get; set; }
        public int OrdenDeCompraID { get; set; }

        public short cantidad { get; set; }

        public decimal precioNeto { get; set; }

        public decimal precioTotal { get; set; }

        public decimal precioLista { get; set; }

        public decimal impuestoInterno { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public decimal importeIva { get; set; }

        public string nivelItem { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
