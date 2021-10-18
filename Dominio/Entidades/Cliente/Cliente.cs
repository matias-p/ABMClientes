using System;
using Dominio.Entidades.General;

namespace Dominio.Entidades.Cliente
{
    public class Cliente : Dominio.Entidades.Persona.Persona
    {
        public DateTime fechaNacimiento { get; set; }

        public EstadoCivil EstadoCivil { get; set; }
        public int EstadoCivilID { get; set; }

        public Nacionalidad Nacionalidad { get; set; }
        public int NacionalidadID { get; set; }

        public string nroIIBB { get; set; }

        public bool aptoCredito { get; set; }

        public decimal limiteCredito { get; set; }

        public SubGrupoCliente SubGrupo { get; set; }
        public int SubGrupoID { get; set; }

        public string comentario { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
