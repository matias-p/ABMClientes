using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class EstadoCivilService : IEstadoCivilService
    {
        private IUnitOfWork _unitOfWork;

        public EstadoCivilService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<EstadoCivil> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var estadoCivil = await context .Repositories.EstadoCivilRepository.Get(id);

                return estadoCivil;
            }
        }

        public async Task<IEnumerable<EstadoCivil>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var estadosCiviles = await context.Repositories.EstadoCivilRepository.GetAll();

                return estadosCiviles;
            }
        }
    }
}
