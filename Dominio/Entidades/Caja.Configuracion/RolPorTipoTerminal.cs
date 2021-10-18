using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class RolPorTipoTerminal
    {
        public int ID { get; set; }

        public Seguridad.Rol Rol { get; set; }
        public int RolID { get; set; }

        public TipoTerminal TipoTerminal { get; set; }
        public int TipoTerminalID { get; set; }

        public bool baja { get; set; }

    }
}
