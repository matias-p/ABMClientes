using Dominio.Contratos;

namespace Dominio.SeedWork
{
    public interface IUnitOfWorkRepository
    {
        //creamos los repositorios que vamos a usar desde los servicios
        
        IClienteRepository ClienteRepository { get; }

        IEstadoCivilRepository EstadoCivilRepository { get; }

        IGrupoClienteRepository GrupoClienteRepository { get; }

        ILocalidadRepository LocalidadRepository { get;  }

        INacionalidadRepository NacionalidadRepository { get; }

        IProvinciaRepository ProvinciaRepository { get; }

        IResponsabilidadIVARepository ResponsabilidadIVARepository { get; }

        ISubGrupoClienteRepository SubGrupoClienteRepository { get; }

        ITipoDeDocumentoRepository TipoDeDocumentoRepository { get; }

    }
}
