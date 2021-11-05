using Dominio.Entidades.General;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace Dominio.Contratos
{
    public interface ILocalidadRepository : IReadRepository<Localidad, int, IDataReader>
    {
        Task<IEnumerable<Localidad>> GetAllByProvinciaID(int provinciaID);
    }
}
