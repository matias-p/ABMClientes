using System;
using Dominio.Entidades;

namespace Dominio.Entidades.AnulacionRecibo
{
    public class CondicionDeVentaPorAnulacionRecibo
    {
        public int ID { get; set; }

        public AnulacionRecibo AnulacionRecibo { get; set; }
        public int AnulacionReciboID { get; set; }

        public General.CondicionDeVenta CondicionDeVenta { get; set; }
        public int CondicionDeVentaID { get; set; }

        public decimal importe { get; set; }

        public decimal importeDevueltoEnPesos { get; set; }

    }
}
