using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class ConceptoNotaDeCredito
    {
        public int ID { get; set; }

        public string concepto { get; set; }

        public long descuento { get; set; }

        public bool baja { get; set; }

    }
}
