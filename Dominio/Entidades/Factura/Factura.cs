using System;
using Dominio.Entidades;
using System.Collections.Generic;

namespace Dominio.Entidades.Factura
{
    public class Factura
    {
        public int ID { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public DateTime fechaEmision { get; set; }

        public string letra { get; set; }

        public long numero { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public decimal montoTotal { get; set; }

        public bool estaCancelada { get; set; }

        public bool cuentaCorriente { get; set; }

        public decimal importeIVA { get; set; }

        public decimal montoNoFiscal { get; set; }

        public ClasificacionComprobante.EstadoComprobanteFiscal EstadoComprobanteFiscal { get; set; }
        public int EstadoComprobanteFiscalID { get; set; }

        public Persona.ResponsabilidadIVA ResponsabilidadIVA { get; set; }
        public int ResponsabilidadIVAID { get; set; }

        public ClasificacionComprobante.SubtipoPorTipo SubtipoPorTipo { get; set; }
        public int SubtipoPorTipoID { get; set; }

        public DateTime fechaAlta { get; set; }

        //colecciones
        public IEnumerable<ItemFactura> ItemsFactura { get; set; }

        public IEnumerable<VencimientoPorFactura> VencimientosFactura { get; set; }


        public Factura()
        {
            ItemsFactura = new List<ItemFactura>();
            VencimientosFactura = new List<VencimientoPorFactura>();
        }
    }
}
