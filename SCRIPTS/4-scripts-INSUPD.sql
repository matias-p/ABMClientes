/****** Object: Procedure [CLI_ActividadLaboral_INSUPD]   Script Date: 06 Jul 2021 23:42:34:487 ******/
--region CLI_ActividadLaboral_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_ActividadLaboral_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_ActividadLaboral_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = '''', 
  @codigoAFIP int = 0, 
  @categoria varchar(255) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_ActividadLaboral WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_ActividadLaboral(descripcion
          , codigoAFIP
          , categoria)
        VALUES (@descripcion
          , @codigoAFIP
          , @categoria)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_ActividadLaboral] ON; 
        INSERT INTO CLI_ActividadLaboral(ID
            , descripcion
            , codigoAFIP
            , categoria)
        VALUES (@ID
            , @descripcion
            , @codigoAFIP
            , @categoria)
        SET IDENTITY_INSERT [dbo].[CLI_ActividadLaboral] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_ActividadLaboral SET
            descripcion = @descripcion
          , codigoAFIP = @codigoAFIP
          , categoria = @categoria
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_EstadoCivil_INSUPD]   Script Date: 06 Jul 2021 23:43:24:343 ******/
--region CLI_EstadoCivil_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_EstadoCivil_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_EstadoCivil_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_EstadoCivil WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_EstadoCivil(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_EstadoCivil] ON; 
        INSERT INTO CLI_EstadoCivil(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[CLI_EstadoCivil] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_EstadoCivil SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_GrupoCliente_INSUPD]   Script Date: 06 Jul 2021 23:43:59:403 ******/
--region CLI_GrupoCliente_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_GrupoCliente_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_GrupoCliente_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_GrupoCliente WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_GrupoCliente(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_GrupoCliente] ON; 
        INSERT INTO CLI_GrupoCliente(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[CLI_GrupoCliente] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_GrupoCliente SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_HistorialLaboral_INSUPD]   Script Date: 06 Jul 2021 23:44:32:707 ******/
--region CLI_HistorialLaboral_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_HistorialLaboral_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_HistorialLaboral_INSUPD]
  @ID int = 0, 
  @GN_Cliente_ID int = 0, 
  @CLI_TipoActividadLaboral_ID int = 0, 
  @CLI_ActividadLaboral_ID int = 0, 
  @inicioActividad datetime = ''01/01/1900'', 
  @ingresos money = 0, 
  @diaCobro int = 0, 
  @observaciones varchar(255) = '''', 
  @CLI_Puesto_ID int = 0, 
  @finActividad datetime = ''01/01/1900''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_HistorialLaboral WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_HistorialLaboral(GN_Cliente_ID
          , CLI_TipoActividadLaboral_ID
          , CLI_ActividadLaboral_ID
          , inicioActividad
          , ingresos
          , diaCobro
          , observaciones
          , CLI_Puesto_ID
          , finActividad)
        VALUES (@GN_Cliente_ID
          , @CLI_TipoActividadLaboral_ID
          , @CLI_ActividadLaboral_ID
          , @inicioActividad
          , @ingresos
          , @diaCobro
          , @observaciones
          , @CLI_Puesto_ID
          , @finActividad)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_HistorialLaboral] ON; 
        INSERT INTO CLI_HistorialLaboral(ID
            , GN_Cliente_ID
            , CLI_TipoActividadLaboral_ID
            , CLI_ActividadLaboral_ID
            , inicioActividad
            , ingresos
            , diaCobro
            , observaciones
            , CLI_Puesto_ID
            , finActividad)
        VALUES (@ID
            , @GN_Cliente_ID
            , @CLI_TipoActividadLaboral_ID
            , @CLI_ActividadLaboral_ID
            , @inicioActividad
            , @ingresos
            , @diaCobro
            , @observaciones
            , @CLI_Puesto_ID
            , @finActividad)
        SET IDENTITY_INSERT [dbo].[CLI_HistorialLaboral] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_HistorialLaboral SET
            GN_Cliente_ID = @GN_Cliente_ID
          , CLI_TipoActividadLaboral_ID = @CLI_TipoActividadLaboral_ID
          , CLI_ActividadLaboral_ID = @CLI_ActividadLaboral_ID
          , inicioActividad = @inicioActividad
          , ingresos = @ingresos
          , diaCobro = @diaCobro
          , observaciones = @observaciones
          , CLI_Puesto_ID = @CLI_Puesto_ID
          , finActividad = @finActividad
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_Nacionalidad_INSUPD]   Script Date: 06 Jul 2021 23:45:02:400 ******/
--region CLI_Nacionalidad_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Nacionalidad_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_Nacionalidad_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Nacionalidad_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_Nacionalidad_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_Nacionalidad WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_Nacionalidad(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_Nacionalidad] ON; 
        INSERT INTO CLI_Nacionalidad(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[CLI_Nacionalidad] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_Nacionalidad SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_Puesto_INSUPD]   Script Date: 06 Jul 2021 23:45:37:500 ******/
--region CLI_Puesto_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_Puesto_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_Puesto_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_Puesto WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_Puesto(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_Puesto] ON; 
        INSERT INTO CLI_Puesto(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[CLI_Puesto] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_Puesto SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_SubGrupoCliente_INSUPD]   Script Date: 06 Jul 2021 23:46:04:683 ******/
--region CLI_SubGrupoCliente_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_SubGrupoCliente_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_SubGrupoCliente_INSUPD]
  @CLI_GrupoCliente_ID int = 0, 
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_SubGrupoCliente WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_SubGrupoCliente(CLI_GrupoCliente_ID
          , descripcion)
        VALUES (@CLI_GrupoCliente_ID
          , @descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_SubGrupoCliente] ON; 
        INSERT INTO CLI_SubGrupoCliente(CLI_GrupoCliente_ID
            , ID
            , descripcion)
        VALUES (@CLI_GrupoCliente_ID
            , @ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[CLI_SubGrupoCliente] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_SubGrupoCliente SET
            CLI_GrupoCliente_ID = @CLI_GrupoCliente_ID
          , descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [CLI_TipoActividadLaboral_INSUPD]   Script Date: 06 Jul 2021 23:46:37:477 ******/
--region CLI_TipoActividadLaboral_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_TipoActividadLaboral_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_TipoActividadLaboral_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = '''', 
  @pasivo bit = 0
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM CLI_TipoActividadLaboral WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO CLI_TipoActividadLaboral(descripcion
          , pasivo)
        VALUES (@descripcion
          , @pasivo)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[CLI_TipoActividadLaboral] ON; 
        INSERT INTO CLI_TipoActividadLaboral(ID
            , descripcion
            , pasivo)
        VALUES (@ID
            , @descripcion
            , @pasivo)
        SET IDENTITY_INSERT [dbo].[CLI_TipoActividadLaboral] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE CLI_TipoActividadLaboral SET
            descripcion = @descripcion
          , pasivo = @pasivo
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [GN_Cliente_INSUPD]   Script Date: 07 Jul 2021 01:31:53:247 ******/
--region GN_Cliente_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Cliente_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Cliente_INSUPD]
  @limiteCredito money = 0, 
  @nroIIBB varchar(13) = '''', 
  @aptoCredito bit = 0, 
  @fechaNacimiento datetime = ''01/01/1900'', 
  @CLI_SubGrupoCliente_ID int = 0, 
  @ID int = 0, 
  @CLI_EstadoCivil_ID int = 0, 
  @GN_Nacionalidad_ID int = 0, 
  @fechaAlta datetime = ''01/01/1900'', 
  @comentario varchar(8000) = '''', 
  @baja bit = 0
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM GN_Cliente WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO GN_Cliente(limiteCredito
          , nroIIBB
          , aptoCredito
          , fechaNacimiento
          , CLI_SubGrupoCliente_ID
          , CLI_EstadoCivil_ID
          , GN_Nacionalidad_ID
          , fechaAlta
          , comentario
          , baja)
        VALUES (@limiteCredito
          , @nroIIBB
          , @aptoCredito
          , @fechaNacimiento
          , @CLI_SubGrupoCliente_ID
          , @CLI_EstadoCivil_ID
          , @GN_Nacionalidad_ID
          , @fechaAlta
          , @comentario
          , @baja)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[GN_Cliente] ON; 
        INSERT INTO GN_Cliente(limiteCredito
            , nroIIBB
            , aptoCredito
            , fechaNacimiento
            , CLI_SubGrupoCliente_ID
            , ID
            , CLI_EstadoCivil_ID
            , GN_Nacionalidad_ID
            , fechaAlta
            , comentario
            , baja)
        VALUES (@limiteCredito
            , @nroIIBB
            , @aptoCredito
            , @fechaNacimiento
            , @CLI_SubGrupoCliente_ID
            , @ID
            , @CLI_EstadoCivil_ID
            , @GN_Nacionalidad_ID
            , @fechaAlta
            , @comentario
            , @baja)
        SET IDENTITY_INSERT [dbo].[GN_Cliente] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE GN_Cliente SET
            limiteCredito = @limiteCredito
          , nroIIBB = @nroIIBB
          , aptoCredito = @aptoCredito
          , fechaNacimiento = @fechaNacimiento
          , CLI_SubGrupoCliente_ID = @CLI_SubGrupoCliente_ID
          , CLI_EstadoCivil_ID = @CLI_EstadoCivil_ID
          , GN_Nacionalidad_ID = @GN_Nacionalidad_ID
          , fechaAlta = @fechaAlta
          , comentario = @comentario
          , baja = @baja
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [GN_Localidad_INSUPD]   Script Date: 07 Jul 2021 01:34:07:887 ******/
--region GN_Localidad_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Localidad_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Localidad_INSUPD]
  @ID int = 0, 
  @GN_Provincia_ID int = 0, 
  @cod_postal int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM GN_Localidad WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO GN_Localidad(GN_Provincia_ID
          , cod_postal
          , descripcion)
        VALUES (@GN_Provincia_ID
          , @cod_postal
          , @descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[GN_Localidad] ON; 
        INSERT INTO GN_Localidad(ID
            , GN_Provincia_ID
            , cod_postal
            , descripcion)
        VALUES (@ID
            , @GN_Provincia_ID
            , @cod_postal
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[GN_Localidad] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE GN_Localidad SET
            GN_Provincia_ID = @GN_Provincia_ID
          , cod_postal = @cod_postal
          , descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [GN_Persona_INSUPD]   Script Date: 07 Jul 2021 01:36:04:333 ******/
--region GN_Persona_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Persona_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Persona_INSUPD]
  @ID int = 0, 
  @apellido varchar(50) = '''', 
  @nombre varchar(50) = '''', 
  @PER_ResponsabilidadIVA_ID int = 0, 
  @PER_TipoDeDocumento_ID int = 0, 
  @numeroDocumento bigint = 0, 
  @tipoPersona char = '''', 
  @cuitCuil bigint = 0, 
  @sexo char = '''', 
  @telefonoCelular1 varchar(20) = '''', 
  @telefonoCelular2 varchar(20) = '''', 
  @telefonoFijo varchar(20) = '''', 
  @email varchar(40) = '''',
  @domicilio varchar(100) = '''',
  @GN_Localidad_ID int = 0
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM GN_Persona WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO GN_Persona(apellido
          , nombre
          , PER_ResponsabilidadIVA_ID
          , PER_TipoDeDocumento_ID
          , numeroDocumento
          , tipoPersona
          , cuitCuil
          , sexo
          , telefonoCelular1
          , telefonoCelular2
          , telefonoFijo
          , email
		  , domicilio
		  , GN_Localidad_ID)
        VALUES (@apellido
          , @nombre
          , @PER_ResponsabilidadIVA_ID
          , @PER_TipoDeDocumento_ID
          , @numeroDocumento
          , @tipoPersona
          , @cuitCuil
          , @sexo
          , @telefonoCelular1
          , @telefonoCelular2
          , @telefonoFijo
          , @email
		  , @domicilio
		  , @GN_Localidad_ID)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[GN_Persona] ON; 
        INSERT INTO GN_Persona(ID
            , apellido
            , nombre
            , PER_ResponsabilidadIVA_ID
            , PER_TipoDeDocumento_ID
            , numeroDocumento
            , tipoPersona
            , cuitCuil
            , sexo
            , telefonoCelular1
            , telefonoCelular2
            , telefonoFijo
            , email
			, domicilio
		    , GN_Localidad_ID)
        VALUES (@ID
            , @apellido
            , @nombre
            , @PER_ResponsabilidadIVA_ID
            , @PER_TipoDeDocumento_ID
            , @numeroDocumento
            , @tipoPersona
            , @cuitCuil
            , @sexo
            , @telefonoCelular1
            , @telefonoCelular2
            , @telefonoFijo
            , @email
		    , @domicilio
		    , @GN_Localidad_ID)
        SET IDENTITY_INSERT [dbo].[GN_Persona] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE GN_Persona SET
            apellido = @apellido
          , nombre = @nombre
          , PER_ResponsabilidadIVA_ID = @PER_ResponsabilidadIVA_ID
          , PER_TipoDeDocumento_ID = @PER_TipoDeDocumento_ID
          , numeroDocumento = @numeroDocumento
          , tipoPersona = @tipoPersona
          , cuitCuil = @cuitCuil
          , sexo = @sexo
          , telefonoCelular1 = @telefonoCelular1
          , telefonoCelular2 = @telefonoCelular2
          , telefonoFijo = @telefonoFijo
          , email = @email
		  , domicilio = @domicilio
		  , GN_Localidad_ID = @GN_Localidad_ID
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [GN_Provincia_INSUPD]   Script Date: 07 Jul 2021 01:37:09:853 ******/
--region GN_Provincia_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Provincia_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Provincia_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM GN_Provincia WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO GN_Provincia(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[GN_Provincia] ON; 
        INSERT INTO GN_Provincia(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[GN_Provincia] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE GN_Provincia SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [PER_ResponsabilidadIVA_INSUPD]   Script Date: 07 Jul 2021 01:39:27:120 ******/
--region PER_ResponsabilidadIVA_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_ResponsabilidadIVA_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_ResponsabilidadIVA_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = '''', 
  @ingresos money = 0
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM PER_ResponsabilidadIVA WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO PER_ResponsabilidadIVA(descripcion
          , ingresos)
        VALUES (@descripcion
          , @ingresos)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[PER_ResponsabilidadIVA] ON; 
        INSERT INTO PER_ResponsabilidadIVA(ID
            , descripcion
            , ingresos)
        VALUES (@ID
            , @descripcion
            , @ingresos)
        SET IDENTITY_INSERT [dbo].[PER_ResponsabilidadIVA] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE PER_ResponsabilidadIVA SET
            descripcion = @descripcion
          , ingresos = @ingresos
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion

/****** Object: Procedure [PER_TipoDeDocumento_INSUPD]   Script Date: 07 Jul 2021 01:39:50:227 ******/
--region PER_TipoDeDocumento_INSUPD
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_TipoDeDocumento_INSUPD];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_INSUPD]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_TipoDeDocumento_INSUPD]
  @ID int = 0, 
  @descripcion varchar(50) = ''''
 AS
  BEGIN
    SET  NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM PER_TipoDeDocumento WHERE ID = @ID)
    BEGIN
      IF (@ID = 0)
      BEGIN
        INSERT INTO PER_TipoDeDocumento(descripcion)
        VALUES (@descripcion)
        SET @ID = SCOPE_IDENTITY()
        SELECT @ID
      END
      ELSE 
      BEGIN
        SET IDENTITY_INSERT [dbo].[PER_TipoDeDocumento] ON; 
        INSERT INTO PER_TipoDeDocumento(ID
            , descripcion)
        VALUES (@ID
            , @descripcion)
        SET IDENTITY_INSERT [dbo].[PER_TipoDeDocumento] OFF; 
        SELECT @ID
      END
    END
    ELSE
    BEGIN
      UPDATE PER_TipoDeDocumento SET
            descripcion = @descripcion
      WHERE ID = @ID
      SELECT @ID
    END
  END';
GO
--endregion
