using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI.Desktop.ViewModels
{
    public class GeneroViewModel
    {
        public List<KeyValuePair<string, string>> Generos { get; set; }

        public GeneroViewModel()
        {
            Generos = new List<KeyValuePair<string, string>>(){
                new KeyValuePair<string, string>("Femenino", "F"),
                new KeyValuePair<string, string>("Masculino", "M"),
                new KeyValuePair<string, string>("No-binario", "X")
            }; ;
        }
    }
}
