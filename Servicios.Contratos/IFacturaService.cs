using Dominio.Entidades.Factura;
using System.Collections.Generic;

namespace Servicios.Contratos
{
    public interface IFacturaService
    {
        IEnumerable<Factura> GetAll();
        Factura Get(int id);
        bool Save(Factura entidad);
        
        //void Delete(int id);
    }
}
