using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FondoFijo
{
    public class ValeDeGastoARendirPorRendicion
    {
        public int ID { get; set; }

        public Rendicion Rendicion { get; set; }
        public int RendicionID { get; set; }

        public ValeDeGastoARendir ValeDeGastoARendir { get; set; }
        public int ValeDeGastoARendirID { get; set; }

    }
}
