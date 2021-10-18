/****** Object: Procedure [CLI_ActividadLaboral_SEL_pK]   Script Date: 06 Jul 2021 23:42:34:477 ******/
--region CLI_ActividadLaboral_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_ActividadLaboral_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_ActividadLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_ActividadLaboral_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           codigoAFIP, 
           categoria
    FROM CLI_ActividadLaboral
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_EstadoCivil_SEL_pK]   Script Date: 06 Jul 2021 23:43:24:340 ******/
--region CLI_EstadoCivil_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_EstadoCivil_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_EstadoCivil_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_EstadoCivil_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_EstadoCivil
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_GrupoCliente_SEL_pK]   Script Date: 06 Jul 2021 23:43:59:397 ******/
--region CLI_GrupoCliente_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_GrupoCliente_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_GrupoCliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_GrupoCliente_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_GrupoCliente
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_HistorialLaboral_SEL_pK]   Script Date: 06 Jul 2021 23:44:32:687 ******/
--region CLI_HistorialLaboral_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_HistorialLaboral_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_HistorialLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_HistorialLaboral_SEL_pK]
  @ID int = 0 AS
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
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [GN_Nacionalidad_SEL_pK]   Script Date: 06 Jul 2021 23:45:02:393 ******/
--region GN_Nacionalidad_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Nacionalidad_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Nacionalidad_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Nacionalidad_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Nacionalidad_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM GN_Nacionalidad
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_Puesto_SEL_pK]   Script Date: 06 Jul 2021 23:45:37:493 ******/
--region CLI_Puesto_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_Puesto_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_Puesto_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_Puesto_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM CLI_Puesto
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_SubGrupoCliente_SEL_pK]   Script Date: 06 Jul 2021 23:46:04:677 ******/
--region CLI_SubGrupoCliente_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_SubGrupoCliente_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_SubGrupoCliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_SubGrupoCliente_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT CLI_GrupoCliente_ID, 
           ID, 
           descripcion
    FROM CLI_SubGrupoCliente
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [CLI_TipoActividadLaboral_SEL_pK]   Script Date: 06 Jul 2021 23:46:37:470 ******/
--region CLI_TipoActividadLaboral_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[CLI_TipoActividadLaboral_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLI_TipoActividadLaboral_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <06/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[CLI_TipoActividadLaboral_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           pasivo
    FROM CLI_TipoActividadLaboral
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [GN_Cliente_SEL_pK]   Script Date: 07 Jul 2021 01:31:53:220 ******/
--region GN_Cliente_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Cliente_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Cliente_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Cliente_SEL_pK]
  @ID int = 0 AS
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
           c.ID, 
           c.CLI_EstadoCivil_ID, 
           c.GN_Nacionalidad_ID, 
           c.fechaAlta, 
           c.comentario, 
           c.baja
    FROM GN_Cliente c
	INNER JOIN dbo.GN_Persona p ON p.ID = c.ID
    WHERE (@ID = 0 OR @ID = p.ID)
END'; 
GO
--endregion

/****** Object: Procedure [GN_Localidad_SEL_pK]   Script Date: 07 Jul 2021 01:34:07:877 ******/
--region GN_Localidad_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Localidad_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Localidad_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Localidad_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           GN_Provincia_ID, 
           cod_postal, 
           descripcion
    FROM GN_Localidad
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [GN_Persona_SEL_pK]   Script Date: 07 Jul 2021 01:36:04:303 ******/
--region GN_Persona_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Persona_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Persona_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Persona_SEL_pK]
  @ID int = 0 AS
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
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [GN_Provincia_SEL_pK]   Script Date: 07 Jul 2021 01:37:09:850 ******/
--region GN_Provincia_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[GN_Provincia_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GN_Provincia_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[GN_Provincia_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM GN_Provincia
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [PER_ResponsabilidadIVA_SEL_pK]   Script Date: 07 Jul 2021 01:39:27:110 ******/
--region PER_ResponsabilidadIVA_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_ResponsabilidadIVA_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_ResponsabilidadIVA_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_ResponsabilidadIVA_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion, 
           ingresos
    FROM PER_ResponsabilidadIVA
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion

/****** Object: Procedure [PER_TipoDeDocumento_SEL_pK]   Script Date: 07 Jul 2021 01:39:50:220 ******/
--region PER_TipoDeDocumento_SEL_pK
USE [Club];
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
BEGIN
  DROP PROCEDURE [dbo].[PER_TipoDeDocumento_SEL_pK];
END
GO
SET ANSI_NULLS ON; 
GO
SET QUOTED_IDENTIFIER ON;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PER_TipoDeDocumento_SEL_pK]') AND type IN (N'P', N'RF', N'PC'))
EXEC [sys].[sp_executesql] @statement = N'-- =============================================
-- Author:  <Matías.Peronetto>
-- Create date: <07/07/2021>
-- =============================================
CREATE PROCEDURE [dbo].[PER_TipoDeDocumento_SEL_pK]
  @ID int = 0 AS
  BEGIN
    SET  NOCOUNT ON;
    SELECT ID, 
           descripcion
    FROM PER_TipoDeDocumento
    WHERE (@ID = 0 OR @ID = ID)
END'; 
GO
--endregion
