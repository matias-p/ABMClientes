using System;
using Dominio.Entidades;

namespace Dominio.Entidades.General
{
    public class CondicionDeVenta
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        General.MedioDePago MedioDePago { get; set; }
        public int MedioDePagoID { get; set; }

        public short cuotasDesde { get; set; }

        public short cuotasHasta { get; set; }

        public General.Moneda Moneda { get; set; }
        public int MonedaID { get; set; }

        public decimal margenPreventa { get; set; }

        public bool permitidoEnCobranza { get; set; }

        public bool permitidoEnPreventa { get; set; }

        public DateTime vigenciaDesde { get; set; }

        public DateTime vigenciaHasta { get; set; }

        public int rangoVencimientoChequeDesde { get; set; }

        public int rangoVencimientoChequeHasta { get; set; }

        public DateTime fechaAlta { get; set; }
        
        public bool baja { get; set; }

    }
}
