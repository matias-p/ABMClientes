using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class Rol
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public short jerarquia { get; set; }

    }
}
