using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;

namespace Repositorio.SqlServer
{
    public class HistorialLaboralRepository : Repository, IHistorialLaboralRepository
    {
        public HistorialLaboralRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public HistorialLaboral Get(int id)
        {
            var result = new HistorialLaboral();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_HistorialLaboral_SEL_pK";
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

        public IEnumerable<HistorialLaboral> GetAll()
        {
            var resultList = new List<HistorialLaboral>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"CLI_HistorialLaboral_SEL_All";
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
        public HistorialLaboral LoadEntity(IDataReader dr)
        {
            return new HistorialLaboral
            {
                ID = Convert.ToInt32(dr["ID"]),
                ClienteID = Convert.ToInt32(dr["GN_Cliente_ID"]),
                TipoActividadLaboralID = Convert.ToInt32(dr["CLI_TipoActividadLaboral_ID"]),
                ActividadLaboralID = Convert.ToInt32(dr["CLI_ActividadLaboral_ID"]),
                inicioActividad = Convert.ToDateTime(dr["inicioActividad"]),
                ingresos = Convert.ToDecimal(dr["ingresos"]),
                diaCobro = Convert.ToInt32(dr["diaCobro"]),
                observaciones = Convert.ToString(dr["observaciones"]),
                PuestoID = Convert.ToInt32(dr["CLI_Puesto_ID"]),
                finActividad = Convert.ToDateTime(dr["finActividad"])
            };
        }
    }
}
