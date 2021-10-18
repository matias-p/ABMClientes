using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;

namespace Dominio.Contratos
{
    public interface IClienteRepository : IReadRepository<Cliente, int, IDataReader>, ISaveRepository<Cliente>
    {
        IEnumerable<Cliente> GetAllByNombreYApellido(string apellido);
    }
}
