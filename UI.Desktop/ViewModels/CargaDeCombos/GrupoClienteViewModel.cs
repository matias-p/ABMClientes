using System.Collections.Generic;

namespace UI.Desktop.ViewModels
{
    public class GrupoClienteViewModel
    {
        public int ID { get; set; }
        public string descripcion { get; set; }

        public IEnumerable<SubGrupoClienteViewModel> SubGruposCliente { get; set; }

        public GrupoClienteViewModel()
        {
            SubGruposCliente = new List<SubGrupoClienteViewModel>();
        }
    }
}
