USE [MvcDbStok]
GO
/****** Object:  Table [dbo].[Tbl_Kategori]    Script Date: 13.08.2021 18:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategori](
	[KategoriId] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Musteri]    Script Date: 13.08.2021 18:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Musteri](
	[MusteriId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [varchar](50) NULL,
	[MusteriSoyad] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Satislar]    Script Date: 13.08.2021 18:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Satislar](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[Urun] [int] NULL,
	[Musteri] [int] NULL,
	[Adet] [tinyint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Tbl_Satislar] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Urunler]    Script Date: 13.08.2021 18:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Urunler](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](50) NULL,
	[Marka] [varchar](50) NULL,
	[UrunKategori] [smallint] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Stok] [tinyint] NULL,
 CONSTRAINT [PK_Tbl_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategori] ON 

INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (1, N'BEYAZ EŞYA')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (2, N'KÜÇÜK EV ALETLERİ')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (3, N'BİLGİSAYAR')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (4, N'BİLGİSAYAR PARÇALARI')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (5, N'TELEFON')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (7, N'DRONE')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (8, N'PERDE')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (9, N'BISIKLET')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [KategoriAd]) VALUES (10, N'KLIMA')
SET IDENTITY_INSERT [dbo].[Tbl_Kategori] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Musteri] ON 

INSERT [dbo].[Tbl_Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (1, N'BURAK', N'NAS')
INSERT [dbo].[Tbl_Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (2, N'ZARIFE', N'NAS')
INSERT [dbo].[Tbl_Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (4, N'ALİ', N'YILDIZ')
INSERT [dbo].[Tbl_Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (7, N'Vahide', N'Sağlam')
INSERT [dbo].[Tbl_Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (9, N'Ferit', N'Mat')
SET IDENTITY_INSERT [dbo].[Tbl_Musteri] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Satislar] ON 

INSERT [dbo].[Tbl_Satislar] ([SatisId], [Urun], [Musteri], [Adet], [Fiyat]) VALUES (1, 7, 1, 1, CAST(10000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Tbl_Satislar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Urunler] ON 

INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (2, N'BULAŞIK MAKINESI', N'ARÇELİK', 1, CAST(850.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (3, N'SU ISITICI', N'VESTEL', 2, CAST(25.00 AS Decimal(18, 2)), 50)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (4, N'ÜTÜ', N'TEFAL', 2, CAST(150.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (5, N'BUZDOLABI', N'REGAL', 1, CAST(2500.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (6, N'LAPTOP NIRVANA', N'TOSHIBA', 3, CAST(3540.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (7, N'LAPTOP ABRA A7', N'MONSTER', 3, CAST(6542.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (8, N'RAM', N'KINGSTON', 4, CAST(350.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (9, N'HDD 250 GB', N'TOSHIBA', 4, CAST(150.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Tbl_Urunler] ([UrunId], [UrunAd], [Marka], [UrunKategori], [Fiyat], [Stok]) VALUES (10, N'KLAVYE', N'LOGİTECH', 4, CAST(125.00 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[Tbl_Urunler] OFF
ALTER TABLE [dbo].[Tbl_Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Satislar_Tbl_Musteri] FOREIGN KEY([Musteri])
REFERENCES [dbo].[Tbl_Musteri] ([MusteriId])
GO
ALTER TABLE [dbo].[Tbl_Satislar] CHECK CONSTRAINT [FK_Tbl_Satislar_Tbl_Musteri]
GO
ALTER TABLE [dbo].[Tbl_Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Satislar_Tbl_Urunler] FOREIGN KEY([Urun])
REFERENCES [dbo].[Tbl_Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Tbl_Satislar] CHECK CONSTRAINT [FK_Tbl_Satislar_Tbl_Urunler]
GO
ALTER TABLE [dbo].[Tbl_Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Urunler_Tbl_Kategori] FOREIGN KEY([UrunKategori])
REFERENCES [dbo].[Tbl_Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Urunler] CHECK CONSTRAINT [FK_Tbl_Urunler_Tbl_Kategori]
GO
