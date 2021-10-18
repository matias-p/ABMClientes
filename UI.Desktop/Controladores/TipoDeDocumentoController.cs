using UI.Desktop.ViewModels;
using Servicios.Contratos;
using System.Collections.Generic;

namespace UI.Desktop.Controladores
{
    public class TipoDeDocumentoController
    {
        private ITipoDeDocumentoService _servicio;

        public TipoDeDocumentoController(ITipoDeDocumentoService servicio)
        {
            _servicio = servicio;
        }

        public IEnumerable<TipoDeDocumentoViewModel> GetTiposDeDocumento()
        {
            var tipos = _servicio.GetAll();

            List<TipoDeDocumentoViewModel> viewModel = new List<TipoDeDocumentoViewModel>();

            foreach (var item in tipos)
            {
                viewModel.Add(new TipoDeDocumentoViewModel
                {
                    ID = item.ID,
                    descripcion = item.descripcion
                });
            }

            return viewModel;
        }
    }
}