using System.Collections.Generic;

namespace UI.Desktop.ViewModels
{
    public class ProvinciaViewModel
    {
        public int ID { get; set; }
        public string descripcion { get; set; }

        public IEnumerable<LocalidadViewModel> Localidades { get; set; }

        public ProvinciaViewModel()
        {
            Localidades = new List<LocalidadViewModel>();
        }
    }
}
