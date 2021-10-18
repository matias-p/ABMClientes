using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class NumeradorPorTerminal
    {
        public int ID { get; set; }

        public Terminal Terminal { get; set; }
        public int TerminalID { get; set; }

        public long numerador { get; set; }

        public bool terminalAbierta { get; set; }

    }
}
