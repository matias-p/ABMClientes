using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;
using System.Threading.Tasks;

namespace Repositorio.SqlServer
{
    public class TipoActividadLaboralRepository : Repository, ITipoActividadLaboralRepository
    {
        public TipoActividadLaboralRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public async Task<TipoActividadLaboral> Get(int id)
        {
            var result = new TipoActividadLaboral();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_TipoActividadLaboral_SEL_pK";
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

        public async Task<IEnumerable<TipoActividadLaboral>> GetAll()
        {
            var resultList = new List<TipoActividadLaboral>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            //cuando un SP_pK no recibe parametros, devuelve todos los registros de la tabla.
            var query = @"CLI_TipoActividadLaboral_SEL_pK";
            var command = CreateCommand(query);
            command.CommandType = CommandType.StoredProcedure;

            using (var reader = await command .ExecuteReaderAsync())
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
        public TipoActividadLaboral LoadEntity(IDataReader dr)
        {
            return new TipoActividadLaboral
            {
                ID = Convert.ToInt32(dr["ID"]),
                descripcion = Convert.ToString(dr["descripcion"]),
                pasivo = Convert.ToBoolean(dr["pasivo"])
            };
        }
    }
}
