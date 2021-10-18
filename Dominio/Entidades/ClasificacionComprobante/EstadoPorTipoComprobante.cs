using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ClasificacionComprobante
{
    public class EstadoPorTipoComprobante
    {
        public int ID { get; set; }

        public ClasificacionComprobante.TipoComprobante TipoComprobante { get; set; }
        public int TipoComprobanteID { get; set; }

        public string descripcion { get; set; }

        public bool baja { get; set; }

    }

}
