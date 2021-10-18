using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class Vencimiento
    {
        public int ID { get; set; }

        public DateTime fechaVencimiento { get; set; }

        public decimal importe { get; set; }

        public bool cancelada { get; set; }

        public DateTime fechaCancelacion { get; set; }

        public int cuota { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
