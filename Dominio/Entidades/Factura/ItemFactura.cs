using Dominio.Entidades;

namespace Dominio.Entidades.Factura
{
    public class ItemFactura
    {
        public int ID { get; set; }

        public Factura Factura { get; set; }
        public int FacturaID { get; set; }

        public decimal precioDeLista { get; set; } // (costo + IVA + imp. interno) * margen

        public decimal impuestoInterno { get; set; }

        public decimal precioNeto { get; set; } // precioDeLista -bonif/+recargo

        public short cantidad { get; set; }

        public decimal precioTotal { get; set; } // precioNeto * cantidad
        
        public decimal importeIva { get; set; } // precioTotal - (precioTotal * IVA / 100)

        public decimal montoNoFiscal { get; set; }

        public General.TasaIVA TasaIVA { get; set; }
        public int TasaIVAID { get; set; }
         
        public ItemFacturaPorArticulo ItemFacturaPorArticulo { get; set; }
        public ItemFacturaPorServicio ItemFacturaPorServicio { get; set; }


    }
}
