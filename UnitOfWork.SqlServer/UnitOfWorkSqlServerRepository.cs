using Repositorio.SqlServer;
using System.Data.SqlClient;
using Dominio.SeedWork;
using Dominio.Contratos;

namespace UnitOfWork.SqlServer
{
    /// <summary>
    /// en esta clase se instancian los repositorios
    /// </summary>
    public class UnitOfWorkSqlServerRepository : IUnitOfWorkRepository
    {
        public IClienteRepository ClienteRepository { get; }
        public IEstadoCivilRepository EstadoCivilRepository { get; }
        public IGrupoClienteRepository GrupoClienteRepository { get; }   
        public ILocalidadRepository LocalidadRepository { get; }
        public INacionalidadRepository NacionalidadRepository { get; }
        public IProvinciaRepository ProvinciaRepository { get; }
        public IResponsabilidadIVARepository ResponsabilidadIVARepository { get; }
        public ISubGrupoClienteRepository SubGrupoClienteRepository { get; }
        public ITipoDeDocumentoRepository TipoDeDocumentoRepository { get; }
   
        public UnitOfWorkSqlServerRepository(SqlConnection context, SqlTransaction transaction)
        {
            ClienteRepository = new ClienteRepository(context, transaction);
            EstadoCivilRepository = new EstadoCivilRepository(context, transaction);
            GrupoClienteRepository = new GrupoClienteRepository(context, transaction);
            LocalidadRepository = new LocalidadRepository(context, transaction);
            NacionalidadRepository = new NacionalidadRepository(context, transaction);
            ProvinciaRepository = new ProvinciaRepository(context, transaction);
            ResponsabilidadIVARepository = new ResponsabilidadIVARepository(context, transaction);
            SubGrupoClienteRepository = new SubGrupoClienteRepository(context, transaction);
            TipoDeDocumentoRepository = new TipoDeDocumentoRepository(context, transaction);
        }
    }
}
