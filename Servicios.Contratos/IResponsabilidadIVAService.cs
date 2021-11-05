using Dominio.Entidades.Persona;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios.Contratos
{
    public interface IResponsabilidadIVAService
    {
        Task<IEnumerable<ResponsabilidadIVA>> GetAll();
        Task<ResponsabilidadIVA> Get(int id);
    }
}
