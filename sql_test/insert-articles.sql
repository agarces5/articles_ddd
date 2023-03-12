USE [WTPV_CALEIA_TEST];
GO
SET IDENTITY_INSERT [dbo].[TP_ARTICULO] ON
GO
INSERT [dbo].[TP_ARTICULO] ([Articulo], [Nombre], [Familia], [Barras], [Combinable], [PorcentajeCombina], [Comentario], [Logo], [Fecha_Modificado], [Usuario], [Codigoid])
VALUES
(CAST(1 AS Numeric(9, 0)), N'2x1 vino casa', N'0104', N'', 0, CAST(100.00 AS Numeric(7, 2)), 0, 0x, CAST(N'2021-08-31T18:28:44.290' AS DateTime), N'MASTER', CAST(6435 AS Numeric(18, 0))),
(CAST(10100001 AS Numeric(9, 0)), N'AGUA 0.5L (PLÁSTICO)', N'0101', N'', 0, CAST(100.00 AS Numeric(7, 2)), 0, 0x, CAST(N'2020-03-05T14:33:36.170' AS DateTime), N'MASTER', CAST(4800 AS Numeric(18, 0))),
(CAST(10100002 AS Numeric(9, 0)), N'7-UP', N'0101', N'', 0, CAST(100.00 AS Numeric(7, 2)), 0, 0x, CAST(N'2020-03-06T09:25:23.873' AS DateTime), N'sa', CAST(4801 AS Numeric(18, 0))),
(CAST(10100006 AS Numeric(9, 0)), N'AGUA 1L (PLÁSTICO) ', N'0101', N'', 0, CAST(100.00 AS Numeric(7, 2)), 0, 0x, CAST(N'2020-03-06T09:47:51.113' AS DateTime), N'sa', CAST(4803 AS Numeric(18, 0))),
(CAST(10100010 AS Numeric(9, 0)), N'V GUARANÁ', N'0101', N'', 0, CAST(100.00 AS Numeric(7, 2)), 0, 0x, CAST(N'2020-03-06T09:47:51.237' AS DateTime), N'sa', CAST(4807 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[TP_ARTICULO] OFF
GO
