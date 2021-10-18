using Dominio.Entidades.General;
using Dominio.SeedWork;
using System.Collections.Generic;
using System.Data;

namespace Dominio.Contratos
{
    public interface ILocalidadRepository : IReadRepository<Localidad, int, IDataReader>
    {
        IEnumerable<Localidad> GetAllByProvinciaID(int provinciaID);
    }
}
