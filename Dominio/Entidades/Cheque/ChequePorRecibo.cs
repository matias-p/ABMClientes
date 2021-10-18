using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cheque
{
    public class ChequePorRecibo
    {
        public int ID { get; set; }

        public Recibo.Recibo Recibo { get; set; }
        public int ReciboID { get; set; }

        public Cheque Cheque { get; set; }
        public int ChequeID { get; set; }

    }
}
