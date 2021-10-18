using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class Cierre
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Arqueo Arqueo { get; set; }
        public int ArqueoID { get; set; }

        public EstadoDeCierre EstadoDeCierre { get; set; }
        public int EstadoDeCierreID { get; set; }

        public decimal saldoFinal { get; set; }

        public decimal totalValores { get; set; }

        public decimal cambio { get; set; }

        public decimal diferenciaDeCambio { get; set; }

        public decimal saldoInicialProximaApertura { get; set; }

        public bool guardaItemsCierre { get; set; }

        public bool definitivo { get; set; }

        public decimal redondeoBoletaDeDeposito { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
