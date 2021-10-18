using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class TipoMovimientoPorTipoTerminal
    {
        public int ID { get; set; }

        public TipoMovimiento TipoMovimiento { get; set; }
        public int TipoMovimientoID { get; set; }

        public TipoTerminal TipoTerminal { get; set; }
        public int TipoTerminalID { get; set; }

        public bool baja { get; set; }

    }
}
