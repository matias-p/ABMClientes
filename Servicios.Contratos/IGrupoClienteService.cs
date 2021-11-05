using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface IGrupoClienteService
    {
        Task<IEnumerable<GrupoCliente>> GetAll();
        Task<GrupoCliente> Get(int id);
    }
}