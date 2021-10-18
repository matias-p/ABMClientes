using Dominio.Entidades.General;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface ILocalidadService
    {
        IEnumerable<Localidad> GetAll();
        Localidad Get(int id);
        IEnumerable<Localidad> GetAllByProvinciaID(int provinciaID);
    }
}