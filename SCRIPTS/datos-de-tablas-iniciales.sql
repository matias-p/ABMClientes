USE Club
go

SET IDENTITY_INSERT CLI_EstadoCivil  ON 
GO

INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('<No Aplica>' ,'-1' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Casado/a' ,'1' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Soltero/a' ,'2' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Viudo/a' ,'3' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Divorciado/a' ,'4' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Concubino/a' ,'5' )
INSERT INTO dbo.CLI_EstadoCivil ( [descripcion], [ID]) VALUES ('Separado/a' ,'6' )

SET IDENTITY_INSERT CLI_EstadoCivil OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CLI_TipoActividadLaboral  ON 
GO

INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Publico' ,'1' ,'0' )
INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Privado' ,'2' ,'0' )
INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Municipal' ,'3' ,'0' )
INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Independiente' ,'4' ,'0' )
INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Jubilado' ,'5' ,'1' )
INSERT INTO dbo.CLI_TipoActividadLaboral ( [descripcion], [ID], [pasivo]) VALUES ('Sin actividad' ,'6' ,'0' )

SET IDENTITY_INSERT CLI_TipoActividadLaboral OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_Nacionalidad  ON 
GO

INSERT INTO dbo.GN_Nacionalidad ( [descripcion], [ID]) VALUES ('Argentina  ' ,'1' )

SET IDENTITY_INSERT GN_Nacionalidad  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CLI_Puesto  ON 
GO

INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('No Corresponde  ' ,'1' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Empl. Doméstica En Casa De Fam' ,'2' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Maestranza  ' ,'3' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Jefe/A  ' ,'4' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Encargada/O  ' ,'5' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Supervisor/A  ' ,'6' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Cadete  ' ,'7' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Administrativo/A  ' ,'8' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Vigilador  ' ,'9' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Vendedor  ' ,'10' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Maestro/Profesor  ' ,'11' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Auxiliar De Servicio  ' ,'12' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Cajero/A  ' ,'13' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Repositor/A  ' ,'14' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Ayudante De Cocina  ' ,'15' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Lavandera  ' ,'16' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Panadero (Panificador)  ' ,'17' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Delegado/A  ' ,'18' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Guía De Tránsito Escolar  ' ,'19' )
INSERT INTO dbo.CLI_Puesto ( [descripcion], [ID]) VALUES ('Aprendiz  ' ,'20' )

SET IDENTITY_INSERT CLI_Puesto  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CLI_GrupoCliente  ON 
GO

INSERT INTO dbo.CLI_GrupoCliente ( [descripcion], [ID]) VALUES ('General' ,'1' )
INSERT INTO dbo.CLI_GrupoCliente ( [descripcion], [ID]) VALUES ('Vip' ,'2' )

SET IDENTITY_INSERT CLI_GrupoCliente  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CLI_SubGrupoCliente  ON 
GO

INSERT INTO dbo.CLI_SubGrupoCliente ( [CLI_GrupoCliente_ID], [descripcion], [ID]) VALUES ('1' ,'General' ,'2' )
INSERT INTO dbo.CLI_SubGrupoCliente ( [CLI_GrupoCliente_ID], [descripcion], [ID]) VALUES ('2' ,'Vip 1' ,'3' )
INSERT INTO dbo.CLI_SubGrupoCliente ( [CLI_GrupoCliente_ID], [descripcion], [ID]) VALUES ('2' ,'Vip 2' ,'4' )

SET IDENTITY_INSERT CLI_SubGrupoCliente  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_Provincia  ON 
GO

INSERT INTO dbo.GN_Provincia ( [descripcion], [ID]) VALUES ('Buenos Aires' ,'1' )

SET IDENTITY_INSERT GN_Provincia  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_Localidad  ON 
GO

INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6000' ,'Junín' ,'1' ,'1' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6013' ,'Morse' ,'1' ,'2' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6001' ,'Agustín Roca' ,'1' ,'3' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6001' ,'Fortín Tiburcio' ,'1' ,'4' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6022' ,'Saforcada' ,'1' ,'5' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6023' ,'Agustina' ,'1' ,'6' )
INSERT INTO dbo.GN_Localidad ( [cod_postal], [descripcion], [GN_Provincia_ID], [ID]) VALUES ('6013' ,'Laplacette' ,'1' ,'7' )

SET IDENTITY_INSERT GN_Localidad  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT PER_ResponsabilidadIVA  ON 
GO

INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Consumidor Final' ,'1' ,'0.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Responsable Inscripto' ,'2' ,'0.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Exento' ,'3' ,'0.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria B' ,'4' ,'4000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria C' ,'5' ,'6000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria D' ,'6' ,'8000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria E' ,'7' ,'12000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria F' ,'8' ,'16000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoris G' ,'9' ,'20000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoris H' ,'10' ,'24000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria I' ,'12' ,'33333.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria J' ,'15' ,'39167.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria K' ,'17' ,'45000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Categoria L' ,'18' ,'50000.00' )
INSERT INTO dbo.PER_ResponsabilidadIVA ( [descripcion], [ID], [ingresos]) VALUES ('Responsable No Inscripto' ,'19' ,'0.00' )

SET IDENTITY_INSERT PER_ResponsabilidadIVA  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_TasaIVA  ON 
GO

INSERT INTO dbo.GN_TasaIVA ( [baja], [descripcion], [ID], [porcentaje]) VALUES ('0' ,'21.00%' ,'1' ,'21.00' )
INSERT INTO dbo.GN_TasaIVA ( [baja], [descripcion], [ID], [porcentaje]) VALUES ('0' ,'10.50%' ,'6' ,'10.50' )
INSERT INTO dbo.GN_TasaIVA ( [baja], [descripcion], [ID], [porcentaje]) VALUES ('0' ,'0.00%' ,'8' ,'0.00' )

SET IDENTITY_INSERT GN_TasaIVA  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT ART_TipoDeServicio  ON 
GO

INSERT INTO dbo.ART_TipoDeServicio ( [baja], [descripcion], [ID]) VALUES ('0' ,'Cuota Social' ,'1' )
INSERT INTO dbo.ART_TipoDeServicio ( [baja], [descripcion], [ID]) VALUES ('0' ,'Alquileres de Casillas' ,'2' )
INSERT INTO dbo.ART_TipoDeServicio ( [baja], [descripcion], [ID]) VALUES ('0' ,'Varios' ,'3' )

SET IDENTITY_INSERT ART_TipoDeServicio  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_Servicio  ON 
GO

INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('1' ,'0' ,'400.00' ,'Cuota Social' ,'Ago  9 2021 12:00AM' ,'8' ,'4' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Red Electrica' ,'Ago 20 2021 12:00AM' ,'8' ,'5' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Alambrado' ,'Ago 23 2021 12:00AM' ,'8' ,'7' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Pintura' ,'Ago 23 2021 12:00AM' ,'8' ,'8' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Reparaciones' ,'Ago 23 2021 12:00AM' ,'8' ,'9' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Concurso' ,'Ago 23 2021 12:00AM' ,'8' ,'10' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Parquizado' ,'Ago 23 2021 12:00AM' ,'8' ,'11' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Red de Agua' ,'Ago 23 2021 12:00AM' ,'8' ,'12' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Herramientas' ,'Ago 23 2021 12:00AM' ,'8' ,'13' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Vidrios' ,'Ago 23 2021 12:00AM' ,'8' ,'14' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Roturas' ,'Ago 23 2021 12:00AM' ,'8' ,'15' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Entradas' ,'Ago 23 2021 12:00AM' ,'8' ,'16' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Luz Espigon' ,'Ago 23 2021 12:00AM' ,'8' ,'17' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Mantenimiento' ,'Ago 23 2021 12:00AM' ,'8' ,'18' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Intereses' ,'Ago 23 2021 12:00AM' ,'8' ,'19' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Guarderia' ,'Ago 23 2021 12:00AM' ,'8' ,'20' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Alquiler Casa' ,'Ago 23 2021 12:00AM' ,'8' ,'21' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Envio Avisos' ,'Ago 23 2021 12:00AM' ,'8' ,'22' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'% Venta Casa' ,'Ago 23 2021 12:00AM' ,'8' ,'23' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Alquiler Kiosco' ,'Ago 23 2021 12:00AM' ,'8' ,'24' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Carnet' ,'Ago 23 2021 12:00AM' ,'8' ,'25' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Peloteros' ,'Ago 23 2021 12:00AM' ,'8' ,'26' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Luz Kiosco' ,'Ago 23 2021 12:00AM' ,'8' ,'27' ,'1.00' )
INSERT INTO dbo.GN_Servicio ( [ART_TipoDeServicio_ID], [baja], [costo], [descripcion], [fechaAlta], [GN_TasaIVA_ID], [ID], [margen]) VALUES ('3' ,'0' ,'1.00' ,'Varios' ,'Ago 23 2021 12:00AM' ,'8' ,'28' ,'1.00' )

SET IDENTITY_INSERT GN_Servicio  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT PER_TipoDeDocumento  ON 
GO

INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('1','DNI')
INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('2','LC')
INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('3','LE')
INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('4','Pasaporte')
INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('5','CI')
INSERT INTO dbo.PER_TipoDeDocumento ( [ID], [descripcion] ) VALUES ('6','<No aplica>')

SET IDENTITY_INSERT PER_TipoDeDocumento  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CMP_EstadoComprobanteFiscal  ON 
GO

INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Pendiente' ,'1' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Anulado' ,'2' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Confirmado' ,'3' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Pendiente de aprobación' ,'4' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Pendiente de emisión' ,'5' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Pendiente cobro cheque' ,'6' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Pre impresión' ,'7' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('Imprimiendo' ,'8' )
INSERT INTO dbo.CMP_EstadoComprobanteFiscal ( [descripcion], [ID]) VALUES ('En Cola de Procesamiento' ,'9' )

SET IDENTITY_INSERT CMP_EstadoComprobanteFiscal  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT CMP_TipoComprobante  ON 
GO

INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Factura' ,'1' ,'FAC     ' )
INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Nota de Crédito' ,'2' ,'NCR     ' )
INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Recibo' ,'3' ,'REC     ' )
INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Transferencia' ,'4' ,'TRA     ' )
INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Nota de Débito' ,'5' ,'NDB     ' )
INSERT INTO dbo.CMP_TipoComprobante ( [descripcion], [ID], [tipo]) VALUES ('Diferencia de Caja' ,'6' ,'DCA     ' )

SET IDENTITY_INSERT CMP_TipoComprobante  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_MedioDePago  ON 
GO

INSERT INTO dbo.GN_MedioDePago ( [admiteDevolucionDeEfectivo], [baja], [cuentaCorriente], [descripcion], [emitePagare], [emiteRecibo], [esOficial], [exigeCancelacionEnFacturacion], [fechaAlta], [habilitadoParaCobranza], [habilitadoParaMovimientoCaja], [habilitadoServicioFlete], [ID], [naceCancelada], [ordenFacturacion], [permiteCondicionDeVenta], [permiteCotizacion], [permiteCuotas], [permiteDescuentos], [permiteEntidad], [permiteIngresarCalculado], [permiteRepeticion], [permiteSubtipo], [permiteVuelto]) VALUES ('1' ,'0' ,'0' ,'Efectivo' ,'0' ,'0' ,'0' ,'1' ,'Ago 31 2021 12:00AM' ,'1' ,'1' ,'1' ,'1' ,'1' ,'2' ,'1' ,'0' ,'0' ,'1' ,'0' ,'0' ,'0' ,'0' ,'1' )
INSERT INTO dbo.GN_MedioDePago ( [admiteDevolucionDeEfectivo], [baja], [cuentaCorriente], [descripcion], [emitePagare], [emiteRecibo], [esOficial], [exigeCancelacionEnFacturacion], [fechaAlta], [habilitadoParaCobranza], [habilitadoParaMovimientoCaja], [habilitadoServicioFlete], [ID], [naceCancelada], [ordenFacturacion], [permiteCondicionDeVenta], [permiteCotizacion], [permiteCuotas], [permiteDescuentos], [permiteEntidad], [permiteIngresarCalculado], [permiteRepeticion], [permiteSubtipo], [permiteVuelto]) VALUES ('0' ,'0' ,'0' ,'Cheque' ,'0' ,'1' ,'1' ,'1' ,'Ago 31 2021 12:00AM' ,'1' ,'1' ,'0' ,'2' ,'1' ,'1' ,'1' ,'0' ,'0' ,'1' ,'0' ,'1' ,'1' ,'1' ,'1' )
INSERT INTO dbo.GN_MedioDePago ( [admiteDevolucionDeEfectivo], [baja], [cuentaCorriente], [descripcion], [emitePagare], [emiteRecibo], [esOficial], [exigeCancelacionEnFacturacion], [fechaAlta], [habilitadoParaCobranza], [habilitadoParaMovimientoCaja], [habilitadoServicioFlete], [ID], [naceCancelada], [ordenFacturacion], [permiteCondicionDeVenta], [permiteCotizacion], [permiteCuotas], [permiteDescuentos], [permiteEntidad], [permiteIngresarCalculado], [permiteRepeticion], [permiteSubtipo], [permiteVuelto]) VALUES ('0' ,'0' ,'1' ,'Cuenta Corriente' ,'1' ,'0' ,'0' ,'0' ,'Ago 31 2021 12:00AM' ,'0' ,'0' ,'0' ,'4' ,'0' ,'0' ,'1' ,'0' ,'0' ,'1' ,'0' ,'0' ,'0' ,'1' ,'0' )

SET IDENTITY_INSERT GN_MedioDePago  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_Moneda  ON 
GO

INSERT INTO dbo.GN_Moneda ( [descripcion], [ID], [solicitaCotizacion]) VALUES ('pesos' ,'1' ,'0' )

SET IDENTITY_INSERT GN_Moneda  OFF 
GO

/********************************************************************************************/

SET IDENTITY_INSERT GN_CondicionDeVenta  ON 
GO

INSERT INTO dbo.GN_CondicionDeVenta ( [baja], [cuotasDesde], [cuotasHasta], [descripcion], [fechaAlta], [GN_MedioDePago_ID], [GN_Moneda_ID], [ID], [margenPreventa], [permitidoEnCobranza], [permitidoEnCotizacion], [rangoVencimientoChequeDesde], [rangoVencimientoChequeHasta], [vigenciaDesde], [vigenciaHasta]) VALUES ('0' ,'0' ,'0' ,'Efectivo' ,'Ago 31 2021 12:00AM' ,'1' ,'1' ,'2' ,'1.00' ,'1' ,'1' ,'0' ,'0' ,'Ago 31 2021 12:00AM' ,'Dic 31 2100 12:00AM' )
INSERT INTO dbo.GN_CondicionDeVenta ( [baja], [cuotasDesde], [cuotasHasta], [descripcion], [fechaAlta], [GN_MedioDePago_ID], [GN_Moneda_ID], [ID], [margenPreventa], [permitidoEnCobranza], [permitidoEnCotizacion], [rangoVencimientoChequeDesde], [rangoVencimientoChequeHasta], [vigenciaDesde], [vigenciaHasta]) VALUES ('0' ,'0' ,'0' ,'Cheque de 0 a 30 días.' ,'Ago 31 2021 12:00AM' ,'2' ,'1' ,'3' ,'1.00' ,'1' ,'1' ,'0' ,'30' ,'Ago 31 2021 12:00AM' ,'Dic 31 2100 12:00AM' )
INSERT INTO dbo.GN_CondicionDeVenta ( [baja], [cuotasDesde], [cuotasHasta], [descripcion], [fechaAlta], [GN_MedioDePago_ID], [GN_Moneda_ID], [ID], [margenPreventa], [permitidoEnCobranza], [permitidoEnCotizacion], [rangoVencimientoChequeDesde], [rangoVencimientoChequeHasta], [vigenciaDesde], [vigenciaHasta]) VALUES ('0' ,'0' ,'0' ,'Cuenta Corriente, 30 dias' ,'Ago 31 2021 12:00AM' ,'4' ,'1' ,'4' ,'1.00' ,'0' ,'1' ,'0' ,'0' ,'Ago 31 2021 12:00AM' ,'Dic 31 2021 12:00AM' )

SET IDENTITY_INSERT GN_CondicionDeVenta  OFF 
GO

/********************************************************************************************/


SET IDENTITY_INSERT GN_Persona  ON 
GO

INSERT INTO dbo.GN_Persona ( [apellido], [cuitCuil], [domicilio], [email], [GN_Localidad_ID], [ID], [nombre], [numeroDocumento], [PER_ResponsabilidadIVA_ID], [PER_TipoDeDocumento_ID], [sexo], [telefonoCelular1], [telefonoCelular2], [telefonoFijo], [tipoPersona]) VALUES ('Peronetto' ,'20314274165' ,'' ,'' ,'1' ,'1' ,'Matias  Enrique' ,'31427416' ,'1' ,'1' ,'M' ,'' ,'' ,'' ,'F' )

SET IDENTITY_INSERT GN_Persona  OFF 
GO
/********************************************************************************************/

SET IDENTITY_INSERT GN_Cliente  ON 
GO

INSERT INTO dbo.GN_Cliente ( [aptoCredito], [baja], [CLI_EstadoCivil_ID], [CLI_SubGrupoCliente_ID], [comentario], [fechaAlta], [fechaNacimiento], [GN_Nacionalidad_ID], [ID], [limiteCredito], [nroIIBB]) VALUES ('1' ,'0' ,'2' ,'2' ,'' ,'Sep  6 2021 11:38AM' ,'Jul  7 2018 12:00AM' ,'1' ,'1' ,'0.00' ,'0' )

SET IDENTITY_INSERT GN_Cliente  OFF 
GO

/********************************************************************************************/


