using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace Dominio.Contratos
{
    public interface IClienteRepository : IReadRepository<Cliente, int, IDataReader>, ISaveRepository<Cliente>
    {
        Task<IEnumerable<Cliente>> GetAllByNombreYApellido(string apellido);
    }
}
