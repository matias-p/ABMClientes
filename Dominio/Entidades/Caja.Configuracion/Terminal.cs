using System;
using Dominio.Entidades.ConfiguracionFiscal;

namespace Dominio.Entidades.Caja
{
    public class Terminal
    {
        public int ID { get; set; }

        public TipoTerminal TipoTerminal { get; set; }
        public int TipoTerminalID { get; set; }

        public PuntoDeVenta PuntoDeVenta { get; set; }
        public int PuntoDeVentaID { get; set; }

        public short numeroTerminal { get; set; }

        public decimal saldoInicialSugerido { get; set; }

        public string modoDeFacturacion { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
