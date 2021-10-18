using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class NotaDeCreditoPorFactura
    {
        public int ID { get; set; }

        public NotaDeCredito NotaDeCredito { get; set; }
        public int NotaDeCreditoID { get; set; }

        public Factura.Factura Factura { get; set; }
        public int FacturaID { get; set; }

        public decimal importe { get; set; }

    }
}
