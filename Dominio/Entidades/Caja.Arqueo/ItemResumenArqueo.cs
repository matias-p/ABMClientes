using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemResumenArqueo
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public GrupoPorItemResumenArqueo GrupoPorItemResumenArqueo { get; set; }
        public int GrupoPorItemResumenArqueoID { get; set; }

        public bool soloCajaPrincipal { get; set; }

        public short orden { get; set; }

        public bool generaAsientoDiferencia { get; set; }

        public bool baja { get; set; }

    }
}
