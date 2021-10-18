using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class Arqueo
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public Seguridad.RolPorUsuario RolPorUsuario { get; set; }
        public int RolPorUsuarioID { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
