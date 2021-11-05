using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class ResponsabilidadIVAService : IResponsabilidadIVAService
    {
        private IUnitOfWork _unitOfWork;

        public ResponsabilidadIVAService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<ResponsabilidadIVA> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var responsabilidad = await context.Repositories.ResponsabilidadIVARepository.Get(id);

                return responsabilidad;
            }
        }

        public async Task<IEnumerable<ResponsabilidadIVA>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var responsabilidades = await context .Repositories.ResponsabilidadIVARepository.GetAll();

                return responsabilidades;
            }
        }
    }
}
