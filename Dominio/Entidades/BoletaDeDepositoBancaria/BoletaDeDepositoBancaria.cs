using System;
using Dominio.Entidades;

namespace Dominio.Entidades.BoletaDeDepositoBancaria
{
    public class BoletaDeDepositoBancaria
    {
        public int ID { get; set; }

        public General.Banco Banco { get; set; }
        public int BancoID { get; set; }

        public BoletaDeDepositoInterna.BoletaDeDepositoInterna BoletaDeDepositoInterna { get; set; }
        public int BoletaDeDepositoInternaID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public int numero { get; set; }

        public decimal importe { get; set; }

        public EstadoBoletaDeDepositoBancaria EstadoBoletaDeDepositoBancaria { get; set; }
        public int EstadoBoletaDeDepositoBancariaID { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
