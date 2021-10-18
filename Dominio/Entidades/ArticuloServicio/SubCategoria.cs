using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ArticuloServicio
{
    public class SubCategoria
    {
        public Categoria Categoria { get; set; }
        public int CategoriaID { get; set; }

        public int ID { get; set; }

        public string descripcion { get; set; }

        public bool baja { get; set; }

    }
}
