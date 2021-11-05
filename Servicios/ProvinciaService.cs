using Dominio.Entidades.Cliente;
using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class ProvinciaService : IProvinciaService
    {
        private IUnitOfWork _unitOfWork;

        public ProvinciaService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<Provincia> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var provincia = await context.Repositories.ProvinciaRepository.Get(id);

                return provincia;
            }
        }

        public async Task<IEnumerable<Provincia>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var provincias = await context.Repositories.ProvinciaRepository.GetAll();

                foreach (var item in provincias)
                {
                    item.Localidades = await context.Repositories.LocalidadRepository.GetAllByProvinciaID(item.ID);
                }

                return provincias;
            }
        }
    }
}
