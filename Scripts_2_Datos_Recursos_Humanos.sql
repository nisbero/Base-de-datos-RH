GO
INSERT INTO [dbo].[PAISES] ([pais_ID],[pais_nombre]) VALUES (23,'Alemania')
INSERT INTO [dbo].[PAISES] ([pais_ID],[pais_nombre]) VALUES (63,'Argentina')
INSERT INTO [dbo].[PAISES] ([pais_ID],[pais_nombre]) VALUES (386,'Italia')
INSERT INTO [dbo].[PAISES] ([pais_ID],[pais_nombre]) VALUES (275,'Francia')
INSERT INTO [dbo].[PAISES] ([pais_ID],[pais_nombre]) VALUES (57,'Colombia')
GO

INSERT INTO [dbo].[CIUDADES] ([ciud_ID],[ciud_pais_ID],[ciud_nombre]) VALUES (1,23,'Berlin')
INSERT INTO [dbo].[CIUDADES] ([ciud_ID],[ciud_pais_ID],[ciud_nombre]) VALUES (1,63,'Buenos Aires')
INSERT INTO [dbo].[CIUDADES] ([ciud_ID],[ciud_pais_ID],[ciud_nombre]) VALUES (1,386,'Roma')
INSERT INTO [dbo].[CIUDADES] ([ciud_ID],[ciud_pais_ID],[ciud_nombre]) VALUES (1,275,'Paris')
INSERT INTO [dbo].[CIUDADES] ([ciud_ID],[ciud_pais_ID],[ciud_nombre]) VALUES (1,57,'Bogota')
GO


INSERT INTO [dbo].[LOCALIZACIONES] ([localiz_ID],[loacaliz_ciudad_ID],[loacaliz_pais_ID],[localiz_direccion])
VALUES  (1,1,23,'Calle Elm 78')

INSERT INTO [dbo].[LOCALIZACIONES] ([localiz_ID],[loacaliz_ciudad_ID],[loacaliz_pais_ID],[localiz_direccion])
VALUES  (2,1,63,'Avenida Siempre viva')

INSERT INTO [dbo].[LOCALIZACIONES] ([localiz_ID],[loacaliz_ciudad_ID],[loacaliz_pais_ID],[localiz_direccion])
VALUES  (3,1,386,'Calle Anselm Clave 78')

INSERT INTO [dbo].[LOCALIZACIONES] ([localiz_ID],[loacaliz_ciudad_ID],[loacaliz_pais_ID],[localiz_direccion])
VALUES  (4,1,275,'Le rue Moncada')

INSERT INTO [dbo].[LOCALIZACIONES] ([localiz_ID],[loacaliz_ciudad_ID],[loacaliz_pais_ID],[localiz_direccion])
VALUES  (5,1,57,'Av oriental 79 56')
GO


INSERT INTO [dbo].[DEPARTAMENTOS] ([dpto_ID],[dpto_nombre],[dpto_localiz_ID]) VALUES (1 ,'Contabilidad',1)
INSERT INTO [dbo].[DEPARTAMENTOS] ([dpto_ID],[dpto_nombre],[dpto_localiz_ID]) VALUES (2 ,'Sistemas',2)
INSERT INTO [dbo].[DEPARTAMENTOS] ([dpto_ID],[dpto_nombre],[dpto_localiz_ID]) VALUES (3 ,'Tesoreria',3)
INSERT INTO [dbo].[DEPARTAMENTOS] ([dpto_ID],[dpto_nombre],[dpto_localiz_ID]) VALUES (4 ,'Bodega',4)
INSERT INTO [dbo].[DEPARTAMENTOS] ([dpto_ID],[dpto_nombre],[dpto_localiz_ID]) VALUES (5 ,'Ventas',5)
GO



INSERT INTO [dbo].[CARGOS] ([cargo_ID],[cargo_nombre],[cargo_sueldo_minimo],[cargo_suedlo_maximo])
VALUES (1,'Almacenista',1100000,2100000)

INSERT INTO [dbo].[CARGOS] ([cargo_ID],[cargo_nombre],[cargo_sueldo_minimo],[cargo_suedlo_maximo])
VALUES (2,'Ingeniero',10000000,15000000)

INSERT INTO [dbo].[CARGOS] ([cargo_ID],[cargo_nombre],[cargo_sueldo_minimo],[cargo_suedlo_maximo])
VALUES (3,'Supervisor',2100000,3100000)

INSERT INTO [dbo].[CARGOS] ([cargo_ID],[cargo_nombre],[cargo_sueldo_minimo],[cargo_suedlo_maximo])
VALUES (4,'Contador',4100000,5100000)

INSERT INTO [dbo].[CARGOS] ([cargo_ID],[cargo_nombre],[cargo_sueldo_minimo],[cargo_suedlo_maximo])
VALUES (5,'Vendedor',6100000,7100000)
GO




INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (1,'Gerente Comercial')
INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (2,'Gerente Financiero')
INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (3,'Gerente Recursos Humanos')
INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (4,'Gerente Ventas')
INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (5,'Gerente Operaciones')
INSERT INTO [dbo].[GERENTES] ([gerentes_ID],[gerentes_nombre]) VALUES (6,'Gerente General')
GO



INSERT INTO [dbo].[EMPLEADOS]
           ([empl_ID]
           ,[empl_primer_nombre]
           ,[empl_segundo_nombre]
           ,[empl_email]
           ,[empl_fecha_nac]
           ,[empl_sueldo]
           ,[empl_comision]
           ,[empl_cargo_ID]
           ,[empl_dpto_ID])
     VALUES(1,'Homero','Simpson','homero@gmail.com','1990-01-01',1200000,0,1,1)


INSERT INTO [dbo].[EMPLEADOS]
           ([empl_ID]
           ,[empl_primer_nombre]
           ,[empl_segundo_nombre]
           ,[empl_email]
           ,[empl_fecha_nac]
           ,[empl_sueldo]
           ,[empl_comision]
           ,[empl_cargo_ID]
           ,[empl_dpto_ID])
     VALUES(2,'Barney','Gomez','Barney@gmail.com','1989-02-01',1300000,0,2,2)

INSERT INTO [dbo].[EMPLEADOS]
           ([empl_ID]
           ,[empl_primer_nombre]
           ,[empl_segundo_nombre]
           ,[empl_email]
           ,[empl_fecha_nac]
           ,[empl_sueldo]
           ,[empl_comision]
           ,[empl_cargo_ID]
           ,[empl_dpto_ID])
     VALUES(3,'March','Bubier','March@yahoo.com','1988-03-05',3100000,0,3,3)

INSERT INTO [dbo].[EMPLEADOS]
           ([empl_ID]
           ,[empl_primer_nombre]
           ,[empl_segundo_nombre]
           ,[empl_email]
           ,[empl_fecha_nac]
           ,[empl_sueldo]
           ,[empl_comision]
           ,[empl_cargo_ID]
           ,[empl_dpto_ID])
     VALUES(4,'Lisa','Simpson','Lisa@hotmail.com','1995-11-10',1500000,50000,4,4)

INSERT INTO [dbo].[EMPLEADOS]
           ([empl_ID]
           ,[empl_primer_nombre]
           ,[empl_segundo_nombre]
           ,[empl_email]
           ,[empl_fecha_nac]
           ,[empl_sueldo]
           ,[empl_comision]
           ,[empl_cargo_ID]
           ,[empl_dpto_ID])
     VALUES(5,'Bart','Simpson','Bart@gmail.com','1992-12-06',500000,10000,5,5)
GO




INSERT INTO [dbo].[HISTORICO] ([emphist_ID],[emphist_fecha_retiro],[emphist_cargo_ID],[emphist_dpto_ID],[emphist_empl_ID])
VALUES (1,'2010-02-25',1,1,1)

INSERT INTO [dbo].[HISTORICO] ([emphist_ID],[emphist_fecha_retiro],[emphist_cargo_ID],[emphist_dpto_ID],[emphist_empl_ID])
VALUES (2,'2011-03-26',2,2,2)

INSERT INTO [dbo].[HISTORICO] ([emphist_ID],[emphist_fecha_retiro],[emphist_cargo_ID],[emphist_dpto_ID],[emphist_empl_ID])
VALUES (3,'2012-04-27',3,3,3)

INSERT INTO [dbo].[HISTORICO] ([emphist_ID],[emphist_fecha_retiro],[emphist_cargo_ID],[emphist_dpto_ID],[emphist_empl_ID])
VALUES (4,'2015-10-26',4,4,4)

INSERT INTO [dbo].[HISTORICO] ([emphist_ID],[emphist_fecha_retiro],[emphist_cargo_ID],[emphist_dpto_ID],[emphist_empl_ID])
VALUES (5,'2019-12-01',5,5,5)
GO


INSERT INTO [dbo].[EMPLEADOS_GERENTES] ([gerente_ID],[empl_ID]) VALUES(1,1)
INSERT INTO [dbo].[EMPLEADOS_GERENTES] ([gerente_ID],[empl_ID]) VALUES(2,2)
INSERT INTO [dbo].[EMPLEADOS_GERENTES] ([gerente_ID],[empl_ID]) VALUES(3,3)
INSERT INTO [dbo].[EMPLEADOS_GERENTES] ([gerente_ID],[empl_ID]) VALUES(4,4)
INSERT INTO [dbo].[EMPLEADOS_GERENTES] ([gerente_ID],[empl_ID]) VALUES(5,5)
GO