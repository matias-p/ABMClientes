using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;

namespace UI.Desktop.Controladores
{
    public class GrupoClienteController
    {
        private IGrupoClienteService _servicio;

        public GrupoClienteController(IGrupoClienteService servicio)
        {
            _servicio = servicio;
        }

        public IEnumerable<GrupoClienteViewModel> GetGrupos()
        {
            var grupos = _servicio.GetAll();

            List<GrupoClienteViewModel> grupoViewModel = new List<GrupoClienteViewModel>();

            foreach (var grupo in grupos)
            {
                var vm = new GrupoClienteViewModel();
                vm.ID = grupo.ID;
                vm.descripcion = grupo.descripcion;
        
                List<SubGrupoClienteViewModel> subgrupoViewModel = new List<SubGrupoClienteViewModel>();

                foreach (var subgrupo in grupo.SubGruposCliente)
                {

                    subgrupoViewModel.Add(new SubGrupoClienteViewModel
                    {
                        ID = subgrupo.ID,
                        descripcion = subgrupo.descripcion
                    });
                }
                vm.SubGruposCliente = subgrupoViewModel;

                grupoViewModel.Add(vm);
            }

            return grupoViewModel;
        }
    }
}
