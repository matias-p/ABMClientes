using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class TipoDeDocumentoService : ITipoDeDocumentoService
    {
        private IUnitOfWork _unitOfWork;

        public TipoDeDocumentoService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<TipoDeDocumento> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var tipoDeDocumento = await context .Repositories.TipoDeDocumentoRepository.Get(id);

                return tipoDeDocumento;
            }
        }

        public async Task<IEnumerable<TipoDeDocumento>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var tiposDeDocumento = await context .Repositories.TipoDeDocumentoRepository.GetAll();

                return tiposDeDocumento;
            }
        }
    }
}
