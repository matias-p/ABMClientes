using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FondoFijo
{
    public class ProveedorFondoFijo
    {
        public int ID { get; set; }
                
        public Persona.Persona Persona { get; set; }
        public int PersonaID { get; set; }
        
        public long nroIngresosBrutos { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
