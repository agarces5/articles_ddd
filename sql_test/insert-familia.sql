USE [WTPV_CALEIA_TEST];
GO
SET IDENTITY_INSERT [dbo].[TP_FAMILIA] ON
GO
INSERT [dbo].[TP_FAMILIA] ([Familia], [Nombre], [Fecha_Modificado], [Usuario], [Codigoid])
VALUES
(N'0101', N'AGUA - REFRESCOS', CAST(N'2020-03-05T10:50:29.463' AS DateTime), N'sa', CAST(290 AS Numeric(18, 0))),
(N'0102', N'CAFÉS - INFUSIONES', CAST(N'2020-03-05T10:50:29.510' AS DateTime), N'sa', CAST(291 AS Numeric(18, 0))),
(N'0103', N'CERVEZAS', CAST(N'2020-03-05T10:50:29.540' AS DateTime), N'sa', CAST(292 AS Numeric(18, 0))),
(N'0104', N'VINOS TINTOS', CAST(N'2020-03-05T10:50:29.570' AS DateTime), N'sa', CAST(293 AS Numeric(18, 0))),
(N'0105', N'VINOS BLANCOS', CAST(N'2020-03-05T10:50:29.603' AS DateTime), N'sa', CAST(294 AS Numeric(18, 0))),
(N'0106', N'VINOS ROSADOS', CAST(N'2020-03-05T10:50:29.633' AS DateTime), N'sa', CAST(295 AS Numeric(18, 0))),
(N'0107', N'VINOS DULCES', CAST(N'2020-03-05T10:50:29.667' AS DateTime), N'sa', CAST(296 AS Numeric(18, 0))),
(N'0109', N'CAVA', CAST(N'2020-03-05T10:50:29.697' AS DateTime), N'sa', CAST(297 AS Numeric(18, 0))),
(N'0110', N'CHAMPAGNE', CAST(N'2020-03-05T10:50:29.727' AS DateTime), N'sa', CAST(298 AS Numeric(18, 0))),
(N'0111', N'COCKTAILS', CAST(N'2020-03-05T10:50:29.760' AS DateTime), N'sa', CAST(299 AS Numeric(18, 0))),
(N'0112', N'BRANDIES', CAST(N'2020-03-05T10:50:29.773' AS DateTime), N'sa', CAST(300 AS Numeric(18, 0))),
(N'0113', N'GINEBRAS', CAST(N'2020-03-05T10:50:29.807' AS DateTime), N'sa', CAST(301 AS Numeric(18, 0))),
(N'0114', N'RON', CAST(N'2020-03-05T10:50:29.853' AS DateTime), N'sa', CAST(302 AS Numeric(18, 0))),
(N'0115', N'VODKAS', CAST(N'2020-03-05T10:50:29.883' AS DateTime), N'sa', CAST(303 AS Numeric(18, 0))),
(N'0116', N'WHISKIES', CAST(N'2020-03-05T10:50:29.917' AS DateTime), N'sa', CAST(304 AS Numeric(18, 0))),
(N'0117', N'LICORES', CAST(N'2020-03-05T10:50:29.947' AS DateTime), N'sa', CAST(305 AS Numeric(18, 0))),
(N'0201', N'SNACK', CAST(N'2020-03-05T13:53:59.257' AS DateTime), N'sa', CAST(306 AS Numeric(18, 0))),
(N'0202', N'CARNES', CAST(N'2020-03-05T13:53:59.303' AS DateTime), N'sa', CAST(307 AS Numeric(18, 0))),
(N'0203', N'PESCADOS Y MARISCOS', CAST(N'2020-03-05T13:53:59.320' AS DateTime), N'sa', CAST(308 AS Numeric(18, 0))),
(N'0204', N'ENSALADAS', CAST(N'2020-03-05T13:53:59.320' AS DateTime), N'sa', CAST(309 AS Numeric(18, 0))),
(N'0205', N'PASTAS', CAST(N'2020-03-05T13:53:59.337' AS DateTime), N'sa', CAST(310 AS Numeric(18, 0))),
(N'0206', N'SANDWICHES - BOCADILLOS', CAST(N'2020-03-05T13:53:59.337' AS DateTime), N'sa', CAST(311 AS Numeric(18, 0))),
(N'0207', N'CUCHARA', CAST(N'2020-03-05T13:53:59.350' AS DateTime), N'sa', CAST(312 AS Numeric(18, 0))),
(N'0208', N'PIZZAS', CAST(N'2020-03-05T13:53:59.350' AS DateTime), N'sa', CAST(313 AS Numeric(18, 0))),
(N'0209', N'TOSTADAS', CAST(N'2020-03-05T13:53:59.367' AS DateTime), N'sa', CAST(314 AS Numeric(18, 0))),
(N'0210', N'ARROCES - PAELLAS', CAST(N'2020-03-09T11:47:04.557' AS DateTime), N'sa', CAST(322 AS Numeric(18, 0))),
(N'0211', N'POSTRES', CAST(N'2020-03-05T13:53:59.367' AS DateTime), N'sa', CAST(315 AS Numeric(18, 0))),
(N'0213', N'HUEVOS Y TORTILLAS', CAST(N'2020-03-13T13:00:33.383' AS DateTime), N'sa', CAST(367 AS Numeric(18, 0))),
(N'0216', N'SASHIMIS', CAST(N'2020-03-13T07:26:53.200' AS DateTime), N'sa', CAST(365 AS Numeric(18, 0))),
(N'0217', N'SUSHI', CAST(N'2020-03-13T07:26:53.213' AS DateTime), N'sa', CAST(366 AS Numeric(18, 0))),
(N'0218', N'TABLAS - SURTIDOS', CAST(N'2020-03-12T09:03:08.853' AS DateTime), N'sa', CAST(363 AS Numeric(18, 0))),
(N'0219', N'MENÚS', CAST(N'2020-03-09T10:17:50.020' AS DateTime), N'sa', CAST(320 AS Numeric(18, 0))),
(N'0220', N'DESAYUNOS BUFFET', CAST(N'2020-03-12T14:44:15.620' AS DateTime), N'sa', CAST(364 AS Numeric(18, 0))),
(N'0221', N'ALMUERZOS BUFFET', CAST(N'2022-10-10T11:10:22.830' AS DateTime), N'AS400', CAST(396 AS Numeric(18, 0))),
(N'0222', N'CENAS BUFFET', CAST(N'2022-10-10T11:10:22.843' AS DateTime), N'AS400', CAST(397 AS Numeric(18, 0))),
(N'0299', N'SUPLEMENTOS SNACK', CAST(N'2020-03-05T13:53:59.383' AS DateTime), N'sa', CAST(316 AS Numeric(18, 0))),
(N'0301', N'PASTELERÍA', CAST(N'2020-03-09T08:39:00.833' AS DateTime), N'sa', CAST(317 AS Numeric(18, 0))),
(N'0302', N'OFERTA PASTELERÍA', CAST(N'2020-03-11T11:19:43.440' AS DateTime), N'sa', CAST(360 AS Numeric(18, 0))),
(N'0401', N'HELADOS', CAST(N'2020-03-09T08:39:00.960' AS DateTime), N'sa', CAST(318 AS Numeric(18, 0))),
(N'0601', N'SALADOS - GOLOSINAS', CAST(N'2020-03-09T08:39:00.990' AS DateTime), N'sa', CAST(319 AS Numeric(18, 0))),
(N'0701', N'AGUAS - REFRESCOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.220' AS DateTime), N'AS400', CAST(377 AS Numeric(18, 0))),
(N'0702', N'CAVAS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.260' AS DateTime), N'AS400', CAST(378 AS Numeric(18, 0))),
(N'0703', N'CAFÉS E INFUSIONES (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.297' AS DateTime), N'AS400', CAST(379 AS Numeric(18, 0))),
(N'0705', N'SNACK (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.330' AS DateTime), N'AS400', CAST(380 AS Numeric(18, 0))),
(N'0706', N'CERVEZAS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.363' AS DateTime), N'AS400', CAST(381 AS Numeric(18, 0))),
(N'0707', N'POSTRES (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.393' AS DateTime), N'AS400', CAST(382 AS Numeric(18, 0))),
(N'0708', N'CHAMPAGNE (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.427' AS DateTime), N'AS400', CAST(383 AS Numeric(18, 0))),
(N'0709', N'SANDWICHES - BOCADILLOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.460' AS DateTime), N'AS400', CAST(384 AS Numeric(18, 0))),
(N'0710', N'ENSALADAS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.493' AS DateTime), N'AS400', CAST(385 AS Numeric(18, 0))),
(N'0711', N'VINOS TINTOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.530' AS DateTime), N'AS400', CAST(386 AS Numeric(18, 0))),
(N'0712', N'VINOS BLANCOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.563' AS DateTime), N'AS400', CAST(387 AS Numeric(18, 0))),
(N'0713', N'VINOS ROSADOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.597' AS DateTime), N'AS400', CAST(388 AS Numeric(18, 0))),
(N'0715', N'HUEVOS Y TORTILLAS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.627' AS DateTime), N'AS400', CAST(389 AS Numeric(18, 0))),
(N'0716', N'TABLAS - SURTIDOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.660' AS DateTime), N'AS400', CAST(390 AS Numeric(18, 0))),
(N'0717', N'CARNES (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.703' AS DateTime), N'AS400', CAST(391 AS Numeric(18, 0))),
(N'0718', N'PESCADOS Y MARISCOS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.740' AS DateTime), N'AS400', CAST(392 AS Numeric(18, 0))),
(N'0721', N'PASTAS (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.780' AS DateTime), N'AS400', CAST(393 AS Numeric(18, 0))),
(N'0722', N'CUCHARA (ROOM SERVICES)', CAST(N'2022-02-08T08:41:20.813' AS DateTime), N'AS400', CAST(394 AS Numeric(18, 0))),
(N'0723', N'DESAYUNOS (ROOM SERVICES)', CAST(N'2022-02-08T09:09:09.633' AS DateTime), N'AS400', CAST(395 AS Numeric(18, 0))),
(N'0799', N'SUPLEMENTOS (ROOM SERVICES)', CAST(N'2020-08-04T11:08:46.207' AS DateTime), N'sa', CAST(371 AS Numeric(18, 0))),
(N'3103', N'GROUPON - CIRCUITO', CAST(N'2020-09-17T11:32:32.783' AS DateTime), N'sa', CAST(323 AS Numeric(18, 0))),
(N'3106', N'CIRCUITO SPA', CAST(N'2020-03-09T12:46:33.037' AS DateTime), N'sa', CAST(324 AS Numeric(18, 0))),
(N'3107', N'WONDERBOX', CAST(N'2020-03-09T12:46:33.037' AS DateTime), N'sa', CAST(325 AS Numeric(18, 0))),
(N'3108', N'EGO', CAST(N'2020-03-09T12:46:33.050' AS DateTime), N'sa', CAST(326 AS Numeric(18, 0))),
(N'3109', N'SMARTBOX - CIRCUITO', CAST(N'2020-09-17T11:32:34.970' AS DateTime), N'sa', CAST(361 AS Numeric(18, 0))),
(N'3110', N'ZONA RELAX', CAST(N'2021-09-21T13:30:34.560' AS DateTime), N'AS400', CAST(375 AS Numeric(18, 0))),
(N'3111', N'SPA PRIVADO', CAST(N'2021-09-29T13:14:01.250' AS DateTime), N'AS400', CAST(376 AS Numeric(18, 0))),
(N'3201', N'ESTÉTICOS', CAST(N'2020-03-09T12:57:57.833' AS DateTime), N'sa', CAST(331 AS Numeric(18, 0))),
(N'3202', N'5 SENTIDOS', CAST(N'2020-03-10T12:36:55.830' AS DateTime), N'master', CAST(332 AS Numeric(18, 0))),
(N'3203', N'RITUALES FACIALES', CAST(N'2020-03-09T12:57:57.850' AS DateTime), N'sa', CAST(333 AS Numeric(18, 0))),
(N'3204', N'RITUALES MASAJES', CAST(N'2020-03-09T12:57:57.867' AS DateTime), N'sa', CAST(334 AS Numeric(18, 0))),
(N'3205', N'DEPILACIONES', CAST(N'2020-03-09T12:57:57.867' AS DateTime), N'sa', CAST(335 AS Numeric(18, 0))),
(N'3206', N'EXPERIENCIAS SENZIA', CAST(N'2020-03-09T12:57:57.880' AS DateTime), N'sa', CAST(336 AS Numeric(18, 0))),
(N'3207', N'RITUALES LUXURY', CAST(N'2020-03-11T08:36:43.050' AS DateTime), N'sa', CAST(359 AS Numeric(18, 0))),
(N'3209', N'PELUQUERIA', CAST(N'2020-03-09T12:57:57.897' AS DateTime), N'sa', CAST(339 AS Numeric(18, 0))),
(N'3212', N'GROUPON - TRATAMIENTOS', CAST(N'2020-09-17T11:32:32.783' AS DateTime), N'sa', CAST(372 AS Numeric(18, 0))),
(N'3213', N'SMARTBOX - TRATAMIENTOS', CAST(N'2020-09-17T11:32:34.970' AS DateTime), N'sa', CAST(373 AS Numeric(18, 0))),
(N'3214', N'LA VIDA ES BELLA - TRATAMIENTOS', CAST(N'2020-09-17T11:32:34.987' AS DateTime), N'sa', CAST(374 AS Numeric(18, 0))),
(N'3304', N'HAMMAM', CAST(N'2020-03-09T12:57:57.913' AS DateTime), N'sa', CAST(340 AS Numeric(18, 0))),
(N'3305', N'AYURVEDA', CAST(N'2020-03-09T12:57:57.913' AS DateTime), N'sa', CAST(341 AS Numeric(18, 0))),
(N'3306', N'EMOCOSMETICA', CAST(N'2020-03-09T12:57:57.930' AS DateTime), N'sa', CAST(342 AS Numeric(18, 0))),
(N'3307', N'GERMAINE DE CAPUCCINI', CAST(N'2020-03-09T12:57:57.930' AS DateTime), N'sa', CAST(343 AS Numeric(18, 0))),
(N'3308', N'DAO', CAST(N'2020-03-09T12:57:57.943' AS DateTime), N'sa', CAST(344 AS Numeric(18, 0))),
(N'3309', N'KARMA', CAST(N'2020-03-09T12:57:57.943' AS DateTime), N'sa', CAST(345 AS Numeric(18, 0))),
(N'3310', N'HAPPY BUDDHA', CAST(N'2020-03-09T12:57:57.960' AS DateTime), N'sa', CAST(346 AS Numeric(18, 0))),
(N'3311', N'YEIDRA', CAST(N'2020-03-09T12:57:57.960' AS DateTime), N'sa', CAST(347 AS Numeric(18, 0))),
(N'3312', N'VENTA SPA', CAST(N'2020-03-09T12:57:57.977' AS DateTime), N'sa', CAST(348 AS Numeric(18, 0))),
(N'3313', N'SAKURA', CAST(N'2020-03-09T12:57:57.977' AS DateTime), N'sa', CAST(349 AS Numeric(18, 0))),
(N'3314', N'SAMURAI', CAST(N'2020-03-09T12:57:57.990' AS DateTime), N'sa', CAST(350 AS Numeric(18, 0))),
(N'3401', N'UP SELLING CIRCUITO', CAST(N'2020-03-09T12:57:57.990' AS DateTime), N'sa', CAST(351 AS Numeric(18, 0))),
(N'3501', N'UP SELLING TRATAMIENTOS', CAST(N'2020-03-09T12:57:58.007' AS DateTime), N'sa', CAST(352 AS Numeric(18, 0))),
(N'3601', N'HC EMOCOSMETICA', CAST(N'2020-03-09T12:57:58.007' AS DateTime), N'sa', CAST(353 AS Numeric(18, 0))),
(N'3602', N'HC GERMAINE', CAST(N'2020-03-09T12:57:58.023' AS DateTime), N'sa', CAST(354 AS Numeric(18, 0))),
(N'3603', N'HC RITUALS', CAST(N'2020-03-09T12:57:58.023' AS DateTime), N'sa', CAST(355 AS Numeric(18, 0))),
(N'3701', N'GIMNASIO', CAST(N'2020-03-09T13:46:31.623' AS DateTime), N'sa', CAST(356 AS Numeric(18, 0))),
(N'3801', N'PISCINA EXTERIOR', CAST(N'2020-03-09T13:46:31.637' AS DateTime), N'sa', CAST(357 AS Numeric(18, 0))),
(N'3802', N'PISCINA INTERIOR', CAST(N'2020-03-09T13:46:31.637' AS DateTime), N'sa', CAST(358 AS Numeric(18, 0))),
(N'3901', N'GOLF', CAST(N'2020-08-03T10:15:40.100' AS DateTime), N'sa', CAST(370 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[TP_FAMILIA] OFF
GO