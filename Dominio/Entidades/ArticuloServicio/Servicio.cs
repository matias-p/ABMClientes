using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ArticuloServicio
{
    public class Servicio
    {
        public int ID { get; set; }

        public TipoDeServicio TipoDeServicio { get; set; }
        public int TipoDeServicioID { get; set; }

        public string descripcion { get; set; }

        public decimal costo { get; set; }

        public decimal margen { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
