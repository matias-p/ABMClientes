using System;
using Dominio.Entidades;

namespace Dominio.Entidades.AnulacionRecibo
{
    public class AnulacionReciboPorVencimiento
    {
        public int ID { get; set; }

        public AnulacionRecibo AnulacionRecibo { get; set; }
        public int AnulacionReciboID { get; set; }

        public Factura.Vencimiento Vencimiento { get; set; }
        public int VencimientoID { get; set; }

        public decimal importe { get; set; }

    }
}
