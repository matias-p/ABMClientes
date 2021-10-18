using System;
using Dominio.Entidades;

namespace Dominio.Entidades.FondoFijo
{
    public class ValeDeGastoARendir
    {
        public int ID { get; set; }

        public ProveedorFondoFijo ProveedorFondoFijo { get; set; }
        public int ProveedorFondoFijoID { get; set; }

        public Caja.Apertura Apertura { get; set; }
        public int AperturaID { get; set; }

        public TipoComprobanteFondoFijo TipoComprobanteFondoFijo { get; set; }
        public int TipoComprobanteFondoFijoID { get; set; }

        public EstadoVale EstadoVale { get; set; }
        public int EstadoValeID { get; set; }

        public DateTime fechaComprobante { get; set; }

        public string letraComprobante { get; set; }

        public long numeroComprobante { get; set; }

        public decimal importeComprobante { get; set; }

        public string observacion { get; set; }

        public string numeroCAI { get; set; }

        public DateTime fechaVencimientoCAI { get; set; }

        public decimal importeNeto { get; set; }

        public decimal importeImpuestos { get; set; }

        public decimal importeTotal { get; set; }

        public DateTime fechaDePago { get; set; }

        public DateTime fechaAlta { get; set; }

    }
}
