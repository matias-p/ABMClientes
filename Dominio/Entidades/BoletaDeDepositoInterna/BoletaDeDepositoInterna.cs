using System;
using Dominio.Entidades;

namespace Dominio.Entidades.BoletaDeDepositoInterna
{
    public class BoletaDeDepositoInterna
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public DateTime fechaAlta { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public long numero { get; set; }

        public Caja.ConceptoDeTipoMovimiento ConceptoDeTipoMovimiento { get; set; }
        public int ConceptoDeTipoMovimientoID { get; set; }

        public decimal importe { get; set; }

        public EstadoBoletaDeDeposito EstadoBoletaDeDeposito { get; set; }
        public int EstadoBoletaDeDepositoID { get; set; }

        public string observacion { get; set; }

    }
}
