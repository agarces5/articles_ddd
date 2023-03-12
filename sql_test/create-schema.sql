CREATE DATABASE [WTPV_CALEIA_TEST]
GO

USE [WTPV_CALEIA_TEST];
GO
/****** Object:  Table [dbo].[TP_ARTICULO]    Script Date: 24/02/2023 10:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TP_ARTICULO](
	[Articulo] [numeric](9, 0) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Familia] [varchar](4) NOT NULL,
	[Barras] [varchar](15) NOT NULL,
	[Combinable] [bit] NOT NULL,
	[PorcentajeCombina] [numeric](7, 2) NOT NULL,
	[Comentario] [bit] NOT NULL,
	[Logo] [image] NOT NULL,
	[Fecha_Modificado] [datetime] NOT NULL,
	[Usuario] [varchar](6) NOT NULL,
	[Codigoid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TP_ARTICULO] PRIMARY KEY CLUSTERED
(
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TP_ARTICULO_CAJA]    Script Date: 24/02/2023 10:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TP_ARTICULO_CAJA](
	[Cajtpv] [varchar](4) NOT NULL,
	[Articulo] [numeric](9, 0) NOT NULL,
	[Coste] [numeric](18, 4) NOT NULL,
	[Fecha_Modificado] [datetime] NOT NULL,
	[Usuario] [varchar](6) NOT NULL,
	[Codigoid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TP_ARTICULO_CAJA] PRIMARY KEY CLUSTERED
(
	[Cajtpv] ASC,
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TP_FAMILIA]    Script Date: 24/02/2023 10:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TP_FAMILIA](
	[Familia] [varchar](4) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha_Modificado] [datetime] NOT NULL,
	[Usuario] [varchar](6) NOT NULL,
	[Codigoid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TP_FAMILIA] PRIMARY KEY CLUSTERED
(
	[Familia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TP_PANEL]    Script Date: 24/02/2023 10:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TP_PANEL](
	[Cajtpv] [varchar](4) NOT NULL,
	[Panel] [varchar](4) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Estado_Tiket] [numeric](1, 0) NOT NULL,
	[Codigoid] [numeric](18, 0) IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TP_PRECIOS]    Script Date: 24/02/2023 10:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TP_PRECIOS](
	[Cajtpv] [varchar](4) NOT NULL,
	[Tipotarifa] [varchar](4) NOT NULL,
	[Articulo] [numeric](9, 0) NOT NULL,
	[Precio] [numeric](18, 4) NOT NULL,
	[Porcentaje_Combinado] [numeric](7, 2) NOT NULL,
	[Precio_Combinado] [numeric](18, 4) NOT NULL,
	[Fecha_Modificado] [datetime] NOT NULL,
	[Usuario] [varchar](6) NOT NULL,
	[Codigoid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TP_PRECIOS] PRIMARY KEY CLUSTERED
(
	[Cajtpv] ASC,
	[Tipotarifa] ASC,
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Articulo]  DEFAULT (0) FOR [Articulo]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Nombre]  DEFAULT ('') FOR [Nombre]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Familia]  DEFAULT ('') FOR [Familia]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Barras]  DEFAULT ('') FOR [Barras]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Combinable]  DEFAULT (0) FOR [Combinable]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_PorcentajeCombina]  DEFAULT (100) FOR [PorcentajeCombina]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Comentario]  DEFAULT (0) FOR [Comentario]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Logo]  DEFAULT ('') FOR [Logo]
GO
ALTER TABLE [dbo].[TP_ARTICULO] ADD  CONSTRAINT [DF_TP_ARTICULO_Fecha_Modificado]  DEFAULT (getdate()) FOR [Fecha_Modificado]
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA] ADD  CONSTRAINT [DF_TP_ARTICULO_CAJA_Cajtpv]  DEFAULT ('') FOR [Cajtpv]
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA] ADD  CONSTRAINT [DF_TP_ARTICULO_CAJA_Articulo]  DEFAULT (0) FOR [Articulo]
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA] ADD  CONSTRAINT [DF_TP_ARTICULO_CAJA_Precoste]  DEFAULT (0) FOR [Coste]
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA] ADD  CONSTRAINT [DF_TP_ARTICULO_CAJA_Fecha_Modificado]  DEFAULT (getdate()) FOR [Fecha_Modificado]
GO
ALTER TABLE [dbo].[TP_FAMILIA] ADD  CONSTRAINT [DF_TP_FAMILIA_Familia]  DEFAULT ('') FOR [Familia]
GO
ALTER TABLE [dbo].[TP_FAMILIA] ADD  CONSTRAINT [DF_TP_FAMILIA_Nombre]  DEFAULT ('') FOR [Nombre]
GO
ALTER TABLE [dbo].[TP_FAMILIA] ADD  CONSTRAINT [DF_TP_FAMILIA_Fecha_Modificado]  DEFAULT (getdate()) FOR [Fecha_Modificado]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Cajtpv]  DEFAULT ('') FOR [Cajtpv]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Tipotarifa]  DEFAULT ('') FOR [Tipotarifa]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Articulo]  DEFAULT (0) FOR [Articulo]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Precio]  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Porcentaje_Combinado]  DEFAULT (100) FOR [Porcentaje_Combinado]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Precio_Combinado]  DEFAULT (0) FOR [Precio_Combinado]
GO
ALTER TABLE [dbo].[TP_PRECIOS] ADD  CONSTRAINT [DF_TP_PRECIOS_Fecha_Modificado]  DEFAULT (getdate()) FOR [Fecha_Modificado]
GO
ALTER TABLE [dbo].[TP_ARTICULO]  WITH CHECK ADD  CONSTRAINT [FK_TP_ARTICULO_TP_FAMILIA] FOREIGN KEY([Familia])
REFERENCES [dbo].[TP_FAMILIA] ([Familia])
GO
ALTER TABLE [dbo].[TP_ARTICULO] CHECK CONSTRAINT [FK_TP_ARTICULO_TP_FAMILIA]
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA]  WITH CHECK ADD  CONSTRAINT [FK_TP_ARTICULO_CAJA_TP_ARTICULO] FOREIGN KEY([Articulo])
REFERENCES [dbo].[TP_ARTICULO] ([Articulo])
GO
ALTER TABLE [dbo].[TP_ARTICULO_CAJA] CHECK CONSTRAINT [FK_TP_ARTICULO_CAJA_TP_ARTICULO]
GO
ALTER TABLE [dbo].[TP_PRECIOS]  WITH CHECK ADD  CONSTRAINT [FK_TP_PRECIOS_TP_ARTICULO] FOREIGN KEY([Articulo])
REFERENCES [dbo].[TP_ARTICULO] ([Articulo])
GO
ALTER TABLE [dbo].[TP_PRECIOS] CHECK CONSTRAINT [FK_TP_PRECIOS_TP_ARTICULO]
GO
GO
