USE [Club];
GO

/****** Object: Procedure [GN_Cliente_SEL_All_By_NombreYApellido]   Script Date: 15/07/2021 ******/

IF EXISTS 
(SELECT * FROM sysobjects WHERE name = 'GN_Cliente_SEL_All_By_NombreYApellido' AND type = 'p' ) 
	DROP PROCEDURE GN_Cliente_SEL_All_By_NombreYApellido
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE PROCEDURE GN_Cliente_SEL_All_By_NombreYApellido				
	@texto varchar = 0
	AS
	BEGIN
		SET  NOCOUNT ON; --no devolver el número de filas afectadas.
		SELECT  p.ID, 
				p.apellido, 
				p.nombre, 
				p.PER_ResponsabilidadIVA_ID, 
				p.PER_TipoDeDocumento_ID, 
				p.numeroDocumento, 
				p.tipoPersona, 
				p.cuitCuil, 
				p.sexo, 
				p.telefonoCelular1, 
				p.telefonoCelular2, 
				p.telefonoFijo, 
				p.email,	
				p.domicilio,
				p.GN_Localidad_ID,
				c.limiteCredito ,
				c.nroIIBB ,
				c.aptoCredito ,
				c.fechaNacimiento ,
				c.CLI_SubGrupoCliente_ID ,
				c.ID ,
				c.CLI_EstadoCivil_ID ,
				c.GN_Nacionalidad_ID ,
				c.fechaAlta ,
				c.comentario ,
				c.baja
		FROM    dbo.GN_Cliente c
        INNER JOIN dbo.GN_Persona p ON p.ID = c.ID
		WHERE   p.apellido + ' ' + p.nombre LIKE '%' + @texto + '%'
		ORDER BY p.apellido ASC;
	END
GO

/****** Object: Procedure [CLI_SubGrupoCliente_SEL_All_By_GrupoClienteID]   Script Date: 29/07/2021 ******/

IF EXISTS 
(SELECT * FROM sysobjects WHERE name = 'CLI_SubGrupoCliente_SEL_All_By_GrupoClienteID' AND type = 'p' ) 
	DROP PROCEDURE CLI_SubGrupoCliente_SEL_All_By_GrupoClienteID
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE PROCEDURE CLI_SubGrupoCliente_SEL_All_By_GrupoClienteID				
	@grupoClienteID integer = 0
	AS
	BEGIN
		SET  NOCOUNT ON; --no devolver el número de filas afectadas.
		SELECT ID, 
		       CLI_GrupoCliente_ID, 
		       descripcion
		FROM CLI_SubGrupoCliente
		WHERE CLI_GrupoCliente_ID = @grupoClienteID
		ORDER BY ID ASC
	END
GO

/****** Object: Procedure [GN_Localidad_SEL_All_By_ProvinciaID]   Script Date: 07/08/2021 ******/
IF EXISTS 
(SELECT * FROM sysobjects WHERE name = 'GN_Localidad_SEL_All_By_ProvinciaID' AND type = 'p' ) 
	DROP PROCEDURE GN_Localidad_SEL_All_By_ProvinciaID
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE PROCEDURE GN_Localidad_SEL_All_By_ProvinciaID				
	@provinciaID integer = 0
	AS
	BEGIN
		SET  NOCOUNT ON; --no devolver el número de filas afectadas.
		SELECT ID, 
		       descripcion,
			   GN_Provincia_ID,
			   cod_postal
		FROM GN_Localidad
		WHERE GN_Provincia_ID = @provinciaID
		ORDER BY ID ASC
	END
GO