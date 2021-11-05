using System.Collections.Generic;
using Dominio.SeedWork;
using Servicios.Contratos;
using Dominio.Entidades.General;
using System.Threading.Tasks;

namespace Servicios
{
    public class NacionalidadService : INacionalidadService
    {
        private IUnitOfWork _unitOfWork;

        public NacionalidadService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<Nacionalidad> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var nacionalidad = await context.Repositories.NacionalidadRepository.Get(id);

                return nacionalidad;
            }
        }

        public async Task<IEnumerable<Nacionalidad>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var nacionalidades = await context.Repositories.NacionalidadRepository.GetAll();

                return nacionalidades;
            }
        }
    }
}
