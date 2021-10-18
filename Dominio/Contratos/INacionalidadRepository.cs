using Dominio.Entidades.General;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface INacionalidadRepository : IReadRepository<Nacionalidad, int, IDataReader>
    {
    }
}
