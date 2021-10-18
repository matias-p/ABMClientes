using System;
using Dominio.Entidades;

namespace Dominio.Entidades.General
{
    public class BancoSucursal
    {
        public int ID { get; set; }

        public Banco Banco { get; set; }
        public int BancoID { get; set; }

        public int codigoSucursal { get; set; }

        public string descripcion { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
