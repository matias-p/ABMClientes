using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FondoFijo
{
    public class Rendicion
    {
        public int ID { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public long numero { get; set; }

        public decimal importeTotal { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
