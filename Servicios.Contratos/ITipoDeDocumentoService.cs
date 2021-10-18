using Dominio.Entidades.Persona;
using System.Collections.Generic;
namespace Servicios.Contratos
{
    public interface ITipoDeDocumentoService
    {
        IEnumerable<TipoDeDocumento> GetAll();
        TipoDeDocumento Get(int id);
    }
}
