using Dominio.Entidades.General;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface INacionalidadService
    {
        IEnumerable<Nacionalidad> GetAll();
        Nacionalidad Get(int id);
    }
}
