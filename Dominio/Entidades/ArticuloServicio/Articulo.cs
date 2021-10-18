using System;
using Dominio.Entidades;

namespace Dominio.Entidades.ArticuloServicio
{
    public class Articulo   
    {
        public int ID { get; set; }

        public Proveedor.Proveedor Proveedor { get; set; }
        public int ProveedorID { get; set; }

        public ArticuloServicio.Marca Marca { get; set; }
        public int MarcaID { get; set; }

        public string descripcion { get; set; }

        public decimal costo { get; set; }

        public decimal margen { get; set; }

        public SubCategoria SubCategoria { get; set; }
        public int SubCategoriaID { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }

        public ImpuestoInterno ImpuestoInterno { get; set; }
        public int ImpuestoInternoID { get; set; }

        public string codigoDeBarras { get; set; }

        public decimal longitud { get; set; }

        public decimal ancho { get; set; }

        public decimal altura { get; set; }

        public decimal volumen { get; set; }

        public decimal pesoBruto { get; set; }

        public decimal precioContado { get; set; }

        public DateTime fechaAlta { get; set; }

        public bool baja { get; set; }

    }
}
