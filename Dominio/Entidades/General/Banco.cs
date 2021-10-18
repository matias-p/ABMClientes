using System;
using System.Collections.Generic;
using Dominio.Entidades;

namespace Dominio.Entidades.General
{
    public class Banco
    {
        public int ID { get; set; }

        public int codigo { get; set; }

        public string descripcion { get; set; }
                
        public short diasVencimientoCheque { get; set; }

        public string cuentaCorriente { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

        public IEnumerable<BancoSucursal> Sucursales { get; set; }

        public Banco()
        {
            Sucursales = new List<BancoSucursal>();
        }

    }
}
