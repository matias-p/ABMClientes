using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace UI.Desktop.Controladores
{
    public class ProvinciaController
    {
        private IProvinciaService _servicio;

        public ProvinciaController(IProvinciaService servicio)
        {
            _servicio = servicio;
        }

        public async Task<IEnumerable<ProvinciaViewModel>> GetProvincias()
        {
            var Provincias = await _servicio.GetAll();

            List<ProvinciaViewModel> provinciaViewModel = new List<ProvinciaViewModel>();

            foreach (var pcia in Provincias)
            {
                var vm = new ProvinciaViewModel();
                vm.ID = pcia.ID;
                vm.descripcion = pcia.descripcion;

                List<LocalidadViewModel> localidadesViewModel = new List<LocalidadViewModel>();

                foreach (var localidad in pcia.Localidades)
                {

                    localidadesViewModel.Add(new LocalidadViewModel
                    {
                        ID = localidad.ID,
                        descripcion = localidad.descripcion
                    });
                }
                vm.Localidades = localidadesViewModel;

                provinciaViewModel.Add(vm);
            }

            return provinciaViewModel;
        }
    }
}
