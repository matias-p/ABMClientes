using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;

namespace UI.Desktop.Controladores
{
    public class NacionalidadController
    {
        private INacionalidadService _servicio;

        public NacionalidadController(INacionalidadService servicio)
        {
            _servicio = servicio;
        }

        public IEnumerable<NacionalidadViewModel> GetNacionalidades()
        {
            var nacionalidades = _servicio.GetAll();

            List<NacionalidadViewModel> viewModel = new List<NacionalidadViewModel>();

            foreach (var item in nacionalidades)
            {
                viewModel.Add(new NacionalidadViewModel
                {
                    ID = item.ID,
                    descripcion = item.descripcion
                });
            }

            return viewModel;
        }
    }
}

