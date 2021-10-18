using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class Apertura
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Terminal Terminal { get; set; }
        public int TerminalID { get; set; }

        public long numeradorTerminal { get; set; }

        public decimal saldoInicial { get; set; }

        public DateTime fechaCierre { get; set; }

        public Seguridad.RolPorUsuario RolPorUsuario { get; set; }
        public int RolPorUsuarioID { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
