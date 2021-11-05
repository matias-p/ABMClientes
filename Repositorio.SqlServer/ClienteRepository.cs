using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dominio.Entidades.Cliente;
using Dominio.Contratos;
using System.Data;
using System.Threading.Tasks;

namespace Repositorio.SqlServer
{
    public class ClienteRepository : Repository, IClienteRepository
    {
        public ClienteRepository(SqlConnection context, SqlTransaction transaction)
        {
            this._context = context;
            this._transaction = transaction;
        }

        public async Task Save(Cliente entidad)
        {
            //tabla persona
            var queryPersona = @"GN_Persona_INSUPD";
            var commandPersona = CreateCommand(queryPersona);
            commandPersona.CommandType = CommandType.StoredProcedure;

            commandPersona.Parameters.AddWithValue("@ID", entidad.ID);
            commandPersona.Parameters.AddWithValue("@apellido", entidad.apellido);
            commandPersona.Parameters.AddWithValue("@nombre", entidad.nombre);
            commandPersona.Parameters.AddWithValue("@PER_TipoDeDocumento_ID", entidad.TipoDeDocumentoID);
            commandPersona.Parameters.AddWithValue("@PER_ResponsabilidadIVA_ID", entidad.ResponsabilidadIVAID);
            commandPersona.Parameters.AddWithValue("@numeroDocumento", entidad.numeroDocumento);
            commandPersona.Parameters.AddWithValue("@tipoPersona", entidad.tipoPersona);
            commandPersona.Parameters.AddWithValue("@cuitCuil", entidad.cuitCuil);
            commandPersona.Parameters.AddWithValue("@sexo", entidad.sexo);
            commandPersona.Parameters.AddWithValue("@telefonoCelular1", entidad.telefonoCelular1);
            commandPersona.Parameters.AddWithValue("@telefonoCelular2", entidad.telefonoCelular2);
            commandPersona.Parameters.AddWithValue("@telefonoFijo", entidad.telefonoFijo);
            commandPersona.Parameters.AddWithValue("@email", entidad.email);
            commandPersona.Parameters.AddWithValue("@domicilio", entidad.domicilio);
            commandPersona.Parameters.AddWithValue("@GN_Localidad_ID", entidad.LocalidadID);

            //como recibe el objeto (por valor) le asignamos el ID obtenido y sube hasta el servicio.
            entidad.ID = Convert.ToInt32(await commandPersona.ExecuteScalarAsync());
        
            //tabla cliente
            var queryCliente = @"GN_Cliente_INSUPD";
            var commandCliente = CreateCommand(queryCliente);
            commandCliente.CommandType = CommandType.StoredProcedure;

            commandCliente.Parameters.AddWithValue("@ID", entidad.ID);
            commandCliente.Parameters.AddWithValue("@limiteCredito", entidad.limiteCredito);
            commandCliente.Parameters.AddWithValue("@nroIIBB", entidad.nroIIBB);
            commandCliente.Parameters.AddWithValue("@aptoCredito", entidad.aptoCredito);
            commandCliente.Parameters.AddWithValue("@fechaNacimiento", entidad.fechaNacimiento);
            commandCliente.Parameters.AddWithValue("@CLI_SubGrupoCliente_ID", entidad.SubGrupoID);
            commandCliente.Parameters.AddWithValue("@CLI_EstadoCivil_ID", entidad.EstadoCivilID);
            commandCliente.Parameters.AddWithValue("@GN_Nacionalidad_ID", entidad.NacionalidadID);
            commandCliente.Parameters.AddWithValue("@fechaAlta", entidad.fechaAlta);
            commandCliente.Parameters.AddWithValue("@comentario", entidad.comentario);
            commandCliente.Parameters.AddWithValue("@baja", entidad.baja);

            if (await commandCliente.ExecuteNonQueryAsync() == 0)
            {
                throw new Exception("No se pudo insertar el registro...");
            }
        }

        public async Task<Cliente> Get(int id)
        {
            var result = new Cliente();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Cliente_SEL_pK";
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

        public async Task<IEnumerable<Cliente>> GetAll()
        {
            var resultList = new List<Cliente>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            //cuando GN_Cliente_SEL_pK no recibe parametros, devuelve todos los registros de la tabla.
            var query = @"GN_Cliente_SEL_pK";
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

        public async Task<IEnumerable<Cliente>> GetAllByNombreYApellido(string texto)
        {
            var resultList = new List<Cliente>();

            //el método CreateCommand de la clase abstracta Repository retorna un SqlCommand
            var query = @"GN_Cliente_SEL_All_By_NombreYApellido";
            var command = CreateCommand(query);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@texto", texto);

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
        public Cliente LoadEntity(IDataReader dr)
        {
            return new Cliente
            {
                //campos de la tabla cliente:
                ID = Convert.ToInt32(dr["ID"]),
                limiteCredito = Convert.ToDecimal(dr["limiteCredito"]),
                nroIIBB = Convert.ToString(dr["nroIIBB"]),
                aptoCredito = Convert.ToBoolean(dr["aptoCredito"]),
                fechaNacimiento = Convert.ToDateTime(dr["fechaNacimiento"]),
                SubGrupoID = Convert.ToInt32(dr["CLI_SubGrupoCliente_ID"]),
                EstadoCivilID = Convert.ToInt32(dr["CLI_EstadoCivil_ID"]),
                NacionalidadID = Convert.ToInt32(dr["GN_Nacionalidad_ID"]),
                fechaAlta = Convert.ToDateTime(dr["fechaAlta"]),
                comentario = Convert.ToString(dr["comentario"]),
                baja = Convert.ToBoolean(dr["baja"]),
                //campos de la tabla persona:
                apellido = Convert.ToString(dr["apellido"]),
                nombre = Convert.ToString(dr["nombre"]),
                ResponsabilidadIVAID = Convert.ToInt32(dr["PER_ResponsabilidadIVA_ID"]),
                TipoDeDocumentoID = Convert.ToInt32(dr["PER_TipoDeDocumento_ID"]),
                numeroDocumento = Convert.ToInt64(dr["numeroDocumento"]),
                tipoPersona = Convert.ToString(dr["tipoPersona"]),
                cuitCuil = Convert.ToInt64(dr["cuitCuil"]),
                sexo = Convert.ToString(dr["sexo"]),
                telefonoCelular1 = Convert.ToString(dr["telefonoCelular1"]),
                telefonoCelular2 = Convert.ToString(dr["telefonoCelular2"]),
                telefonoFijo = Convert.ToString(dr["telefonoFijo"]),
                email = Convert.ToString(dr["email"]),
                domicilio = Convert.ToString(dr["domicilio"]),
                LocalidadID = Convert.ToInt32(dr["GN_Localidad_ID"])
            };
        }
    }
}
