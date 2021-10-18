using System;
using Dominio.Entidades;

namespace Dominio.Entidades.AnulacionRecibo
{
    public class AnulacionRecibo
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public long numero { get; set; }

        public decimal importe { get; set; }

        public string observacion { get; set; }

        public Recibo.Recibo Recibo { get; set; }
        public int ReciboID { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public ConceptoAnulacionRecibo ConceptoAnulacionRecibo { get; set; }
        public int ConceptoAnulacionReciboID { get; set; }

        public DateTime fechaAlta { get; set; }

        public ClasificacionComprobante.EstadoComprobanteFiscal EstadoComprobanteFiscal { get; set; }
        public int EstadoComprobanteFiscalID { get; set; }

    }
}
