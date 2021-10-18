using Dominio.Entidades.Cliente;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface IEstadoCivilService
    {
        IEnumerable<EstadoCivil> GetAll();
        EstadoCivil Get(int id);
    }
}
