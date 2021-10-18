using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class HistorialCotizacion
    {
        public int ID { get; set; }

        public Cotizacion Cotizacion { get; set; }
        public int CotizacionID { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public short diasDeVigencia { get; set; }

        public EstadoPorTipoCotizacion EstadoPorTipoCotizacion { get; set; }
        public int EstadoPorTipoCotizacionID { get; set; }

        public Seguridad.RolPorUsuario RolPorUsuario { get; set; }
        public int RolPorUsuarioID { get; set; }

        public DateTime fechaAlta { get; set; }

        public DateTime fechaBaja { get; set; }

    }
}
