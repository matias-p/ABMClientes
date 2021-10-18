using System;
using System.Collections.Generic;

namespace Dominio.Entidades.Cliente
{
    public class GrupoCliente
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public IEnumerable<SubGrupoCliente> SubGruposCliente { get; set; }

        public GrupoCliente()
        {
            SubGruposCliente = new List<SubGrupoCliente>();
        }

    }
}
