using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace UI.Desktop.Controladores
{
    public class ResponsabilidadIVAController
    {
        private IResponsabilidadIVAService _servicio;

        public ResponsabilidadIVAController(IResponsabilidadIVAService servicio)
        {
            _servicio = servicio;
        }

        public async Task<IEnumerable<ResponsabilidadIVAViewModel>> GetResponsabilidadesIVA()
        {
            var responsabilidades = await _servicio.GetAll();

            List<ResponsabilidadIVAViewModel> viewModel = new List<ResponsabilidadIVAViewModel>();

            foreach (var item in responsabilidades)
            {
                viewModel.Add(new ResponsabilidadIVAViewModel
                {
                    ID = item.ID,
                    descripcion = item.descripcion
                });
            }

            return viewModel;
        }
    }
}