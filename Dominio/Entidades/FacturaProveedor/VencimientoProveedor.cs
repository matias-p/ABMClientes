using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FacturaProveedor
{
    public class VencimientoProveedor
    {
        public int ID { get; set; }

        public DateTime vencimiento { get; set; }

        public decimal importe { get; set; }

        public bool cancelada { get; set; }

        public DateTime fechaCancelacion { get; set; }

        public int cuota { get; set; }

    }
}
