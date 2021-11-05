using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Servicios
{
    public class SubGrupoClienteService : ISubGrupoClienteService
    {
        private IUnitOfWork _unitOfWork;

        public SubGrupoClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<SubGrupoCliente> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var subGrupoCliente = await context.Repositories.SubGrupoClienteRepository.Get(id);

                return subGrupoCliente;
            }
        }

        public async Task<IEnumerable<SubGrupoCliente>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var subGruposCliente = await context.Repositories.SubGrupoClienteRepository.GetAll();

                return subGruposCliente;
            }
        }

        public async Task<IEnumerable<SubGrupoCliente>> GetAllByGrupoClienteID(int grupoClienteID)
        {
            using (var context = _unitOfWork.Create())
            {
                var subGruposCliente = await context.Repositories.SubGrupoClienteRepository.GetAllByGrupoClienteID(grupoClienteID);

                return subGruposCliente;
            }
        }
    }
}
