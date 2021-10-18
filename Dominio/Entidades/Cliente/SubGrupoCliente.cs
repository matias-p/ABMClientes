using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cliente
{
    public class SubGrupoCliente
    {
        public int ID { get; set; }

        public GrupoCliente GrupoCliente { get; set; }
        public int GrupoClienteID { get; set; }

        public string descripcion { get; set; }

    }
}
