using System;

namespace UI.Desktop.ViewModels
{
    public class ClienteViewModel
    {
        public int ID { get; set; }
        public string apellido { get; set; }
        public string nombre { get; set; }
        public string sexo { get; set; }
        public DateTime nacimiento { get; set; }
        public int TipoDeDocumentoID { get; set; }
        public long numero { get; set; }
        public int EstadoCivilID { get; set; }
        public string email { get; set; }
        public string tel_Celular { get; set; }
        public string tel_Celular2 { get; set; }
        public string tel_Fijo { get; set; }
        public int NacionalidadID { get; set; }
        public string domicilio { get; set; }
        public int LocalidadID { get; set; }
        public int ProvinciaID { get; set; }
        public int ResponsabilidadIVAID { get; set; }
        public string tipo_Persona { get; set; }
        public long cuilCuit { get; set; }
        public string IIBB { get; set; }
        public int GrupoClienteID { get; set; }
        public int SubGrupoClienteID { get; set; }

        public ClienteViewModel()
        {
            //TipoDeDocumento = new TipoDeDocumentoViewModel();
            //EstadoCivil = new EstadoCivilViewModel();
            //Nacionalidad = new NacionalidadViewModel();
            //Responsabilidad = new ResponsabilidadIVAViewModel();
            //Grupo = new GrupoClienteViewModel();
            //SubGrupo = new SubGrupoClienteViewModel();
            //Provincia = new ProvinciaViewModel();
            //Localidad = new LocalidadViewModel();
        }
    }
}
