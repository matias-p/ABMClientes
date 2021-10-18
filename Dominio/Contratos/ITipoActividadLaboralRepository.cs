using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface ITipoActividadLaboralRepository : IReadRepository<TipoActividadLaboral, int, IDataReader>
    {
    }
}
