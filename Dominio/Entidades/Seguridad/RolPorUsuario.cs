using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class RolPorUsuario
    {
        public int ID { get; set; }

        public Usuario Usuario { get; set; }
        public int UsuarioID { get; set; }

        public Seguridad.Rol Rol { get; set; }
        public int RolID { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
