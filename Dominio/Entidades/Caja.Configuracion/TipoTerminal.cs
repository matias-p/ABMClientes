using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class TipoTerminal
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool siempreGuardaCambio { get; set; }

        public bool permiteFondoFijo { get; set; }

    }
}
