using Dominio.Entidades.Cliente;
using System.Collections.Generic;

namespace Servicios.Contratos
{
    public interface IClienteService
    {
        IEnumerable<Cliente> GetAll();
        IEnumerable<Cliente> GetAllByNombreYApellido(string texto);
        Cliente Get(int id);
        void Save(Cliente entidad);       
        
        //void Delete(int id);
    }
}
