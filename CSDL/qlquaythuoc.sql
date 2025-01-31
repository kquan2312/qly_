USE [master]
GO
/****** Object:  Database [qlquaythuoc]    Script Date: 31/01/2024 9:46:22 CH ******/
CREATE DATABASE [qlquaythuoc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlquaythuoc_Data', FILENAME = N'D:\Users\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlquaythuoc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlquaythuoc_Log', FILENAME = N'D:\Users\MSSQL15.SQLEXPRESS\MSSQL\DATA\qlquaythuoc.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlquaythuoc] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlquaythuoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlquaythuoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlquaythuoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlquaythuoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlquaythuoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlquaythuoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlquaythuoc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlquaythuoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlquaythuoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlquaythuoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlquaythuoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlquaythuoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlquaythuoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlquaythuoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlquaythuoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlquaythuoc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlquaythuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlquaythuoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlquaythuoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlquaythuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlquaythuoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlquaythuoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlquaythuoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlquaythuoc] SET RECOVERY FULL 
GO
ALTER DATABASE [qlquaythuoc] SET  MULTI_USER 
GO
ALTER DATABASE [qlquaythuoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlquaythuoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlquaythuoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlquaythuoc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlquaythuoc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlquaythuoc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlquaythuoc] SET QUERY_STORE = OFF
GO
USE [qlquaythuoc]
GO
/****** Object:  Table [dbo].[cuahang]    Script Date: 31/01/2024 9:46:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuahang](
	[macuahang] [nvarchar](10) NOT NULL,
	[tencuahang] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[dienthoai] [nvarchar](14) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cuahang] PRIMARY KEY CLUSTERED 
(
	[macuahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 31/01/2024 9:46:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[mod] [nvarchar](10) NOT NULL,
	[state] [bit] NOT NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 31/01/2024 9:46:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[mahoadon] [nvarchar](50) NOT NULL,
	[macuahang] [nvarchar](10) NOT NULL,
	[tenthuoc] [nvarchar](50) NOT NULL,
	[soluong] [int] NOT NULL,
	[dongia] [decimal](18, 0) NOT NULL,
	[thanhtien] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuoc]    Script Date: 31/01/2024 9:46:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuoc](
	[mathuoc] [int] NOT NULL,
	[tenthuoc] [nvarchar](50) NOT NULL,
	[soluong] [int] NOT NULL,
	[dongia] [decimal](18, 0) NOT NULL,
	[thanhtien] [decimal](18, 0) NOT NULL,
	[nhacc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_thuoc] PRIMARY KEY CLUSTERED 
(
	[mathuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_ToCH] FOREIGN KEY([macuahang])
REFERENCES [dbo].[cuahang] ([macuahang])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_ToCH]
GO
USE [master]
GO
ALTER DATABASE [qlquaythuoc] SET  READ_WRITE 
GO
