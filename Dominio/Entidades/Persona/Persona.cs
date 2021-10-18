using Dominio.Entidades.General;
using System;
using System.Collections.Generic;

namespace Dominio.Entidades.Persona
{
    public class Persona
    {
        public int ID { get; set; }

        public string apellido { get; set; }

        public string nombre { get; set; }

        public ResponsabilidadIVA ResponsabilidadIVA { get; set; }
        public int ResponsabilidadIVAID { get; set; }

        public TipoDeDocumento TipoDeDocumento { get; set; }
        public int TipoDeDocumentoID { get; set; }

        public long numeroDocumento { get; set; }

        public string tipoPersona { get; set; }

        public long cuitCuil { get; set; }

        public string sexo { get; set; }

        public string telefonoCelular1 { get; set; }

        public string telefonoCelular2 { get; set; }

        public string telefonoFijo { get; set; }

        public string email { get; set; }

        public string domicilio { get; set; }

        public Localidad Localidad { get; set; }
        public int LocalidadID { get; set; }

    }
}
