using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class ItemNotaDeCreditoPorArticulo
    {
        public int ID { get; set; }

        public ItemNotaDeCredito ItemNotaDeCredito { get; set; }
        public int ItemNotaDeCreditoID { get; set; }

        public ArticuloServicio.Articulo Articulo { get; set; }
        public int ArticuloID { get; set; }

    }
}
