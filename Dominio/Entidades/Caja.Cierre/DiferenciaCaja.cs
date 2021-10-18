using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class DiferenciaCaja
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public string tipoDiferencia { get; set; }

        public ItemResumenArqueo ItemResumenArqueo { get; set; }
        public int ItemResumenArqueoID { get; set; }

        public General.MedioDePago MedioDePago { get; set; }
        public int MedioDePagoID { get; set; }

        public decimal importe { get; set; }

        public EstadoDiferenciaCaja EstadoDiferenciaCaja { get; set; }
        public int EstadoDiferenciaCajaID { get; set; }

        public string comentario { get; set; }

        public DateTime fechaAlta { get; set; }


    }
}
