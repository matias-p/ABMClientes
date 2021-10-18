using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class BoletaDeDepositoInternaPorCierre
    {
        public int ID { get; set; }

        public Cierre Cierre { get; set; }
        public int CierreID { get; set; }

        public BoletaDeDepositoInterna.BoletaDeDepositoInterna BoletaDeDepositoInterna { get; set; }
        public int BoletaDeDepositoInternaID { get; set; }

    }
}
