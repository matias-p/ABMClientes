using Dominio.Entidades.Persona;
using System.Collections.Generic;

namespace Servicios.Contratos
{
    public interface IProvinciaService
    {
        IEnumerable<Provincia> GetAll();
        Provincia Get(int id);
    }
}
