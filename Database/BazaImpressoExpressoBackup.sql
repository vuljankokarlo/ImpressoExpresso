USE [18018_DB]
GO
/****** Object:  User [18018_User]    Script Date: 22.5.2018. 20:53:11 ******/
CREATE USER [18018_User] FOR LOGIN [18018_User] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [18018_User]
GO
ALTER ROLE [db_datareader] ADD MEMBER [18018_User]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [18018_User]
GO
/****** Object:  Table [dbo].[Artikli]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategorijaID] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[Cijena] [numeric](18, 2) NOT NULL,
	[StanjeNaSkladistu] [float] NOT NULL,
 CONSTRAINT [PK_Artikli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dobavljaci]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dobavljaci](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[Adresa] [nvarchar](50) NOT NULL,
	[Posta] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Dobavljaci] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvjestaji]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvjestaji](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime] NOT NULL,
	[PrometBlagajne] [numeric](18, 2) NOT NULL,
	[PologUBlagajni] [numeric](18, 2) NOT NULL,
	[GotovinaUBlagajni] [numeric](18, 2) NOT NULL,
	[KonobarID] [int] NOT NULL,
	[IznosKartica] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Izvjestaji] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kase]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StanjeKase] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Kase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorije]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorije](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategorije] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnici]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlogaID] [int] NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[KorisnickoIme] [nvarchar](50) NOT NULL,
	[Lozinka] [nvarchar](12) NOT NULL,
	[Adresa] [nvarchar](100) NOT NULL,
	[Posta] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Korisnici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Narudzbe]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Narudzbe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RacunID] [int] NULL,
	[StolID] [int] NOT NULL,
	[KorisnikID] [int] NOT NULL,
	[Datum] [datetime] NOT NULL,
 CONSTRAINT [PK_Naruđbe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Placanja]    Script Date: 22.5.2018. 20:53:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Placanja](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Placanja] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Primke]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Primke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DobavljacID] [int] NOT NULL,
	[KorisnikID] [int] NOT NULL,
	[DatumIVrijeme] [datetime] NOT NULL,
 CONSTRAINT [PK_Primke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Racuni]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racuni](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime] NOT NULL,
	[KorisnikID] [int] NOT NULL,
	[KasaID] [int] NOT NULL,
	[PlacanjeID] [int] NOT NULL,
 CONSTRAINT [PK_Racuni] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkeNarudzbe]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkeNarudzbe](
	[NarudzbaID] [int] NOT NULL,
	[ArtiklID] [int] NOT NULL,
	[Kolicina] [float] NOT NULL,
 CONSTRAINT [PK_StavkeNarudzbe] PRIMARY KEY CLUSTERED 
(
	[NarudzbaID] ASC,
	[ArtiklID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkePrimke]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkePrimke](
	[PrimkaID] [int] NOT NULL,
	[ArtiklID] [int] NOT NULL,
	[Kolicina] [float] NOT NULL,
 CONSTRAINT [PK_StavkePrimke] PRIMARY KEY CLUSTERED 
(
	[PrimkaID] ASC,
	[ArtiklID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stolovi]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stolovi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BrojMjesta] [int] NOT NULL,
 CONSTRAINT [PK_Stolovi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipovi]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipovi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipovi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transakcije]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transakcije](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KasaID] [int] NULL,
	[Datum] [datetime] NULL,
	[TipID] [int] NOT NULL,
	[Iznos] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Transakcije] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uloge]    Script Date: 22.5.2018. 20:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uloge](
	[ID] [int] NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Uloge] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artikli] ON 

INSERT [dbo].[Artikli] ([ID], [KategorijaID], [Naziv], [Cijena], [StanjeNaSkladistu]) VALUES (1, 1, N'Pauliner', CAST(20.00 AS Numeric(18, 2)), 3)
INSERT [dbo].[Artikli] ([ID], [KategorijaID], [Naziv], [Cijena], [StanjeNaSkladistu]) VALUES (2, 2, N'Expresso', CAST(8.00 AS Numeric(18, 2)), 100)
SET IDENTITY_INSERT [dbo].[Artikli] OFF
SET IDENTITY_INSERT [dbo].[Dobavljaci] ON 

INSERT [dbo].[Dobavljaci] ([ID], [Naziv], [Adresa], [Posta], [Telefon]) VALUES (1, N'Magma d.o.o.', N'Varaždinska ulica 14', N'42000 Varaždin', N'042/403-777')
SET IDENTITY_INSERT [dbo].[Dobavljaci] OFF
SET IDENTITY_INSERT [dbo].[Kase] ON 

INSERT [dbo].[Kase] ([ID], [StanjeKase]) VALUES (1, CAST(0.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[Kase] OFF
SET IDENTITY_INSERT [dbo].[Kategorije] ON 

INSERT [dbo].[Kategorije] ([ID], [Naziv]) VALUES (1, N'Pivo')
INSERT [dbo].[Kategorije] ([ID], [Naziv]) VALUES (2, N'Topli napitci')
INSERT [dbo].[Kategorije] ([ID], [Naziv]) VALUES (3, N'Bezalkoholna pića')
INSERT [dbo].[Kategorije] ([ID], [Naziv]) VALUES (4, N'Alkoholna pića')
INSERT [dbo].[Kategorije] ([ID], [Naziv]) VALUES (5, N'Vino')
SET IDENTITY_INSERT [dbo].[Kategorije] OFF
SET IDENTITY_INSERT [dbo].[Korisnici] ON 

INSERT [dbo].[Korisnici] ([ID], [UlogaID], [Ime], [Prezime], [KorisnickoIme], [Lozinka], [Adresa], [Posta], [Telefon]) VALUES (5, 1, N'Rene', N'Maruševec', N'rmaruseve', N'lozinka1', N'Julija Merlica 9', N'42000 Varaždin', N'099/123-4567')
INSERT [dbo].[Korisnici] ([ID], [UlogaID], [Ime], [Prezime], [KorisnickoIme], [Lozinka], [Adresa], [Posta], [Telefon]) VALUES (6, 2, N'Karlo', N'Vuljanko', N'kvuljanko', N'lozinka2', N'Zagrebacka 11', N'42000 Varaždin', N'099/321-4567')
SET IDENTITY_INSERT [dbo].[Korisnici] OFF
SET IDENTITY_INSERT [dbo].[Narudzbe] ON 

INSERT [dbo].[Narudzbe] ([ID], [RacunID], [StolID], [KorisnikID], [Datum]) VALUES (1, 1, 1, 6, CAST(N'2018-05-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Narudzbe] OFF
SET IDENTITY_INSERT [dbo].[Placanja] ON 

INSERT [dbo].[Placanja] ([ID], [Naziv]) VALUES (1, N'Gotovina')
INSERT [dbo].[Placanja] ([ID], [Naziv]) VALUES (2, N'Visa')
INSERT [dbo].[Placanja] ([ID], [Naziv]) VALUES (3, N'American Express')
INSERT [dbo].[Placanja] ([ID], [Naziv]) VALUES (4, N'Maestro')
SET IDENTITY_INSERT [dbo].[Placanja] OFF
SET IDENTITY_INSERT [dbo].[Primke] ON 

INSERT [dbo].[Primke] ([ID], [DobavljacID], [KorisnikID], [DatumIVrijeme]) VALUES (3, 1, 6, CAST(N'2018-05-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Primke] OFF
SET IDENTITY_INSERT [dbo].[Racuni] ON 

INSERT [dbo].[Racuni] ([ID], [Datum], [KorisnikID], [KasaID], [PlacanjeID]) VALUES (1, CAST(N'2018-05-22T00:00:00.000' AS DateTime), 6, 1, 1)
SET IDENTITY_INSERT [dbo].[Racuni] OFF
INSERT [dbo].[StavkeNarudzbe] ([NarudzbaID], [ArtiklID], [Kolicina]) VALUES (1, 1, 2)
INSERT [dbo].[StavkePrimke] ([PrimkaID], [ArtiklID], [Kolicina]) VALUES (3, 1, 10)
INSERT [dbo].[StavkePrimke] ([PrimkaID], [ArtiklID], [Kolicina]) VALUES (3, 2, 100)
SET IDENTITY_INSERT [dbo].[Stolovi] ON 

INSERT [dbo].[Stolovi] ([ID], [BrojMjesta]) VALUES (1, 4)
INSERT [dbo].[Stolovi] ([ID], [BrojMjesta]) VALUES (2, 4)
INSERT [dbo].[Stolovi] ([ID], [BrojMjesta]) VALUES (3, 4)
INSERT [dbo].[Stolovi] ([ID], [BrojMjesta]) VALUES (4, 6)
SET IDENTITY_INSERT [dbo].[Stolovi] OFF
SET IDENTITY_INSERT [dbo].[Tipovi] ON 

INSERT [dbo].[Tipovi] ([ID], [Naziv]) VALUES (1, N'Isplata')
INSERT [dbo].[Tipovi] ([ID], [Naziv]) VALUES (2, N'Polog')
SET IDENTITY_INSERT [dbo].[Tipovi] OFF
SET IDENTITY_INSERT [dbo].[Transakcije] ON 

INSERT [dbo].[Transakcije] ([ID], [KasaID], [Datum], [TipID], [Iznos]) VALUES (1, 1, CAST(N'2018-05-22T12:00:00.000' AS DateTime), 1, CAST(200.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[Transakcije] OFF
INSERT [dbo].[Uloge] ([ID], [Naziv]) VALUES (1, N'Administrator')
INSERT [dbo].[Uloge] ([ID], [Naziv]) VALUES (2, N'Konobar')
ALTER TABLE [dbo].[Artikli]  WITH CHECK ADD  CONSTRAINT [FK_Artikli_Kategorije] FOREIGN KEY([KategorijaID])
REFERENCES [dbo].[Kategorije] ([ID])
GO
ALTER TABLE [dbo].[Artikli] CHECK CONSTRAINT [FK_Artikli_Kategorije]
GO
ALTER TABLE [dbo].[Korisnici]  WITH CHECK ADD  CONSTRAINT [FK_Korisnici_Uloge] FOREIGN KEY([UlogaID])
REFERENCES [dbo].[Uloge] ([ID])
GO
ALTER TABLE [dbo].[Korisnici] CHECK CONSTRAINT [FK_Korisnici_Uloge]
GO
ALTER TABLE [dbo].[Narudzbe]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbe_Korisnici] FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnici] ([ID])
GO
ALTER TABLE [dbo].[Narudzbe] CHECK CONSTRAINT [FK_Narudzbe_Korisnici]
GO
ALTER TABLE [dbo].[Narudzbe]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbe_Racuni] FOREIGN KEY([RacunID])
REFERENCES [dbo].[Racuni] ([ID])
GO
ALTER TABLE [dbo].[Narudzbe] CHECK CONSTRAINT [FK_Narudzbe_Racuni]
GO
ALTER TABLE [dbo].[Narudzbe]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbe_Stolovi] FOREIGN KEY([StolID])
REFERENCES [dbo].[Stolovi] ([ID])
GO
ALTER TABLE [dbo].[Narudzbe] CHECK CONSTRAINT [FK_Narudzbe_Stolovi]
GO
ALTER TABLE [dbo].[Primke]  WITH CHECK ADD  CONSTRAINT [FK_Primke_Dobavljaci] FOREIGN KEY([DobavljacID])
REFERENCES [dbo].[Dobavljaci] ([ID])
GO
ALTER TABLE [dbo].[Primke] CHECK CONSTRAINT [FK_Primke_Dobavljaci]
GO
ALTER TABLE [dbo].[Primke]  WITH CHECK ADD  CONSTRAINT [FK_Primke_Korisnici1] FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnici] ([ID])
GO
ALTER TABLE [dbo].[Primke] CHECK CONSTRAINT [FK_Primke_Korisnici1]
GO
ALTER TABLE [dbo].[Racuni]  WITH CHECK ADD  CONSTRAINT [FK_Racuni_Kase] FOREIGN KEY([KasaID])
REFERENCES [dbo].[Kase] ([ID])
GO
ALTER TABLE [dbo].[Racuni] CHECK CONSTRAINT [FK_Racuni_Kase]
GO
ALTER TABLE [dbo].[Racuni]  WITH CHECK ADD  CONSTRAINT [FK_Racuni_Korisnici] FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnici] ([ID])
GO
ALTER TABLE [dbo].[Racuni] CHECK CONSTRAINT [FK_Racuni_Korisnici]
GO
ALTER TABLE [dbo].[Racuni]  WITH CHECK ADD  CONSTRAINT [FK_Racuni_Placanja] FOREIGN KEY([PlacanjeID])
REFERENCES [dbo].[Placanja] ([ID])
GO
ALTER TABLE [dbo].[Racuni] CHECK CONSTRAINT [FK_Racuni_Placanja]
GO
ALTER TABLE [dbo].[StavkeNarudzbe]  WITH CHECK ADD  CONSTRAINT [FK_StavkeNarudzbe_Artikli] FOREIGN KEY([ArtiklID])
REFERENCES [dbo].[Artikli] ([ID])
GO
ALTER TABLE [dbo].[StavkeNarudzbe] CHECK CONSTRAINT [FK_StavkeNarudzbe_Artikli]
GO
ALTER TABLE [dbo].[StavkeNarudzbe]  WITH CHECK ADD  CONSTRAINT [FK_StavkeNarudzbe_Narudzbe] FOREIGN KEY([NarudzbaID])
REFERENCES [dbo].[Narudzbe] ([ID])
GO
ALTER TABLE [dbo].[StavkeNarudzbe] CHECK CONSTRAINT [FK_StavkeNarudzbe_Narudzbe]
GO
ALTER TABLE [dbo].[StavkePrimke]  WITH CHECK ADD  CONSTRAINT [FK_StavkePrimke_Artikli] FOREIGN KEY([ArtiklID])
REFERENCES [dbo].[Artikli] ([ID])
GO
ALTER TABLE [dbo].[StavkePrimke] CHECK CONSTRAINT [FK_StavkePrimke_Artikli]
GO
ALTER TABLE [dbo].[StavkePrimke]  WITH CHECK ADD  CONSTRAINT [FK_StavkePrimke_Primke] FOREIGN KEY([PrimkaID])
REFERENCES [dbo].[Primke] ([ID])
GO
ALTER TABLE [dbo].[StavkePrimke] CHECK CONSTRAINT [FK_StavkePrimke_Primke]
GO
ALTER TABLE [dbo].[Transakcije]  WITH CHECK ADD  CONSTRAINT [FK_Transakcije_Kase] FOREIGN KEY([KasaID])
REFERENCES [dbo].[Kase] ([ID])
GO
ALTER TABLE [dbo].[Transakcije] CHECK CONSTRAINT [FK_Transakcije_Kase]
GO
ALTER TABLE [dbo].[Transakcije]  WITH CHECK ADD  CONSTRAINT [FK_Transakcije_Tipovi] FOREIGN KEY([TipID])
REFERENCES [dbo].[Tipovi] ([ID])
GO
ALTER TABLE [dbo].[Transakcije] CHECK CONSTRAINT [FK_Transakcije_Tipovi]
GO
