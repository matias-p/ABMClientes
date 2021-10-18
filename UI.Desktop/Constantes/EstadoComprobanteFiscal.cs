using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI.Desktop.Constantes
{
    public class EstadoComprobanteFiscal
    {
        public const int PENDIENTE = 1;
        public const int ANULADO = 2;
        public const int CONFIRMADO = 3;
        public const int PENDIENTEAPROBACION = 4;
        public const int PENDIENTEEMISION = 5;
        public const int PENDIENTECOBROCHEQUE = 6;
        public const int PREIMPRESION = 7;
        public const int IMPRIMIENDO = 8;
        public const int ENCOLADEPROCESAMIENTO = 9;
    }
}
