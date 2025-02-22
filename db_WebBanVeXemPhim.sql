USE [QuanLyBanVeXemPhim]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[MaGhe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NOT NULL,
	[SoGhe] [nvarchar](10) NOT NULL,
	[LoaiGhe] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaPhong] [int] NOT NULL,
	[NgayChieu] [date] NOT NULL,
	[GioChieu] [time](7) NOT NULL,
	[GiaVe] [decimal](10, 2) NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](255) NOT NULL,
	[TheLoai] [nvarchar](100) NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayKhoiChieu] [date] NOT NULL,
	[Poster] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL,
	[DoTuoi] [nchar](10) NULL,
	[DienVien] [nvarchar](max) NULL,
	[DaoDien] [nchar](50) NULL,
	[NgonNgu] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](100) NOT NULL,
	[SoLuongGhe] [int] NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanAdmin]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanAdmin](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[MaVe] [int] NOT NULL,
	[PhuongThuc] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[NgayThanhToan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayGui] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trailer]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trailer](
	[MaTrailer] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NULL,
	[DuongDanTrailer] [nvarchar](255) NULL,
	[MoTaTrailer] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrailer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaLichChieu] [int] NOT NULL,
	[MaGhe] [int] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[GiaVe] [decimal](10, 2) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ghe] ON 

INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1, 1, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (2, 1, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (3, 1, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (4, 1, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (5, 1, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (6, 1, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (7, 1, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (8, 1, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (9, 1, N'A9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (10, 1, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (11, 1, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (12, 1, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (13, 1, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (14, 1, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (15, 1, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (16, 1, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (17, 1, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (18, 1, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (19, 1, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (20, 1, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (21, 1, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (22, 1, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (23, 1, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (24, 1, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (25, 1, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (26, 1, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (27, 1, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (28, 1, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (29, 1, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (30, 1, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (31, 1, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (32, 1, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (33, 1, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (34, 1, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (35, 1, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (36, 1, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (37, 1, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (38, 1, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (39, 1, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (40, 1, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (41, 1, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (42, 1, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (43, 1, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (44, 1, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (45, 1, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (46, 1, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (47, 1, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (48, 1, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (49, 1, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (50, 1, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (51, 1, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (52, 1, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (53, 1, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (54, 1, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (55, 1, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (56, 1, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (57, 1, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (58, 1, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (59, 1, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (60, 1, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (61, 1, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (62, 1, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (63, 1, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (64, 1, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (65, 1, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (66, 1, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (67, 1, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (68, 1, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (69, 1, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (70, 1, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (71, 1, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (72, 1, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (73, 1, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (74, 1, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (75, 1, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (76, 1, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (77, 1, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (78, 1, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (79, 1, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (80, 1, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (81, 1, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (82, 1, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (83, 1, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (84, 1, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (85, 1, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (86, 1, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (87, 1, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (88, 1, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (89, 1, N'I9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (90, 1, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (91, 1, N'J1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (92, 1, N'J2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (93, 1, N'J3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (94, 1, N'J4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (95, 1, N'J5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (96, 1, N'J6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (97, 1, N'J7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (98, 1, N'J8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (99, 1, N'J9', N'VIP', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (100, 1, N'J10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (101, 2, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (102, 2, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (103, 2, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (104, 2, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (105, 2, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (106, 2, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (107, 2, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (108, 2, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (109, 2, N'A9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (110, 2, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (111, 2, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (112, 2, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (113, 2, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (114, 2, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (115, 2, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (116, 2, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (117, 2, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (118, 2, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (119, 2, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (120, 2, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (121, 2, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (122, 2, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (123, 2, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (124, 2, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (125, 2, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (126, 2, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (127, 2, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (128, 2, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (129, 2, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (130, 2, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (131, 2, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (132, 2, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (133, 2, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (134, 2, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (135, 2, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (136, 2, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (137, 2, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (138, 2, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (139, 2, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (140, 2, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (141, 2, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (142, 2, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (143, 2, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (144, 2, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (145, 2, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (146, 2, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (147, 2, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (148, 2, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (149, 2, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (150, 2, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (151, 2, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (152, 2, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (153, 2, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (154, 2, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (155, 2, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (156, 2, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (157, 2, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (158, 2, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (159, 2, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (160, 2, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (161, 2, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (162, 2, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (163, 2, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (164, 2, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (165, 2, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (166, 2, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (167, 2, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (168, 2, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (169, 2, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (170, 2, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (171, 2, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (172, 2, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (173, 2, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (174, 2, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (175, 2, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (176, 2, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (177, 2, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (178, 2, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (179, 2, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (180, 2, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (181, 2, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (182, 2, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (183, 2, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (184, 2, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (185, 2, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (186, 2, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (187, 2, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (188, 2, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (189, 2, N'I9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (190, 2, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (621, 3, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (622, 3, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (623, 3, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (624, 3, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (625, 3, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (626, 3, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (627, 3, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (628, 3, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (629, 3, N'A9', N'Thường', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (630, 3, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (631, 3, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (632, 3, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (633, 3, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (634, 3, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (635, 3, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (636, 3, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (637, 3, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (638, 3, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (639, 3, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (640, 3, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (641, 3, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (642, 3, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (643, 3, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (644, 3, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (645, 3, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (646, 3, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (647, 3, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (648, 3, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (649, 3, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (650, 3, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (651, 3, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (652, 3, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (653, 3, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (654, 3, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (655, 3, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (656, 3, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (657, 3, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (658, 3, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (659, 3, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (660, 3, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (661, 3, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (662, 3, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (663, 3, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (664, 3, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (665, 3, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (666, 3, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (667, 3, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (668, 3, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (669, 3, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (670, 3, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (671, 3, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (672, 3, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (673, 3, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (674, 3, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (675, 3, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (676, 3, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (677, 3, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (678, 3, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (679, 3, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (680, 3, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (681, 3, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (682, 3, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (683, 3, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (684, 3, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (685, 3, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (686, 3, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (687, 3, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (688, 3, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (689, 3, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (690, 3, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (691, 3, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (692, 3, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (693, 3, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (694, 3, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (695, 3, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (696, 3, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (697, 3, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (698, 3, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (699, 3, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (700, 3, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (701, 3, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (702, 3, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (703, 3, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (704, 3, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (705, 3, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (706, 3, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (707, 3, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (708, 3, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (709, 3, N'I9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (710, 3, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (711, 3, N'J1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (712, 3, N'J2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (713, 3, N'J3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (714, 3, N'J4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (715, 3, N'J5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (716, 3, N'J6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (717, 3, N'J7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (718, 3, N'J8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (719, 3, N'J9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (720, 3, N'J10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (721, 3, N'K1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (722, 3, N'K2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (723, 3, N'K3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (724, 3, N'K4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (725, 3, N'K5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (726, 3, N'K6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (727, 3, N'K7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (728, 3, N'K8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (729, 3, N'K9', N'VIP', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (730, 3, N'K10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (731, 4, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (732, 4, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (733, 4, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (734, 4, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (735, 4, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (736, 4, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (737, 4, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (738, 4, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (739, 4, N'A9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (740, 4, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (741, 4, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (742, 4, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (743, 4, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (744, 4, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (745, 4, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (746, 4, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (747, 4, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (748, 4, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (749, 4, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (750, 4, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (751, 4, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (752, 4, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (753, 4, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (754, 4, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (755, 4, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (756, 4, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (757, 4, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (758, 4, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (759, 4, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (760, 4, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (761, 4, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (762, 4, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (763, 4, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (764, 4, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (765, 4, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (766, 4, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (767, 4, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (768, 4, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (769, 4, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (770, 4, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (771, 4, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (772, 4, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (773, 4, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (774, 4, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (775, 4, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (776, 4, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (777, 4, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (778, 4, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (779, 4, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (780, 4, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (781, 4, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (782, 4, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (783, 4, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (784, 4, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (785, 4, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (786, 4, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (787, 4, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (788, 4, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (789, 4, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (790, 4, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (791, 4, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (792, 4, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (793, 4, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (794, 4, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (795, 4, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (796, 4, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (797, 4, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (798, 4, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (799, 4, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (800, 4, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (801, 4, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (802, 4, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (803, 4, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (804, 4, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (805, 4, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (806, 4, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (807, 4, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (808, 4, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (809, 4, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (810, 4, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (811, 4, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (812, 4, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (813, 4, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (814, 4, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (815, 4, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (816, 4, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (817, 4, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (818, 4, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (819, 4, N'I9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (820, 4, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (821, 4, N'J1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (822, 4, N'J2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (823, 4, N'J3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (824, 4, N'J4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (825, 4, N'J5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (826, 4, N'J6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (827, 4, N'J7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (828, 4, N'J8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (829, 4, N'J9', N'VIP', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (830, 4, N'J10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (831, 4, N'K1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (832, 4, N'K2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (833, 4, N'K3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (834, 4, N'K4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (835, 4, N'K5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (836, 4, N'K6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (837, 4, N'K7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (838, 4, N'K8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (839, 4, N'K9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (840, 4, N'K10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (841, 5, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (842, 5, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (843, 5, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (844, 5, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (845, 5, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (846, 5, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (847, 5, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (848, 5, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (849, 5, N'A9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (850, 5, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (851, 5, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (852, 5, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (853, 5, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (854, 5, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (855, 5, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (856, 5, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (857, 5, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (858, 5, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (859, 5, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (860, 5, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (861, 5, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (862, 5, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (863, 5, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (864, 5, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (865, 5, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (866, 5, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (867, 5, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (868, 5, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (869, 5, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (870, 5, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (871, 5, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (872, 5, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (873, 5, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (874, 5, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (875, 5, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (876, 5, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (877, 5, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (878, 5, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (879, 5, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (880, 5, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (881, 5, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (882, 5, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (883, 5, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (884, 5, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (885, 5, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (886, 5, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (887, 5, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (888, 5, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (889, 5, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (890, 5, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (891, 5, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (892, 5, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (893, 5, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (894, 5, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (895, 5, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (896, 5, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (897, 5, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (898, 5, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (899, 5, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (900, 5, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (901, 5, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (902, 5, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (903, 5, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (904, 5, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (905, 5, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (906, 5, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (907, 5, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (908, 5, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (909, 5, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (910, 5, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (911, 5, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (912, 5, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (913, 5, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (914, 5, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (915, 5, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (916, 5, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (917, 5, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (918, 5, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (919, 5, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (920, 5, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (921, 5, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (922, 5, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (923, 5, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (924, 5, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (925, 5, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (926, 5, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (927, 5, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (928, 5, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (929, 5, N'I9', N'VIP', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (930, 5, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (931, 5, N'J1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (932, 5, N'J2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (933, 5, N'J3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (934, 5, N'J4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (935, 5, N'J5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (936, 5, N'J6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (937, 5, N'J7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (938, 5, N'J8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (939, 5, N'J9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (940, 5, N'J10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (941, 6, N'A1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (942, 6, N'A2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (943, 6, N'A3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (944, 6, N'A4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (945, 6, N'A5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (946, 6, N'A6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (947, 6, N'A7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (948, 6, N'A8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (949, 6, N'A9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (950, 6, N'A10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (951, 6, N'B1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (952, 6, N'B2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (953, 6, N'B3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (954, 6, N'B4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (955, 6, N'B5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (956, 6, N'B6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (957, 6, N'B7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (958, 6, N'B8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (959, 6, N'B9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (960, 6, N'B10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (961, 6, N'C1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (962, 6, N'C2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (963, 6, N'C3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (964, 6, N'C4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (965, 6, N'C5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (966, 6, N'C6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (967, 6, N'C7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (968, 6, N'C8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (969, 6, N'C9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (970, 6, N'C10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (971, 6, N'D1', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (972, 6, N'D2', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (973, 6, N'D3', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (974, 6, N'D4', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (975, 6, N'D5', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (976, 6, N'D6', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (977, 6, N'D7', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (978, 6, N'D8', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (979, 6, N'D9', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (980, 6, N'D10', N'Thường', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (981, 6, N'E1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (982, 6, N'E2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (983, 6, N'E3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (984, 6, N'E4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (985, 6, N'E5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (986, 6, N'E6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (987, 6, N'E7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (988, 6, N'E8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (989, 6, N'E9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (990, 6, N'E10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (991, 6, N'F1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (992, 6, N'F2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (993, 6, N'F3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (994, 6, N'F4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (995, 6, N'F5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (996, 6, N'F6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (997, 6, N'F7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (998, 6, N'F8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (999, 6, N'F9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1000, 6, N'F10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1001, 6, N'G1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1002, 6, N'G2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1003, 6, N'G3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1004, 6, N'G4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1005, 6, N'G5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1006, 6, N'G6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1007, 6, N'G7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1008, 6, N'G8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1009, 6, N'G9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1010, 6, N'G10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1011, 6, N'H1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1012, 6, N'H2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1013, 6, N'H3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1014, 6, N'H4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1015, 6, N'H5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1016, 6, N'H6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1017, 6, N'H7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1018, 6, N'H8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1019, 6, N'H9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1020, 6, N'H10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1021, 6, N'I1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1022, 6, N'I2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1023, 6, N'I3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1024, 6, N'I4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1025, 6, N'I5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1026, 6, N'I6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1027, 6, N'I7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1028, 6, N'I8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1029, 6, N'I9', N'VIP', 0)
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1030, 6, N'I10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1031, 6, N'J1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1032, 6, N'J2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1033, 6, N'J3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1034, 6, N'J4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1035, 6, N'J5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1036, 6, N'J6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1037, 6, N'J7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1038, 6, N'J8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1039, 6, N'J9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1040, 6, N'J10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1041, 6, N'K1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1042, 6, N'K2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1043, 6, N'K3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1044, 6, N'K4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1045, 6, N'K5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1046, 6, N'K6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1047, 6, N'K7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1048, 6, N'K8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1049, 6, N'K9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1050, 6, N'K10', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1051, 6, N'L1', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1052, 6, N'L2', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1053, 6, N'L3', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1054, 6, N'L4', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1055, 6, N'L5', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1056, 6, N'L6', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1057, 6, N'L7', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1058, 6, N'L8', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1059, 6, N'L9', N'VIP', 0)
INSERT [dbo].[Ghe] ([MaGhe], [MaPhong], [SoGhe], [LoaiGhe], [TrangThai]) VALUES (1060, 6, N'L10', N'VIP', 0)
SET IDENTITY_INSERT [dbo].[Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieu] ON 

INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (3, 16, 1, CAST(N'2025-02-21' AS Date), CAST(N'07:30:00' AS Time), CAST(70000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (4, 17, 3, CAST(N'2025-02-21' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (5, 17, 2, CAST(N'2025-02-21' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (6, 18, 4, CAST(N'2025-02-21' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (7, 18, 5, CAST(N'2025-02-21' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (27, 1031, 1, CAST(N'2025-02-22' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (42, 1031, 1, CAST(N'2025-02-22' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (43, 1031, 1, CAST(N'2025-02-22' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (44, 1031, 1, CAST(N'2025-02-22' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (45, 1040, 2, CAST(N'2025-02-22' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (46, 1040, 2, CAST(N'2025-02-22' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (47, 1040, 2, CAST(N'2025-02-22' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (48, 1041, 3, CAST(N'2025-02-22' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (49, 1041, 3, CAST(N'2025-02-22' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (50, 1041, 3, CAST(N'2025-02-22' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (51, 1037, 4, CAST(N'2025-02-22' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (52, 1037, 4, CAST(N'2025-02-22' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (53, 1037, 4, CAST(N'2025-02-22' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (54, 1038, 5, CAST(N'2025-02-22' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (55, 1037, 1, CAST(N'2025-02-22' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (56, 1038, 5, CAST(N'2025-02-22' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (57, 1038, 5, CAST(N'2025-02-22' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (58, 1038, 5, CAST(N'2025-02-22' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (59, 1039, 6, CAST(N'2025-02-22' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (60, 1031, 6, CAST(N'2025-02-22' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (61, 1039, 6, CAST(N'2025-02-22' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (62, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (63, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (64, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (65, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (66, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (67, 1031, 1, CAST(N'2025-02-23' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (68, 1031, 1, CAST(N'2025-02-24' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (69, 1031, 1, CAST(N'2025-02-24' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (70, 1031, 1, CAST(N'2025-02-24' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (71, 1031, 1, CAST(N'2025-02-24' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (72, 1031, 1, CAST(N'2025-02-24' AS Date), CAST(N'23:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (73, 1031, 1, CAST(N'2025-02-25' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (74, 1031, 1, CAST(N'2025-02-25' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (75, 1031, 1, CAST(N'2025-02-25' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (76, 1031, 1, CAST(N'2025-02-25' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (77, 1031, 1, CAST(N'2025-02-25' AS Date), CAST(N'23:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (78, 1031, 1, CAST(N'2025-02-26' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (79, 1031, 1, CAST(N'2025-02-26' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (80, 1031, 1, CAST(N'2025-02-26' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (81, 1031, 1, CAST(N'2025-02-26' AS Date), CAST(N'23:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (83, 1031, 1, CAST(N'2025-02-27' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (84, 1031, 1, CAST(N'2025-02-27' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (85, 1031, 1, CAST(N'2025-02-27' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (86, 1040, 2, CAST(N'2025-02-23' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (87, 1040, 2, CAST(N'2025-02-23' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (88, 1040, 2, CAST(N'2025-02-23' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (89, 1040, 2, CAST(N'2025-02-23' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (90, 1040, 2, CAST(N'2025-02-23' AS Date), CAST(N'22:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (91, 1040, 2, CAST(N'2025-02-24' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (92, 1040, 2, CAST(N'2025-02-24' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (93, 1040, 2, CAST(N'2025-02-24' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (94, 1040, 2, CAST(N'2025-02-24' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (95, 1040, 2, CAST(N'2025-02-24' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (96, 1040, 2, CAST(N'2025-02-25' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (97, 1040, 2, CAST(N'2025-02-25' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (98, 1040, 2, CAST(N'2025-02-25' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (99, 1040, 2, CAST(N'2025-02-25' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (100, 1040, 2, CAST(N'2025-02-25' AS Date), CAST(N'22:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (101, 1040, 2, CAST(N'2025-02-26' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (102, 1040, 2, CAST(N'2025-02-26' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (103, 1040, 2, CAST(N'2025-02-26' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (104, 1040, 2, CAST(N'2025-02-26' AS Date), CAST(N'22:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (105, 1040, 2, CAST(N'2025-02-26' AS Date), CAST(N'00:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (106, 1040, 2, CAST(N'2025-02-27' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (107, 1040, 2, CAST(N'2025-02-27' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (108, 1040, 2, CAST(N'2025-02-27' AS Date), CAST(N'22:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (109, 1040, 2, CAST(N'2025-02-27' AS Date), CAST(N'00:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (110, 1040, 2, CAST(N'2025-02-27' AS Date), CAST(N'02:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (111, 1041, 3, CAST(N'2025-02-23' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (112, 1041, 3, CAST(N'2025-02-24' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (113, 1041, 3, CAST(N'2025-02-24' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (114, 1041, 3, CAST(N'2025-02-24' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (115, 1041, 3, CAST(N'2025-02-24' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (116, 1041, 3, CAST(N'2025-02-24' AS Date), CAST(N'23:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (117, 1041, 3, CAST(N'2025-02-26' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (118, 1041, 3, CAST(N'2025-02-26' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (119, 1041, 3, CAST(N'2025-02-26' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (120, 1041, 3, CAST(N'2025-02-26' AS Date), CAST(N'23:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (121, 1041, 3, CAST(N'2025-02-26' AS Date), CAST(N'01:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (127, 1041, 3, CAST(N'2025-02-28' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (128, 1041, 3, CAST(N'2025-02-28' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (129, 1041, 3, CAST(N'2025-02-27' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (130, 1041, 3, CAST(N'2025-02-27' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (131, 1041, 3, CAST(N'2025-02-27' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (132, 1041, 3, CAST(N'2025-02-27' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (133, 1037, 4, CAST(N'2025-02-23' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (134, 1037, 4, CAST(N'2025-02-23' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (135, 1037, 4, CAST(N'2025-02-23' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (136, 1037, 4, CAST(N'2025-02-23' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (137, 1037, 4, CAST(N'2025-02-23' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (138, 1037, 4, CAST(N'2025-02-24' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (139, 1037, 4, CAST(N'2025-02-24' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (140, 1037, 4, CAST(N'2025-02-24' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
GO
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (141, 1037, 4, CAST(N'2025-02-25' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (142, 1037, 4, CAST(N'2025-02-25' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (143, 1037, 4, CAST(N'2025-02-25' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (144, 1037, 4, CAST(N'2025-02-25' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (145, 1037, 4, CAST(N'2025-02-26' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (146, 1037, 4, CAST(N'2025-02-26' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (147, 1037, 4, CAST(N'2025-02-26' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (148, 1038, 5, CAST(N'2025-02-23' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (149, 1038, 5, CAST(N'2025-02-23' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (150, 1038, 5, CAST(N'2025-02-23' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (151, 1038, 5, CAST(N'2025-02-23' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (152, 1038, 5, CAST(N'2025-02-24' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (153, 1038, 5, CAST(N'2025-02-24' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (154, 1038, 5, CAST(N'2025-02-24' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (155, 1038, 5, CAST(N'2025-02-24' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (156, 1038, 5, CAST(N'2025-02-25' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (157, 1038, 5, CAST(N'2025-02-25' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (158, 1038, 5, CAST(N'2025-02-25' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (159, 1038, 5, CAST(N'2025-02-25' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (160, 1038, 5, CAST(N'2025-02-26' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (161, 1038, 5, CAST(N'2025-02-26' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (162, 1038, 5, CAST(N'2025-02-26' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (163, 1038, 5, CAST(N'2025-02-27' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (164, 1038, 5, CAST(N'2025-02-27' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (165, 1038, 5, CAST(N'2025-02-27' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (166, 1038, 5, CAST(N'2025-02-27' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (167, 1038, 5, CAST(N'2025-02-27' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (1, N'Nguyễn Văn An', N'vanan9524@gmail.com', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (4, N'Nguyễn Văn An', N'admin@gmail.com', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (5, N'an1', N'admin2@gmail.com', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (6, N'Nguyễn Văn An', N'admin3@gmail.com', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (7, N'Nguyễn Văn An', N'admin22@gmail.com', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai]) VALUES (8, N'Nguyễn Văn An', N'admin5@gmail.com', N'123456', 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (16, N'Lật Mặt: 48H', N'Hành động, Phiêu lưu', 111, N'Một người đàn ông chạy đua với thời gian để bảo vệ gia đình trước một tổ chức nguy hiểm.', CAST(N'2021-04-16' AS Date), N'latmat48h.jpg', 0, N'T18       ', NULL, N'Trấn Thành                                      ', NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (17, N'Em Và Trịnh', N'Tâm lý, Tiểu sử', 136, N'Câu chuyện về cuộc đời nhạc sĩ Trịnh Công Sơn qua góc nhìn của những người phụ nữ trong cuộc đời ông.', CAST(N'2022-06-17' AS Date), N'emvatrinh.jpg', 0, N'T16       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (18, N'Thanh Sói', N'Hành động, Tội phạm', 135, N'Câu chuyện về Thanh Sói - một nhân vật từ vũ trụ của Hai Phượng, và hành trình từ thiện sang ác.', CAST(N'2022-12-22' AS Date), N'thanhsoi.jpg', 0, N'T18       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (19, N'Nhà Bà Nữ', N'Hài hước, Gia đình', 106, N'Những câu chuyện đời thường nhưng đầy cảm xúc về mối quan hệ giữa các thành viên trong gia đình bà Nữ.', CAST(N'2023-01-22' AS Date), N'images.jpg', 0, N'T18       ', N'Trấn Thành', N'Trấn Thành                                      ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (20, N'Bẫy Ngọt Ngào', N'Tâm lý, Tình cảm', 100, N'Câu chuyện về một nhóm bạn thân khám phá bí mật đen tối trong cuộc sống hôn nhân của một trong số họ.', CAST(N'2022-02-11' AS Date), N'bayngotngao.jpg', 0, N'T13       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1031, N'Nhà Gia Tiên', N'Gia đình, Hài hước', 117, N'Nhà Gia Tiên xoay quanh câu chuyện đa góc nhìn về các thế hệ khác nhau trong một gia đình, có hai nhân vật chính là Gia Minh (Huỳnh Lập) và Mỹ Tiên (Phương Mỹ Chi). Trở về căn nhà gia tiên để quay các video “triệu view” trên mạng xã hội, Mỹ Tiên - một nhà sáng tạo nội dung thuộc thế hệ Z vốn không tin vào chuyện tâm linh, hoàn toàn mất kết nối với gia đình, bất ngờ nhìn thấy Gia Minh - người anh trai đã mất từ lâu. Để hồn ma của Gia Minh có thể siêu thoát và không tiếp tục làm phiền mình, Mỹ Tiên bắt tay cùng Gia Minh lên kế hoạch giữ lấy căn nhà gia tiên đang bị họ hàng tranh chấp, đòi ông nội chia tài sản.', CAST(N'2025-02-21' AS Date), N'af83e92c-a8f9-4a78-b0a2-bb59bdaa3af2_nhagiatien.jpg', 1, N'T18       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1033, N'Võ Đường Đại Náo', N'Hài hước, Phiêu lưu', 108, N'Bruce Chung (Cổ Thiên Lạc), cựu huyền thoại Muay Thái Macau đang điều hành một phòng tập đấm bốc đang trên bờ phá sản. Elsa Lam (Vương Đan Ni), sau khi phát hiện bạn trai ngoại tình với nữ vô địch Muay Thái Surewin (Châu Tú Na), quyết định thách đấu trên sàn đấu và đến nhờ Bruce huấn luyện. Dưới sự rèn luyện khắc nghiệt, Elsa dần nhận ra mục tiêu không phải trả thù mà là thay đổi chính mình. Tinh thần chiến đấu của cô đã truyền cảm hứng cho Bruce và những người xung quanh, khiến họ dám đối mặt với những thử thách trong cuộc sống. Cuối cùng, Bruce quyết định tái đấu với học trò cũ Arnold Chan (Trương Văn Kiệt), đánh dấu một trận chiến đỉnh cao đầy cảm xúc.', CAST(N'2025-02-28' AS Date), N'fe6ccb6e-ed37-4e9e-b302-bc165c264cde_voduongdainao.png', 1, N'T13       ', N'Cổ Thiên Lạc, Châu Tú Na,...', N'Albert Kai-Kwong Mak                              ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1034, N'Anh Không Đau', N'Hành động, Hài hước', 100, N'Khi cô gái trong mơ của mình bị bắt cóc, một người đàn ông không có khả năng cảm thấy đau đớn về thể xác đã biến tình trạng hiếm gặp của mình thành một lợi thế bất ngờ trong cuộc chiến giải cứu cô.', CAST(N'2025-03-14' AS Date), N'e2a12f25-d650-4d81-826a-94e62b68df35_AnhKhongDau.jpg', 1, N'T18       ', N'Amber Midthunder, Jack Quaid, Ray Nicholson', N'Dan Berk, Robert Olsen                            ', N'Tiếng Anh          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1035, N'Ninja Loạn Thị', N'Hoạt hình, Hài hước', 100, N'Một loạt phim hoạt hình có sự góp mặt của Nintamas và những người khác, xoay quanh bộ ba Rantarou, Kirimaru và Shinbei, tập trung vào những cuộc phiêu lưu, niềm vui và các hoạt động hàng ngày của họ tại Học viện Ninjutsu.', CAST(N'2025-02-28' AS Date), N'9c8e6cce-837a-4619-a47d-fca7f5c26689_NinjaLoanThi.png', 1, N'P         ', N'Mayumi Tanaka, Minami Takayama, Teiyû Ichiryûsai', NULL, N'Tiếng Nhật        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1036, N'Truyện Cổ Tích Bị Cấm', N'Hài hước, Tình cảm', 109, N'Bộ phim kể về Danbi, một người có ước mơ trở thành nhà văn viết sách thiếu nhi nhưng thực chất lại là lính mới trong đội chống nạn khiêu dâm bất hợp pháp.', CAST(N'2025-03-21' AS Date), N'64b23a34-b23d-4ae7-99fa-72b02f50040f_TruyenCoTichBiCam.png', 1, N'T16       ', N'Sung Dong-il, Park Ji-hyun, Choi Siwon,..', N'Jong-suk Lee                                      ', N'Tiếng Hàn         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1037, N'Đèn Âm Hồn', N'Bí ẩn, Hồi Hộp', 102, N'Lấy cảm các từ Chuyện Người Con Gái Nam Xương, Đèn Âm Hồn xảy tại một ngôi làng miền Bắc vào thời phong kiến. Thương một mình nuôi con trai chờ chồng đi lính trở về. Lĩnh (con Thương) vô tình nhặt được một cây đèn, từ đó cậu gọi chiếc bóng hiện trên tường là cha. Theo lời của cô đồng trong làng, đây là cây đèn âm hồn, có thể đã triệu hồn một ác linh quay lại báo thù. Từ đây, những sự kiện bất thường ma quái xảy ra với Thương và cả dân làng. Liệu chiếc bóng đó có phải là chồng của Thương, cha của Lĩnh hay không?', CAST(N'2025-02-07' AS Date), N'37678e3b-3e8c-40b2-a017-795826186793_DenAmHon.png', 1, N'T18       ', N'Diễm Trang, Hoàng Kim Ngọc, Phú Thịnh, NSƯT Chiều Xuân, NSƯT Quang Tèo, Tuấn Mõ, Hạo Khang, Đình Khang...', N'Hoàng Nam                                        ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1038, N'Bộ Tứ Báo Thủ', N'Hài hước, Tình cảm', 132, N'Bộ tứ báo thủ bao gồm Chét-Xi-Cà, Dì Bốn, Cậu Mười Một, Con Kiều chính thức xuất hiện cùng với phi vụ báo thế kỉ. Nghe nói kế hoạch tiếp theo là ở Đà Lạt, liệu bốn báo thủ sẽ quậy Tết tung nóc cỡ nào?', CAST(N'2025-01-29' AS Date), N'8d69f739-370e-46ac-9ad0-9a0674a46079_BoTuBaoThu.jpg', 1, N'T16       ', N'Trấn Thành, Lê Giang, Lê Dương Bảo Lâm, Uyển Ân,...', N'Trấn Thành                                      ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1039, N'Nụ Hôn Bạc Tỷ', N'Hài hước, Tình cảm', 100, N'Câu chuyện xoay quanh Thúy Vân (Thiên Ân) và người chị "trời đánh" Thúy Kiều (Thu Trang) đang phải đối mặt với món nợ lớn do người tình gây ra. Đứng trước nguy cơ mất trắng, cả hai buộc phải vạch kế hoạch chinh phục "Nụ Hôn Bạc Tỷ" từ hai chàng thiếu gia Quang (Lê Xuân Tiền) và Tú (Ma Ran Đô)', CAST(N'2025-01-29' AS Date), N'a241aede-6f4a-4b7d-a3b8-189b153290ee_NuHonBacTy.jpg', 1, N'T13       ', N'Thu Trang, Đoàn Thiên Ân, Lê  Xuân Tiền, Ma Ran Đô, Tiến Luật, Võ Tấn Phát, Hoàng Phi, Huỳnh Phương, Huy Khánh', N'Thu Trang                                         ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1040, N'Nữ Tu Bóng Tối', N'Kinh Dị, Bí Ẩn', 114, N'ai nữ tu Junia (Song Hye-kyo) và Michaela (Jeon Yeo-been) dùng mọi nỗ lực thực hiện nghi lễ trừ tà để cứu rỗi cậu bé Hee Joon đang bị linh hồn tà ác chiếm giữ. Một cuộc chiến không hồi kết giữa đức tin và quỷ dữ, giữa bí ẩn tâm linh và niềm tin y học.', CAST(N'2025-02-21' AS Date), N'd33dd127-07d5-45d8-a8dc-0597b854ecdf_NuTuBongToi.png', 1, N'T16       ', N'Song Hye-kyo , Jeon Yeo-been , Lee Jin-wook,...', N'Hyeok-jae Kwon                                    ', N'Tiếng Hàn         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1041, N'Captain America: Thế Giới Mới', N'Khoa học, viễn tưởng', 118, N'Sau cuộc gặp gỡ với tân Tổng thống Hoa Kỳ Thaddeus Ross, Sam Wilson vô tình bị cuốn vào cuộc xung đột tại một sự kiện quốc tế. Trong vai trò Captain America mới, Wilson buộc phải điều tra và lật tẩy một âm mưu toàn cầu bất chính, trước khi kẻ thủ ác nhấn chìm cả thế giới vào cảnh suy tàn.', CAST(N'2025-02-14' AS Date), N'59a4f373-3fad-4416-a758-f0cee0c1214b_TheGioiMoi.png', 1, N'T13       ', N'Harrison Ford, Anthoy Mackie, Giancarlo Esposito, Rosa Salazar, Seth Rollins, Shira Haas', N'Julius Onah                                       ', N'Tiếng Anh          ')
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (1, N'Phòng 1', 100, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (2, N'Phòng 2', 90, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (3, N'Phòng 3', 110, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (4, N'Phòng 4', 110, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (5, N'Phòng 5', 100, 1)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [SoLuongGhe], [TrangThai]) VALUES (6, N'Phòng 6', 120, 1)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanAdmin] ON 

INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (1, N'admin', N'admin', N'Nguyễn Văn An', N'admin@gmail.com', N'0327762985', NULL, 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (4, N'admin2', N'123456', N'An12355', N'admin2@gmail.com', N'0327762985', NULL, 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (7, N'AN', N'123456', N'An', N'admin4@gmail.com', N'123456789', CAST(N'2025-02-13T12:59:40.717' AS DateTime), 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (10, N'AN1', N'123456', N'An', N'admin5@gmail.com', N'2112512125', CAST(N'2025-02-13T13:00:06.840' AS DateTime), 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (12, N'AN200003', N'123456', N'An', N'admin03@gmail.com', N'0327762985', CAST(N'2025-02-19T17:22:30.683' AS DateTime), 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (14, N'qưeqw2', N'123456', N'An', N'admin32@gmail.com', N'0327762987', CAST(N'2025-02-19T17:30:15.837' AS DateTime), 1)
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai]) VALUES (16, N'AN23', N'123456', N'An', N'admin33@gmail.com', N'03277629853', CAST(N'2025-02-19T17:37:48.410' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TaiKhoanAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (1, 1, N'MoMo', N'true', CAST(N'2025-02-20T22:58:47.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[Trailer] ON 

INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1, 16, N'https://www.youtube.com/watch?v=hOe-SdcZ3eI', N'Một trailer đầy kịch tính về cuộc đua bảo vệ gia đình.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (2, 17, N'https://www.youtube.com/watch?v=zzik4JB9D1Q', N'Trailer về cuộc đời nhạc sĩ Trịnh Công Sơn qua góc nhìn của những người phụ nữ.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (3, 18, N'https://www.youtube.com/watch?v=nL4LorD2Kik', N'Trailer về hành trình của Thanh Sói từ thiện sang ác trong vũ trụ Hai Phượng.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (4, 19, N'https://www.youtube.com/watch?v=IkaP0KJWTsQ', N'Trailer về mối quan hệ gia đình đầy cảm xúc của bà Nữ.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (5, 20, N'https://www.youtube.com/watch?v=reyG2qWzG-M', N'Trailer về nhóm bạn khám phá bí mật đen tối trong cuộc sống hôn nhân.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1007, 1031, N'https://youtu.be/qEudf2vCPs4?t=4', N'Trailer Nhà Gia Tiên xoay quanh câu chuyện đa góc nhìn về các thế hệ khác nhau trong một gia đình')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1009, 1036, N'https://youtu.be/XPhg1GKSPQM', N'Bộ phim kể về Danbi, một người có ước mơ trở thành nhà văn viết sách thiếu nhi nhưng thực chất lại là lính mới trong đội chống nạn khiêu dâm bất hợp pháp.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1010, 1034, N'https://youtu.be/YRhAlCKDREY', N'Khi cô gái trong mơ của mình bị bắt cóc, một người đàn ông không có khả năng cảm thấy đau đớn về thể xác đã biến tình trạng hiếm gặp của mình thành một lợi thế bất ngờ trong cuộc chiến giải cứu cô.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1012, 1035, N'https://youtu.be/g_o_j2OBgHo', N'Một loạt phim hoạt hình có sự góp mặt của Nintamas và những người khác, xoay quanh bộ ba Rantarou, Kirimaru và Shinbei, tập trung vào những cuộc phiêu lưu, niềm vui và các hoạt động hàng ngày của họ tại Học viện Ninjutsu.')
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1014, 1033, N'https://youtu.be/JSEzFqeGupw', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1015, 1037, N'https://youtu.be/mhRmBir58hc', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1016, 1038, N'https://youtu.be/miC9FrfpwtY', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1017, 1039, N'https://youtu.be/cVJvcEKFSh4', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1018, 1040, N'https://youtu.be/hTbb7mQ-OiQ', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1019, 1041, N'https://youtu.be/3SsLZVERUig', NULL)
SET IDENTITY_INSERT [dbo].[Trailer] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1, 3, 1, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T22:01:05.640' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (3, 3, 2, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1002, 87, 2, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-23T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D105348E78FD85]    Script Date: 2/23/2025 4:40:44 AM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC003C4EBA0]    Script Date: 2/23/2025 4:40:44 AM ******/
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D10534278C91B6]    Script Date: 2/23/2025 4:40:44 AM ******/
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ghe] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  DEFAULT (getdate()) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[ThongBao] ADD  DEFAULT (getdate()) FOR [NgayGui]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT (getdate()) FOR [NgayDat]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Trailer]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaGhe])
REFERENCES [dbo].[Ghe] ([MaGhe])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NguoiDung] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NguoiDung]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatPhongVaGhe]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CapNhatPhongVaGhe]
    @MaPhong INT,              -- Mã phòng cần cập nhật
    @TenPhongMoi NVARCHAR(50), -- Tên phòng mới
    @TongSoGheMoi INT,         -- Số lượng ghế mới
    @TrangThaiMoi BIT          -- Trạng thái mới (1: Hoạt động, 0: Không hoạt động)
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật thông tin phòng
    UPDATE Phong
    SET TenPhong = @TenPhongMoi, 
        SoLuongGhe = @TongSoGheMoi, 
        TrangThai = @TrangThaiMoi
    WHERE MaPhong = @MaPhong;

    -- Xóa toàn bộ ghế cũ của phòng
    DELETE FROM Ghe WHERE MaPhong = @MaPhong;

    -- Nếu phòng bị khóa (TrangThai = 0) thì không tạo lại ghế
    IF @TrangThaiMoi = 0
        RETURN;

    -- Khai báo biến để tạo ghế mới
    DECLARE @Hang CHAR(1);
    DECLARE @SoGhe INT;
    DECLARE @LoaiGhe NVARCHAR(50);
    DECLARE @SoLuongGhePerHang INT;

    -- Xác định số ghế mỗi hàng (mặc định là 10)
    SET @SoLuongGhePerHang = 10;

    -- Bắt đầu từ hàng A
    SET @Hang = 'A';

    -- Tính số hàng ghế cần có
    DECLARE @SoHang INT = CEILING(@TongSoGheMoi * 1.0 / @SoLuongGhePerHang);
    DECLARE @i INT = 1;

    WHILE @i <= @SoHang
    BEGIN
        SET @SoGhe = 1;

        -- Xác định loại ghế
        IF @Hang IN ('A', 'B', 'C', 'D')
            SET @LoaiGhe = N'Thường';
        ELSE
            SET @LoaiGhe = N'VIP';

        -- Chèn số ghế mới vào phòng
        WHILE @SoGhe <= @SoLuongGhePerHang AND ((@i - 1) * @SoLuongGhePerHang + @SoGhe) <= @TongSoGheMoi
        BEGIN
            INSERT INTO Ghe (MaPhong, SoGhe, LoaiGhe, TrangThai)
            VALUES 
            (
                @MaPhong, 
                @Hang + CAST(@SoGhe AS NVARCHAR(10)),
                @LoaiGhe,  
                0
            );

            SET @SoGhe = @SoGhe + 1;
        END

        -- Chuyển sang hàng tiếp theo
        SET @Hang = CHAR(ASCII(@Hang) + 1);
        SET @i = @i + 1;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[ThemPhongVaGhe]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemPhongVaGhe]
    @TenPhong NVARCHAR(50),  -- Tên phòng
    @TongSoGhe INT  -- Tổng số ghế trong phòng
AS
BEGIN
    -- Thêm phòng mới vào bảng Phong
    INSERT INTO Phong (TenPhong, SoLuongGhe,TrangThai)
    VALUES (@TenPhong, @TongSoGhe,1);

    -- Lấy MaPhong vừa thêm
    DECLARE @MaPhong INT;
    SET @MaPhong = SCOPE_IDENTITY();

    -- Khai báo các biến để tạo ghế
    DECLARE @Hang CHAR(1);  -- Biến để lưu hàng ghế (A, B, C,...)
    DECLARE @SoGhe INT;  -- Biến để lưu số ghế trong mỗi hàng
    DECLARE @LoaiGhe NVARCHAR(50);  -- Biến để lưu loại ghế
    DECLARE @SoLuongGhePerHang INT;  -- Biến để lưu số ghế mỗi hàng

    -- Xác định số ghế mỗi hàng và số hàng cần thiết dựa trên tổng số ghế
   
        SET @SoLuongGhePerHang = 10;

    -- Lặp qua từng hàng ghế (A đến J hoặc nhiều hơn tùy số ghế)
    SET @Hang = 'A';  -- Bắt đầu từ hàng A

    -- Lặp qua từng hàng ghế (9 hoặc 12 hàng tùy số ghế)
    DECLARE @SoHang INT = @TongSoGhe / @SoLuongGhePerHang;
    DECLARE @i INT = 1;  -- Biến đếm số hàng
    WHILE @i <= @SoHang
    BEGIN
        SET @SoGhe = 1;  -- Đặt lại số ghế cho mỗi hàng từ 1 đến 10

        -- Phân loại ghế "Thường" cho các hàng A, B, C, D
        IF @Hang IN ('A', 'B', 'C', 'D')
        BEGIN
            SET @LoaiGhe = N'Thường';  -- Loại ghế là "Thường"
        END
        -- Phân loại ghế "VIP" cho các hàng E, F, G, H, I, J
        ELSE
        BEGIN
            SET @LoaiGhe = N'VIP';  -- Loại ghế là "VIP"
        END

        -- Lặp qua từng số ghế trong mỗi hàng
        WHILE @SoGhe <= @SoLuongGhePerHang
        BEGIN
            INSERT INTO Ghe (MaPhong, SoGhe, LoaiGhe, TrangThai)
            VALUES 
            (
                @MaPhong, 
                @Hang + CAST(@SoGhe AS NVARCHAR(10)),  -- Tạo số ghế như A1, A2, B1, B2,...
                @LoaiGhe,  -- Loại ghế (Thường hoặc VIP)
                0  -- Trạng thái ghế (0: Chưa đặt)
            );

            SET @SoGhe = @SoGhe + 1;  -- Tăng số ghế trong hàng
        END

        -- Chuyển sang hàng tiếp theo (A -> B -> C -> ... -> J)
        SET @Hang = CHAR(ASCII(@Hang) + 1);
        SET @i = @i + 1;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[XoaPhongVaGhe]    Script Date: 2/23/2025 4:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaPhongVaGhe]
    @MaPhong INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Bắt đầu transaction để đảm bảo tính toàn vẹn dữ liệu
        BEGIN TRANSACTION;

        -- Xóa tất cả ghế trong phòng
        DELETE FROM Ghe WHERE MaPhong = @MaPhong;

        -- Xóa phòng
        DELETE FROM Phong WHERE MaPhong = @MaPhong;

        -- Commit transaction nếu không có lỗi
        COMMIT TRANSACTION;
        PRINT 'Xóa phòng và ghế thành công';
    END TRY
    BEGIN CATCH
        -- Rollback transaction nếu có lỗi
        ROLLBACK TRANSACTION;
        PRINT 'Lỗi khi xóa phòng và ghế: ' + ERROR_MESSAGE();
    END CATCH;
END;
GO
