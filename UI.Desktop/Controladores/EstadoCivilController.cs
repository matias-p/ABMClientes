using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace UI.Desktop.Controladores
{
    public class EstadoCivilController
    {
        private IEstadoCivilService _servicio;

        public EstadoCivilController(IEstadoCivilService servicio)
        {
            _servicio = servicio;
        }

        public async Task<IEnumerable<EstadoCivilViewModel>> GetEstadosCiviles()
        {
            var estados = await _servicio.GetAll();

            List<EstadoCivilViewModel> viewModel = new List<EstadoCivilViewModel>();

            foreach (var item in estados)
            {
                viewModel.Add(new EstadoCivilViewModel
                {
                    ID = item.ID,
                    descripcion = item.descripcion
                });
            }

            return viewModel;
        }
    }
}
