using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UI.Desktop.Formularios
{
    /// <summary>
    /// Esta clase guarda validaciones para controles
    /// </summary>
    public static class ControlesExtensiones
    {
        /// <summary>
        /// Éste método Blanquea cada control TextBox o ComboBox de un formulario.
        /// </summary>
        public static void LimpiarControles(this Control frm)
        {
            foreach (Control ctrl in frm.Controls)
            {
                if (ctrl is TextBox || ctrl is ComboBox)
                {
                    ctrl.Text = string.Empty;
                }
                else
                {
                    ctrl.LimpiarControles();
                }
            }
        }

        /// <summary>
        /// Éste método formatea un String recibido dejando la primer letra de cada una de sus palabras en mayúscula.
        /// </summary>
        public static string ToProperCase(this string the_string)
        {
            // Si hay 0 o 1 caracteres, solo devuelve el string.
            if (the_string == null) return the_string;
            if (the_string.Length < 2) return the_string.ToUpper();

            // Comienza con el primer caracter.
            string result = the_string.Substring(0, 1).ToUpper();

            // Agregar los restantes caracteres.
            for (int i = 1; i < the_string.Length; i++)
            {
                if (char.IsUpper(the_string[i])) result += " ";
                result += the_string[i];
            }

            return result;
        }

        public static bool ValidarCuitCuil(this MaskedTextBox ctrl)
        {
            bool rv = false;
            if (string.IsNullOrEmpty(ctrl.Text)) return rv;
            if (ctrl.Text.Length != 13) return rv;
            
            int verificador;
            int resultado = 0;
            string cuit_nro = ctrl.Text.Replace("-", string.Empty);
            string codes = "6789456789";
            long cuit_long = 0;
            if (long.TryParse(cuit_nro, out cuit_long))
            {
                verificador = int.Parse(cuit_nro[cuit_nro.Length - 1].ToString());
                int x = 0;
                while (x < 10)
                {
                    int digitoValidador = int.Parse(codes.Substring((x), 1));
                    int digito = int.Parse(cuit_nro.Substring((x), 1));
                    int digitoValidacion = digitoValidador * digito;
                    resultado += digitoValidacion;
                    x++;
                }
                resultado = resultado % 11;
                rv = (resultado == verificador);
            }
            return rv;
        }
    }
}
