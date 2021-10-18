using System;
using Dominio.Entidades;
using Dominio.Entidades.Persona;

namespace Dominio.Entidades.General
{
    public class Localidad
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public Persona.Provincia Provincia { get; set; }
        public int ProvinciaID { get; set; }

        public int codpostal { get; set; }

    }
}
