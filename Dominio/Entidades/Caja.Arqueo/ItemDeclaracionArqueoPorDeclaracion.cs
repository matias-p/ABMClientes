using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemDeclaracionArqueoPorDeclaracion
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public DeclaracionArqueo DeclaracionArqueo { get; set; }
        public int DeclaracionArqueoID { get; set; }

        public ItemDeclaracionArqueo ItemDeclaracionArqueo { get; set; }
        public int ItemDeclaracionArqueoID { get; set; }

        public decimal totalItemDeclarado { get; set; }

    }
}
