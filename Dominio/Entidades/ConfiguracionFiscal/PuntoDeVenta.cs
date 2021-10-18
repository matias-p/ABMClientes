using System;

namespace Dominio.Entidades.ConfiguracionFiscal
{
    public class PuntoDeVenta
    {
        public int ID { get; set; }

        public bool baja { get; set; }

        public short prefijo { get; set; }

        public short puerto { get; set; }

        public ModeloFiscal ModeloFiscal { get; set; }
        public int GN_ModeloFiscal_ID { get; set; }

        public DateTime fechaAlta { get; set; }
    }
}
