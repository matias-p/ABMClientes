using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cliente
{
    public class HistorialLaboral
    {
        public int ID { get; set; }

        public Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public TipoActividadLaboral TipoActividadLaboral { get; set; }
        public int TipoActividadLaboralID { get; set; }

        public ActividadLaboral ActividadLaboral { get; set; }
        public int ActividadLaboralID { get; set; }

        public DateTime inicioActividad { get; set; }

        public decimal ingresos { get; set; }

        public int diaCobro { get; set; }

        public string observaciones { get; set; }

        public Puesto Puesto { get; set; }
        public int PuestoID { get; set; }

        public DateTime finActividad { get; set; }

    }
}
