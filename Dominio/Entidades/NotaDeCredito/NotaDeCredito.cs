using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class NotaDeCredito
    {
        public int ID { get; set; }

        public string letra { get; set; }

        public long numero { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public decimal montoTotal { get; set; }

        public string observacion { get; set; }

        public bool estaCancelada { get; set; }

        public decimal importeIVA { get; set; }

        public short diasVigencia { get; set; }

        public decimal saldoPendienteDeAplicacion { get; set; }

        public ClasificacionComprobante.EstadoComprobanteFiscal EstadoComprobanteFiscal { get; set; }
        public int EstadoComprobanteFiscalID { get; set; }

        public decimal porcentajeCredito { get; set; }

        public ConceptoNotaDeCredito ConceptoNotaDeCredito { get; set; }
        public int ConceptoNotaDeCreditoID { get; set; }

        public decimal importeDevueltoNoFiscal { get; set; }

        public ClasificacionComprobante.SubtipoPorTipo SubtipoPorTipo { get; set; }
        public int SubtipoPorTipoID { get; set; }

        public Persona.ResponsabilidadIVA ResponsabilidadIVA { get; set; }
        public int ResponsabilidadIVAID { get; set; }

        public DateTime fechaAlta { get; set; }
    }
}
