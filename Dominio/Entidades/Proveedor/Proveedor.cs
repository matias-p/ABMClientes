using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Proveedor
{
    public class Proveedor : Dominio.Entidades.Persona.Persona
    {
        public SubGrupoProveedor SubGrupo { get; set; }
        public int SubGrupoID { get; set; }

        public string descripcion { get; set; }

        public string nroIIBB { get; set; }

        public string comentario { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }
    }
}
