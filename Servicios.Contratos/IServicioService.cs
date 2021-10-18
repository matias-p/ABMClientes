using Dominio.Entidades.ArticuloServicio;
using System.Collections.Generic;

namespace Servicios.Contratos
{
    public interface IServicioService
    {
        IEnumerable<Servicio> GetAll();
        Servicio Get(int id);
    }
}
