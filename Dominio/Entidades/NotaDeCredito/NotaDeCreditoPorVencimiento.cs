using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class NotaDeCreditoPorVencimiento
    {
        public int ID { get; set; }

        public NotaDeCredito NotaDeCredito { get; set; }
        public int NotaDeCreditoID { get; set; }

        public Factura.Vencimiento Vencimiento { get; set; }
        public int VencimientoID { get; set; }

        public decimal importe { get; set; }

        public bool terminaDeSaldarVencimiento { get; set; }

    }
}
