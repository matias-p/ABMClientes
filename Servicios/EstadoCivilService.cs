using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class EstadoCivilService : IEstadoCivilService
    {
        private IUnitOfWork _unitOfWork;

        public EstadoCivilService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public EstadoCivil Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var estadoCivil = context.Repositories.EstadoCivilRepository.Get(id);

                return estadoCivil;
            }
        }

        public IEnumerable<EstadoCivil> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var estadosCiviles = context.Repositories.EstadoCivilRepository.GetAll();

                return estadosCiviles;
            }
        }
    }
}
