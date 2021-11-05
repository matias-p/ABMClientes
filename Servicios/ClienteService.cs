using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using Dominio.SeedWork;
using Servicios.Contratos;
using System.Threading.Tasks;

namespace Servicios
{
    public class ClienteService : IClienteService
    {
        private IUnitOfWork _unitOfWork;

        public ClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<IEnumerable<Cliente>> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var clientes = await context.Repositories.ClienteRepository.GetAll();

                foreach (var cliente in clientes)
                {
                    cliente.Localidad = await context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                    cliente.Localidad.Provincia = await context.Repositories.ProvinciaRepository.Get(cliente.Localidad.ProvinciaID);
                    cliente.Nacionalidad = await context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                    cliente.SubGrupo = await context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                    cliente.SubGrupo.GrupoCliente = await context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                    cliente.EstadoCivil = await context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                    cliente.TipoDeDocumento = await context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                    cliente.ResponsabilidadIVA = await context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);
                }

                return clientes;
            }
        }

        public async Task<IEnumerable<Cliente>> GetAllByNombreYApellido(string texto)
        {
            using (var context = _unitOfWork.Create())
            {
                var clientes = await context.Repositories.ClienteRepository.GetAllByNombreYApellido(texto);

                foreach (var cliente in clientes)
                {
                    cliente.Localidad = await context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                    cliente.Localidad.Provincia = await context.Repositories.ProvinciaRepository.Get(cliente.Localidad.ProvinciaID);
                    cliente.Nacionalidad = await context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                    cliente.SubGrupo = await context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                    cliente.SubGrupo.GrupoCliente = await context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                    cliente.EstadoCivil = await context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                    cliente.TipoDeDocumento = await context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                    cliente.ResponsabilidadIVA = await context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);
                }

                return clientes;
            }
        }

        public async Task<Cliente> Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var cliente = await context.Repositories.ClienteRepository.Get(id);

                cliente.Localidad = await context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                cliente.Nacionalidad = await context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                cliente.SubGrupo = await context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                cliente.SubGrupo.GrupoCliente = await context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                cliente.EstadoCivil = await context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                cliente.TipoDeDocumento = await context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                cliente.ResponsabilidadIVA = await context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);

                return cliente;
            }
        }

        public async Task Save(Cliente cliente)
        {
            using (var context = _unitOfWork.Create())
            {            
                await context.Repositories.ClienteRepository.Save(cliente);

                // Confirmar cambios
                context.SaveChanges();
            }
        }

        //public void Delete(int id)
        //{
        //    using (var context = _unitOfWork.Create())
        //    {
        //        context.Repositories.ClienteRepository.Remove(id);

        //        // Confirm changes
        //        context.SaveChanges();
        //    }
        //}

    }
}
