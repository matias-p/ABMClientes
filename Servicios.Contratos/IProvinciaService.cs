using Dominio.Entidades.Persona;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface IProvinciaService
    {
        Task<IEnumerable<Provincia>> GetAll();
        Task<Provincia> Get(int id);
    }
}
