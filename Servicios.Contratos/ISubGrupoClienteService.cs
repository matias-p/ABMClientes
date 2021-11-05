using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface ISubGrupoClienteService
    {
        Task<IEnumerable<SubGrupoCliente>> GetAll();
        Task<SubGrupoCliente> Get(int id);
        Task<IEnumerable<SubGrupoCliente>> GetAllByGrupoClienteID(int grupoClienteID);
    }
}
