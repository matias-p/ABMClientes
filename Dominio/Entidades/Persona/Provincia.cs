using Dominio.Entidades.General;
using System.Collections.Generic;

namespace Dominio.Entidades.Persona
{
    public class Provincia
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public IEnumerable<Localidad> Localidades { get; set; }

        public Provincia()
        {
            Localidades = new List<Localidad>();
        }

    }
}
