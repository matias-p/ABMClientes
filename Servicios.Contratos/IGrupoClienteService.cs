using Dominio.Entidades.Cliente;
using System.Collections.Generic;

namespace Servicios.Contratos
{
    public interface IGrupoClienteService
    {
        IEnumerable<GrupoCliente> GetAll();
        GrupoCliente Get(int id);
    }
}