using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemCierrePorCierre
    {
        public int ID { get; set; }

        public Cierre Cierre { get; set; }
        public int CierreID { get; set; }

        public ItemCierre ItemCierre { get; set; }
        public int ItemCierreID { get; set; }

        public decimal montoItem { get; set; }

    }
}
