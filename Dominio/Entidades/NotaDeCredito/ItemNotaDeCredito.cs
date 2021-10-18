using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class ItemNotaDeCredito
    {
        public int ID { get; set; }

        public NotaDeCredito NotaDeCredito { get; set; }
        public int NotaDeCreditoID { get; set; }

        public short cantidad { get; set; }

        public decimal montoCredito { get; set; }

        public decimal impuestoInterno { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public decimal importeIva { get; set; }

        public decimal montoNoFiscal { get; set; }

    }
}
