using Dominio.Entidades.Cliente;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface ISubGrupoClienteService
    {
        IEnumerable<SubGrupoCliente> GetAll();
        SubGrupoCliente Get(int id);
        IEnumerable<SubGrupoCliente> GetAllByGrupoClienteID(int grupoClienteID);
    }
}
