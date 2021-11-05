using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;
using System.Threading.Tasks;

namespace Repositorio.SqlServer
{
    public class ActividadLaboralRepository : Repository, IActividadLaboralRepository
    {
        public ActividadLaboralRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public async Task<ActividadLaboral> Get(int id)
        {
            var result = new ActividadLaboral();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_ActividadLaboral_SEL_pK";
            var command = CreateCommand(query);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ID", id);

            using (var reader = await command.ExecuteReaderAsync())
            {
                if (reader.Read())
                {
                    result = LoadEntity(reader);
                }
            }

            return result;
        }

        public async Task<IEnumerable<ActividadLaboral>> GetAll()
        {
            var resultList = new List<ActividadLaboral>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            //cuando un SP_pK no recibe parametros, devuelve todos los registros de la tabla.
            var query = @"CLI_ActividadLaboral_SEL_pK";
            var command = CreateCommand(query);
            command.CommandType = CommandType.StoredProcedure;

            using (var reader = await command.ExecuteReaderAsync())
            {
                while (reader.Read())
                {
                    //El objeto libro es agregado a la lista
                    resultList.Add(LoadEntity(reader));
                }
            }

            return resultList;
        }

        /// <summary> 
        /// Crea una entidad desde el objeto reader retornado por la consulta a la BD
        /// </summary>
        public ActividadLaboral LoadEntity(IDataReader dr)
        {
            return new ActividadLaboral
            {
                ID = Convert.ToInt32(dr["ID"]),
                descripcion = Convert.ToString(dr["descripcion"]),
                codigoAFIP = Convert.ToInt32(dr["codigoAFIP"]),          
                categoria = Convert.ToString(dr["categoria"])
        };
        }
    }
}
