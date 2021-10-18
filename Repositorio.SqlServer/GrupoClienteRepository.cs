using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;

namespace Repositorio.SqlServer
{
    public class GrupoClienteRepository : Repository, IGrupoClienteRepository
    {
        public GrupoClienteRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public GrupoCliente Get(int id)
        {
            var result = new GrupoCliente();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_GrupoCliente_SEL_pK";
            var command = CreateCommand(query);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ID", id);

            using (var reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    result = LoadEntity(reader);
                }
            }

            return result;
        }

        public IEnumerable<GrupoCliente> GetAll()
        {
            var resultList = new List<GrupoCliente>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_GrupoCliente_SEL_All";
            var command = CreateCommand(query);
            command.CommandType = CommandType.StoredProcedure;

            using (var reader = command.ExecuteReader())
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
        public GrupoCliente LoadEntity(IDataReader dr)
        {
            return new GrupoCliente
            {
                ID = Convert.ToInt32(dr["ID"]),
                descripcion = Convert.ToString(dr["descripcion"])
            };
        }
    }
}
