using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface IClienteService
    {
        Task<IEnumerable<Cliente>> GetAll();
        Task<IEnumerable<Cliente>> GetAllByNombreYApellido(string texto);
        Task<Cliente> Get(int id);
        Task Save(Cliente entidad);       
        
        //void Delete(int id);
    }
}
