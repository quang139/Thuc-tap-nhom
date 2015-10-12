USE [master]
GO
/****** Object:  Database [QuanLiNhanVien]    Script Date: 10/12/2015 08:03:45 ******/
CREATE DATABASE [QuanLiNhanVien] ON  PRIMARY 
( NAME = N'QuanLiNhanVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QuanLiNhanVien.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLiNhanVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QuanLiNhanVien_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLiNhanVien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiNhanVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiNhanVien] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLiNhanVien] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLiNhanVien] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLiNhanVien] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET  ENABLE_BROKER
GO
ALTER DATABASE [QuanLiNhanVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLiNhanVien] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLiNhanVien] SET  READ_WRITE
GO
ALTER DATABASE [QuanLiNhanVien] SET RECOVERY FULL
GO
ALTER DATABASE [QuanLiNhanVien] SET  MULTI_USER
GO
ALTER DATABASE [QuanLiNhanVien] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLiNhanVien] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLiNhanVien', N'ON'
GO
USE [QuanLiNhanVien]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 10/12/2015 08:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [varchar](10) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[SoNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [SoNV]) VALUES (N'DV1', N'Phòng Tài Chính', 6)
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [SoNV]) VALUES (N'DV2', N'Phòng Nhân Sự', 4)
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [SoNV]) VALUES (N'DV3', N'Phòng kế Toán', 4)
INSERT [dbo].[DonVi] ([MaDV], [TenDV], [SoNV]) VALUES (N'DV4', N'Phòng Hậu Cần', 5)
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/12/2015 08:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Gioitinh] [nvarchar](100) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[CongViec] [nvarchar](50) NULL,
	[MaDV] [varchar](10) NULL,
 CONSTRAINT [PK__NhanVien__2725D70A07020F21] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV1', N'Nguyễn Hoàng Hiếu', CAST(0x151C0B00 AS Date), N'Nam', N'Thái Nguyên', N'Kế Toán', N'DV3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV2', N'Đặng Đức Anh', CAST(0x441C0B00 AS Date), N'Nam', N'Sơn Tây', N'Hậu Cần', N'DV4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV3', N'Đoàn Tiến Đạt', CAST(0x9C1C0B00 AS Date), N'Nam', N'Hải Phòng', N'Nhân Sự', N'DV2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV4', N'Lương Văn Luận', CAST(0x4E1C0B00 AS Date), N'Nam', N'Bắc Giang', N'Hậu Cần', N'DV4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV5', N'Nguyễn Quốc việt ', CAST(0x671B0B00 AS Date), N'Nam', N'Phú Thọ', N'kế Toán', N'DV3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [Gioitinh], [QueQuan], [CongViec], [MaDV]) VALUES (N'NV6', N'Hoàng Đình Đạt', CAST(0xD01C0B00 AS Date), N'Nam', N'Bắc Giang', N'Tài Chính', N'DV1')
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 10/12/2015 08:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgheNghiep] [nvarchar](100) NULL,
	[MaNV] [varchar](10) NULL,
 CONSTRAINT [PK__ThanNhan__2725007303317E3D] PRIMARY KEY CLUSTERED 
(
	[MaTN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'TN1', N'Nguyễn Văn Thắng', CAST(0x39ED0A00 AS Date), N'Nam', N'Công Nhân', N'NV1')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'TN2', N'Đặng Văn Canh', CAST(0xF6EA0A00 AS Date), N'Nam', N'Công An', N'NV2')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'TN3', N'Đoàn Tiến Hải', CAST(0x18F50A00 AS Date), N'Nam', N'Công Nhân', N'NV3')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'TN4', N'Lương Văn Bắc', CAST(0xC5EE0A00 AS Date), N'Nam', N'Làm Ruộng', N'NV4')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'TN5', N'Nguyễn Quốc Chí', CAST(0x24F20A00 AS Date), N'Nam', N'Giáo Viên', N'NV5')
INSERT [dbo].[ThanNhan] ([MaTN], [TenTN], [NgaySinh], [GioiTinh], [NgheNghiep], [MaNV]) VALUES (N'tn6', N'Hoàng Văn A', CAST(0x47E80A00 AS Date), N'Nam', N'Công Nhân', N'NV6')
/****** Object:  ForeignKey [NV_PB_FK]    Script Date: 10/12/2015 08:03:46 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [NV_PB_FK] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [NV_PB_FK]
GO
/****** Object:  ForeignKey [FK_ThanNhan_NhanVien]    Script Date: 10/12/2015 08:03:46 ******/
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_NhanVien]
GO
