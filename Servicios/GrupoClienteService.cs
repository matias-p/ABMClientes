using Dominio.Entidades.Cliente;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Collections.Generic;

namespace Servicios
{
    public class GrupoClienteService : IGrupoClienteService
    {
        private IUnitOfWork _unitOfWork;

        public GrupoClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public GrupoCliente Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var grupoCliente = context.Repositories.GrupoClienteRepository.Get(id);

                return grupoCliente;
            }
        }

        public IEnumerable<GrupoCliente> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var gruposCliente = context.Repositories.GrupoClienteRepository.GetAll();

                foreach (var item in gruposCliente)
                {
                    item.SubGruposCliente = context.Repositories.SubGrupoClienteRepository.GetAllByGrupoClienteID(item.ID);
                }

                return gruposCliente;
            }
        }
    }
}
