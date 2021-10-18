using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class PermisoPorRol
    {
        public int ID { get; set; }

        Seguridad.Rol Rol { get; set; }
        public int RolID { get; set; }

        public Permiso Permiso { get; set; }
        public int PermisoID { get; set; }

    }
}
