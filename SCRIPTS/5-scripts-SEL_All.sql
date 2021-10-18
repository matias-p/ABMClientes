/****** Object: Procedure [CLI_ActividadLaboral_SEL_All]   Script Date: 15 Jul 2021 12:48:36:523 ******/
--region CLI_ActividadLaboral_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_ActividadLaboral_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_ActividadLaboral_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           codigoAFIP, 
           categoria
    FROM CLI_ActividadLaboral
END'; 
GO
--endregion

/****** Object: Procedure [CLI_EstadoCivil_SEL_All]   Script Date: 15 Jul 2021 12:48:48:287 ******/
--region CLI_EstadoCivil_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_EstadoCivil_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_EstadoCivil_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_EstadoCivil
END'; 
GO
--endregion

/****** Object: Procedure [CLI_GrupoCliente_SEL_All]   Script Date: 15 Jul 2021 12:49:05:157 ******/
--region CLI_GrupoCliente_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_GrupoCliente_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_GrupoCliente_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_GrupoCliente
END'; 
GO
--endregion

/****** Object: Procedure [CLI_HistorialLaboral_SEL_All]   Script Date: 15 Jul 2021 12:49:22:343 ******/
--region CLI_HistorialLaboral_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_HistorialLaboral_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_HistorialLaboral_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           GN_Cliente_ID, 
           CLI_TipoActividadLaboral_ID, 
           CLI_ActividadLaboral_ID, 
           inicioActividad, 
           ingresos, 
           diaCobro, 
           observaciones, 
           CLI_Puesto_ID, 
           finActividad
    FROM CLI_HistorialLaboral
END'; 
GO
--endregion

/****** Object: Procedure [GN_Nacionalidad_SEL_All]   Script Date: 15 Jul 2021 12:49:33:143 ******/
--region GN_Nacionalidad_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Nacionalidad_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Nacionalidad_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Nacionalidad_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Nacionalidad_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM GN_Nacionalidad
END'; 
GO
--endregion

/****** Object: Procedure [CLI_Puesto_SEL_All]   Script Date: 15 Jul 2021 12:49:42:340 ******/
--region CLI_Puesto_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_Puesto_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_Puesto_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_Puesto
END'; 
GO
--endregion

/****** Object: Procedure [CLI_SubGrupoCliente_SEL_All]   Script Date: 15 Jul 2021 12:49:54:173 ******/
--region CLI_SubGrupoCliente_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_SubGrupoCliente_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_SubGrupoCliente_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT CLI_GrupoCliente_ID, 
           ID, 
           descripcion
    FROM CLI_SubGrupoCliente
END'; 
GO
--endregion

/****** Object: Procedure [CLI_TipoActividadLaboral_SEL_All]   Script Date: 15 Jul 2021 12:50:04:747 ******/
--region CLI_TipoActividadLaboral_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_TipoActividadLaboral_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_TipoActividadLaboral_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           pasivo
    FROM CLI_TipoActividadLaboral
END'; 
GO
--endregion

/****** Object: Procedure [GN_Cliente_SEL_All]   Script Date: 15 Jul 2021 13:13:37:483 ******/
--region GN_Cliente_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Cliente_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Cliente_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT p.ID, 
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
		   c.limiteCredito, 
           c.nroIIBB, 
           c.aptoCredito, 
           c.fechaNacimiento, 
           c.CLI_SubGrupoCliente_ID,  
           c.CLI_EstadoCivil_ID, 
           c.GN_Nacionalidad_ID, 
           c.fechaAlta, 
           c.comentario, 
           c.baja
    FROM GN_Cliente c
    INNER JOIN dbo.GN_Persona p ON p.ID = c.ID
END'; 
GO
--endregion

/****** Object: Procedure [GN_Localidad_SEL_All]   Script Date: 15 Jul 2021 13:14:13:467 ******/
--region GN_Localidad_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Localidad_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Localidad_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           GN_Provincia_ID, 
           cod_postal, 
           descripcion
    FROM GN_Localidad
END'; 
GO
--endregion

/****** Object: Procedure [GN_Persona_SEL_All]   Script Date: 15 Jul 2021 13:15:06:817 ******/
--region GN_Persona_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Persona_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Persona_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           apellido, 
           nombre, 
           PER_ResponsabilidadIVA_ID, 
           PER_TipoDeDocumento_ID, 
           numeroDocumento, 
           tipoPersona, 
           cuitCuil, 
           sexo, 
           telefonoCelular1, 
           telefonoCelular2, 
           telefonoFijo, 
           email,
		   domicilio,
		   GN_Localidad_ID	
    FROM GN_Persona
END'; 
GO
--endregion

/****** Object: Procedure [GN_Provincia_SEL_All]   Script Date: 15 Jul 2021 13:15:27:110 ******/
--region GN_Provincia_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Provincia_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Provincia_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM GN_Provincia
END'; 
GO
--endregion

/****** Object: Procedure [PER_ResponsabilidadIVA_SEL_All]   Script Date: 15 Jul 2021 13:16:20:260 ******/
--region PER_ResponsabilidadIVA_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_ResponsabilidadIVA_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_ResponsabilidadIVA_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           ingresos
    FROM PER_ResponsabilidadIVA
END'; 
GO
--endregion

/****** Object: Procedure [PER_TipoDeDocumento_SEL_All]   Script Date: 15 Jul 2021 13:16:29:933 ******/
--region PER_TipoDeDocumento_SEL_All
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_TipoDeDocumento_SEL_All];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_SEL_All]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <15/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_TipoDeDocumento_SEL_All]
  AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM PER_TipoDeDocumento
END'; 
GO
--endregion