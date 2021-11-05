using Dominio.Entidades.Persona;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface ITipoDeDocumentoService
    {
        Task<IEnumerable<TipoDeDocumento>> GetAll();
        Task<TipoDeDocumento> Get(int id);
    }
}
