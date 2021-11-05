using Dominio.Entidades.General;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface INacionalidadService
    {
        Task<IEnumerable<Nacionalidad>> GetAll();
        Task<Nacionalidad> Get(int id);
    }
}
