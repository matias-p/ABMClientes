using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class TipoMovimiento
    {
        public int ID { get; set; }

        public string tipoMovimiento { get; set; }

        public bool registracionContable { get; set; }

        public short clasificacion { get; set; }

        public bool requiereConfirmacion { get; set; }

        public bool baja { get; set; }

    }
}
