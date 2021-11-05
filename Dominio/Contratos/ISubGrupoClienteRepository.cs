using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace Dominio.Contratos
{
    public interface ISubGrupoClienteRepository : IReadRepository<SubGrupoCliente, int, IDataReader>
    {
        Task<IEnumerable<SubGrupoCliente>> GetAllByGrupoClienteID(int grupoClienteID);
    }
}
