using System;
using System.Collections.Generic;
using Dominio.Entidades;

namespace Dominio.Entidades.General
{
    public class MedioDePago
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool permiteCuotas { get; set; }

        public bool habilitadoParaCobranza { get; set; }

        public bool habilitadoParaMovimientoCaja { get; set; }

        public bool exigeCancelacionEnFacturacion { get; set; }

        public short ordenFacturacion { get; set; }

        public bool permiteCondicionDeVenta { get; set; }

        public bool permiteSubtipo { get; set; }

        public bool permiteCotizacion { get; set; }

        public bool permiteEntidad { get; set; }

        public bool permiteIngresarCalculado { get; set; }

        public bool admiteDevolucionDeEfectivo { get; set; }

        public bool habilitadoServicioFlete { get; set; }

        public bool cuentaCorriente { get; set; }

        public bool emiteRecibo { get; set; }

        public bool emitePagare { get; set; }

        public bool esOficial { get; set; }

        public bool permiteVuelto { get; set; }

        public bool permiteRepeticion { get; set; }

        public bool naceCancelada { get; set; }

        public bool permiteDescuentos { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

        public IEnumerable<CondicionDeVenta> CondicionesDeVenta { get; set; }

        public MedioDePago()
        {
            CondicionesDeVenta = new List<CondicionDeVenta>();
        }

    }
}
