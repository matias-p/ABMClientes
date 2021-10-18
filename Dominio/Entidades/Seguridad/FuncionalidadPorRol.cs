using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class FuncionalidadPorRol
    {
        public int ID { get; set; }

        Seguridad.Rol Rol { get; set; }
        public int RolID { get; set; }

        public Funcionalidad Funcionalidad { get; set; }
        public int FuncionalidadID { get; set; }

        public short jerarquia { get; set; }

        public bool baja { get; set; }

    }
}
