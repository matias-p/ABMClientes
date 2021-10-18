using System;
using Dominio.Entidades;

namespace Dominio.Entidades.NotaDeCredito
{
    public class ItemNotaDeCreditoPorServicio
    {
        public int ID { get; set; }

        public ItemNotaDeCredito ItemNotaDeCredito { get; set; }
        public int ItemNotaDeCreditoID { get; set; }

        public ArticuloServicio.Servicio Servicio { get; set; }
        public int ServicioID { get; set; }

    }
}
