using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cheque
{
    public class ChequePorDiferenciaCaja
    {
        public int ID { get; set; }

        public Caja.DiferenciaCaja DiferenciaCaja { get; set; }
        public int DiferenciaCajaID { get; set; }

        public Cheque Cheque { get; set; }
        public int ChequeID { get; set; }

    }
}
