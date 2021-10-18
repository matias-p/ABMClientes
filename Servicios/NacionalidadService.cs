using System.Collections.Generic;
using Dominio.SeedWork;
using Servicios.Contratos;
using Dominio.Entidades.General;

namespace Servicios
{
    public class NacionalidadService : INacionalidadService
    {
        private IUnitOfWork _unitOfWork;

        public NacionalidadService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public Nacionalidad Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var nacionalidad = context.Repositories.NacionalidadRepository.Get(id);

                return nacionalidad;
            }
        }

        public IEnumerable<Nacionalidad> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var nacionalidades = context.Repositories.NacionalidadRepository.GetAll();

                return nacionalidades;
            }
        }
    }
}
