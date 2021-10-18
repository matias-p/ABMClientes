using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class SubGrupoClienteService : ISubGrupoClienteService
    {
        private IUnitOfWork _unitOfWork;

        public SubGrupoClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public SubGrupoCliente Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var subGrupoCliente = context.Repositories.SubGrupoClienteRepository.Get(id);

                return subGrupoCliente;
            }
        }

        public IEnumerable<SubGrupoCliente> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var subGruposCliente = context.Repositories.SubGrupoClienteRepository.GetAll();

                return subGruposCliente;
            }
        }

        public IEnumerable<SubGrupoCliente> GetAllByGrupoClienteID(int grupoClienteID)
        {
            using (var context = _unitOfWork.Create())
            {
                var subGruposCliente = context.Repositories.SubGrupoClienteRepository.GetAllByGrupoClienteID(grupoClienteID);

                return subGruposCliente;
            }
        }
    }
}
