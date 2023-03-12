USE [WTPV_CALEIA_TEST];
GO
SET IDENTITY_INSERT [dbo].[TP_PRECIOS] ON
GO
INSERT INTO [dbo].[TP_PRECIOS]
([Cajtpv], [Tipotarifa], [Articulo], [Precio], [Porcentaje_Combinado], [Precio_Combinado], [Fecha_Modificado], [Usuario], [Codigoid])
VALUES
(N'0001', N'GENE', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147821 AS Numeric(18, 0))),
(N'0001', N'GENE', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81830 AS Numeric(18, 0))),
(N'0001', N'GENE', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81896 AS Numeric(18, 0))),
(N'0001', N'GENE', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81962 AS Numeric(18, 0))),
(N'0001', N'GENE', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82160 AS Numeric(18, 0))),
(N'0001', N'HAHO', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147818 AS Numeric(18, 0))),
(N'0001', N'HAHO', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81831 AS Numeric(18, 0))),
(N'0001', N'HAHO', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81897 AS Numeric(18, 0))),
(N'0001', N'HAHO', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81963 AS Numeric(18, 0))),
(N'0001', N'HAHO', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82161 AS Numeric(18, 0))),
(N'0001', N'MYP+', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147822 AS Numeric(18, 0))),
(N'0001', N'MYP+', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81832 AS Numeric(18, 0))),
(N'0001', N'MYP+', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81898 AS Numeric(18, 0))),
(N'0001', N'MYP+', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81964 AS Numeric(18, 0))),
(N'0001', N'MYP+', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82162 AS Numeric(18, 0))),
(N'0001', N'REFI', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147819 AS Numeric(18, 0))),
(N'0001', N'REFI', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81833 AS Numeric(18, 0))),
(N'0001', N'REFI', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81899 AS Numeric(18, 0))),
(N'0001', N'REFI', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81965 AS Numeric(18, 0))),
(N'0001', N'REFI', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82163 AS Numeric(18, 0))),
(N'0001', N'TIN+', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147817 AS Numeric(18, 0))),
(N'0001', N'TIN+', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81834 AS Numeric(18, 0))),
(N'0001', N'TIN+', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81900 AS Numeric(18, 0))),
(N'0001', N'TIN+', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81966 AS Numeric(18, 0))),
(N'0001', N'TIN+', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82164 AS Numeric(18, 0))),
(N'0001', N'TINC', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147820 AS Numeric(18, 0))),
(N'0001', N'TINC', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81835 AS Numeric(18, 0))),
(N'0001', N'TINC', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81901 AS Numeric(18, 0))),
(N'0001', N'TINC', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81967 AS Numeric(18, 0))),
(N'0001', N'TINC', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82165 AS Numeric(18, 0))),
(N'0002', N'GENE', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147827 AS Numeric(18, 0))),
(N'0002', N'GENE', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81836 AS Numeric(18, 0))),
(N'0002', N'GENE', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81902 AS Numeric(18, 0))),
(N'0002', N'GENE', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81968 AS Numeric(18, 0))),
(N'0002', N'GENE', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82166 AS Numeric(18, 0))),
(N'0002', N'HAHO', CAST(1 AS Numeric(9, 0)), CAST(3.3000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2021-08-31T18:31:27.363' AS DateTime), N'AS400', CAST(147824 AS Numeric(18, 0))),
(N'0002', N'HAHO', CAST(10100001 AS Numeric(9, 0)), CAST(1.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.260' AS DateTime), N'sa', CAST(81837 AS Numeric(18, 0))),
(N'0002', N'HAHO', CAST(10100002 AS Numeric(9, 0)), CAST(2.9000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.037' AS DateTime), N'sa', CAST(81903 AS Numeric(18, 0))),
(N'0002', N'HAHO', CAST(10100006 AS Numeric(9, 0)), CAST(3.0000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-12T10:21:28.293' AS DateTime), N'sa', CAST(81969 AS Numeric(18, 0))),
(N'0002', N'HAHO', CAST(10100010 AS Numeric(9, 0)), CAST(3.5000 AS Numeric(18, 4)), CAST(100.00 AS Numeric(7, 2)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2020-03-11T09:17:08.473' AS DateTime), N'sa', CAST(82167 AS Numeric(18, 0)))
GO

SET IDENTITY_INSERT [dbo].[TP_PRECIOS] OFF
GO
