using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cheque
{
    public class ChequePorBoletaDeDepositoInterna
    {
        public int ID { get; set; }

        public BoletaDeDepositoInterna.BoletaDeDepositoInterna BoletaDeDepositoInterna { get; set; }
        public int BoletaDeDepositoInternaID { get; set; }

        public Cheque Cheque { get; set; }
        public int ChequeID { get; set; }

    }
}
