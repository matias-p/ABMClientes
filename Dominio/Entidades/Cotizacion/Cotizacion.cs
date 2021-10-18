using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cotizacion
{
    public class Cotizacion
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public decimal montoTotal { get; set; }

        public short diasDeVigencia { get; set; }

        public decimal totalPrecioLista { get; set; }

        public decimal importeIVA { get; set; }

        public EstadoPorTipoCotizacion EstadoPorTipoCotizacion { get; set; }
        public int EstadoPorTipoCotizacionID { get; set; }

        public string observacion { get; set; }

        public Seguridad.RolPorUsuario RolPorUsuario { get; set; }
        public int RolPorUsuarioID { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
