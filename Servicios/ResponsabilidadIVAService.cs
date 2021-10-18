using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class ResponsabilidadIVAService : IResponsabilidadIVAService
    {
        private IUnitOfWork _unitOfWork;

        public ResponsabilidadIVAService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public ResponsabilidadIVA Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var responsabilidad = context.Repositories.ResponsabilidadIVARepository.Get(id);

                return responsabilidad;
            }
        }

        public IEnumerable<ResponsabilidadIVA> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var responsabilidades = context.Repositories.ResponsabilidadIVARepository.GetAll();

                return responsabilidades;
            }
        }
    }
}
