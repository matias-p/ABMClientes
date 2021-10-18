using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cheque
{
    public class EstadoCheque
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public short orden { get; set; }

        public bool poseeComprobanteAsociado { get; set; }

        public string comprobanteAsociado { get; set; }

        public bool baja { get; set; }

    }
}
