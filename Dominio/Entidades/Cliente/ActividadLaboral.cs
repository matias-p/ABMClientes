using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cliente
{
    public class ActividadLaboral
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public int codigoAFIP { get; set; }

        public string categoria { get; set; }

    }
}
