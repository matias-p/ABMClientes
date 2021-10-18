using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Recibo
{
    public class ReciboPorVencimiento
    {
        public int ID { get; set; }

        public Recibo Recibo { get; set; }
        public int ReciboID { get; set; }

        public Factura.Vencimiento Vencimiento { get; set; }
        public int VencimientoID { get; set; }

        public decimal importe { get; set; }

        public bool terminaDeSaldarVencimiento { get; set; }

    }
}
