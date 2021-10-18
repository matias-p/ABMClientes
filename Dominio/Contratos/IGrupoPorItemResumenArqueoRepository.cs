using Dominio.Entidades.Caja;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface IGrupoPorItemResumenArqueoRepository : IReadRepository<GrupoPorItemResumenArqueo, int, IDataReader>
    {
    }
}
