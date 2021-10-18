using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemCierre
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public string detalle { get; set; }

        public int orden { get; set; }

        public TipoTerminal TipoTerminal { get; set; }
        public int TipoTerminalID { get; set; }

        public bool seImprime { get; set; }

        public bool baja { get; set; }

    }
}
