create database Recursos_Humanos
GO
USE [Recursos_Humanos]
GO
/****** Object:  Table [dbo].[CARGOS]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGOS](
	[cargo_ID] [int] NOT NULL,
	[cargo_nombre] [nvarchar](50) NULL,
	[cargo_sueldo_minimo] [int] NULL,
	[cargo_suedlo_maximo] [int] NULL,
 CONSTRAINT [PK_CARGOS] PRIMARY KEY CLUSTERED 
(
	[cargo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIUDADES]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIUDADES](
	[ciud_ID] [int] NOT NULL,
	[ciud_pais_ID] [int] NOT NULL,
	[ciud_nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ciud_ID] ASC,
	[ciud_pais_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTAMENTOS]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTOS](
	[dpto_ID] [int] NOT NULL,
	[dpto_nombre] [varchar](50) NULL,
	[dpto_localiz_ID] [int] NULL,
 CONSTRAINT [PK_DEPARTAMENTOS] PRIMARY KEY CLUSTERED 
(
	[dpto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[empl_ID] [int] NOT NULL,
	[empl_primer_nombre] [nvarchar](50) NULL,
	[empl_segundo_nombre] [nvarchar](50) NULL,
	[empl_email] [varchar](50) NULL,
	[empl_fecha_nac] [date] NULL,
	[empl_sueldo] [int] NULL,
	[empl_comision] [int] NULL,
	[empl_cargo_ID] [int] NULL,
	[empl_dpto_ID] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[empl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS_GERENTES]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS_GERENTES](
	[gerente_ID] [int] NOT NULL,
	[empl_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gerente_ID] ASC,
	[empl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GERENTES]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GERENTES](
	[gerentes_ID] [int] NOT NULL,
	[gerentes_nombre] [varchar](50) NULL,
 CONSTRAINT [PK_GERENTES] PRIMARY KEY CLUSTERED 
(
	[gerentes_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HISTORICO]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISTORICO](
	[emphist_ID] [int] NOT NULL,
	[emphist_fecha_retiro] [date] NULL,
	[emphist_cargo_ID] [int] NULL,
	[emphist_dpto_ID] [int] NULL,
	[emphist_empl_ID] [int] NULL,
 CONSTRAINT [PK_HISTORICO] PRIMARY KEY CLUSTERED 
(
	[emphist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCALIZACIONES]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCALIZACIONES](
	[localiz_ID] [int] NOT NULL,
	[loacaliz_ciudad_ID] [int] NULL,
	[loacaliz_pais_ID] [int] NULL,
	[localiz_direccion] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[localiz_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAISES]    Script Date: 21/11/2023 2:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAISES](
	[pais_ID] [int] NOT NULL,
	[pais_nombre] [varchar](50) NULL,
 CONSTRAINT [PK_PAISES] PRIMARY KEY CLUSTERED 
(
	[pais_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CIUDADES]  WITH CHECK ADD FOREIGN KEY([ciud_pais_ID])
REFERENCES [dbo].[PAISES] ([pais_ID])
GO
ALTER TABLE [dbo].[DEPARTAMENTOS]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAMENTOS_LOCALIZACIONES] FOREIGN KEY([dpto_localiz_ID])
REFERENCES [dbo].[LOCALIZACIONES] ([localiz_ID])
GO
ALTER TABLE [dbo].[DEPARTAMENTOS] CHECK CONSTRAINT [FK_DEPARTAMENTOS_LOCALIZACIONES]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_CARGOS] FOREIGN KEY([empl_cargo_ID])
REFERENCES [dbo].[CARGOS] ([cargo_ID])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_CARGOS]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_DEPARTAMENTOS] FOREIGN KEY([empl_dpto_ID])
REFERENCES [dbo].[DEPARTAMENTOS] ([dpto_ID])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_DEPARTAMENTOS]
GO
ALTER TABLE [dbo].[EMPLEADOS_GERENTES]  WITH CHECK ADD FOREIGN KEY([empl_ID])
REFERENCES [dbo].[EMPLEADOS] ([empl_ID])
GO
ALTER TABLE [dbo].[EMPLEADOS_GERENTES]  WITH CHECK ADD FOREIGN KEY([gerente_ID])
REFERENCES [dbo].[GERENTES] ([gerentes_ID])
GO
ALTER TABLE [dbo].[HISTORICO]  WITH CHECK ADD  CONSTRAINT [FK_HISTORICO_CARGOS] FOREIGN KEY([emphist_cargo_ID])
REFERENCES [dbo].[CARGOS] ([cargo_ID])
GO
ALTER TABLE [dbo].[HISTORICO] CHECK CONSTRAINT [FK_HISTORICO_CARGOS]
GO
ALTER TABLE [dbo].[HISTORICO]  WITH CHECK ADD  CONSTRAINT [FK_HISTORICO_DEPARTAMENTOS1] FOREIGN KEY([emphist_dpto_ID])
REFERENCES [dbo].[DEPARTAMENTOS] ([dpto_ID])
GO
ALTER TABLE [dbo].[HISTORICO] CHECK CONSTRAINT [FK_HISTORICO_DEPARTAMENTOS1]
GO
ALTER TABLE [dbo].[HISTORICO]  WITH CHECK ADD  CONSTRAINT [FK_HISTORICO_EMPLEADOS] FOREIGN KEY([emphist_empl_ID])
REFERENCES [dbo].[EMPLEADOS] ([empl_ID])
GO
ALTER TABLE [dbo].[HISTORICO] CHECK CONSTRAINT [FK_HISTORICO_EMPLEADOS]
GO
ALTER TABLE [dbo].[LOCALIZACIONES]  WITH CHECK ADD FOREIGN KEY([loacaliz_ciudad_ID], [loacaliz_pais_ID])
REFERENCES [dbo].[CIUDADES] ([ciud_ID], [ciud_pais_ID])
GO
