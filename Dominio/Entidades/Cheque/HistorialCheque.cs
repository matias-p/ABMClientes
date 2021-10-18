using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Cheque
{
    public class HistorialCheque
    {
        public int ID { get; set; }

        public Cheque Cheque { get; set; }
        public int ChequeID { get; set; }

        public General.BancoSucursal BancoSucursal { get; set; }
        public int BancoSucursalID { get; set; }

        public long numero { get; set; }

        public EstadoCheque EstadoCheque { get; set; }
        public int EstadoChequeID { get; set; }

        public decimal importe { get; set; }

        public DateTime fechaEmision { get; set; }

        public DateTime fechaCobro { get; set; }

        public long CUIT { get; set; }

        public bool propio { get; set; }

        public short cantidadEndosos { get; set; }

        public TipoCheque TipoCheque { get; set; }
        public int TipoChequeID { get; set; }

        public Cliente.Cliente Cliente { get; set; }
        public int ClienteID { get; set; }

        public string titular { get; set; }

        public Seguridad.RolPorUsuario RolPorUsuario { get; set; }
        public int RolPorUsuarioID { get; set; }

        public DateTime fechaAlta { get; set; }

        public DateTime fechaBaja { get; set; }
    }
}
