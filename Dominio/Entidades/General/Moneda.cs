using System;
using Dominio.Entidades;

namespace Dominio.Entidades.General
{
    public class Moneda
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool solicitaCotizacion { get; set; }

    }
}
