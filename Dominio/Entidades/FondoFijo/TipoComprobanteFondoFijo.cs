using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FondoFijo
{
    public class TipoComprobanteFondoFijo
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool poseeCAI { get; set; }

        public bool baja { get; set; }

    }
}
