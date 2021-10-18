using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using System.Data;

namespace Dominio.Contratos
{
    public interface IProvinciaRepository : IReadRepository<Provincia, int, IDataReader>
    {
    }
}
