using System;
using Dominio.Entidades;

namespace Dominio.Entidades.Proveedor
{
    public class SubGrupoProveedor
    {
        public int ID { get; set; }
        
        public string descripcion { get; set; }
        
        public GrupoProveedor GrupoProveedor { get; set; }
        public int GrupoProveedorID { get; set; }

        public bool baja { get; set; }

    }
}
