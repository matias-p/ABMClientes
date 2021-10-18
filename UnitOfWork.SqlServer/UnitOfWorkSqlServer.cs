using Common;
//using Microsoft.Extensions.Configuration;
using Dominio.SeedWork;

namespace UnitOfWork.SqlServer
{
    public class UnitOfWorkSqlServer : IUnitOfWork
    {
        //private readonly IConfiguration _configuration;

        public UnitOfWorkSqlServer(/*IConfiguration configuration = null*/)
        {
            //_configuration = configuration;
        }

        public IUnitOfWorkAdapter Create()
        {
            //var connectionString = _configuration == null
            //    ? Parametros.ConnectionString
            //    : _configuration.GetValue<string>("SqlConnectionString");

            var connectionString = Parametros.ConnectionString;

            return new UnitOfWorkSqlServerAdapter(connectionString);
        }
    }
}
