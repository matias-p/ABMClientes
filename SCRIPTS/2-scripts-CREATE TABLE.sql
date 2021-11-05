
CREATE TABLE CLI_ActividadLaboral
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	codigoAFIP           integer  NOT NULL ,
	categoria            varchar(255)  NOT NULL 
)
go



ALTER TABLE CLI_ActividadLaboral
	ADD CONSTRAINT XPKCLI_ActividadLaboral PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_EstadoCivil
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CLI_EstadoCivil
	ADD CONSTRAINT XPKCLI_EstadoCivil PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_GrupoCliente
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CLI_GrupoCliente
	ADD CONSTRAINT XPKCLI_GrupoCliente PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_HistorialLaboral
( 
	GN_Cliente_ID        int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CLI_TipoActividadLaboral_ID int  NOT NULL ,
	CLI_ActividadLaboral_ID int  NOT NULL ,
	inicioActividad      datetime  NOT NULL ,
	ingresos             money  NOT NULL ,
	diaCobro             integer  NOT NULL ,
	observaciones        varchar(255)  NOT NULL ,
	CLI_Puesto_ID        int  NOT NULL ,
	finActividad         datetime  NOT NULL 
)
go



ALTER TABLE CLI_HistorialLaboral
	ADD CONSTRAINT XPKCLI_HistorialLaboral PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_Puesto
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CLI_Puesto
	ADD CONSTRAINT XPKCLI_Puesto PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_SubGrupoCliente
( 
	CLI_GrupoCliente_ID  int  NOT NULL ,
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CLI_SubGrupoCliente
	ADD CONSTRAINT XPKCLI_SubGrupoCliente PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CLI_TipoActividadLaboral
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	pasivo               bit  NOT NULL 
)
go



ALTER TABLE CLI_TipoActividadLaboral
	ADD CONSTRAINT XPKCLI_TipoActividadLaboral PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Cliente
( 
	limiteCredito        money  NOT NULL ,
	nroIIBB              varchar(13)  NOT NULL ,
	aptoCredito          bit  NOT NULL ,
	fechaNacimiento      datetime  NOT NULL ,
	CLI_SubGrupoCliente_ID integer  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CLI_EstadoCivil_ID   integer  NOT NULL ,
	GN_Nacionalidad_ID   int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	comentario           varchar(8000)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE GN_Cliente
	ADD CONSTRAINT XPKGN_Cliente PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Localidad
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	GN_Provincia_ID      integer  NOT NULL ,
	cod_postal           integer  NOT NULL ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_Localidad
	ADD CONSTRAINT XPKGN_Localidad PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Nacionalidad
( 
	ID                   int IDENTITY ( 1,1 ) ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_Nacionalidad
	ADD CONSTRAINT XPKGN_Nacionalidad PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Persona
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	apellido             varchar(50)  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	PER_ResponsabilidadIVA_ID int  NOT NULL ,
	PER_TipoDeDocumento_ID int  NOT NULL ,
	numeroDocumento      bigint  NOT NULL ,
	tipoPersona          char  NOT NULL ,
	cuitCuil             bigint  NOT NULL ,
	sexo                 char  NOT NULL ,
	telefonoCelular1     varchar(20)  NOT NULL ,
	telefonoCelular2     varchar(20)  NOT NULL ,
	telefonoFijo         varchar(20)  NOT NULL ,
	email                varchar(40)  NOT NULL ,
	domicilio            varchar(100)  NOT NULL ,
	GN_Localidad_ID      integer  NOT NULL 
)
go



ALTER TABLE GN_Persona
	ADD CONSTRAINT XPKGN_Persona PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Provincia
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_Provincia
	ADD CONSTRAINT XPKGN_Provincia PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE PER_ResponsabilidadIVA
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	ingresos             money  NOT NULL 
)
go



ALTER TABLE PER_ResponsabilidadIVA
	ADD CONSTRAINT XPKPER_ResponsabilidadIVA PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE PER_TipoDeDocumento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE PER_TipoDeDocumento
	ADD CONSTRAINT XPKPER_TipoDeDocumento PRIMARY KEY  CLUSTERED (ID ASC)
go




ALTER TABLE CLI_HistorialLaboral
	ADD CONSTRAINT FK_CLI_TipoActividadLaboral_CLI_HistorialLaboral FOREIGN KEY (CLI_TipoActividadLaboral_ID) REFERENCES CLI_TipoActividadLaboral(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CLI_HistorialLaboral
	ADD CONSTRAINT FK_CLI_ActividadLaboral_CLI_HistorialLaboral FOREIGN KEY (CLI_ActividadLaboral_ID) REFERENCES CLI_ActividadLaboral(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CLI_HistorialLaboral
	ADD CONSTRAINT FK_CLI_Puesto_CLI_HistorialLaboral FOREIGN KEY (CLI_Puesto_ID) REFERENCES CLI_Puesto(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CLI_HistorialLaboral
	ADD CONSTRAINT FK_GN_Cliente_CLI_HistorialLaboral FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CLI_SubGrupoCliente
	ADD CONSTRAINT FK_CLI_GrupoCliente_CLI_SubGrupoCliente FOREIGN KEY (CLI_GrupoCliente_ID) REFERENCES CLI_GrupoCliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Cliente
	ADD CONSTRAINT FK_CLI_SubGrupoCliente_GN_Cliente FOREIGN KEY (CLI_SubGrupoCliente_ID) REFERENCES CLI_SubGrupoCliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Cliente
	ADD CONSTRAINT FK_CLI_EstadoCivil_GN_Cliente FOREIGN KEY (CLI_EstadoCivil_ID) REFERENCES CLI_EstadoCivil(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Cliente
	ADD CONSTRAINT FK_GN_Nacionalidad_GN_Cliente FOREIGN KEY (GN_Nacionalidad_ID) REFERENCES GN_Nacionalidad(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Cliente
	ADD CONSTRAINT FK_GN_Persona_GN_Cliente FOREIGN KEY (ID) REFERENCES GN_Persona(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Localidad
	ADD CONSTRAINT FK_GN_Provincia_GN_Localidad FOREIGN KEY (GN_Provincia_ID) REFERENCES GN_Provincia(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Persona
	ADD CONSTRAINT FK_PER_ResponsabilidadIVA_GN_Persona FOREIGN KEY (PER_ResponsabilidadIVA_ID) REFERENCES PER_ResponsabilidadIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Persona
	ADD CONSTRAINT FK_PER_TipoDeDocumento_GN_Persona FOREIGN KEY (PER_TipoDeDocumento_ID) REFERENCES PER_TipoDeDocumento(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Persona
	ADD CONSTRAINT FK_GN_Localidad_GN_Persona FOREIGN KEY (GN_Localidad_ID) REFERENCES GN_Localidad(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


