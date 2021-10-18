using System;

namespace Dominio.Entidades.ConfiguracionFiscal
{
    public class ModeloFiscal
    {
        public int ID { get; set; }

        public string modelo { get; set; }

        public int velocidad { get; set; }

        public string codigoModelo { get; set; }

        public string marca { get; set; }
    }
}
