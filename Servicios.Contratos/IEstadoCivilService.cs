using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface IEstadoCivilService
    {
        Task<IEnumerable<EstadoCivil>> GetAll();
        Task<EstadoCivil> Get(int id);
    }
}
