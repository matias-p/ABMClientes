using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.General;
using Dominio.Contratos;
using System.Data;

namespace Repositorio.SqlServer
{
    public class LocalidadRepository : Repository, ILocalidadRepository
    {
        public LocalidadRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public Localidad Get(int id)
        {
            var result = new Localidad();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Localidad_SEL_pK";
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

        public IEnumerable<Localidad> GetAll()
        {
            var resultList = new List<Localidad>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Localidad_SEL_All";
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

        public IEnumerable<Localidad> GetAllByProvinciaID(int provinciaID)
        {
            var resultList = new List<Localidad>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Localidad_SEL_All_By_ProvinciaID";

            var command = CreateCommand(query);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@provinciaID", provinciaID);

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
        public Localidad LoadEntity(IDataReader dr)
        {
            return new Localidad
            {
                ID = Convert.ToInt32(dr["ID"]),
                ProvinciaID = Convert.ToInt32(dr["GN_Provincia_ID"]),
                codpostal = Convert.ToInt32(dr["cod_postal"]),
                descripcion = Convert.ToString(dr["descripcion"])
            };
        }
    }
}
