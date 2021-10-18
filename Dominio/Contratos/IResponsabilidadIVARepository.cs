using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface IResponsabilidadIVARepository : IReadRepository<ResponsabilidadIVA, int, IDataReader>
    {
    }
}
