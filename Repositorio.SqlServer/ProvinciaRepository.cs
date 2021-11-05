using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Persona;
using Dominio.Contratos;
using System.Data;
using System.Threading.Tasks;

namespace Repositorio.SqlServer
{
    public class ProvinciaRepository : Repository, IProvinciaRepository
    {
        public ProvinciaRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public async Task<Provincia> Get(int id)
        {
            var result = new Provincia();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Provincia_SEL_pK";
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

        public async Task<IEnumerable<Provincia>> GetAll()
        {
            var resultList = new List<Provincia>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            //cuando un SP_pK no recibe parametros, devuelve todos los registros de la tabla.
            var query = @"GN_Provincia_SEL_pK";
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
        public Provincia LoadEntity(IDataReader dr)
        {
            return new Provincia
            {
                ID = Convert.ToInt32(dr["ID"]),
                descripcion = Convert.ToString(dr["descripcion"])
            };
        }
    }
}
