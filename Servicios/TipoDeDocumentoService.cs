using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class TipoDeDocumentoService : ITipoDeDocumentoService
    {
        private IUnitOfWork _unitOfWork;

        public TipoDeDocumentoService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public TipoDeDocumento Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var tipoDeDocumento = context.Repositories.TipoDeDocumentoRepository.Get(id);

                return tipoDeDocumento;
            }
        }

        public IEnumerable<TipoDeDocumento> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var tiposDeDocumento = context.Repositories.TipoDeDocumentoRepository.GetAll();

                return tiposDeDocumento;
            }
        }
    }
}
