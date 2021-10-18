using Dominio.Entidades.Persona;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface IResponsabilidadIVAService
    {
        IEnumerable<ResponsabilidadIVA> GetAll();
        ResponsabilidadIVA Get(int id);
    }
}
