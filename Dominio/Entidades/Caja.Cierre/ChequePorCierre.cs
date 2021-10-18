using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ChequePorCierre
    {
        public int ID { get; set; }

        public Cierre Cierre { get; set; }
        public int CierreID { get; set; }

        public Cheque.Cheque Cheque { get; set; }
        public int ChequeID { get; set; }

        public Cheque.EstadoCheque EstadoCheque { get; set; }
        public int EstadoChequeID { get; set; }

    }
}
