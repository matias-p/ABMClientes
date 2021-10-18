using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface IActividadLaboralRepository : IReadRepository<ActividadLaboral, int, IDataReader>
    {
    }
}
