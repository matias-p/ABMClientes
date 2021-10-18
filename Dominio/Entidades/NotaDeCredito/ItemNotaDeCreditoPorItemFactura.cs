using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class ItemNotaDeCreditoPorItemFactura
    {
        public int ID { get; set; }

        public ItemNotaDeCredito ItemNotaDeCredito { get; set; }
        public int ItemNotaDeCreditoID { get; set; }

        public Factura.ItemFactura ItemFactura { get; set; }
        public int ItemFacturaID { get; set; }

    }
}
