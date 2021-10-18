using System;

namespace UI.Desktop.ViewModels
{
    public class ClienteGridViewModel
    {
        //este vm se usa para mostrar en los grids o listados.
        public int ID { get; set; }
        public string Apellido { get; set; }
        public string Nombre { get; set; }
        public string Sexo { get; set; }
        public DateTime Nacimiento { get; set; }
        public string Tipo_Doc { get; set; }
        public long Numero { get; set; }    
        public string EstadoCivil { get; set; }
        public string Email { get; set; }
        public string Tel_Celular { get; set; }
        public string Tel_Celular2 { get; set; }
        public string Tel_Fijo { get; set; }
        public string Nacionalidad { get; set; }
        public string Responsabilidad { get; set; }
        public string Tipo_Persona { get; set; }
        public long CuilCuit { get; set; }
        public long IIBB { get; set; }
        public string Grupo { get; set; }
        public string Subgrupo { get; set; }
        public string Domicilio { get; set; }
        public string Localidad { get; set; }
        public string Provincia { get; set; }
    }
}
