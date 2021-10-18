
CREATE TABLE ART_Categoria
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE ART_Categoria
	ADD CONSTRAINT XPKART_Categoria PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE ART_ImpuestoInterno
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	porcentaje           decimal(6,2)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE ART_ImpuestoInterno
	ADD CONSTRAINT XPKART_ImpuestoInterno PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE ART_SubCategoria
( 
	ART_Categoria_ID     integer  NOT NULL ,
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE ART_SubCategoria
	ADD CONSTRAINT XPKART_SubCategoria PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE ART_TipoDeServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE ART_TipoDeServicio
	ADD CONSTRAINT XPKART_TipoDeServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_Apertura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Terminal_ID     int  NOT NULL ,
	numeradorTerminal    bigint  NOT NULL ,
	saldoInicial         money  NOT NULL ,
	fechaCierre          datetime  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CAJA_Apertura
	ADD CONSTRAINT PK_CAJA_Apertura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_Arqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CAJA_Arqueo
	ADD CONSTRAINT PK_CAJA_Arqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_BoletaDeDepositoInternaPorCierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_Cierre_ID       int  NOT NULL ,
	CMP_BoletaDeDepositoInterna_ID int  NOT NULL 
)
go



ALTER TABLE CAJA_BoletaDeDepositoInternaPorCierre
	ADD CONSTRAINT PK_CAJA_BoletaDeDepositoInternaPorCierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ChequePorCierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_Cierre_ID       int  NOT NULL ,
	CMP_Cheque_ID        int  NOT NULL ,
	CMP_EstadoCheque_ID  int  NOT NULL 
)
go



ALTER TABLE CAJA_ChequePorCierre
	ADD CONSTRAINT PK_CAJA_ChequePorCierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_Cierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Arqueo_ID       int  NOT NULL ,
	CAJA_EstadoDeCierre_ID int  NOT NULL ,
	saldoFinal           money  NOT NULL ,
	totalValores         money  NOT NULL ,
	cambio               money  NOT NULL ,
	diferenciaDeCambio   money  NOT NULL ,
	saldoInicialProximaApertura money  NOT NULL ,
	guardaItemsCierre    bit  NOT NULL ,
	definitivo           bit  NOT NULL ,
	redondeoBoletaDeDeposito money  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CAJA_Cierre
	ADD CONSTRAINT PK_CAJA_Cierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ConceptoDeTipoMovimiento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_TipoMovimiento_ID int  NOT NULL ,
	concepto             varchar(100)  NOT NULL ,
	GN_MedioDePago_ID    int  NOT NULL 
)
go



ALTER TABLE CAJA_ConceptoDeTipoMovimiento
	ADD CONSTRAINT PK_CAJA_ConceptoDeTipoMovimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_DeclaracionArqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Arqueo_ID       int  NOT NULL ,
	totalDeclarado       money  NOT NULL ,
	diferencia           bit  NOT NULL ,
	motivoDiferencia     varchar(300)  NOT NULL 
)
go



ALTER TABLE CAJA_DeclaracionArqueo
	ADD CONSTRAINT PK_CAJA_DeclaracionArqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_EstadoDeCierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CAJA_EstadoDeCierre
	ADD CONSTRAINT PK_CAJA_EstadoDeCierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_EstadoDiferenciaCaja
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CAJA_EstadoDiferenciaCaja
	ADD CONSTRAINT PK_CAJA_EstadoDiferenciaCaja PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_GrupoPorItemResumenArqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	orden                int  NOT NULL 
)
go



ALTER TABLE CAJA_GrupoPorItemResumenArqueo
	ADD CONSTRAINT PK_CAJA_GrupoPorItemResumenArqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemCierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	detalle              varchar(100)  NOT NULL ,
	orden                int  NOT NULL ,
	CAJA_TipoTerminal_ID int  NOT NULL ,
	seImprime            bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_ItemCierre
	ADD CONSTRAINT PK_CAJA_ItemCierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemCierrePorCierre
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_Cierre_ID       int  NOT NULL ,
	CAJA_ItemCierre_ID   int  NOT NULL ,
	montoItem            money  NOT NULL 
)
go



ALTER TABLE CAJA_ItemCierrePorCierre
	ADD CONSTRAINT PK_CAJA_ItemCierrePorCierre PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemDeclaracionArqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	soloCajaPrincipal    bit  NOT NULL ,
	tieneValorNominal    bit  NOT NULL ,
	orden                smallint  NOT NULL ,
	sumaTotalDeclarado   bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_ItemDeclaracionArqueo
	ADD CONSTRAINT PK_CAJA_ItemDeclaracionArqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemDeclaracionArqueoPorDeclaracion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_DeclaracionArqueo_ID int  NOT NULL ,
	CAJA_ItemDeclaracionArqueo_ID int  NOT NULL ,
	totalItemDeclarado   money  NOT NULL 
)
go



ALTER TABLE CAJA_ItemDeclaracionArqueoPorDeclaracion
	ADD CONSTRAINT PK_CAJA_ItemDeclaracionArqueoPorDeclaracion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemResumenArqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	CAJA_GrupoPorItemResumenArqueo_ID int  NOT NULL ,
	soloCajaPrincipal    bit  NOT NULL ,
	orden                smallint  NOT NULL ,
	generaAsientoDiferencia bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_ItemResumenArqueo
	ADD CONSTRAINT PK_CAJA_ItemResumenArqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ItemResumenArqueoPorResumen
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_ResumenArqueo_ID int  NOT NULL ,
	CAJA_ItemResumenArqueo_ID int  NOT NULL ,
	totalItemDeclaradoResumen money  NOT NULL ,
	totalItemSistemaResumen money  NOT NULL ,
	totalItemDiferenciaResumen money  NOT NULL 
)
go



ALTER TABLE CAJA_ItemResumenArqueoPorResumen
	ADD CONSTRAINT PK_CAJA_ItemResumenArqueoPorResumen PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_NumeradorPorTerminal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_Terminal_ID     int  NOT NULL ,
	numerador            bigint  NOT NULL ,
	terminalAbierta      bit  NOT NULL 
)
go



ALTER TABLE CAJA_NumeradorPorTerminal
	ADD CONSTRAINT PK_CAJA_NumeradorPorTerminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_PuntoDeVentaPorTerminal
( 
	ID                   int IDENTITY ,
	fechaAlta            datetime  NOT NULL ,
	baja                 bit  NOT NULL ,
	CAJA_Terminal_ID     int  NOT NULL ,
	CF_PuntoDeVenta_ID   int  NOT NULL 
)
go



ALTER TABLE CAJA_PuntoDeVentaPorTerminal
	ADD CONSTRAINT XPKCAJA_PuntoDeVentaPorTerminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_ResumenArqueo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Arqueo_ID       int  NOT NULL ,
	totalDeclarado       money  NOT NULL ,
	totalSistema         money  NOT NULL ,
	diferenciadeCajaFinal money  NOT NULL ,
	observacion          varchar(512)  NOT NULL 
)
go



ALTER TABLE CAJA_ResumenArqueo
	ADD CONSTRAINT PK_CAJA_ResumenArqueo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_RolPorTipoTerminal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_TipoTerminal_ID int  NOT NULL ,
	baja                 bit  NOT NULL ,
	SEG_Rol_ID           int  NOT NULL 
)
go



ALTER TABLE CAJA_RolPorTipoTerminal
	ADD CONSTRAINT PK_CAJA_RolPorTipoTerminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_Terminal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	numeroTerminal       smallint  NOT NULL ,
	CAJA_TipoTerminal_ID int  NOT NULL ,
	saldoInicialSugerido money  NOT NULL ,
	modoDeFacturacion    char  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_Terminal
	ADD CONSTRAINT PK_CAJA_Terminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_TipoMovimiento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	tipoMovimiento       varchar(100)  NOT NULL ,
	registracionContable bit  NOT NULL ,
	clasificacion        smallint  NOT NULL ,
	requiereConfirmacion bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_TipoMovimiento
	ADD CONSTRAINT PK_CAJA_TipoMovimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_TipoMovimientoPorTipoTerminal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CAJA_TipoMovimiento_ID int  NOT NULL ,
	CAJA_TipoTerminal_ID int  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CAJA_TipoMovimientoPorTipoTerminal
	ADD CONSTRAINT PK_CAJA_TipoMovimientoPorTipoTerminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CAJA_TipoTerminal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	siempreGuardaCambio  bit  NOT NULL ,
	permiteFondoFijo     bit  NOT NULL 
)
go



ALTER TABLE CAJA_TipoTerminal
	ADD CONSTRAINT PK_CAJA_TipoTerminal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CF_NumeradoresPorPuntoDeVenta
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CF_PuntoDeVenta_ID   int  NOT NULL ,
	proximoComprobanteFiscalA bigint  NOT NULL ,
	proximoComprobanteFiscalB bigint  NOT NULL ,
	proximoNotaDeCreditoA bigint  NOT NULL ,
	proximoNotaDeCreditoBC bigint  NOT NULL ,
	proximoNotaDeDebitoA bigint  NOT NULL ,
	proximoNotaDeDebitoBC bigint  NOT NULL ,
	proximoNDI           bigint  NOT NULL ,
	proximoNCI           bigint  NOT NULL 
)
go



ALTER TABLE CF_NumeradoresPorPuntoDeVenta
	ADD CONSTRAINT XPKCF_NumeradoresPorPuntoDeVenta PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CF_PuntoDeVenta
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	baja                 bit  NOT NULL ,
	prefijo              smallint  NOT NULL ,
	puerto               smallint  NOT NULL ,
	GN_ModeloFiscal_ID   int  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CF_PuntoDeVenta
	ADD CONSTRAINT XPKCF_PuntoDeVenta PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CHEQ_TipoCheque
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CHEQ_TipoCheque
	ADD CONSTRAINT XPKCHEQ_TipoCheque PRIMARY KEY  CLUSTERED (ID ASC)
go



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



CREATE TABLE CMP_AnulacionRecibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	numero               bigint  NOT NULL ,
	importe              money  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	CMP_Recibo_ID        int  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	CMP_ConceptoAnulacionRecibo_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	CMP_EstadoComprobanteFiscal_ID int  NOT NULL 
)
go



ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT XPKCMP_AnulacionRecibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_AnulacionReciboPorVencimiento
( 
	importe              money  NOT NULL ,
	CMP_AnulacionRecibo_ID int  NOT NULL ,
	CMP_Vencimiento_ID   int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION 
)
go



ALTER TABLE CMP_AnulacionReciboPorVencimiento
	ADD CONSTRAINT XPKCMP_AnulacionReciboPorVencimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_BoletaDeDepositoBancaria
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	numero               int  NOT NULL ,
	importe              money  NOT NULL ,
	GN_Banco_ID          int  NOT NULL ,
	CMP_BoletaDeDepositoInterna_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	CMP_EstadoBoletaDeDepositoBancaria_ID int  NOT NULL 
)
go



ALTER TABLE CMP_BoletaDeDepositoBancaria
	ADD CONSTRAINT PK_CMP_BoletaDeDepositoBancaria PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_BoletaDeDepositoInterna
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	numero               bigint  NOT NULL ,
	CAJA_ConceptoDeTipoMovimiento_ID int  NOT NULL ,
	importe              money  NOT NULL ,
	CMP_EstadoBoletaDeDeposito_ID int  NOT NULL ,
	observacion          varchar(100)  NOT NULL 
)
go



ALTER TABLE CMP_BoletaDeDepositoInterna
	ADD CONSTRAINT PK_CMP_BoletaDeDepositoInterna PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_Cheque
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	GN_BancoSucursal_ID  int  NOT NULL ,
	numero               bigint  NOT NULL ,
	importe              money  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	fechaCobro           datetime  NOT NULL ,
	CUIT                 bigint  NOT NULL ,
	propio               bit  NOT NULL ,
	cantidadEndosos      smallint  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	titular              varchar(100)  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CMP_EstadoCheque_ID  int  NOT NULL ,
	CHEQ_TipoCheque_ID   int  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL 
)
go



ALTER TABLE CMP_Cheque
	ADD CONSTRAINT XPKCMP_Cheque PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ChequePorBoletaDeDepositoInterna
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_BoletaDeDepositoInterna_ID int  NOT NULL ,
	CMP_Cheque_ID        int  NOT NULL 
)
go



ALTER TABLE CMP_ChequePorBoletaDeDepositoInterna
	ADD CONSTRAINT PK_CMP_ChequePorBoletaDeDepositoInterna PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ChequePorDiferenciaCaja
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_DiferenciaCaja_ID int  NOT NULL ,
	CMP_Cheque_ID        int  NOT NULL 
)
go



ALTER TABLE CMP_ChequePorDiferenciaCaja
	ADD CONSTRAINT PK_CMP_ChequePorDiferenciaCaja PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ChequePorRecibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_Recibo_ID        int  NOT NULL ,
	CMP_Cheque_ID        int  NOT NULL 
)
go



ALTER TABLE CMP_ChequePorRecibo
	ADD CONSTRAINT XPKCMP_ChequePorRecibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ConceptoAnulacionRecibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CMP_ConceptoAnulacionRecibo
	ADD CONSTRAINT XPKCMP_ConceptoAnulacionRecibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ConceptoNotaDeCredito
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	concepto             varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL ,
	descuento            bigint  NOT NULL 
)
go



ALTER TABLE CMP_ConceptoNotaDeCredito
	ADD CONSTRAINT XPKCMP_ConceptoNotaDeCredito PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_CondicionDeVentaPorAnulacionRecibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	importe              money  NOT NULL ,
	importeDevueltoEnPesos money  NOT NULL ,
	CMP_AnulacionRecibo_ID int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL 
)
go



ALTER TABLE CMP_CondicionDeVentaPorAnulacionRecibo
	ADD CONSTRAINT XPKCMP_CondicionDeVentaPorAnulacionRecibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_CondicionDeVentaPorFactura
( 
	ID                   int IDENTITY ,
	CMP_Factura_ID       int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL ,
	importe              money  NOT NULL ,
	cantidadCuotas       bigint  NOT NULL ,
	interes              money  NOT NULL ,
	vuelto               money  NOT NULL 
)
go



ALTER TABLE CMP_CondicionDeVentaPorFactura
	ADD CONSTRAINT XPKCMP_CondicionDeVentaPorFactura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_CondicionDeVentaPorRecibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	importe              money  NOT NULL ,
	vuelto               money  NOT NULL ,
	CMP_Recibo_ID        int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL 
)
go



ALTER TABLE CMP_CondicionDeVentaPorRecibo
	ADD CONSTRAINT XPKCMP_CondicionDeVentaPorRecibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_DiferenciaCaja
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	CAJA_ItemResumenArqueo_ID int  NOT NULL ,
	importe              money  NOT NULL ,
	CAJA_EstadoDiferenciaCaja_ID int  NOT NULL ,
	comentario           varchar(200)  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	tipoDiferencia       char  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	GN_MedioDePago_ID    int  NOT NULL 
)
go



ALTER TABLE CMP_DiferenciaCaja
	ADD CONSTRAINT PK_CMP_DiferenciaCaja PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_EstadoBoletaDeDeposito
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CMP_EstadoBoletaDeDeposito
	ADD CONSTRAINT PK_CMP_EstadoBoletaDeDeposito PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_EstadoBoletaDeDepositoBancaria
( 
	descripcion          varchar(50)  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION 
)
go



ALTER TABLE CMP_EstadoBoletaDeDepositoBancaria
	ADD CONSTRAINT PK_CMP_EstadoBoletaDeDepositoBancaria PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_EstadoCheque
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	orden                smallint  NOT NULL ,
	poseeComprobanteAsociado bit  NOT NULL ,
	comprobanteAsociado  varchar(200)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CMP_EstadoCheque
	ADD CONSTRAINT XPKCMP_EstadoCheque PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_EstadoComprobanteFiscal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CMP_EstadoComprobanteFiscal
	ADD CONSTRAINT XPKCMP_EstadoComprobanteFiscal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_EstadoPorTipoComprobante
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CMP_EstadoPorTipoComprobante
	ADD CONSTRAINT XPKCMP_EstadoPorTipoComprobante PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_Factura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	letra                char(1)  NOT NULL ,
	numero               bigint  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	montoTotal           money  NOT NULL ,
	estaCancelada        bit  NOT NULL ,
	cuentaCorriente      bit  NOT NULL ,
	importeIVA           money  NOT NULL ,
	montoNoFiscal        money  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	CMP_EstadoComprobanteFiscal_ID int  NOT NULL ,
	PER_ResponsabilidadIVA_ID int  NOT NULL ,
	CMP_SubtipoPorTipo_ID int  NOT NULL 
)
go



ALTER TABLE CMP_Factura
	ADD CONSTRAINT XPKCMP_Factura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_FacturaPorCotizacion
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_Factura_ID       int  NOT NULL ,
	COT_Cotizacion_ID    int  NOT NULL ,
	CMP_TipoRelacionFacturaCotizacion_ID integer  NOT NULL 
)
go



ALTER TABLE CMP_FacturaPorCotizacion
	ADD CONSTRAINT XPKCMP_FacturaPorCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_FacturaProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	letra                char(1)  NOT NULL ,
	numero               bigint  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	montoTotal           money  NOT NULL ,
	estaCancelada        bit  NOT NULL ,
	cuentaCorriente      bit  NOT NULL ,
	importeIVA           money  NOT NULL ,
	montoNoFiscal        money  NOT NULL ,
	GN_Proveedor_ID      int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	PER_ResponsabilidadIVA_ID int  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	CMP_EstadoPorTipoComprobante_ID int  NOT NULL 
)
go



ALTER TABLE CMP_FacturaProveedor
	ADD CONSTRAINT XPKCMP_FacturaProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_HistorialCheque
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	importe              money  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	fechaCobro           datetime  NOT NULL ,
	CUIT                 bigint  NOT NULL ,
	propio               bit  NOT NULL ,
	cantidadEndosos      smallint  NOT NULL ,
	fechaBaja            datetime  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL ,
	CMP_Cheque_ID        int  NOT NULL ,
	GN_BancoSucursal_ID  int  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CMP_EstadoCheque_ID  int  NOT NULL ,
	CHEQ_TipoCheque_ID   int  NOT NULL ,
	numero               bigint  NOT NULL ,
	titular              varchar(100)  NOT NULL 
)
go



ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT PK_CMP_HistorialCheque PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFactura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	cantidad             smallint  NOT NULL ,
	precioNeto           money  NOT NULL ,
	precioDeLista        money  NOT NULL ,
	precioTotal          money  NOT NULL ,
	impuestoInterno      money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	montoNoFiscal        money  NOT NULL ,
	CMP_Factura_ID       int  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFactura
	ADD CONSTRAINT XPKCMP_ItemFactura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaPorArticulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	GN_Articulo_ID       int  NOT NULL ,
	CMP_ItemFactura_ID   int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaPorArticulo
	ADD CONSTRAINT XPKCMP_ItemFacturaPorArticulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaPorItemCotizacion
( 
	COT_ItemCotizacion_ID int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemFactura_ID   int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaPorItemCotizacion
	ADD CONSTRAINT XPKCMP_ItemFacturaPorItemCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaPorServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemFactura_ID   int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaPorServicio
	ADD CONSTRAINT XPKCMP_ItemFacturaPorServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	cantidad             smallint  NOT NULL ,
	precioNeto           money  NOT NULL ,
	precioDeLista        money  NOT NULL ,
	precioTotal          money  NOT NULL ,
	impuestoInterno      money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	montoNoFiscal        money  NOT NULL ,
	GN_TasaIVA_ID        int  NULL ,
	COT_ItemCotizacion_ID int  NULL ,
	CMP_FacturaProveedor_ID int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaProveedor
	ADD CONSTRAINT XPKCMP_ItemFacturaProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaProveedorPorArticulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemFacturaProveedor_ID int  NOT NULL ,
	GN_Articulo_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaProveedorPorArticulo
	ADD CONSTRAINT XPKCMP_ItemFacturaProveedorPorArticulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemFacturaProveedorPorServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemFacturaProveedor_ID int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemFacturaProveedorPorServicio
	ADD CONSTRAINT XPKCMP_ItemFacturaProveedorPorServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemNotaDeCredito
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	cantidad             smallint  NOT NULL ,
	montoCredito         money  NOT NULL ,
	impuestoInterno      money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	montoNoFiscal        money  NOT NULL ,
	CMP_NotaDeCredito_ID int  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL 
)
go



ALTER TABLE CMP_ItemNotaDeCredito
	ADD CONSTRAINT XPKCMP_ItemNotaDeCredito PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemNotaDeCreditoPorArticulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemNotaDeCredito_ID int  NOT NULL ,
	GN_Articulo_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemNotaDeCreditoPorArticulo
	ADD CONSTRAINT XPKCMP_ItemNotaDeCreditoPorArticulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemNotaDeCreditoPorItemFactura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemNotaDeCredito_ID int  NOT NULL ,
	CMP_ItemFactura_ID   int  NOT NULL 
)
go



ALTER TABLE CMP_ItemNotaDeCreditoPorItemFactura
	ADD CONSTRAINT XPKCMP_ItemNotaDeCreditoPorItemFactura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemNotaDeCreditoPorServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemNotaDeCredito_ID int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemNotaDeCreditoPorServicio
	ADD CONSTRAINT XPKCMP_ItemNotaDeCreditoPorServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemOrdenDeCompra
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	cantidad             smallint  NOT NULL ,
	precioNeto           money  NOT NULL ,
	precioTotal          money  NOT NULL ,
	precioLista          money  NOT NULL ,
	impuestoInterno      money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	GN_TasaIVA_ID        char(18)  NULL ,
	CMP_OrdenDeCompra_ID integer  NOT NULL 
)
go



ALTER TABLE CMP_ItemOrdenDeCompra
	ADD CONSTRAINT XPKCMP_ItemOrdenDeCompra PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemOrdenDeCompraPorArticulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemOrdenDeCompra_ID int  NOT NULL ,
	GN_Articulo_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemOrdenDeCompraPorArticulo
	ADD CONSTRAINT XPKCMP_ItemOrdenDeCompraPorArticulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ItemOrdenDeCompraPorServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_ItemOrdenDeCompra_ID int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_ItemOrdenDeCompraPorServicio
	ADD CONSTRAINT XPKCMP_ItemOrdenDeCompraPorServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_NotaDeCredito
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	letra                char(1)  NOT NULL ,
	numero               bigint  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	montoTotal           money  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	estaCancelada        bit  NOT NULL ,
	importeIVA           money  NOT NULL ,
	diasVigencia         smallint  NOT NULL ,
	saldoPendienteDeAplicacion money  NOT NULL ,
	porcentajeCredito    decimal(5,2)  NOT NULL ,
	importeDevueltoNoFiscal money  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	CMP_EstadoComprobanteFiscal_ID int  NOT NULL ,
	CMP_SubtipoPorTipo_ID int  NOT NULL ,
	CMP_ConceptoNotaDeCredito_ID int  NOT NULL ,
	PER_ResponsabilidadIVA_ID int  NOT NULL 
)
go



ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT XPKCMP_NotaDeCredito PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_NotaDeCreditoPorFactura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	importe              money  NOT NULL ,
	CMP_NotaDeCredito_ID int  NOT NULL ,
	CMP_Factura_ID       int  NOT NULL 
)
go



ALTER TABLE CMP_NotaDeCreditoPorFactura
	ADD CONSTRAINT XPKCMP_NotaDeCreditoPorFactura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_NotaDeCreditoPorVencimiento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	importe              money  NOT NULL ,
	terminaDeSaldarVencimiento bit  NOT NULL ,
	CMP_NotaDeCredito_ID int  NOT NULL ,
	CMP_Vencimiento_ID   int  NOT NULL 
)
go



ALTER TABLE CMP_NotaDeCreditoPorVencimiento
	ADD CONSTRAINT XPKCMP_NotaDeCreditoPorVencimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_OrdenDeCompra
( 
	GN_Proveedor_ID      int  NOT NULL ,
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	montoTotal           money  NOT NULL ,
	diasDeVigencia       smallint  NOT NULL ,
	totalPrecioLista     money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	CMP_EstadoPorTipoComprobante_ID int  NOT NULL 
)
go



ALTER TABLE CMP_OrdenDeCompra
	ADD CONSTRAINT XPKCMP_OrdenDeCompra PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_OrdenDePagoPorVencimientoProveedor
( 
	CMP_VencimientoProveedor_ID int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_OrdenDePagoProveedor_ID int  NOT NULL ,
	importe              money  NOT NULL ,
	terminaDeSaldarVencimiento bit  NOT NULL 
)
go



ALTER TABLE CMP_OrdenDePagoPorVencimientoProveedor
	ADD CONSTRAINT XPKCMP_OrdenDePagoPorVencimientoProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_OrdenDePagoProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	numero               bigint  NOT NULL ,
	GN_Proveedor_ID      int  NOT NULL ,
	importe              money  NOT NULL ,
	fechaEmision         datetime  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	CMP_EstadoPorTipoComprobante_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CMP_OrdenDePagoProveedor
	ADD CONSTRAINT XPKCMP_OrdenDePagoProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_Recibo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	numero               bigint  NOT NULL ,
	importe              money  NOT NULL ,
	estaCancelada        bit  NOT NULL ,
	reciboVirtual        bit  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	anulado              bit  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	CMP_EstadoComprobanteFiscal_ID int  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL 
)
go



ALTER TABLE CMP_Recibo
	ADD CONSTRAINT XPKCMP_Recibo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ReciboPorVencimiento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	importe              money  NOT NULL ,
	terminaDeSaldarVencimiento bit  NOT NULL ,
	CMP_Recibo_ID        int  NOT NULL ,
	CMP_Vencimiento_ID   int  NOT NULL 
)
go



ALTER TABLE CMP_ReciboPorVencimiento
	ADD CONSTRAINT XPKCMP_ReciboPorVencimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_ReciboProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	numero               bigint  NOT NULL ,
	importe              money  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	anulado              bit  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	GN_Proveedor_ID      int  NOT NULL ,
	CMP_OrdenDePagoProveedor_ID int  NOT NULL ,
	CMP_TipoComprobante_ID int  NOT NULL 
)
go



ALTER TABLE CMP_ReciboProveedor
	ADD CONSTRAINT XPKCMP_ReciboProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_SubtipoPorTipo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_TipoComprobante_ID int  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	imprime              bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE CMP_SubtipoPorTipo
	ADD CONSTRAINT XPKCMP_SubtipoPorTipo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_TipoComprobante
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	tipo                 char(8)  NOT NULL ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CMP_TipoComprobante
	ADD CONSTRAINT XPKCMP_TipoComprobante PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_TipoRelacionFacturaCotizacion
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE CMP_TipoRelacionFacturaCotizacion
	ADD CONSTRAINT XPKCMP_TipoRelacionFacturaCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_Vencimiento
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaVencimiento     datetime  NOT NULL ,
	importe              money  NOT NULL ,
	cancelada            bit  NOT NULL ,
	fechaCancelacion     datetime  NOT NULL ,
	cuota                int  NOT NULL ,
	fechaAlta            datetime  NOT NULL 
)
go



ALTER TABLE CMP_Vencimiento
	ADD CONSTRAINT XPKCMP_Vencimiento PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_VencimientoPorFactura
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_Vencimiento_ID   int  NOT NULL ,
	CMP_Factura_ID       int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL 
)
go



ALTER TABLE CMP_VencimientoPorFactura
	ADD CONSTRAINT XPKCMP_VencimientoPorFactura PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_VencimientoPorFacturaProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	CMP_FacturaProveedor_ID int  NOT NULL ,
	CMP_VencimientoProveedor_ID int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL 
)
go



ALTER TABLE CMP_VencimientoPorFacturaProveedor
	ADD CONSTRAINT XPKCMP_VencimientoPorFacturaProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE CMP_VencimientoProveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	vencimiento          datetime  NOT NULL ,
	importe              money  NOT NULL ,
	cancelada            bit  NOT NULL ,
	fechaCancelacion     datetime  NOT NULL ,
	cuota                int  NOT NULL 
)
go



ALTER TABLE CMP_VencimientoProveedor
	ADD CONSTRAINT XPKCMP_VencimientoProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_Cotizacion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaEmision         datetime  NOT NULL ,
	montoTotal           money  NOT NULL ,
	diasDeVigencia       smallint  NOT NULL ,
	totalPrecioLista     money  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	importeIVA           money  NOT NULL ,
	observacion          varchar(250)  NOT NULL ,
	COT_EstadoPorTipoCotizacion_ID int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL 
)
go



ALTER TABLE COT_Cotizacion
	ADD CONSTRAINT XPKCOT_Cotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_CotizacionPorCondicionDeVenta
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	montoAAplicar        money  NOT NULL ,
	importe              money  NOT NULL ,
	orden                smallint  NOT NULL ,
	restante             money  NOT NULL ,
	cantidadCuotas       smallint  NOT NULL ,
	interes              money  NOT NULL ,
	importeMonedaExtranjera money  NOT NULL ,
	esAnticipo           bit  NOT NULL ,
	COT_Cotizacion_ID    int  NOT NULL ,
	GN_CondicionDeVenta_ID int  NOT NULL 
)
go



ALTER TABLE COT_CotizacionPorCondicionDeVenta
	ADD CONSTRAINT XPKCOT_CotizacionPorCondicionDeVenta PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_CotizacionPorTasaIVA
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	monto                money  NOT NULL ,
	noGravado            money  NOT NULL ,
	COT_Cotizacion_ID    int  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL 
)
go



ALTER TABLE COT_CotizacionPorTasaIVA
	ADD CONSTRAINT XPKCOT_CotizacionPorTasaIVA PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_EstadoPorTipoCotizacion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	COT_TipoCotizacion_ID int  NOT NULL ,
	puedeVencer          bit  NOT NULL 
)
go



ALTER TABLE COT_EstadoPorTipoCotizacion
	ADD CONSTRAINT XPKCOT_EstadoPorTipoCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_HistorialCotizacion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	fechaBaja            datetime  NOT NULL ,
	COT_Cotizacion_ID    int  NOT NULL ,
	COT_EstadoPorTipoCotizacion_ID int  NOT NULL ,
	GN_Cliente_ID        int  NOT NULL ,
	SEG_RolPorUsuario_ID int  NOT NULL ,
	diasDeVigencia       smallint  NOT NULL 
)
go



ALTER TABLE COT_HistorialCotizacion
	ADD CONSTRAINT XPKCOT_HistorialCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_ItemCotizacion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	cantidad             smallint  NOT NULL ,
	precioNeto           money  NOT NULL ,
	precioTotal          money  NOT NULL ,
	precioLista          money  NOT NULL ,
	impuestoInterno      money  NOT NULL ,
	importeIVA           money  NOT NULL ,
	COT_Cotizacion_ID    int  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL 
)
go



ALTER TABLE COT_ItemCotizacion
	ADD CONSTRAINT XPKCOT_ItemCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_ItemCotizacionPorArticulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	COT_ItemCotizacion_ID int  NOT NULL ,
	GN_Articulo_ID       int  NOT NULL 
)
go



ALTER TABLE COT_ItemCotizacionPorArticulo
	ADD CONSTRAINT XPKCOT_ItemCotizacionPorArticulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_ItemCotizacionPorServicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	COT_ItemCotizacion_ID int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL 
)
go



ALTER TABLE COT_ItemCotizacionPorServicio
	ADD CONSTRAINT XPKCOT_ItemCotizacionPorServicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE COT_TipoCotizacion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	letra                char  NOT NULL 
)
go



ALTER TABLE COT_TipoCotizacion
	ADD CONSTRAINT XPKCOT_TipoCotizacion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_EstadoVale
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE FF_EstadoVale
	ADD CONSTRAINT XPKFF_EstadoVale PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_ProveedorFondoFijo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	baja                 bit  NOT NULL ,
	nroIngresosBrutos    bigint  NOT NULL 
)
go



ALTER TABLE FF_ProveedorFondoFijo
	ADD CONSTRAINT XPKFF_ProveedorFondoFijo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_Rendicion
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	numero               bigint  NOT NULL ,
	importeTotal         money  NOT NULL 
)
go



ALTER TABLE FF_Rendicion
	ADD CONSTRAINT XPKFF_Rendicion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_TipoComprobanteFondoFijo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	poseeCAI             bit  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE FF_TipoComprobanteFondoFijo
	ADD CONSTRAINT XPKFF_TipoComprobanteFondoFijo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_ValeDeGastoARendir
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	fechaComprobante     datetime  NOT NULL ,
	numeroComprobante    bigint  NOT NULL ,
	letraComprobante     char  NOT NULL ,
	FF_ProveedorFondoFijo_ID int  NOT NULL ,
	CAJA_Apertura_ID     int  NOT NULL ,
	FF_TipoComprobanteFondoFijo_ID int  NOT NULL ,
	importeComprobante   money  NOT NULL ,
	observacion          varchar(200)  NOT NULL ,
	numeroCAI            char(14)  NOT NULL ,
	fechaVencimientoCAI  datetime  NOT NULL ,
	importeNeto          money  NOT NULL ,
	importeImpuestos     money  NOT NULL ,
	importeTotal         money  NOT NULL ,
	FF_EstadoVale_ID     int  NOT NULL ,
	fechaDePago          datetime  NOT NULL 
)
go



ALTER TABLE FF_ValeDeGastoARendir
	ADD CONSTRAINT XPKFF_ValeDeGastoARendir PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE FF_ValeDeGastoARendirPorRendicion
( 
	FF_Rendicion_ID      int  NOT NULL ,
	FF_ValeDeGastoARendir_ID int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION 
)
go



ALTER TABLE FF_ValeDeGastoARendirPorRendicion
	ADD CONSTRAINT XPKFF_ValeDeGastoARendirPorRendicion PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Articulo
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	costo                money  NOT NULL ,
	margen               decimal(15,2)  NOT NULL ,
	codigoDeBarras       char(18)  NOT NULL ,
	longitud             decimal(13,3)  NOT NULL ,
	ancho                decimal(13,3)  NOT NULL ,
	altura               decimal(13,3)  NOT NULL ,
	volumen              decimal(13,3)  NOT NULL ,
	pesoBruto            decimal(13,3)  NOT NULL ,
	precioLista          money  NOT NULL ,
	GN_Marca_ID          int  NOT NULL ,
	baja                 bit  NOT NULL ,
	ART_SubCategoria_ID  integer  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL ,
	GN_Proveedor_ID      int  NOT NULL ,
	ART_ImpuestoInterno_ID integer  NOT NULL 
)
go



ALTER TABLE GN_Articulo
	ADD CONSTRAINT XPKGN_Articulo PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Banco
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL ,
	diasVencimientoCheque smallint  NOT NULL ,
	cuentaCorriente      varchar(20)  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	codigo               integer  NOT NULL 
)
go



ALTER TABLE GN_Banco
	ADD CONSTRAINT XPKGN_Banco PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_BancoSucursal
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	GN_Banco_ID          int  NOT NULL ,
	codigoSucursal       integer  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE GN_BancoSucursal
	ADD CONSTRAINT XPKGN_BancoSucursal PRIMARY KEY  CLUSTERED (ID ASC)
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



CREATE TABLE GN_CondicionDeVenta
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	cuotasDesde          smallint  NOT NULL ,
	cuotasHasta          smallint  NOT NULL ,
	margenPreventa       decimal(5,2)  NOT NULL ,
	permitidoEnCobranza  bit  NOT NULL ,
	permitidoEnCotizacion bit  NOT NULL ,
	vigenciaDesde        datetime  NOT NULL ,
	vigenciaHasta        datetime  NOT NULL ,
	rangoVencimientoChequeDesde int  NOT NULL ,
	rangoVencimientoChequeHasta int  NOT NULL ,
	baja                 bit  NOT NULL ,
	GN_MedioDePago_ID    int  NOT NULL ,
	GN_Moneda_ID         int  NOT NULL ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_CondicionDeVenta
	ADD CONSTRAINT XPKGN_CondicionDeVenta PRIMARY KEY  CLUSTERED (ID ASC)
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



CREATE TABLE GN_Marca
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_Marca
	ADD CONSTRAINT XPKGN_Marca PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_MedioDePago
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	permiteCuotas        bit  NOT NULL ,
	habilitadoParaCobranza bit  NOT NULL ,
	habilitadoParaMovimientoCaja bit  NOT NULL ,
	exigeCancelacionEnFacturacion bit  NOT NULL ,
	ordenFacturacion     smallint  NOT NULL ,
	permiteCondicionDeVenta bit  NOT NULL ,
	permiteSubtipo       bit  NOT NULL ,
	permiteCotizacion    bit  NOT NULL ,
	permiteEntidad       bit  NOT NULL ,
	permiteIngresarCalculado bit  NOT NULL ,
	admiteDevolucionDeEfectivo bit  NOT NULL ,
	habilitadoServicioFlete bit  NOT NULL ,
	cuentaCorriente      bit  NOT NULL ,
	emiteRecibo          bit  NOT NULL ,
	emitePagare          bit  NOT NULL ,
	esOficial            bit  NOT NULL ,
	permiteVuelto        bit  NOT NULL ,
	permiteRepeticion    bit  NOT NULL ,
	naceCancelada        bit  NOT NULL ,
	baja                 bit  NOT NULL ,
	permiteDescuentos    bit  NOT NULL 
)
go



ALTER TABLE GN_MedioDePago
	ADD CONSTRAINT XPKGN_MedioDePago PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_ModeloFiscal
( 
	modelo               varchar(50)  NOT NULL ,
	velocidad            int  NOT NULL ,
	CodigoDeModelo       varchar(20)  NOT NULL ,
	ID                   int IDENTITY ,
	marca                varchar(50)  NOT NULL 
)
go



ALTER TABLE GN_ModeloFiscal
	ADD CONSTRAINT XPKGN_ModeloFiscal PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_Moneda
( 
	descripcion          varchar(50)  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	solicitaCotizacion   bit  NOT NULL 
)
go



ALTER TABLE GN_Moneda
	ADD CONSTRAINT XPKGN_Moneda PRIMARY KEY  CLUSTERED (ID ASC)
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



CREATE TABLE GN_Proveedor
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	nroIIBB              varchar(13)  NOT NULL ,
	comentario           varchar(8000)  NOT NULL ,
	baja                 bit  NOT NULL ,
	PROV_SubGrupoProveedor_ID integer  NOT NULL 
)
go



ALTER TABLE GN_Proveedor
	ADD CONSTRAINT XPKGN_Proveedor PRIMARY KEY  CLUSTERED (ID ASC)
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



CREATE TABLE GN_Servicio
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	fechaAlta            datetime  NOT NULL ,
	descripcion          varchar(50)  NOT NULL ,
	costo                money  NOT NULL ,
	margen               decimal(15,2)  NOT NULL ,
	baja                 bit  NOT NULL ,
	GN_TasaIVA_ID        int  NOT NULL ,
	ART_TipoDeServicio_ID int  NOT NULL 
)
go



ALTER TABLE GN_Servicio
	ADD CONSTRAINT XPKGN_Servicio PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_ServicioPorCliente
( 
	ID                   integer IDENTITY ,
	GN_Cliente_ID        int  NOT NULL ,
	GN_Servicio_ID       int  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	baja                 bit  NOT NULL ,
	fechaLimite          datetime  NOT NULL 
)
go



ALTER TABLE GN_ServicioPorCliente
	ADD CONSTRAINT XPKGN_ServicioPorCliente PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE GN_TasaIVA
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	porcentaje           decimal(6,2)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE GN_TasaIVA
	ADD CONSTRAINT XPKGN_TasaIVA PRIMARY KEY  CLUSTERED (ID ASC)
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



CREATE TABLE PROV_GrupoProveedor
( 
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE PROV_GrupoProveedor
	ADD CONSTRAINT XPKPROV_GrupoProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE PROV_SubGrupoProveedor
( 
	PROV_GrupoProveedor_ID integer  NOT NULL ,
	ID                   integer IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE PROV_SubGrupoProveedor
	ADD CONSTRAINT XPKPROV_SubGrupoProveedor PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_Permiso
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	rutaObjeto           varchar(2048)  NOT NULL ,
	baja                 bit  NOT NULL ,
	descripcion          varchar(50)  NOT NULL 
)
go



ALTER TABLE SEG_Permiso
	ADD CONSTRAINT XPKSEG_Permiso PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_PermisoPorRol
( 
	SEG_Permiso_ID       int  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	SEG_Rol_ID           int  NOT NULL 
)
go



ALTER TABLE SEG_PermisoPorRol
	ADD CONSTRAINT XPKSEG_PermisoPorRol PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_PermisoPorUsuario
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	SEG_Usuario_ID       int  NOT NULL ,
	SEG_Permiso_ID       int  NOT NULL 
)
go



ALTER TABLE SEG_PermisoPorUsuario
	ADD CONSTRAINT XPKSEG_PermisoPorUsuario PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_Rol
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	descripcion          varchar(50)  NOT NULL ,
	jerarquia            smallint  NOT NULL 
)
go



ALTER TABLE SEG_Rol
	ADD CONSTRAINT XPKSEG_Rol PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_RolPorUsuario
( 
	fechaAlta            datetime  NOT NULL ,
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	SEG_Usuario_ID       int  NOT NULL ,
	SEG_Rol_ID           int  NOT NULL ,
	baja                 bit  NOT NULL 
)
go



ALTER TABLE SEG_RolPorUsuario
	ADD CONSTRAINT XPKSEG_RolPorUsuario PRIMARY KEY  CLUSTERED (ID ASC)
go



CREATE TABLE SEG_Usuario
( 
	ID                   int IDENTITY ( 1,1 ) NOT FOR REPLICATION ,
	nombre               varchar(100)  NOT NULL ,
	fechaAlta            datetime  NOT NULL ,
	baja                 bit  NOT NULL ,
	email                varchar(50)  NOT NULL ,
	password             varchar(50)  NOT NULL 
)
go



ALTER TABLE SEG_Usuario
	ADD CONSTRAINT XPKSEG_Usuario PRIMARY KEY  CLUSTERED (ID ASC)
go




ALTER TABLE ART_SubCategoria
	ADD CONSTRAINT FK_ART_Categoria_ART_SubCategoria FOREIGN KEY (ART_Categoria_ID) REFERENCES ART_Categoria(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_Apertura WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Terminal_CAJA_Apertura FOREIGN KEY (CAJA_Terminal_ID) REFERENCES CAJA_Terminal(ID)
go




ALTER TABLE CAJA_Apertura
	ADD CONSTRAINT FK_SEG_RolPorUsuario_CAJA_Apertura FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_Arqueo WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Apertura_CAJA_Arqueo FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
go




ALTER TABLE CAJA_Arqueo
	ADD CONSTRAINT FK_SEG_RolPorUsuario_CAJA_Arqueo FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_BoletaDeDepositoInternaPorCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_BoletaDeDepositoInternaPorCierre_CAJA_Cierre FOREIGN KEY (CAJA_Cierre_ID) REFERENCES CAJA_Cierre(ID)
go




ALTER TABLE CAJA_BoletaDeDepositoInternaPorCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_BoletaDeDepositoInternaPorCierre_CMP_BoletaDeDepositoInterna FOREIGN KEY (CMP_BoletaDeDepositoInterna_ID) REFERENCES CMP_BoletaDeDepositoInterna(ID)
go




ALTER TABLE CAJA_ChequePorCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ChequePorCierre_CAJA_Cierre FOREIGN KEY (CAJA_Cierre_ID) REFERENCES CAJA_Cierre(ID)
go




ALTER TABLE CAJA_ChequePorCierre
	ADD CONSTRAINT FK_CMP_Cheque_CAJA_ChequePorCierre FOREIGN KEY (CMP_Cheque_ID) REFERENCES CMP_Cheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_ChequePorCierre
	ADD CONSTRAINT FK_CMP_EstadoCheque_CMP_ChequePorCierre FOREIGN KEY (CMP_EstadoCheque_ID) REFERENCES CMP_EstadoCheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_Cierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Cierre_CAJA_Arqueo FOREIGN KEY (CAJA_Arqueo_ID) REFERENCES CAJA_Arqueo(ID)
go




ALTER TABLE CAJA_Cierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Cierre_CAJA_EstadoDeCierre FOREIGN KEY (CAJA_EstadoDeCierre_ID) REFERENCES CAJA_EstadoDeCierre(ID)
go




ALTER TABLE CAJA_ConceptoDeTipoMovimiento WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ConceptoDeTipoMovimiento_CAJA_TipoMovimiento1 FOREIGN KEY (CAJA_TipoMovimiento_ID) REFERENCES CAJA_TipoMovimiento(ID)
go




ALTER TABLE CAJA_ConceptoDeTipoMovimiento
	ADD CONSTRAINT FK_GN_MedioDePago_CAJA_ConceptoDeTipoMovimiento FOREIGN KEY (GN_MedioDePago_ID) REFERENCES GN_MedioDePago(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_DeclaracionArqueo WITH CHECK 
	ADD CONSTRAINT FK_CAJA_DeclaracionArqueo_CAJA_Arqueo FOREIGN KEY (CAJA_Arqueo_ID) REFERENCES CAJA_Arqueo(ID)
go




ALTER TABLE CAJA_ItemCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemCierre_CAJA_TipoTerminal FOREIGN KEY (CAJA_TipoTerminal_ID) REFERENCES CAJA_TipoTerminal(ID)
go




ALTER TABLE CAJA_ItemCierrePorCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemCierrePorCierre_CAJA_Cierre FOREIGN KEY (CAJA_Cierre_ID) REFERENCES CAJA_Cierre(ID)
go




ALTER TABLE CAJA_ItemCierrePorCierre WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemCierrePorCierre_CAJA_ItemCierre FOREIGN KEY (CAJA_ItemCierre_ID) REFERENCES CAJA_ItemCierre(ID)
go




ALTER TABLE CAJA_ItemDeclaracionArqueoPorDeclaracion WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemDeclaracionArqueoPorDeclaracion_CAJA_DeclaracionArqueo FOREIGN KEY (CAJA_DeclaracionArqueo_ID) REFERENCES CAJA_DeclaracionArqueo(ID)
go




ALTER TABLE CAJA_ItemDeclaracionArqueoPorDeclaracion WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemDeclaracionArqueoPorDeclaracion_CAJA_ItemDeclaracionArqueo FOREIGN KEY (CAJA_ItemDeclaracionArqueo_ID) REFERENCES CAJA_ItemDeclaracionArqueo(ID)
go




ALTER TABLE CAJA_ItemResumenArqueo WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemResumenArqueo_CAJA_GrupoPorItemResumenArqueo FOREIGN KEY (CAJA_GrupoPorItemResumenArqueo_ID) REFERENCES CAJA_GrupoPorItemResumenArqueo(ID)
go




ALTER TABLE CAJA_ItemResumenArqueoPorResumen WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemResumenArqueoPorResumen_CAJA_ItemResumenArqueo FOREIGN KEY (CAJA_ItemResumenArqueo_ID) REFERENCES CAJA_ItemResumenArqueo(ID)
go




ALTER TABLE CAJA_ItemResumenArqueoPorResumen WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ItemResumenArqueoPorResumen_CAJA_ResumenArqueo FOREIGN KEY (CAJA_ResumenArqueo_ID) REFERENCES CAJA_ResumenArqueo(ID)
go




ALTER TABLE CAJA_NumeradorPorTerminal WITH CHECK 
	ADD CONSTRAINT FK_CAJA_NumeradorPorTerminal_CAJA_Terminal FOREIGN KEY (CAJA_Terminal_ID) REFERENCES CAJA_Terminal(ID)
go




ALTER TABLE CAJA_PuntoDeVentaPorTerminal
	ADD CONSTRAINT FK_CAJA_Terminal_CAJA_PuntoDeVentaPorTerminal FOREIGN KEY (CAJA_Terminal_ID) REFERENCES CAJA_Terminal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_PuntoDeVentaPorTerminal
	ADD CONSTRAINT FK_CF_PuntoDeVenta_CAJA_PuntoDeVentaPorTerminal FOREIGN KEY (CF_PuntoDeVenta_ID) REFERENCES CF_PuntoDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_ResumenArqueo WITH CHECK 
	ADD CONSTRAINT FK_CAJA_ResumenArqueo_CAJA_Arqueo FOREIGN KEY (CAJA_Arqueo_ID) REFERENCES CAJA_Arqueo(ID)
go




ALTER TABLE CAJA_RolPorTipoTerminal WITH CHECK 
	ADD CONSTRAINT FK_CAJA_RolPorTipoTerminal_CAJA_TipoTerminal FOREIGN KEY (CAJA_TipoTerminal_ID) REFERENCES CAJA_TipoTerminal(ID)
go




ALTER TABLE CAJA_RolPorTipoTerminal
	ADD CONSTRAINT FK_SEG_Rol_CAJA_RolPorTipoTerminal FOREIGN KEY (SEG_Rol_ID) REFERENCES SEG_Rol(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CAJA_Terminal WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Terminal_CAJA_TipoTerminal FOREIGN KEY (CAJA_TipoTerminal_ID) REFERENCES CAJA_TipoTerminal(ID)
go




ALTER TABLE CAJA_TipoMovimientoPorTipoTerminal WITH CHECK 
	ADD CONSTRAINT FK_CAJA_TipoMovimientoPorTipoTerminal_CAJA_TipoMovimiento FOREIGN KEY (CAJA_TipoMovimiento_ID) REFERENCES CAJA_TipoMovimiento(ID)
go




ALTER TABLE CAJA_TipoMovimientoPorTipoTerminal WITH CHECK 
	ADD CONSTRAINT FK_CAJA_TipoMovimientoPorTipoTerminal_CAJA_TipoTerminal FOREIGN KEY (CAJA_TipoTerminal_ID) REFERENCES CAJA_TipoTerminal(ID)
go




ALTER TABLE CF_NumeradoresPorPuntoDeVenta
	ADD CONSTRAINT FK_CF_PuntoDeVenta_FE_Numeradores FOREIGN KEY (CF_PuntoDeVenta_ID) REFERENCES CF_PuntoDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CF_PuntoDeVenta
	ADD CONSTRAINT R_357 FOREIGN KEY (GN_ModeloFiscal_ID) REFERENCES GN_ModeloFiscal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
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




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_CMP_Recibo_CMP_AnulacionRecibo FOREIGN KEY (CMP_Recibo_ID) REFERENCES CMP_Recibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_AnulacionRecibo FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_AnulacionRecibo FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_CMP_ConceptoAnulacionRecibo FOREIGN KEY (CMP_ConceptoAnulacionRecibo_ID) REFERENCES CMP_ConceptoAnulacionRecibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_CMP_EstadoComprobanteFiscal_CMP_AnulacionRecibo FOREIGN KEY (CMP_EstadoComprobanteFiscal_ID) REFERENCES CMP_EstadoComprobanteFiscal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionRecibo
	ADD CONSTRAINT FK_GN_Cliente_CMP_AnulacionRecibo FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionReciboPorVencimiento
	ADD CONSTRAINT FK_CMP_AnulacionRecibo_CMP_AnulacionReciboPorVencimiento FOREIGN KEY (CMP_AnulacionRecibo_ID) REFERENCES CMP_AnulacionRecibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_AnulacionReciboPorVencimiento
	ADD CONSTRAINT FK_CMP_Vencimiento_CMP_AnulacionReciboPorVencimiento FOREIGN KEY (CMP_Vencimiento_ID) REFERENCES CMP_Vencimiento(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_BoletaDeDepositoBancaria WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_BoletaDeDepositoBancaria FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
go




ALTER TABLE CMP_BoletaDeDepositoBancaria
	ADD CONSTRAINT FK_GN_Banco_CMP_BoletaDeDepositoBancaria FOREIGN KEY (GN_Banco_ID) REFERENCES GN_Banco(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_BoletaDeDepositoBancaria
	ADD CONSTRAINT FK_CMP_BoletaDeDepositoInterna_CMP_BoletaDeDepositoBancaria FOREIGN KEY (CMP_BoletaDeDepositoInterna_ID) REFERENCES CMP_BoletaDeDepositoInterna(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_BoletaDeDepositoBancaria
	ADD CONSTRAINT FK_CMP_EstadoBoletaDeDepositoBancaria_CMP_BoletaDeDepositoBancaria FOREIGN KEY (CMP_EstadoBoletaDeDepositoBancaria_ID) REFERENCES CMP_EstadoBoletaDeDepositoBancaria(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_BoletaDeDepositoInterna WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_BoletaDeDepositoInterna FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
go




ALTER TABLE CMP_BoletaDeDepositoInterna WITH CHECK 
	ADD CONSTRAINT FK_CMP_BoletaDeDepositoInterna_CAJA_ConceptoDeTipoMovimiento FOREIGN KEY (CAJA_ConceptoDeTipoMovimiento_ID) REFERENCES CAJA_ConceptoDeTipoMovimiento(ID)
go




ALTER TABLE CMP_BoletaDeDepositoInterna WITH CHECK 
	ADD CONSTRAINT FK_CMP_EstadoBoletaDeDeposito_CMP_BoletaDeDepositoInterna FOREIGN KEY (CMP_EstadoBoletaDeDeposito_ID) REFERENCES CMP_EstadoBoletaDeDeposito(ID)
go




ALTER TABLE CMP_Cheque
	ADD CONSTRAINT FK_GN_BancoSucursal_CMP_Cheque FOREIGN KEY (GN_BancoSucursal_ID) REFERENCES GN_BancoSucursal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Cheque
	ADD CONSTRAINT FK_CMP_EstadoCheque_CMP_Cheque FOREIGN KEY (CMP_EstadoCheque_ID) REFERENCES CMP_EstadoCheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Cheque
	ADD CONSTRAINT FK_CHEQ_TipoCheque_CMP_Cheque FOREIGN KEY (CHEQ_TipoCheque_ID) REFERENCES CHEQ_TipoCheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Cheque
	ADD CONSTRAINT FK_SEG_RolPorUsuario_CMP_Cheque FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Cheque
	ADD CONSTRAINT FK_GN_Cliente_CMP_Cheque FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ChequePorBoletaDeDepositoInterna WITH CHECK 
	ADD CONSTRAINT FK_CMP_ChequePorBoletaDeDepositoInterna_CMP_BoletaDeDepositoInterna FOREIGN KEY (CMP_BoletaDeDepositoInterna_ID) REFERENCES CMP_BoletaDeDepositoInterna(ID)
go




ALTER TABLE CMP_ChequePorBoletaDeDepositoInterna
	ADD CONSTRAINT FK_CMP_Cheque_CMP_ChequePorBoletaDeDepositoInterna FOREIGN KEY (CMP_Cheque_ID) REFERENCES CMP_Cheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ChequePorDiferenciaCaja WITH CHECK 
	ADD CONSTRAINT FK_CMP_ChequePorDiferenciaCaja_CMP_DiferenciaCaja FOREIGN KEY (CMP_DiferenciaCaja_ID) REFERENCES CMP_DiferenciaCaja(ID)
go




ALTER TABLE CMP_ChequePorDiferenciaCaja
	ADD CONSTRAINT FK_CMP_Cheque_CMP_ChequePorDiferenciaCaja FOREIGN KEY (CMP_Cheque_ID) REFERENCES CMP_Cheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ChequePorRecibo
	ADD CONSTRAINT FK_CMP_Recibo_CMP_ChequePorRecibo FOREIGN KEY (CMP_Recibo_ID) REFERENCES CMP_Recibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ChequePorRecibo
	ADD CONSTRAINT FK_CMP_Cheque_CMP_ChequePorRecibo FOREIGN KEY (CMP_Cheque_ID) REFERENCES CMP_Cheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorAnulacionRecibo
	ADD CONSTRAINT FK_CMP_AnulacionRecibo_CMP_CondicionDeVentaPorAnulacionRecibo FOREIGN KEY (CMP_AnulacionRecibo_ID) REFERENCES CMP_AnulacionRecibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorAnulacionRecibo
	ADD CONSTRAINT FK_GN_CondicionDeVenta_CMP_CondicionDeVentaPorAnulacionRecibo FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorFactura
	ADD CONSTRAINT FK_CMP_Factura_CMP_CondicionDeVentaPorFactura FOREIGN KEY (CMP_Factura_ID) REFERENCES CMP_Factura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorFactura
	ADD CONSTRAINT FK_GN_CondicionDeVenta_CMP_CondicionDeVentaPorFactura FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorRecibo
	ADD CONSTRAINT FK_CMP_Recibo_CMP_CondicionDeVentaPorRecibo FOREIGN KEY (CMP_Recibo_ID) REFERENCES CMP_Recibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_CondicionDeVentaPorRecibo
	ADD CONSTRAINT FK_GN_CondicionDeVenta_CMP_CondicionDeVentaPorRecibo FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_DiferenciaCaja WITH CHECK 
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_DiferenciaCaja FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
go




ALTER TABLE CMP_DiferenciaCaja WITH CHECK 
	ADD CONSTRAINT FK_CMP_DiferenciaCaja_CAJA_EstadoDiferenciaCaja FOREIGN KEY (CAJA_EstadoDiferenciaCaja_ID) REFERENCES CAJA_EstadoDiferenciaCaja(ID)
go




ALTER TABLE CMP_DiferenciaCaja WITH CHECK 
	ADD CONSTRAINT FK_CMP_DiferenciaCaja_CAJA_ItemResumenArqueo FOREIGN KEY (CAJA_ItemResumenArqueo_ID) REFERENCES CAJA_ItemResumenArqueo(ID)
go




ALTER TABLE CMP_DiferenciaCaja
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_DiferenciaCaja FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_DiferenciaCaja
	ADD CONSTRAINT FK_GN_MedioDePago_CMP_DiferenciaCaja FOREIGN KEY (GN_MedioDePago_ID) REFERENCES GN_MedioDePago(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_EstadoPorTipoComprobante
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_EstadoPorTipoComprobante FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_Factura FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_Factura FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_CMP_EstadoComprobanteFiscal_CMP_Factura FOREIGN KEY (CMP_EstadoComprobanteFiscal_ID) REFERENCES CMP_EstadoComprobanteFiscal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_PER_ResponsabilidadIVA_CMP_Factura FOREIGN KEY (PER_ResponsabilidadIVA_ID) REFERENCES PER_ResponsabilidadIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_CMP_SubtipoPorTipo_CMP_Factura FOREIGN KEY (CMP_SubtipoPorTipo_ID) REFERENCES CMP_SubtipoPorTipo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Factura
	ADD CONSTRAINT FK_GN_Cliente_CMP_Factura FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaPorCotizacion
	ADD CONSTRAINT FK_CMP_Factura_CMP_FacturaPorCotizacion FOREIGN KEY (CMP_Factura_ID) REFERENCES CMP_Factura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaPorCotizacion
	ADD CONSTRAINT FK_COT_Cotizacion_CMP_FacturaPorCotizacion FOREIGN KEY (COT_Cotizacion_ID) REFERENCES COT_Cotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaPorCotizacion
	ADD CONSTRAINT FK_CMP_TipoRelacionFacturaCotizacion_CMP_FacturaPorCotizacion FOREIGN KEY (CMP_TipoRelacionFacturaCotizacion_ID) REFERENCES CMP_TipoRelacionFacturaCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaProveedor
	ADD CONSTRAINT FK_GN_Proveedor_CMP_FacturaProveedor FOREIGN KEY (GN_Proveedor_ID) REFERENCES GN_Proveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaProveedor
	ADD CONSTRAINT FK_PER_ResponsabilidadIVA_CMP_FacturaProveedor FOREIGN KEY (PER_ResponsabilidadIVA_ID) REFERENCES PER_ResponsabilidadIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaProveedor
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_FacturaProveedor FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_FacturaProveedor
	ADD CONSTRAINT FK_CMP_EstadoPorTipoComprobante_CMP_Factura_Proveedor FOREIGN KEY (CMP_EstadoPorTipoComprobante_ID) REFERENCES CMP_EstadoPorTipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_SEG_RolPorUsuario_CMP_HistorialCheque FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_CMP_Cheque_CMP_HistorialCheque FOREIGN KEY (CMP_Cheque_ID) REFERENCES CMP_Cheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_GN_BancoSucursal_CMP_HistorialCheque FOREIGN KEY (GN_BancoSucursal_ID) REFERENCES GN_BancoSucursal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_CMP_EstadoCheque_CMP_HistorialCheque FOREIGN KEY (CMP_EstadoCheque_ID) REFERENCES CMP_EstadoCheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_CHEQ_TipoCheque_CMP_HistorialCheque FOREIGN KEY (CHEQ_TipoCheque_ID) REFERENCES CHEQ_TipoCheque(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_HistorialCheque
	ADD CONSTRAINT FK_GN_Cliente_CMP_HistorialCheque FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFactura
	ADD CONSTRAINT FK_CMP_Factura_CMP_ItemFactura FOREIGN KEY (CMP_Factura_ID) REFERENCES CMP_Factura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFactura
	ADD CONSTRAINT FK_GN_Servicio_CMP_ItemFactura FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorArticulo
	ADD CONSTRAINT FK_GN_Articulo_CMP_ItemFacturaPorArticulo FOREIGN KEY (GN_Articulo_ID) REFERENCES GN_Articulo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorArticulo
	ADD CONSTRAINT FK_CMP_ItemFactura_CMP_ItemFacturaPorArticulo FOREIGN KEY (CMP_ItemFactura_ID) REFERENCES CMP_ItemFactura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorItemCotizacion
	ADD CONSTRAINT FK_COT_ItemCotizacion_CMP_ItemFacturaPorItemCotizacion FOREIGN KEY (COT_ItemCotizacion_ID) REFERENCES COT_ItemCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorItemCotizacion
	ADD CONSTRAINT FK_CMP_ItemFactura_CMP_ItemFacturaPorItemCotizacion FOREIGN KEY (CMP_ItemFactura_ID) REFERENCES CMP_ItemFactura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorServicio
	ADD CONSTRAINT FK_CMP_ItemFactura_CMP_ItemFacturaPorServicio FOREIGN KEY (CMP_ItemFactura_ID) REFERENCES CMP_ItemFactura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaPorServicio
	ADD CONSTRAINT FK_GN_Servicio_CMP_ItemFacturaPorServicio FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaProveedor
	ADD CONSTRAINT FK_CMP_FacturaProveedor_CMP_ItemFacturaProveedor FOREIGN KEY (CMP_FacturaProveedor_ID) REFERENCES CMP_FacturaProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaProveedorPorArticulo
	ADD CONSTRAINT FK_CMP_ItemFacturaProveedor_CMP_ItemFacturaProveedorPorArticulo FOREIGN KEY (CMP_ItemFacturaProveedor_ID) REFERENCES CMP_ItemFacturaProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaProveedorPorArticulo
	ADD CONSTRAINT FK_GN_Articulo_CMP_ItemFacturaProveedorPorArticulo FOREIGN KEY (GN_Articulo_ID) REFERENCES GN_Articulo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaProveedorPorServicio
	ADD CONSTRAINT FK_CMP_ItemFacturaProveedor_CMP_ItemFacturaProveedorPorServicio FOREIGN KEY (CMP_ItemFacturaProveedor_ID) REFERENCES CMP_ItemFacturaProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemFacturaProveedorPorServicio
	ADD CONSTRAINT FK_GN_Servicio_CMP_ItemFacturaProveedorPorServicio FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCredito
	ADD CONSTRAINT FK_CMP_NotaDeCredito_CMP_ItemNotaDeCredito FOREIGN KEY (CMP_NotaDeCredito_ID) REFERENCES CMP_NotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCredito
	ADD CONSTRAINT FK_GN_TasaIVA_CMP_ItemNotaDeCredito FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_TasaIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorArticulo
	ADD CONSTRAINT FK_CMP_ItemNotaDeCredito_CMP_ItemNotaDeCreditoPorArticulo FOREIGN KEY (CMP_ItemNotaDeCredito_ID) REFERENCES CMP_ItemNotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorArticulo
	ADD CONSTRAINT FK_GN_Articulo_CMP_ItemNotaDeCreditoPorArticulo FOREIGN KEY (GN_Articulo_ID) REFERENCES GN_Articulo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorItemFactura
	ADD CONSTRAINT FK_CMP_ItemNotaDeCredito_CMP_ItemNotaDeCreditoPorItemFactura FOREIGN KEY (CMP_ItemNotaDeCredito_ID) REFERENCES CMP_ItemNotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorItemFactura
	ADD CONSTRAINT FK_CMP_ItemFactura_CMP_ItemNotaDeCreditoPorItemFactura FOREIGN KEY (CMP_ItemFactura_ID) REFERENCES CMP_ItemFactura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorServicio
	ADD CONSTRAINT FK_CMP_ItemNotaDeCredito_CMP_ItemNotaDeCreditoPorServicio FOREIGN KEY (CMP_ItemNotaDeCredito_ID) REFERENCES CMP_ItemNotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemNotaDeCreditoPorServicio
	ADD CONSTRAINT FK_GN_Servicio_CMP_ItemNotaDeCreditoPorServicio FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemOrdenDeCompra
	ADD CONSTRAINT FK_CMP_OrdenDeCompra_CMP_ItemOrdenDeCompra FOREIGN KEY (CMP_OrdenDeCompra_ID) REFERENCES CMP_OrdenDeCompra(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemOrdenDeCompraPorArticulo
	ADD CONSTRAINT FK_CMP_ItemOrdenDeCompra_CMP_ItemOrdenDeCompraPorArticulo FOREIGN KEY (CMP_ItemOrdenDeCompra_ID) REFERENCES CMP_ItemOrdenDeCompra(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemOrdenDeCompraPorArticulo
	ADD CONSTRAINT FK_GN_Articulo_CMP_ItemOrdenDeCompraPorArticulo FOREIGN KEY (GN_Articulo_ID) REFERENCES GN_Articulo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemOrdenDeCompraPorServicio
	ADD CONSTRAINT FK_CMP_ItemOrdenDeCompra_CMP_ItemOrdenDeCompraPorServicio FOREIGN KEY (CMP_ItemOrdenDeCompra_ID) REFERENCES CMP_ItemOrdenDeCompra(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ItemOrdenDeCompraPorServicio
	ADD CONSTRAINT FK_GN_Servicio_CMP_ItemOrdenDeCompraPorServicio FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_NotaDeCredito FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_CMP_EstadoComprobanteFiscal_CMP_NotaDeCredito FOREIGN KEY (CMP_EstadoComprobanteFiscal_ID) REFERENCES CMP_EstadoComprobanteFiscal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_CMP_SubtipoPorTipo_CMP_NotaDeCredito FOREIGN KEY (CMP_SubtipoPorTipo_ID) REFERENCES CMP_SubtipoPorTipo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_CMP_ConceptoNotaDeCredito_CMP_NotaDeCredito FOREIGN KEY (CMP_ConceptoNotaDeCredito_ID) REFERENCES CMP_ConceptoNotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_PER_ResponsabilidadIVA_CMP_NotaDeCredito FOREIGN KEY (PER_ResponsabilidadIVA_ID) REFERENCES PER_ResponsabilidadIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCredito
	ADD CONSTRAINT FK_GN_Cliente_CMP_NotaDeCredito FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCreditoPorFactura
	ADD CONSTRAINT FK_CMP_NotaDeCredito_CMP_NotaDeCreditoPorFactura FOREIGN KEY (CMP_NotaDeCredito_ID) REFERENCES CMP_NotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCreditoPorFactura
	ADD CONSTRAINT FK_CMP_Factura_CMP_NotaDeCreditoPorFactura FOREIGN KEY (CMP_Factura_ID) REFERENCES CMP_Factura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCreditoPorVencimiento
	ADD CONSTRAINT FK_CMP_NotaDeCredito_CMP_NotaDeCreditoPorVencimiento FOREIGN KEY (CMP_NotaDeCredito_ID) REFERENCES CMP_NotaDeCredito(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_NotaDeCreditoPorVencimiento
	ADD CONSTRAINT FK_CMP_Vencimiento_CMP_NotaDeCreditoPorVencimiento FOREIGN KEY (CMP_Vencimiento_ID) REFERENCES CMP_Vencimiento(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDeCompra
	ADD CONSTRAINT FK_GN_Proveedor_ORC_OrdenDeCompra FOREIGN KEY (GN_Proveedor_ID) REFERENCES GN_Proveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDeCompra
	ADD CONSTRAINT FK_CMP_EstadoPorTipoComprobante_CMP_OrdenDeCompra FOREIGN KEY (CMP_EstadoPorTipoComprobante_ID) REFERENCES CMP_EstadoPorTipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDePagoPorVencimientoProveedor
	ADD CONSTRAINT FK_CMP_VencimientoProveedor_CMP_OrdenDePagoPorVencimientoProveedor FOREIGN KEY (CMP_VencimientoProveedor_ID) REFERENCES CMP_VencimientoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDePagoPorVencimientoProveedor
	ADD CONSTRAINT FK_CMP_OrdenDePagoProveedor_CMP_OrdenDePagoPorVencimientoProveedor FOREIGN KEY (CMP_OrdenDePagoProveedor_ID) REFERENCES CMP_OrdenDePagoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDePagoProveedor
	ADD CONSTRAINT FK_GN_Proveedor_CMP_OrdenDePagoProveedor FOREIGN KEY (GN_Proveedor_ID) REFERENCES GN_Proveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_OrdenDePagoProveedor
	ADD CONSTRAINT FK_CMP_EstadoPorTipoComprobante_CMP_OrdenDePagoProveedor FOREIGN KEY (CMP_EstadoPorTipoComprobante_ID) REFERENCES CMP_EstadoPorTipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Recibo
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_Recibo FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Recibo
	ADD CONSTRAINT FK_CMP_EstadoComprobanteFiscal_CMP_Recibo FOREIGN KEY (CMP_EstadoComprobanteFiscal_ID) REFERENCES CMP_EstadoComprobanteFiscal(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Recibo
	ADD CONSTRAINT FK_CAJA_Apertura_CMP_Recibo FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_Recibo
	ADD CONSTRAINT FK_GN_Cliente_CMP_Recibo FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ReciboPorVencimiento
	ADD CONSTRAINT FK_CMP_Recibo_CMP_ReciboPorVencimiento FOREIGN KEY (CMP_Recibo_ID) REFERENCES CMP_Recibo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ReciboPorVencimiento
	ADD CONSTRAINT FK_CMP_Vencimiento_CMP_ReciboPorVencimiento FOREIGN KEY (CMP_Vencimiento_ID) REFERENCES CMP_Vencimiento(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ReciboProveedor
	ADD CONSTRAINT FK_GN_Proveedor_CMP_ReciboProveedor FOREIGN KEY (GN_Proveedor_ID) REFERENCES GN_Proveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ReciboProveedor
	ADD CONSTRAINT FK_CMP_OrdenDePagoProveedor_CMP_ReciboProveedor FOREIGN KEY (CMP_OrdenDePagoProveedor_ID) REFERENCES CMP_OrdenDePagoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_ReciboProveedor
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_ReciboProveedor FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_SubtipoPorTipo
	ADD CONSTRAINT FK_CMP_TipoComprobante_CMP_SubtipoPorTipo FOREIGN KEY (CMP_TipoComprobante_ID) REFERENCES CMP_TipoComprobante(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFactura
	ADD CONSTRAINT FK_CMP_Vencimiento_CMP_VencimientoPorFactura FOREIGN KEY (CMP_Vencimiento_ID) REFERENCES CMP_Vencimiento(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFactura
	ADD CONSTRAINT FK_CMP_Factura_CMP_VencimientoPorFactura FOREIGN KEY (CMP_Factura_ID) REFERENCES CMP_Factura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFactura
	ADD CONSTRAINT FK_GN_CondicionDeVenta_CMP_VencimientoPorFactura FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFacturaProveedor
	ADD CONSTRAINT FK_CMP_FacturaProveedor_CMP_VencimientoPorFacturaProveedor FOREIGN KEY (CMP_FacturaProveedor_ID) REFERENCES CMP_FacturaProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFacturaProveedor
	ADD CONSTRAINT FK_CMP_VencimientoProveedor_CMP_VencimientoPorFacturaProveedor FOREIGN KEY (CMP_VencimientoProveedor_ID) REFERENCES CMP_VencimientoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE CMP_VencimientoPorFacturaProveedor
	ADD CONSTRAINT FK_GN_CondicionDeVenta_CMP_VencimientoPorFacturaProveedor FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_Cotizacion
	ADD CONSTRAINT FK_COT_EstadoPorTipoCotizacion_COT_Cotizacion FOREIGN KEY (COT_EstadoPorTipoCotizacion_ID) REFERENCES COT_EstadoPorTipoCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_Cotizacion
	ADD CONSTRAINT FK_SEG_RolPorUsuario_COT_Cotizacion FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_Cotizacion
	ADD CONSTRAINT FK_GN_Cliente_COT_Cotizacion FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_CotizacionPorCondicionDeVenta
	ADD CONSTRAINT FK_COT_Cotizacion_COT_CotizacionPorCondicionDeVenta FOREIGN KEY (COT_Cotizacion_ID) REFERENCES COT_Cotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_CotizacionPorCondicionDeVenta
	ADD CONSTRAINT FK_GN_CondicionDeVenta_COT_CotizacionPorCondicionDeVenta FOREIGN KEY (GN_CondicionDeVenta_ID) REFERENCES GN_CondicionDeVenta(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_CotizacionPorTasaIVA
	ADD CONSTRAINT FK_COT_Cotizacion_COT_CotizacionPorTasaIVA FOREIGN KEY (COT_Cotizacion_ID) REFERENCES COT_Cotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_CotizacionPorTasaIVA
	ADD CONSTRAINT FK_GN_TasaIVA_COT_CotizacionPorTasaIVA FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_TasaIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_EstadoPorTipoCotizacion
	ADD CONSTRAINT FK_COT_TipoCotizacion_COT_EstadoPorTipoCotizacion FOREIGN KEY (COT_TipoCotizacion_ID) REFERENCES COT_TipoCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_HistorialCotizacion
	ADD CONSTRAINT FK_COT_Cotizacion_COT_HistorialCotizacion FOREIGN KEY (COT_Cotizacion_ID) REFERENCES COT_Cotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_HistorialCotizacion
	ADD CONSTRAINT FK_COT_EstadoPorTipoCotizacion_COT_HistorialCotizacion FOREIGN KEY (COT_EstadoPorTipoCotizacion_ID) REFERENCES COT_EstadoPorTipoCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_HistorialCotizacion
	ADD CONSTRAINT FK_SEG_RolPorUsuario_COT_HistorialCotizacion FOREIGN KEY (SEG_RolPorUsuario_ID) REFERENCES SEG_RolPorUsuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_HistorialCotizacion
	ADD CONSTRAINT FK_GN_Cliente_COT_HistorialCotizacion FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacion
	ADD CONSTRAINT FK_COT_Cotizacion_COT_ItemCotizacion FOREIGN KEY (COT_Cotizacion_ID) REFERENCES COT_Cotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacion
	ADD CONSTRAINT FK_GN_TasaIVA_COT_ItemCotizacion FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_TasaIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacionPorArticulo
	ADD CONSTRAINT FK_COT_ItemCotizacion_COT_ItemCotizacionPorArticulo FOREIGN KEY (COT_ItemCotizacion_ID) REFERENCES COT_ItemCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacionPorArticulo
	ADD CONSTRAINT FK_GN_Articulo_COT_ItemCotizacionPorArticulo FOREIGN KEY (GN_Articulo_ID) REFERENCES GN_Articulo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacionPorServicio
	ADD CONSTRAINT FK_COT_ItemCotizacion_COT_ItemCotizacionPorServicio FOREIGN KEY (COT_ItemCotizacion_ID) REFERENCES COT_ItemCotizacion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE COT_ItemCotizacionPorServicio
	ADD CONSTRAINT FK_GN_Servicio_COT_ItemCotizacionPorServicio FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ProveedorFondoFijo
	ADD CONSTRAINT FK_GN_Persona_FF_Proveedor_FondoFijo FOREIGN KEY (ID) REFERENCES GN_Persona(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_Rendicion
	ADD CONSTRAINT FK_CAJA_Apertura_FF_Rendicion FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendir
	ADD CONSTRAINT FK_CAJA_Apertura_FF_ValeDeGastoARendir FOREIGN KEY (CAJA_Apertura_ID) REFERENCES CAJA_Apertura(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendir
	ADD CONSTRAINT FK_FF_TipoComprobanteFondoFijo_FF_ValeDeGastoARendir FOREIGN KEY (FF_TipoComprobanteFondoFijo_ID) REFERENCES FF_TipoComprobanteFondoFijo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendir
	ADD CONSTRAINT FK_FF_EstadoVale_FF_ValeDeGastoARendir FOREIGN KEY (FF_EstadoVale_ID) REFERENCES FF_EstadoVale(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendir
	ADD CONSTRAINT FK_FF_ProveedorFondoFijo_FF_ValeDeGastoARendir FOREIGN KEY (FF_ProveedorFondoFijo_ID) REFERENCES FF_ProveedorFondoFijo(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendirPorRendicion
	ADD CONSTRAINT FK_FF_Rendicion_FF_ValeDeGastoARendirPorRendicion FOREIGN KEY (FF_Rendicion_ID) REFERENCES FF_Rendicion(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE FF_ValeDeGastoARendirPorRendicion
	ADD CONSTRAINT FK_FF_ValeDeGastoARendir_FF_ValeDeGastoARendirPorRendicion FOREIGN KEY (FF_ValeDeGastoARendir_ID) REFERENCES FF_ValeDeGastoARendir(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Articulo
	ADD CONSTRAINT FK_GN_Marca_GN_Articulo FOREIGN KEY (GN_Marca_ID) REFERENCES GN_Marca(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Articulo
	ADD CONSTRAINT FK_ART_SubCategoria_GN_Articulo FOREIGN KEY (ART_SubCategoria_ID) REFERENCES ART_SubCategoria(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Articulo
	ADD CONSTRAINT FK_GN_TasaIVA_GN_Articulo FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_TasaIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Articulo
	ADD CONSTRAINT FK_ART_ImpuestoInterno_GN_Articulo FOREIGN KEY (ART_ImpuestoInterno_ID) REFERENCES ART_ImpuestoInterno(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Articulo
	ADD CONSTRAINT FK_GN_Proveedor_GN_Articulo FOREIGN KEY (GN_Proveedor_ID) REFERENCES GN_Proveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_BancoSucursal
	ADD CONSTRAINT FK_GN_Banco_GN_BancoSucursal FOREIGN KEY (GN_Banco_ID) REFERENCES GN_Banco(ID)
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




ALTER TABLE GN_CondicionDeVenta
	ADD CONSTRAINT FK_GN_MedioDePago_GN_CondicionDeVenta FOREIGN KEY (GN_MedioDePago_ID) REFERENCES GN_MedioDePago(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_CondicionDeVenta
	ADD CONSTRAINT FK_GN_Moneda_GN_CondicionDeVenta FOREIGN KEY (GN_Moneda_ID) REFERENCES GN_Moneda(ID)
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




ALTER TABLE GN_Proveedor
	ADD CONSTRAINT FK_PROV_SubGrupoProveedor_GN_Proveedor FOREIGN KEY (PROV_SubGrupoProveedor_ID) REFERENCES PROV_SubGrupoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Proveedor
	ADD CONSTRAINT FK_GN_Persona_GN_Proveedor FOREIGN KEY (ID) REFERENCES GN_Persona(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Servicio
	ADD CONSTRAINT FK_GN_TasaIVA_GN_Servicio FOREIGN KEY (GN_TasaIVA_ID) REFERENCES GN_TasaIVA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_Servicio
	ADD CONSTRAINT FK_ART_TipoDeServicio_GN_Servicio FOREIGN KEY (ART_TipoDeServicio_ID) REFERENCES ART_TipoDeServicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_ServicioPorCliente
	ADD CONSTRAINT FK_GN_Cliente_GN_ServicioPorCliente FOREIGN KEY (GN_Cliente_ID) REFERENCES GN_Cliente(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE GN_ServicioPorCliente
	ADD CONSTRAINT FK_GN_Servicio_GN_ServicioPorCliente FOREIGN KEY (GN_Servicio_ID) REFERENCES GN_Servicio(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE PROV_SubGrupoProveedor
	ADD CONSTRAINT FK_PROV_GrupoProveedor_PROV_SubGrupo FOREIGN KEY (PROV_GrupoProveedor_ID) REFERENCES PROV_GrupoProveedor(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_PermisoPorRol
	ADD CONSTRAINT FK_SEG_Permiso_SEG_PermisoPorRol FOREIGN KEY (SEG_Permiso_ID) REFERENCES SEG_Permiso(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_PermisoPorRol
	ADD CONSTRAINT FK_SEG_Rol_SEG_PermisoPorRol FOREIGN KEY (SEG_Rol_ID) REFERENCES SEG_Rol(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_PermisoPorUsuario
	ADD CONSTRAINT FK_SEG_Usuario_SEG_PermisoPorUsuario FOREIGN KEY (SEG_Usuario_ID) REFERENCES SEG_Usuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_PermisoPorUsuario
	ADD CONSTRAINT FK_SEG_Permiso_SEG_PermisoPorUsuario FOREIGN KEY (SEG_Permiso_ID) REFERENCES SEG_Permiso(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_RolPorUsuario
	ADD CONSTRAINT FK_SEG_Usuario_SEG_RolPorUsuario FOREIGN KEY (SEG_Usuario_ID) REFERENCES SEG_Usuario(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SEG_RolPorUsuario
	ADD CONSTRAINT FK_SEG_Rol_SEG_RolPorUsuario FOREIGN KEY (SEG_Rol_ID) REFERENCES SEG_Rol(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


