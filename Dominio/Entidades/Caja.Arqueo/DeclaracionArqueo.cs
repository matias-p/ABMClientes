using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class DeclaracionArqueo
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public Arqueo Arqueo { get; set; }
        public int ArqueoID { get; set; }

        public decimal totalDeclarado { get; set; }

        public bool diferencia { get; set; }

        public string motivoDiferencia { get; set; }

    }
}
