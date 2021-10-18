using Dominio.Entidades.Cliente;
using System.Collections.Generic;
using Dominio.SeedWork;
using Servicios.Contratos;

namespace Servicios
{
    public class ClienteService : IClienteService
    {
        private IUnitOfWork _unitOfWork;

        public ClienteService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IEnumerable<Cliente> GetAll()
        {
            using (var context = _unitOfWork.Create())
            {
                var clientes = context.Repositories.ClienteRepository.GetAll();

                foreach (var cliente in clientes)
                {
                    cliente.Localidad = context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                    cliente.Nacionalidad = context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                    cliente.SubGrupo = context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                    cliente.SubGrupo.GrupoCliente = context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                    cliente.EstadoCivil = context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                    cliente.TipoDeDocumento = context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                    cliente.ResponsabilidadIVA = context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);
                }

                return clientes;
            }
        }

        public IEnumerable<Cliente> GetAllByNombreYApellido(string texto)
        {
            using (var context = _unitOfWork.Create())
            {
                var clientes = context.Repositories.ClienteRepository.GetAllByNombreYApellido(texto);

                foreach (var cliente in clientes)
                {
                    cliente.Localidad = context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                    cliente.Localidad.Provincia = context.Repositories.ProvinciaRepository.Get(cliente.Localidad.ProvinciaID);
                    cliente.Nacionalidad = context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                    cliente.SubGrupo = context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                    cliente.SubGrupo.GrupoCliente = context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                    cliente.EstadoCivil = context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                    cliente.TipoDeDocumento = context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                    cliente.ResponsabilidadIVA = context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);
                }

                return clientes;
            }
        }

        public Cliente Get(int id)
        {
            using (var context = _unitOfWork.Create())
            {
                var cliente = context.Repositories.ClienteRepository.Get(id);

                cliente.Localidad = context.Repositories.LocalidadRepository.Get(cliente.LocalidadID);
                cliente.Nacionalidad = context.Repositories.NacionalidadRepository.Get(cliente.NacionalidadID);
                cliente.SubGrupo = context.Repositories.SubGrupoClienteRepository.Get(cliente.SubGrupoID);
                cliente.SubGrupo.GrupoCliente = context.Repositories.GrupoClienteRepository.Get(cliente.SubGrupo.GrupoClienteID);
                cliente.EstadoCivil = context.Repositories.EstadoCivilRepository.Get(cliente.EstadoCivilID);
                cliente.TipoDeDocumento = context.Repositories.TipoDeDocumentoRepository.Get(cliente.TipoDeDocumentoID);
                cliente.ResponsabilidadIVA = context.Repositories.ResponsabilidadIVARepository.Get(cliente.ResponsabilidadIVAID);

                return cliente;
            }
        }

        public void Save(Cliente cliente)
        {
            using (var context = _unitOfWork.Create())
            {            
                context.Repositories.ClienteRepository.Save(cliente);

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
