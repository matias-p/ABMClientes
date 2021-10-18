using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ClasificacionComprobante
{
    public class SubtipoPorTipo
    {
        public int ID { get; set; }

        public TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public string descripcion { get; set; }

        public bool imprime { get; set; }

        public bool baja { get; set; }

    }
}
