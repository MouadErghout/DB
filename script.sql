USE [master]
GO
/****** Object:  Database [ENSA_TANGER]    Script Date: 15/03/2023 15:59:17 ******/
CREATE DATABASE [ENSA_TANGER]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ENSA_TANGER', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ENSA_TANGER.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ENSA_TANGER_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ENSA_TANGER_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ENSA_TANGER] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ENSA_TANGER].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ENSA_TANGER] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET ARITHABORT OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ENSA_TANGER] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ENSA_TANGER] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ENSA_TANGER] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ENSA_TANGER] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET RECOVERY FULL 
GO
ALTER DATABASE [ENSA_TANGER] SET  MULTI_USER 
GO
ALTER DATABASE [ENSA_TANGER] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ENSA_TANGER] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ENSA_TANGER] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ENSA_TANGER] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ENSA_TANGER] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ENSA_TANGER] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ENSA_TANGER', N'ON'
GO
ALTER DATABASE [ENSA_TANGER] SET QUERY_STORE = ON
GO
ALTER DATABASE [ENSA_TANGER] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ENSA_TANGER]
GO
/****** Object:  Table [dbo].[Eleve]    Script Date: 15/03/2023 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eleve](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[nom] [varchar](255) NULL,
	[prenom] [varchar](255) NULL,
	[niveau] [varchar](255) NULL,
	[code_fil] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filiere]    Script Date: 15/03/2023 15:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filiere](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[designation] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matiere]    Script Date: 15/03/2023 15:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matiere](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[designation] [varchar](255) NULL,
	[VH] [float] NULL,
	[code_module] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 15/03/2023 15:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[designation] [varchar](255) NULL,
	[niveau] [varchar](255) NULL,
	[semestre] [varchar](255) NULL,
	[code_fil] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moyennes]    Script Date: 15/03/2023 15:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moyennes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_eleve] [varchar](255) NULL,
	[code_fil] [varchar](255) NULL,
	[niveau] [varchar](255) NULL,
	[moyenne] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 15/03/2023 15:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_eleve] [varchar](255) NULL,
	[code_mat] [varchar](255) NULL,
	[note] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Eleve] ON 

INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (1, N'LF54111', N'ERGHOUT', N'Mouad', N'GINF1', N'GINF')
INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (2, N'LF55111', N'BOULOUQAT', N'Jawad', N'GINF1', N'GINF')
INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (3, N'LF56111', N'HASHGUER', N'Mohamed', N'GINF2', N'GINF')
INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (4, N'LF57111', N'ALAMI', N'Louay', N'GINF2', N'GINF')
INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (5, N'LF58111', N'ELMALKI', N'Ilyas', N'GSTR1', N'GSTR')
INSERT [dbo].[Eleve] ([id], [code], [nom], [prenom], [niveau], [code_fil]) VALUES (6, N'LF59111', N'CHEB', N'Laarbi', N'GSTR1', N'GSTR')
SET IDENTITY_INSERT [dbo].[Eleve] OFF
GO
SET IDENTITY_INSERT [dbo].[Filiere] ON 

INSERT [dbo].[Filiere] ([id], [code], [designation]) VALUES (1, N'GINF', N'genie informatique')
INSERT [dbo].[Filiere] ([id], [code], [designation]) VALUES (2, N'GSTR', N'genie systeme de telecommunication et reseaux')
SET IDENTITY_INSERT [dbo].[Filiere] OFF
GO
SET IDENTITY_INSERT [dbo].[Matiere] ON 

INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (1, N'GINF111', N'Programmation C1', 12, N'GINF11')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (2, N'GINF112', N'Programmation C2', 12, N'GINF11')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (3, N'GINF121', N'BD1', 12, N'GINF12')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (4, N'GINF122', N'BD2', 12, N'GINF12')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (5, N'GINF311', N'Java1', 12, N'GINF31')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (6, N'GINF312', N'Java2', 12, N'GINF31')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (7, N'GINF321', N'NoSQL1', 12, N'GINF32')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (8, N'GINF322', N'NoSQL2', 12, N'GINF32')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (9, N'GSTR111', N'Ondes1', 12, N'GSTR11')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (10, N'GSTR112', N'Ondes2', 12, N'GSTR11')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (11, N'GSTR121', N'Antennes1', 12, N'GSTR12')
INSERT [dbo].[Matiere] ([id], [code], [designation], [VH], [code_module]) VALUES (12, N'GSTR122', N'Antennes2', 12, N'GSTR12')
SET IDENTITY_INSERT [dbo].[Matiere] OFF
GO
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (1, N'GINF11', N'Programmation C', N'GINF1', N'S1', N'GINF')
INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (2, N'GINF12', N'Base de données', N'GINF1', N'S1', N'GINF')
INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (3, N'GINF31', N'Java', N'GINF2', N'S3', N'GINF')
INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (4, N'GINF32', N'BD NOSQL', N'GINF2', N'S3', N'GINF')
INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (5, N'GSTR11', N'Ondes', N'GSTR1', N'S1', N'GSTR')
INSERT [dbo].[Module] ([id], [code], [designation], [niveau], [semestre], [code_fil]) VALUES (6, N'GSTR12', N'Antennes', N'GSTR1', N'S1', N'GSTR')
SET IDENTITY_INSERT [dbo].[Module] OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (1, N'LF54111', N'GINF111', 12)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (2, N'LF54111', N'GINF112', 13)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (3, N'LF54111', N'GINF121', 14)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (4, N'LF54111', N'GINF122', 5)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (5, N'LF55111', N'GINF111', 16)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (6, N'LF55111', N'GINF112', 17)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (7, N'LF55111', N'GINF121', 18)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (8, N'LF55111', N'GINF122', 19)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (9, N'LF56111', N'GINF311', 1)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (10, N'LF56111', N'GINF312', 2)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (11, N'LF56111', N'GINF321', 3)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (12, N'LF56111', N'GINF322', 4)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (13, N'LF57111', N'GINF311', 16)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (14, N'LF57111', N'GINF312', 12)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (15, N'LF57111', N'GINF321', 19)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (16, N'LF57111', N'GINF322', 13)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (17, N'LF58111', N'GSTR111', 11)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (18, N'LF58111', N'GSTR112', 10)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (19, N'LF58111', N'GSTR121', 7)
INSERT [dbo].[Notes] ([id], [code_eleve], [code_mat], [note]) VALUES (20, N'LF58111', N'GSTR122', 17)
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Eleve__357D4CF9B4D6BAFC]    Script Date: 15/03/2023 15:59:18 ******/
ALTER TABLE [dbo].[Eleve] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Filiere__357D4CF9B055947E]    Script Date: 15/03/2023 15:59:18 ******/
ALTER TABLE [dbo].[Filiere] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Matiere__357D4CF94B2A6C75]    Script Date: 15/03/2023 15:59:18 ******/
ALTER TABLE [dbo].[Matiere] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Module__357D4CF9FA288644]    Script Date: 15/03/2023 15:59:18 ******/
ALTER TABLE [dbo].[Module] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Eleve]  WITH CHECK ADD FOREIGN KEY([code_fil])
REFERENCES [dbo].[Filiere] ([code])
GO
ALTER TABLE [dbo].[Matiere]  WITH CHECK ADD FOREIGN KEY([code_module])
REFERENCES [dbo].[Module] ([code])
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD FOREIGN KEY([code_fil])
REFERENCES [dbo].[Filiere] ([code])
GO
ALTER TABLE [dbo].[Moyennes]  WITH CHECK ADD FOREIGN KEY([code_eleve])
REFERENCES [dbo].[Eleve] ([code])
GO
ALTER TABLE [dbo].[Moyennes]  WITH CHECK ADD FOREIGN KEY([code_fil])
REFERENCES [dbo].[Filiere] ([code])
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD FOREIGN KEY([code_eleve])
REFERENCES [dbo].[Eleve] ([code])
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD FOREIGN KEY([code_mat])
REFERENCES [dbo].[Matiere] ([code])
GO
USE [master]
GO
ALTER DATABASE [ENSA_TANGER] SET  READ_WRITE 
GO
