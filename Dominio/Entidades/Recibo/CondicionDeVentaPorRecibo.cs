using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Recibo
{
    public class CondicionDeVentaPorRecibo
    {
        public int ID { get; set; }

        public Recibo Recibo { get; set; }
        public int ReciboID { get; set; }

        public General.CondicionDeVenta CondicionDeVenta { get; set; }
        public int CondicionDeVentaID { get; set; }

        public decimal importe { get; set; }

        public decimal vuelto { get; set; }

    }
}
