using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;

namespace Dominio.Contratos
{
    public interface ISubGrupoClienteRepository : IReadRepository<SubGrupoCliente, int, IDataReader>
    {
        IEnumerable<SubGrupoCliente> GetAllByGrupoClienteID(int grupoClienteID);
    }
}
