using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class GrupoClienteService : IGrupoClienteService
    {
        private IUnitOfWork _unitOfWork;

        public GrupoClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<GrupoCliente> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var grupoCliente = await context.Repositories.GrupoClienteRepository.Get(id);

                return grupoCliente;
            }
        }

        public async Task<IEnumerable<GrupoCliente>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var gruposCliente = await context.Repositories.GrupoClienteRepository.GetAll();

                foreach (var item in gruposCliente)
                {
                    item.SubGruposCliente = await context.Repositories.SubGrupoClienteRepository.GetAllByGrupoClienteID(item.ID);
                }

                return gruposCliente;
            }
        }
    }
}
