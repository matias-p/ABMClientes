using FluentValidation;
using System;

namespace UI.Desktop.ViewModels
{
    public class ClienteViewModelValidator : AbstractValidator<ClienteViewModel>
    {
        public ClienteViewModelValidator()
        {
            {
                //CascadeMode: determina si sigue la ejecucion al fallar una de las reglas.
                CascadeMode = CascadeMode.Continue;

                RuleFor(x => x.apellido)
                    .NotEmpty().WithMessage("Apellido es un dato obligatorio")
                    .Must(x => x.Length > 3).WithMessage("Apellido debe tener mas de 3 caracteres")
                    .Must(x => x.Length < 51).WithMessage("Apellido puede tener hasta 50 caracteres");

                RuleFor(x => x.nombre)
                    .NotEmpty().WithMessage("Nombre es un dato obligatorio")
                    .Must(x => x.Length > 3).WithMessage("Nombre debe tener mas de 3 caracteres")
                    .Must(x => x.Length < 51).WithMessage("Nombre puede tener hasta 50 caracteres");

                RuleFor(x => x.nacimiento)
                    .NotEmpty().WithMessage("La fecha de nacimiento es obligatoria")
                    .Must(EsFechaValida).WithMessage("Ingrese una fecha de nacimiento válida")
                    .LessThan(x => DateTime.Now).WithMessage("Ingrese una fecha de nacimiento válida");
            }


            bool EsFechaValida(DateTime date)
            {
                return !date.Equals(default(DateTime));
            }
        }

    }
}
