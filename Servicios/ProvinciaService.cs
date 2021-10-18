using Dominio.Entidades.Cliente;
using Dominio.Entidades.Persona;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class ProvinciaService : IProvinciaService
    {
        private IUnitOfWork _unitOfWork;

        public ProvinciaService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public Provincia Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var provincia = context.Repositories.ProvinciaRepository.Get(id);

                return provincia;
            }
        }

        public IEnumerable<Provincia> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var provincias = context.Repositories.ProvinciaRepository.GetAll();

                foreach (var item in provincias)
                {
                    item.Localidades = context.Repositories.LocalidadRepository.GetAllByProvinciaID(item.ID);
                }

                return provincias;
            }
        }
    }
}
