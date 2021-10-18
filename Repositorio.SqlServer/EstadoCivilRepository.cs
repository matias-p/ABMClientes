using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;

namespace Repositorio.SqlServer
{
    public class EstadoCivilRepository: Repository, IEstadoCivilRepository
    {
        public EstadoCivilRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public EstadoCivil Get(int id)
        {
            var result = new EstadoCivil();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_EstadoCivil_SEL_pK";
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

        public IEnumerable<EstadoCivil> GetAll()
        {
            //si uso dapper:
            //var estados = _context.Query<EstadoCivil>("spGetUser", commandType: CommandType.StoredProcedure);
            //return estados;

            var resultList = new List<EstadoCivil>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_EstadoCivil_SEL_All";
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
        public EstadoCivil LoadEntity(IDataReader dr)
        {
            return new EstadoCivil
            {
                ID = Convert.ToInt32(dr["id"]),
                descripcion = Convert.ToString(dr["descripcion"])
            };
        }

    }
}
