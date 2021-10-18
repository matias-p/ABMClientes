using System;
using System.Collections.Generic;
using System.Linq;
using FluentValidation.Results;

namespace UI.Desktop.Controladores.Validaciones
{
    public static class Validator
    {
        //lo declaro como static por que es un método de clase y no de instancia (es decir, puede ser invocado sin existir una instancia)
        internal static string GetErrorMessages(IList<ValidationFailure> list)
        {
            //throw new NotImplementedException();
            var _errorList = new List<string>();
            foreach (var error in list)
            {
                //_errorList.Add("El campo " + error.PropertyName + " es inválido. Error: " + error.ErrorMessage);
                _errorList.Add("Verifique: " + error.ErrorMessage);
            }
            return _errorList.Aggregate((i, j) => i + Environment.NewLine + j).ToString();
        }
    }
}
