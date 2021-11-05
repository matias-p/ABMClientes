using System.Collections.Generic;
using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace UI.Desktop.Controladores
{
    /// <summary>
    /// Consultas: El controlador recibe la peticion de la UI, obtiene Entidades y las mapea/devuelve como VM a la vista.
    /// Guardar: El controlador recibe un VM y lo mapea a Entidades para persistir en el servicio.
    /// </summary>
    public class ClienteController
    {
        private IClienteService _servicio;

        public ClienteController(IClienteService servicio)
        {
            _servicio = servicio;
        }

        public async Task<string> SaveCliente(ClienteViewModel vm)
        {
            var Cliente = new Dominio.Entidades.Cliente.Cliente()
            {
                //campos de persona
                ID = vm.ID,
                nombre = vm.nombre,
                apellido = vm.apellido,
                ResponsabilidadIVAID = vm.ResponsabilidadIVAID,
                TipoDeDocumentoID = vm.TipoDeDocumentoID,
                numeroDocumento = vm.numero,
                tipoPersona = "F",
                cuitCuil = vm.cuilCuit,
                sexo = vm.sexo,
                telefonoCelular1 = vm.tel_Celular,
                telefonoCelular2 = vm.tel_Celular2,
                telefonoFijo = vm.tel_Fijo,
                email = vm.email,
                domicilio = vm.domicilio,
                LocalidadID = vm.LocalidadID,
                //campos de cliente
                fechaNacimiento = vm.nacimiento,
                EstadoCivilID = vm.EstadoCivilID,
                NacionalidadID = vm.NacionalidadID,
                nroIIBB = vm.IIBB,
                aptoCredito = true,
                limiteCredito = 0,
                SubGrupoID = vm.SubGrupoClienteID,
                fechaAlta = DateTime.Now,
                comentario = ""
            };

            try
            {
                await _servicio.Save(Cliente);
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
            
        }

        public List<KeyValuePair<string, string>> GetGeneros()
        {
            var generos = new GeneroViewModel();

            return generos.Generos;
        }

        /// <summary>
        /// Este método devuelve una coleccion de ClienteViewModel.
        /// </summary>
        public async Task<IEnumerable<ClienteGridViewModel>> GetClientes()
        {
            var clientes = await _servicio.GetAll();

            List<ClienteGridViewModel> viewModel = new List<ClienteGridViewModel>();
            GeneroViewModel generos = new GeneroViewModel();

            foreach (var item in clientes)
            {
                viewModel.Add(new ClienteGridViewModel
                {
                    ID = item.ID,
                    Apellido = item.apellido,
                    Nombre = item.nombre,
                    Sexo = generos.Generos.FirstOrDefault(x => x.Value.Equals(item.sexo)).Key.ToString(),
                    Nacimiento = item.fechaNacimiento,
                    Tipo_Doc = item.TipoDeDocumento.descripcion,
                    Numero = item.numeroDocumento,
                    Email = item.email,
                    Domicilio = item.domicilio,
                    Localidad = item.Localidad.descripcion,
                    Provincia = item.Localidad.Provincia.descripcion,
                    Tel_Celular = item.telefonoCelular1,
                    Tel_Celular2 = item.telefonoCelular2,
                    Tel_Fijo = item.telefonoFijo,
                    Nacionalidad = item.Nacionalidad.descripcion,
                    Responsabilidad = item.ResponsabilidadIVA.descripcion,
                    Tipo_Persona = item.tipoPersona,
                    CuilCuit = item.cuitCuil,
                    Grupo = item.SubGrupo.GrupoCliente.descripcion,
                    Subgrupo = item.SubGrupo.descripcion,
                    EstadoCivil = item.EstadoCivil.descripcion
                });
            }

            return viewModel;
        }
    }
}
