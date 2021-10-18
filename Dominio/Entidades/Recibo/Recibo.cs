using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Recibo
{
    public class Recibo
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public ClasificacionComprobante.EstadoComprobanteFiscal EstadoComprobanteFiscal { get; set; }
        public int EstadoComprobanteFiscalID { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public long numero { get; set; }

        public decimal importe { get; set; }

        public bool estaCancelada { get; set; }

        public bool reciboVirtual { get; set; }

        public string observacion { get; set; }

        public bool anulado { get; set; }

        public DateTime fechaAlta { get; set; }
    }
}
