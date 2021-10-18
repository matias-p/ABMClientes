using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemDeclaracionArqueo
    {
        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool soloCajaPrincipal { get; set; }

        public bool tieneValorNominal { get; set; }

        public short orden { get; set; }

        public bool sumaTotalDeclarado { get; set; }

        public bool baja { get; set; }

    }
}
