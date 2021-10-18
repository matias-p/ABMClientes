using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class Usuario
    {
        public int ID { get; set; }

        public string nombre { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
