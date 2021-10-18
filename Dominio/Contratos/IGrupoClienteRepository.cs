using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface IGrupoClienteRepository : IReadRepository<GrupoCliente, int, IDataReader>
    {
    }
}
