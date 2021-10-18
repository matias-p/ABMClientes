using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ConceptoDeTipoMovimiento
    {
        public int ID { get; set; }

        public TipoMovimiento TipoMovimiento { get; set; }
        public int TipoMovimientoID { get; set; }

        public string concepto { get; set; }

        public General.MedioDePago MedioDePago { get; set; }
        public int MedioDePagoID { get; set; }

    }
}
