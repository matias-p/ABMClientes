using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Seguridad
{
    public class Permiso
    {
        public int ID { get; set; }

        public string rutaObjeto { get; set; }

        public bool baja { get; set; }

    }
}
