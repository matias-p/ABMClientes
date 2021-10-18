using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Caja
{
    public class ItemResumenArqueoPorResumen
    {
        public int ID { get; set; }

        public DateTime fechaEmision { get; set; }

        public ResumenArqueo ResumenArqueo { get; set; }
        public int ResumenArqueoID { get; set; }

        public ItemResumenArqueo ItemResumenArqueo { get; set; }
        public int ItemResumenArqueoID { get; set; }

        public decimal totalItemDeclaradoResumen { get; set; }

        public decimal totalItemSistemaResumen { get; set; }

        public decimal totalItemDiferenciaResumen { get; set; }

    }
}
