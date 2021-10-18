using Dominio.Entidades.ConfiguracionFiscal;
using System;

namespace Dominio.Entidades.Caja.Configuracion
{
    public class PuntoDeVentaPorTerminal
    {
        public int ID { get; set; }

        public PuntoDeVenta PuntoDeVenta { get; set; }
        public int PuntoDeVentaID  { get; set; }

        public Terminal Terminal { get; set; }
        public int TerminalID  { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }
    }
}
