using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ResumenArqueo
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Arqueo Arqueo { get; set; }
        public int ArqueoID { get; set; }

        public decimal totalDeclarado { get; set; }

        public decimal totalSistema { get; set; }

        public decimal diferenciadeCajaFinal { get; set; }

        public string observacion { get; set; }

    }
}
