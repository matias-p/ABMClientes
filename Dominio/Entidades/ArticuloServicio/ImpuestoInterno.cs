using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ArticuloServicio
{
    public class ImpuestoInterno
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public decimal porcentaje { get; set; }

        public bool baja { get; set; }

    }
}
