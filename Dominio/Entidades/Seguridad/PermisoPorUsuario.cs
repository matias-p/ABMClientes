using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class PermisoPorUsuario
    {
        public int ID { get; set; }

        public Usuario Usuario { get; set; }
        public int UsuarioID { get; set; }

        public Permiso Permiso { get; set; }
        public int PermisoID { get; set; }

    }
}
