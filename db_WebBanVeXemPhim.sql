USE [QuanLyBanVeXemPhim]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 3/6/2025 7:25:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Anh] [nvarchar](max) NULL,
	[MoTa] [nchar](50) NULL,
	[TrangThai] [bit] NULL,
	[MaBanner] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 3/6/2025 7:25:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[MaThanhToan] [int] NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[Gia] [decimal](10, 2) NULL,
	[TenCombo] [nvarchar](50) NULL,
	[MaCombo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 3/6/2025 7:25:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Anh] [nvarchar](max) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 3/6/2025 7:25:15 AM ******/
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
	[Token] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[Phong]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[TaiKhoanAdmin]    Script Date: 3/6/2025 7:25:15 AM ******/
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
	[ChucVu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[ThongBao]    Script Date: 3/6/2025 7:25:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayGui] [datetime] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trailer]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  Table [dbo].[Ve]    Script Date: 3/6/2025 7:25:15 AM ******/
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
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (141, 1037, 4, CAST(N'2025-02-25' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
GO
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
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (168, 1039, 6, CAST(N'2025-02-24' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (169, 1039, 6, CAST(N'2025-02-24' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (170, 1039, 6, CAST(N'2025-02-24' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (171, 1039, 6, CAST(N'2025-02-24' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (172, 1039, 6, CAST(N'2025-02-24' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (173, 1039, 6, CAST(N'2025-02-25' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (174, 1039, 6, CAST(N'2025-02-25' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (175, 1039, 6, CAST(N'2025-02-25' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (176, 1039, 6, CAST(N'2025-02-26' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (177, 1039, 6, CAST(N'2025-02-26' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (178, 1039, 6, CAST(N'2025-02-26' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (179, 1039, 6, CAST(N'2025-02-26' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (180, 1039, 6, CAST(N'2025-02-23' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (197, 1031, 1, CAST(N'2025-03-01' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (198, 1031, 1, CAST(N'2025-03-01' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (203, 1039, 3, CAST(N'2025-03-02' AS Date), CAST(N'19:30:00' AS Time), CAST(70000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (204, 1040, 2, CAST(N'2025-03-01' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (212, 1040, 2, CAST(N'2025-03-02' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (214, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (216, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (217, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (218, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (219, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (220, 1031, 1, CAST(N'2025-02-28' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (232, 1037, 4, CAST(N'2025-02-27' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (233, 1037, 4, CAST(N'2025-02-27' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (234, 1037, 4, CAST(N'2025-02-27' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (235, 1037, 4, CAST(N'2025-02-27' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (236, 1033, 1, CAST(N'2025-02-28' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (238, 1033, 1, CAST(N'2025-02-28' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (241, 1035, 3, CAST(N'2025-02-28' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (242, 1035, 3, CAST(N'2025-02-28' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (243, 1033, 1, CAST(N'2025-03-01' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (244, 1033, 1, CAST(N'2025-03-01' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (245, 1033, 1, CAST(N'2025-03-01' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (246, 1033, 1, CAST(N'2025-03-01' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (247, 1033, 1, CAST(N'2025-03-01' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (248, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'07:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (249, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'09:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (250, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'11:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (251, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'13:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (252, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'15:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (253, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'17:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (254, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'19:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (255, 1033, 1, CAST(N'2025-03-03' AS Date), CAST(N'21:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (262, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (263, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (264, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (265, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (266, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (267, 1031, 3, CAST(N'2025-03-03' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (268, 1031, 2, CAST(N'2025-03-03' AS Date), CAST(N'08:00:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (269, 1031, 2, CAST(N'2025-03-03' AS Date), CAST(N'10:00:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (270, 1031, 2, CAST(N'2025-03-03' AS Date), CAST(N'12:00:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (271, 1031, 1, CAST(N'2025-03-04' AS Date), CAST(N'15:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (272, 1031, 1, CAST(N'2025-03-04' AS Date), CAST(N'17:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (273, 1031, 1, CAST(N'2025-03-04' AS Date), CAST(N'19:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (274, 1031, 1, CAST(N'2025-03-04' AS Date), CAST(N'21:30:00' AS Time), CAST(6500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (275, 1031, 1, CAST(N'2025-03-05' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (276, 1031, 1, CAST(N'2025-03-05' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (277, 1031, 1, CAST(N'2025-03-05' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (278, 1031, 1, CAST(N'2025-03-05' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (279, 1031, 1, CAST(N'2025-03-06' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (280, 1031, 1, CAST(N'2025-03-06' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (281, 1031, 1, CAST(N'2025-03-06' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (282, 1031, 1, CAST(N'2025-03-06' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (283, 1031, 1, CAST(N'2025-03-07' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (284, 1031, 1, CAST(N'2025-03-07' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (285, 1031, 1, CAST(N'2025-03-07' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (286, 1031, 1, CAST(N'2025-03-07' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (287, 1031, 1, CAST(N'2025-03-08' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (288, 1031, 1, CAST(N'2025-03-08' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (289, 1031, 1, CAST(N'2025-03-08' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (290, 1031, 1, CAST(N'2025-03-08' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
GO
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (291, 1033, 2, CAST(N'2025-03-04' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (292, 1033, 2, CAST(N'2025-03-04' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (293, 1033, 2, CAST(N'2025-03-04' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (294, 1033, 2, CAST(N'2025-03-05' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (295, 1033, 2, CAST(N'2025-03-05' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (296, 1033, 2, CAST(N'2025-03-05' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (297, 1033, 2, CAST(N'2025-03-05' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (298, 1033, 2, CAST(N'2025-03-06' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (299, 1033, 2, CAST(N'2025-03-06' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (300, 1033, 2, CAST(N'2025-03-06' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (301, 1033, 2, CAST(N'2025-03-06' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (302, 1033, 1, CAST(N'2025-03-04' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (303, 1033, 1, CAST(N'2025-03-04' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (304, 1033, 1, CAST(N'2025-03-04' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (305, 1033, 1, CAST(N'2025-03-04' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (306, 1033, 1, CAST(N'2025-03-05' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (307, 1033, 1, CAST(N'2025-03-05' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (308, 1033, 1, CAST(N'2025-03-05' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (309, 1033, 1, CAST(N'2025-03-05' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (310, 1031, 2, CAST(N'2025-03-04' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (311, 1031, 2, CAST(N'2025-03-04' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (312, 1031, 2, CAST(N'2025-03-04' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (313, 1031, 2, CAST(N'2025-03-04' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (314, 1031, 2, CAST(N'2025-03-04' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (315, 1031, 2, CAST(N'2025-03-05' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (316, 1031, 2, CAST(N'2025-03-05' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (317, 1031, 2, CAST(N'2025-03-05' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (318, 1031, 2, CAST(N'2025-03-05' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (319, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (320, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (321, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (322, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (323, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (324, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (325, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (326, 1031, 2, CAST(N'2025-03-07' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (327, 1033, 1, CAST(N'2025-03-07' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (328, 1033, 1, CAST(N'2025-03-07' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (329, 1033, 1, CAST(N'2025-03-07' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (330, 1033, 1, CAST(N'2025-03-07' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (331, 1041, 3, CAST(N'2025-03-04' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (332, 1041, 3, CAST(N'2025-03-04' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (333, 1041, 3, CAST(N'2025-03-04' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (338, 1041, 3, CAST(N'2025-03-06' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (339, 1041, 3, CAST(N'2025-03-06' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (340, 1041, 3, CAST(N'2025-03-06' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (341, 1041, 3, CAST(N'2025-03-06' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (342, 1041, 3, CAST(N'2025-03-06' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (343, 1041, 3, CAST(N'2025-03-07' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (344, 1041, 3, CAST(N'2025-03-07' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (345, 1041, 3, CAST(N'2025-03-07' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (346, 1041, 3, CAST(N'2025-03-07' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (347, 1037, 3, CAST(N'2025-03-04' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (348, 1037, 3, CAST(N'2025-03-04' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (349, 1037, 3, CAST(N'2025-03-04' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (350, 1037, 3, CAST(N'2025-03-04' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (351, 1037, 3, CAST(N'2025-03-04' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (352, 1037, 3, CAST(N'2025-03-05' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (353, 1037, 3, CAST(N'2025-03-05' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (354, 1037, 3, CAST(N'2025-03-05' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (355, 1037, 3, CAST(N'2025-03-05' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (356, 1037, 3, CAST(N'2025-03-06' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (357, 1037, 3, CAST(N'2025-03-06' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (358, 1037, 3, CAST(N'2025-03-06' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (359, 1037, 3, CAST(N'2025-03-07' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (360, 1037, 3, CAST(N'2025-03-07' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (361, 1037, 3, CAST(N'2025-03-07' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (362, 1037, 3, CAST(N'2025-03-07' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (363, 1041, 3, CAST(N'2025-03-05' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (364, 1041, 3, CAST(N'2025-03-05' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (365, 1041, 3, CAST(N'2025-03-05' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (366, 1041, 3, CAST(N'2025-03-05' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (367, 1037, 4, CAST(N'2025-03-03' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (368, 1037, 4, CAST(N'2025-03-03' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (369, 1037, 4, CAST(N'2025-03-03' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (370, 1037, 4, CAST(N'2025-03-03' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (371, 1037, 4, CAST(N'2025-03-03' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (372, 1037, 4, CAST(N'2025-03-04' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (373, 1037, 4, CAST(N'2025-03-04' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (374, 1037, 4, CAST(N'2025-03-04' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (375, 1037, 4, CAST(N'2025-03-04' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (376, 1037, 4, CAST(N'2025-03-04' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (377, 1037, 4, CAST(N'2025-03-07' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (378, 1037, 4, CAST(N'2025-03-07' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (379, 1037, 4, CAST(N'2025-03-07' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (380, 1037, 4, CAST(N'2025-03-07' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (381, 1037, 4, CAST(N'2025-03-07' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (382, 1041, 4, CAST(N'2025-03-04' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (383, 1041, 4, CAST(N'2025-03-04' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (384, 1041, 4, CAST(N'2025-03-04' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (385, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (386, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (387, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (388, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (389, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (390, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (391, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (392, 1041, 4, CAST(N'2025-03-05' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (393, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (394, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
GO
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (395, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (396, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (397, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (398, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (399, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (400, 1041, 4, CAST(N'2025-03-06' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (401, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (402, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (403, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (404, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (405, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (406, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (407, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (408, 1041, 4, CAST(N'2025-03-14' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (409, 1038, 5, CAST(N'2025-03-05' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (410, 1038, 5, CAST(N'2025-03-05' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (411, 1038, 5, CAST(N'2025-03-05' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (412, 1038, 5, CAST(N'2025-03-05' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (413, 1038, 5, CAST(N'2025-03-06' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (414, 1038, 5, CAST(N'2025-03-06' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (415, 1038, 5, CAST(N'2025-03-06' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (416, 1038, 5, CAST(N'2025-03-06' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (417, 1038, 5, CAST(N'2025-03-07' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (418, 1038, 5, CAST(N'2025-03-07' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (419, 1038, 5, CAST(N'2025-03-07' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (420, 1038, 5, CAST(N'2025-03-07' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (421, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (422, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (423, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (424, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (425, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (426, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (427, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (428, 1038, 5, CAST(N'2025-03-08' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (429, 1038, 5, CAST(N'2025-03-09' AS Date), CAST(N'15:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (430, 1038, 5, CAST(N'2025-03-09' AS Date), CAST(N'17:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (431, 1038, 5, CAST(N'2025-03-09' AS Date), CAST(N'19:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (432, 1038, 5, CAST(N'2025-03-09' AS Date), CAST(N'21:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (433, 1039, 5, CAST(N'2025-03-05' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (434, 1039, 5, CAST(N'2025-03-05' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (435, 1039, 5, CAST(N'2025-03-05' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (436, 1039, 5, CAST(N'2025-03-05' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (437, 1039, 5, CAST(N'2025-03-06' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (438, 1039, 5, CAST(N'2025-03-06' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (439, 1039, 5, CAST(N'2025-03-06' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (440, 1039, 5, CAST(N'2025-03-06' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (441, 1039, 5, CAST(N'2025-03-07' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (442, 1039, 5, CAST(N'2025-03-07' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (443, 1039, 5, CAST(N'2025-03-07' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (444, 1039, 5, CAST(N'2025-03-07' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (445, 1039, 5, CAST(N'2025-03-09' AS Date), CAST(N'07:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (446, 1039, 5, CAST(N'2025-03-09' AS Date), CAST(N'09:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (447, 1039, 5, CAST(N'2025-03-09' AS Date), CAST(N'11:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (448, 1039, 5, CAST(N'2025-03-09' AS Date), CAST(N'13:30:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (449, 1039, 6, CAST(N'2025-03-05' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (450, 1039, 6, CAST(N'2025-03-05' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (451, 1039, 6, CAST(N'2025-03-05' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (452, 1039, 6, CAST(N'2025-03-05' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (453, 1039, 6, CAST(N'2025-03-06' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (454, 1039, 6, CAST(N'2025-03-06' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (455, 1039, 6, CAST(N'2025-03-06' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (456, 1039, 6, CAST(N'2025-03-06' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (457, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (458, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (459, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (460, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (461, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (462, 1039, 6, CAST(N'2025-03-07' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (463, 1039, 6, CAST(N'2025-03-08' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (464, 1039, 6, CAST(N'2025-03-08' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (465, 1039, 6, CAST(N'2025-03-08' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (466, 1039, 6, CAST(N'2025-03-08' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (467, 1039, 6, CAST(N'2025-03-09' AS Date), CAST(N'16:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (468, 1039, 6, CAST(N'2025-03-09' AS Date), CAST(N'18:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (469, 1039, 6, CAST(N'2025-03-09' AS Date), CAST(N'20:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (470, 1038, 6, CAST(N'2025-03-05' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (471, 1038, 6, CAST(N'2025-03-05' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (472, 1038, 6, CAST(N'2025-03-05' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (473, 1038, 6, CAST(N'2025-03-05' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (474, 1038, 6, CAST(N'2025-03-06' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (475, 1038, 6, CAST(N'2025-03-06' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (476, 1038, 6, CAST(N'2025-03-06' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (477, 1038, 6, CAST(N'2025-03-06' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (478, 1038, 6, CAST(N'2025-03-07' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (479, 1038, 6, CAST(N'2025-03-07' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (480, 1038, 6, CAST(N'2025-03-08' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (481, 1038, 6, CAST(N'2025-03-08' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (482, 1038, 6, CAST(N'2025-03-08' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (483, 1038, 6, CAST(N'2025-03-08' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (484, 1038, 6, CAST(N'2025-03-09' AS Date), CAST(N'06:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (485, 1038, 6, CAST(N'2025-03-09' AS Date), CAST(N'08:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (486, 1038, 6, CAST(N'2025-03-09' AS Date), CAST(N'10:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (487, 1038, 6, CAST(N'2025-03-09' AS Date), CAST(N'12:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[LichChieu] ([MaLichChieu], [MaPhim], [MaPhong], [NgayChieu], [GioChieu], [GiaVe], [TrangThai]) VALUES (488, 1038, 6, CAST(N'2025-03-09' AS Date), CAST(N'14:00:00' AS Time), CAST(65000.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (1, N'Nguyễn Văn An', N'vanan9524@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (4, N'Nguyễn Văn An', N'admin@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (5, N'an1', N'an@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (6, N'Nguyễn Văn An', N'admin3@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (7, N'Nguyễn Văn An', N'admin22@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (8, N'Nguyễn Văn An', N'admin5@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (9, N'An Tesst', N'antest@gmail.com', N'123456', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (25, N'Nguyễn Văn An', N'anvan954@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (26, N'an', N'anvan594@gmail.com', N'8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (27, N'an', N'civic28931@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (28, N'Nguyễn Văn An', N'anvan5945@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (29, N'vanan9524@gmail.com', N'vanan95524@gmail.com', N'bea8663c47fb1cd05ff6318fd503b5bc4bb1eb3c03073e9b1409e816ee35b333', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (30, N'12', N'a@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (31, N'ád', N'vanan5924@gmai.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (32, N'an', N'an32131321@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (33, N'An', N'ab@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (34, N'an', N'anvan95gsdg4@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (35, N'an', N'An645456465@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [Email], [MatKhau], [TrangThai], [Token]) VALUES (37, N'NhanVienQuay', N'NVQ@gmail.com', N'123456', 1, NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (16, N'Lật Mặt: 48H', N'Hành động, Phiêu lưu', 111, N'Một người đàn ông chạy đua với thời gian để bảo vệ gia đình trước một tổ chức nguy hiểm.', CAST(N'2021-04-16' AS Date), N'latmat48h.jpg', 0, N'T18       ', NULL, N'Trấn Thành                                      ', NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (17, N'Em Và Trịnh', N'Tâm lý, Tiểu sử', 136, N'Câu chuyện về cuộc đời nhạc sĩ Trịnh Công Sơn qua góc nhìn của những người phụ nữ trong cuộc đời ông.', CAST(N'2022-06-17' AS Date), N'emvatrinh.jpg', 0, N'T16       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (18, N'Thanh Sói', N'Hành động, Tội phạm', 135, N'Câu chuyện về Thanh Sói - một nhân vật từ vũ trụ của Hai Phượng, và hành trình từ thiện sang ác.', CAST(N'2022-12-22' AS Date), N'thanhsoi.jpg', 0, N'T18       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (19, N'Nhà Bà Nữ', N'Hài hước, Gia đình', 106, N'Những câu chuyện đời thường nhưng đầy cảm xúc về mối quan hệ giữa các thành viên trong gia đình bà Nữ.', CAST(N'2023-01-22' AS Date), N'images.jpg', 0, N'T18       ', N'Trấn Thành', N'Trấn Thành                                      ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (20, N'Bẫy Ngọt Ngào', N'Tâm lý, Tình cảm', 100, N'Câu chuyện về một nhóm bạn thân khám phá bí mật đen tối trong cuộc sống hôn nhân của một trong số họ.', CAST(N'2022-02-11' AS Date), N'bayngotngao.jpg', 0, N'T13       ', NULL, NULL, NULL)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1031, N'Nhà Gia Tiên', N'Gia đình, Hài hước', 117, N'Nhà Gia Tiên xoay quanh câu chuyện đa góc nhìn về các thế hệ khác nhau trong một gia đình, có hai nhân vật chính là Gia Minh (Huỳnh Lập) và Mỹ Tiên (Phương Mỹ Chi). Trở về căn nhà gia tiên để quay các video “triệu view” trên mạng xã hội, Mỹ Tiên - một nhà sáng tạo nội dung thuộc thế hệ Z vốn không tin vào chuyện tâm linh, hoàn toàn mất kết nối với gia đình, bất ngờ nhìn thấy Gia Minh - người anh trai đã mất từ lâu. Để hồn ma của Gia Minh có thể siêu thoát và không tiếp tục làm phiền mình, Mỹ Tiên bắt tay cùng Gia Minh lên kế hoạch giữ lấy căn nhà gia tiên đang bị họ hàng tranh chấp, đòi ông nội chia tài sản.', CAST(N'2025-02-21' AS Date), N'af83e92c-a8f9-4a78-b0a2-bb59bdaa3af2_nhagiatien.jpg', 1, N'T18       ', N'Huỳnh Lập, Phương Mỹ Chi, NSƯT Hạnh Thuý, NSƯT Huỳnh Đông, Puka,…', N'Huỳnh Lập                                       ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1033, N'Võ Đường Đại Náo', N'Hài hước, Phiêu lưu', 108, N'Bruce Chung (Cổ Thiên Lạc), cựu huyền thoại Muay Thái Macau đang điều hành một phòng tập đấm bốc đang trên bờ phá sản. Elsa Lam (Vương Đan Ni), sau khi phát hiện bạn trai ngoại tình với nữ vô địch Muay Thái Surewin (Châu Tú Na), quyết định thách đấu trên sàn đấu và đến nhờ Bruce huấn luyện. Dưới sự rèn luyện khắc nghiệt, Elsa dần nhận ra mục tiêu không phải trả thù mà là thay đổi chính mình. Tinh thần chiến đấu của cô đã truyền cảm hứng cho Bruce và những người xung quanh, khiến họ dám đối mặt với những thử thách trong cuộc sống. Cuối cùng, Bruce quyết định tái đấu với học trò cũ Arnold Chan (Trương Văn Kiệt), đánh dấu một trận chiến đỉnh cao đầy cảm xúc.', CAST(N'2025-02-28' AS Date), N'fe6ccb6e-ed37-4e9e-b302-bc165c264cde_voduongdainao.png', 1, N'T13       ', N'Cổ Thiên Lạc, Châu Tú Na,...', N'Albert Kai-Kwong Mak                              ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1034, N'Anh Không Đau', N'Hành động, Hài hước', 100, N'Khi cô gái trong mơ của mình bị bắt cóc, một người đàn ông không có khả năng cảm thấy đau đớn về thể xác đã biến tình trạng hiếm gặp của mình thành một lợi thế bất ngờ trong cuộc chiến giải cứu cô.', CAST(N'2025-03-14' AS Date), N'e2a12f25-d650-4d81-826a-94e62b68df35_AnhKhongDau.jpg', 1, N'T18       ', N'Amber Midthunder, Jack Quaid, Ray Nicholson', N'Dan Berk, Robert Olsen                            ', N'Tiếng Anh          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1035, N'Ninja Loạn Thị', N'Hoạt hình, Hài hước', 100, N'Một loạt phim hoạt hình có sự góp mặt của Nintamas và những người khác, xoay quanh bộ ba Rantarou, Kirimaru và Shinbei, tập trung vào những cuộc phiêu lưu, niềm vui và các hoạt động hàng ngày của họ tại Học viện Ninjutsu.', CAST(N'2025-03-28' AS Date), N'9c8e6cce-837a-4619-a47d-fca7f5c26689_NinjaLoanThi.png', 1, N'P         ', N'Mayumi Tanaka, Minami Takayama, Teiyû Ichiryûsai', NULL, N'Tiếng Nhật        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1036, N'Truyện Cổ Tích Bị Cấm', N'Hài hước, Tình cảm', 109, N'Bộ phim kể về Danbi, một người có ước mơ trở thành nhà văn viết sách thiếu nhi nhưng thực chất lại là lính mới trong đội chống nạn khiêu dâm bất hợp pháp.', CAST(N'2025-03-21' AS Date), N'64b23a34-b23d-4ae7-99fa-72b02f50040f_TruyenCoTichBiCam.png', 1, N'T16       ', N'Sung Dong-il, Park Ji-hyun, Choi Siwon,..', N'Jong-suk Lee                                      ', N'Tiếng Hàn         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1037, N'Đèn Âm Hồn', N'Bí ẩn, Hồi Hộp', 102, N'Lấy cảm các từ Chuyện Người Con Gái Nam Xương, Đèn Âm Hồn xảy tại một ngôi làng miền Bắc vào thời phong kiến. Thương một mình nuôi con trai chờ chồng đi lính trở về. Lĩnh (con Thương) vô tình nhặt được một cây đèn, từ đó cậu gọi chiếc bóng hiện trên tường là cha. Theo lời của cô đồng trong làng, đây là cây đèn âm hồn, có thể đã triệu hồn một ác linh quay lại báo thù. Từ đây, những sự kiện bất thường ma quái xảy ra với Thương và cả dân làng. Liệu chiếc bóng đó có phải là chồng của Thương, cha của Lĩnh hay không?', CAST(N'2025-02-07' AS Date), N'37678e3b-3e8c-40b2-a017-795826186793_DenAmHon.png', 1, N'T18       ', N'Diễm Trang, Hoàng Kim Ngọc, Phú Thịnh, NSƯT Chiều Xuân, NSƯT Quang Tèo, Tuấn Mõ, Hạo Khang, Đình Khang...', N'Hoàng Nam                                        ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1038, N'Bộ Tứ Báo Thủ', N'Hài hước, Tình cảm', 132, N'Bộ tứ báo thủ bao gồm Chét-Xi-Cà, Dì Bốn, Cậu Mười Một, Con Kiều chính thức xuất hiện cùng với phi vụ báo thế kỉ. Nghe nói kế hoạch tiếp theo là ở Đà Lạt, liệu bốn báo thủ sẽ quậy Tết tung nóc cỡ nào?', CAST(N'2025-01-29' AS Date), N'8d69f739-370e-46ac-9ad0-9a0674a46079_BoTuBaoThu.jpg', 1, N'T16       ', N'Trấn Thành, Lê Giang, Lê Dương Bảo Lâm, Uyển Ân,...', N'Trấn Thành                                      ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1039, N'Nụ Hôn Bạc Tỷ', N'Hài hước, Tình cảm', 100, N'Câu chuyện xoay quanh Thúy Vân (Thiên Ân) và người chị "trời đánh" Thúy Kiều (Thu Trang) đang phải đối mặt với món nợ lớn do người tình gây ra. Đứng trước nguy cơ mất trắng, cả hai buộc phải vạch kế hoạch chinh phục "Nụ Hôn Bạc Tỷ" từ hai chàng thiếu gia Quang (Lê Xuân Tiền) và Tú (Ma Ran Đô)', CAST(N'2025-01-29' AS Date), N'a241aede-6f4a-4b7d-a3b8-189b153290ee_NuHonBacTy.jpg', 1, N'T13       ', N'Thu Trang, Đoàn Thiên Ân, Lê  Xuân Tiền, Ma Ran Đô, Tiến Luật, Võ Tấn Phát, Hoàng Phi, Huỳnh Phương, Huy Khánh', N'Thu Trang                                         ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1040, N'Nữ Tu Bóng Tối', N'Kinh Dị, Bí Ẩn', 114, N'ai nữ tu Junia (Song Hye-kyo) và Michaela (Jeon Yeo-been) dùng mọi nỗ lực thực hiện nghi lễ trừ tà để cứu rỗi cậu bé Hee Joon đang bị linh hồn tà ác chiếm giữ. Một cuộc chiến không hồi kết giữa đức tin và quỷ dữ, giữa bí ẩn tâm linh và niềm tin y học.', CAST(N'2025-02-21' AS Date), N'd33dd127-07d5-45d8-a8dc-0597b854ecdf_NuTuBongToi.png', 0, N'T16       ', N'Song Hye-kyo , Jeon Yeo-been , Lee Jin-wook,...', N'Hyeok-jae Kwon                                    ', N'Tiếng Hàn         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1041, N'Captain America: Thế Giới Mới', N'Khoa học, viễn tưởng', 118, N'Sau cuộc gặp gỡ với tân Tổng thống Hoa Kỳ Thaddeus Ross, Sam Wilson vô tình bị cuốn vào cuộc xung đột tại một sự kiện quốc tế. Trong vai trò Captain America mới, Wilson buộc phải điều tra và lật tẩy một âm mưu toàn cầu bất chính, trước khi kẻ thủ ác nhấn chìm cả thế giới vào cảnh suy tàn.', CAST(N'2025-02-14' AS Date), N'59a4f373-3fad-4416-a758-f0cee0c1214b_TheGioiMoi.png', 1, N'T13       ', N'Harrison Ford, Anthoy Mackie, Giancarlo Esposito, Rosa Salazar, Seth Rollins, Shira Haas', N'Julius Onah                                       ', N'Tiếng Anh          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1042, N'Quỷ Nhập Tràng', N'Kinh Dị', 122, N'Lấy cảm hứng từ truyền thuyết kinh dị nhất về “người chết sống dậy”, Quỷ Nhập Tràng là câu chuyện được lấy bối cảnh tại một ngôi làng chuyên nghề mai táng, gắn liền với những hoạt động đào mộ, tẩm liệm và chôn cất người chết.', CAST(N'2025-03-07' AS Date), N'ed26fcf7-3f11-4c08-88f4-18e0beadd896_QuyNhapTrang.png', 1, N'T18       ', N'Khả Như, Quang Tuấn,…', N'Pom Nguyễn                                        ', N'Tiếng VIệt        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [ThoiLuong], [MoTa], [NgayKhoiChieu], [Poster], [TrangThai], [DoTuoi], [DienVien], [DaoDien], [NgonNgu]) VALUES (1043, N'Sát Thủ Vô Cùng Cực Hài', N'Hài hước, Hành động', 107, N'Jun, người nổi tiếng trong thời gian ngắn với tư cách là tác giả của bộ truyện tranh trên webtoon Assassination Agent Jun, nhanh chóng bị coi là "nhà văn thiểu năng" sau khi Phần 2 bị chỉ trích thảm hại, nhưng mọi chuyện thay đổi khi một vụ tấn công khủng bố ngoài đời thực giống hệt cốt truyện của Phần 2, khiến Jun bị NIS buộc tội oan là kẻ chủ mưu đằng sau tội ác này.', CAST(N'2025-03-14' AS Date), N'4d92146d-9c14-44ec-968a-41aeb9790ebc_SatThuVoCungCucHai.jpg', 1, N'T16       ', N'Kwon Sang-woo, Jung Joon-ho, Lee Yi-kyung, Hwang Woo-seul-hye, Kim Sung-oh, Lee Ji-won', N'Choi Won-sub                                      ', N'Tiếng Hàn         ')
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

INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai], [ChucVu]) VALUES (1, N'admin', N'123456', N'Nguyễn Văn An', N'admin@gmail.com', N'0327762985', NULL, 1, N'Admin')
INSERT [dbo].[TaiKhoanAdmin] ([MaAdmin], [TenDangNhap], [MatKhau], [HoTen], [Email], [SoDienThoai], [NgayTao], [TrangThai], [ChucVu]) VALUES (21, N'NV_01', N'123456', N'Nguyễn Văn A', N'nguyenvana@gmail.com', N'0327762987', CAST(N'2025-03-06T02:31:27.480' AS DateTime), 1, N'Nhan Vien')
SET IDENTITY_INSERT [dbo].[TaiKhoanAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (2, 1183, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-25T21:40:39.367' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (3, 1184, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-25T21:40:39.387' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (4, 1185, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-25T21:40:39.390' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (5, 1186, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-25T21:50:37.590' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (6, 1192, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-25T22:17:09.797' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (7, 1209, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:34:16.303' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (8, 1210, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:34:16.307' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (9, 1211, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:34:16.307' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (10, 1212, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:50:57.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (11, 1213, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:50:57.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (12, 1216, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:55:44.350' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (13, 1217, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:55:44.353' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (14, 1218, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:55:44.353' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (15, 1219, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:55:44.353' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (16, 1220, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T00:55:44.357' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (17, 1221, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:01:09.810' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (18, 1222, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:01:09.813' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (19, 1223, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:01:09.820' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (20, 1224, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:01:09.823' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (21, 1225, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:05:34.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (22, 1226, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:05:34.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (23, 1227, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:05:34.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (24, 1228, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:05:34.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (25, 1233, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:10:37.410' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (26, 1234, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:10:37.413' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (27, 1235, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:10:37.413' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (28, 1236, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:10:37.417' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (29, 1237, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:16:29.840' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (30, 1238, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:16:29.840' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (31, 1239, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:16:29.843' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (32, 1240, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:16:29.843' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (33, 1241, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T01:16:29.843' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (34, 1247, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.153' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (35, 1248, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.157' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (36, 1249, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.160' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (37, 1250, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.160' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (38, 1251, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.163' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (39, 1252, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:04:14.163' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (40, 1253, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:11:53.440' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (41, 1254, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T02:11:53.440' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (42, 1255, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T04:32:04.907' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (43, 1256, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T04:32:04.910' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (44, 1257, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T05:07:49.873' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (45, 1258, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T05:07:49.873' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (46, 1262, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.457' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (47, 1263, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.457' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (48, 1264, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.457' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (49, 1265, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.460' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (50, 1266, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.460' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (51, 1267, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:18:52.460' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (52, 1268, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:25:14.863' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (53, 1269, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T17:25:14.867' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (55, 1285, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T18:31:49.527' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (56, 1291, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-26T21:53:08.920' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (57, 1393, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.083' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (58, 1394, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (59, 1395, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (60, 1396, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (61, 1398, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (62, 1399, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:02:51.090' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (63, 1403, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-02-27T09:35:57.963' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (64, 1416, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T00:39:28.283' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (65, 1417, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T00:39:28.283' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (66, 1420, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:19:36.603' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (67, 1421, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:19:36.603' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (68, 1422, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:22:19.090' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (69, 1423, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:22:19.090' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (70, 1424, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:28:41.323' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (71, 1425, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:28:41.327' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (72, 1426, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T02:28:41.327' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (73, 1427, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T04:12:57.440' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (74, 1428, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T04:12:57.443' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (75, 1429, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T04:21:00.473' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (76, 1430, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T04:21:00.477' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (77, 1431, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:03:26.370' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (78, 1432, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:03:26.370' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (79, 1441, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:26:18.757' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (80, 1442, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:26:18.760' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (81, 1443, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:26:18.760' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (82, 1444, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-01T06:26:18.763' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (83, 1461, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-02T03:48:55.320' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (84, 1462, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-02T03:48:55.320' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (85, 1496, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-02T04:34:53.803' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (86, 1497, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-02T04:34:53.807' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (87, 1498, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (88, 1499, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (89, 1500, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (90, 1501, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (91, 1502, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (92, 1503, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T05:58:12.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (93, 1504, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.613' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (94, 1505, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (95, 1506, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (96, 1507, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (97, 1508, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (98, 1509, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (99, 1510, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.617' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (100, 1511, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.620' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (101, 1512, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.620' AS DateTime))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (102, 1513, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:47:09.620' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (103, 1514, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (104, 1515, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (105, 1516, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (106, 1517, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (107, 1518, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (108, 1519, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (109, 1520, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (110, 1521, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (111, 1522, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (112, 1523, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:48:22.393' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (113, 1524, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.053' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (114, 1525, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (115, 1526, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (116, 1527, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (117, 1528, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (118, 1529, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (119, 1530, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (120, 1531, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (121, 1532, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (122, 1533, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:49:25.057' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (123, 1534, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (124, 1535, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (125, 1536, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (126, 1537, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (127, 1538, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (128, 1539, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (129, 1540, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.543' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (130, 1541, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (131, 1542, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (132, 1543, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (133, 1544, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (134, 1545, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (135, 1546, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (136, 1547, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (137, 1548, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (138, 1549, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (139, 1550, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.547' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (140, 1551, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (141, 1552, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (142, 1553, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (143, 1554, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (144, 1555, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (145, 1556, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (146, 1557, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (147, 1558, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.550' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (148, 1559, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.553' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (149, 1560, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.553' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (150, 1561, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.553' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (151, 1562, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.553' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (152, 1563, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.553' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (153, 1564, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (154, 1565, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (155, 1566, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (156, 1567, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (157, 1568, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (158, 1569, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.557' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (159, 1570, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (160, 1571, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (161, 1572, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (162, 1573, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (163, 1574, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (164, 1575, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (165, 1576, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (166, 1577, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (167, 1578, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (168, 1579, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (169, 1580, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (170, 1581, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (171, 1582, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (172, 1583, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (173, 1584, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (174, 1585, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (175, 1586, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (176, 1587, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (177, 1588, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (178, 1589, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (179, 1590, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (180, 1591, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (181, 1592, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (182, 1593, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (183, 1594, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (184, 1595, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (185, 1596, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (186, 1597, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (187, 1598, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (188, 1599, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (189, 1600, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (190, 1601, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.570' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (191, 1602, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (192, 1603, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (193, 1604, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (194, 1605, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (195, 1606, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (196, 1607, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (197, 1608, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (198, 1609, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (199, 1610, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (200, 1611, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (201, 1612, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.573' AS DateTime))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (202, 1613, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (203, 1614, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (204, 1615, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (205, 1616, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (206, 1617, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (207, 1618, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (208, 1619, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (209, 1620, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (210, 1621, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (211, 1622, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (212, 1623, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (213, 1624, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (214, 1625, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.577' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (215, 1626, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (216, 1627, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (217, 1628, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (218, 1629, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (219, 1630, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (220, 1631, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (221, 1632, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (222, 1633, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-03T07:55:05.580' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (223, 1635, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T14:54:19.180' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (224, 1636, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T14:54:19.183' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (225, 1637, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T14:54:19.183' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (226, 1638, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T14:54:19.183' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (227, 1639, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T16:30:23.443' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (228, 1640, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-05T16:30:23.443' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (229, 1653, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T05:47:37.347' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (230, 1654, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T05:47:37.347' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (231, 1661, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:05:49.907' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (232, 1662, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:05:49.907' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (233, 1669, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:19:32.560' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (234, 1670, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:19:32.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (235, 1671, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.530' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (236, 1672, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.530' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (237, 1673, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.533' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (238, 1674, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.533' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (239, 1675, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.533' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (240, 1676, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.533' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (241, 1677, N'Chuyển khoản qua ngân hàng', N'Đã Thanh Toán', CAST(N'2025-03-06T06:34:08.533' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (242, 1678, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (243, 1679, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.563' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (244, 1680, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (245, 1681, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (246, 1682, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (247, 1683, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (248, 1684, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:46:38.567' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (249, 1685, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:51:26.527' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (250, 1686, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:51:26.527' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (251, 1687, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:53:58.227' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (252, 1688, N'Thanh Toán Bằng Tiền Mặt', N'Đã Thanh Toán', CAST(N'2025-03-06T06:53:58.227' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (253, 1689, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:56:08.033' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (254, 1690, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:56:08.037' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (255, 1696, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:59:27.590' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (256, 1697, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:59:27.593' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (257, 1698, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:59:27.593' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (258, 1699, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T06:59:27.593' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (259, 1700, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T07:00:58.327' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (260, 1701, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T07:03:07.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (261, 1702, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T07:03:07.087' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (262, 1703, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T07:03:07.090' AS DateTime))
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaVe], [PhuongThuc], [TrangThai], [NgayThanhToan]) VALUES (263, 1704, N'Thanh Toán Bằng Tiền M', N'Đã Thanh Toán', CAST(N'2025-03-06T07:03:07.090' AS DateTime))
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (1, 26, N'Bạn đã dặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/> Số ghế: E6, E5, ', CAST(N'2025-03-01T00:39:28.283' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (2, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên Số ghế: H5, H6', CAST(N'2025-03-01T02:19:36.603' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (3, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nụ Hôn Bạc Tỷ<br/> Giờ chiếu: 7:30 PM<br/> Số ghế: I3, I4', CAST(N'2025-03-01T02:22:19.090' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (4, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/1/2025 Giờ chiếu: 3:30 PM<br/> Số ghế: I4, I5, I6', CAST(N'2025-03-01T02:28:41.327' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (5, 1, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/1/2025 Giờ chiếu: 3:30 PM<br/> Số ghế: I7, I8', CAST(N'2025-03-01T04:12:57.443' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (6, 1, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nụ Hôn Bạc Tỷ<br/>Ngày chiếu:3/2/2025 Giờ chiếu: 7:30 PM<br/> Số ghế: D7, D8', CAST(N'2025-03-01T04:21:00.477' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (7, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/>Ngày chiếu:3/1/2025 Giờ chiếu: 9:30 AM<br/> Số ghế: F5, F6', CAST(N'2025-03-01T06:03:26.370' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (8, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/>Ngày chiếu:3/1/2025 Giờ chiếu: 1:30 PM<br/> Số ghế: E4, E5, E6, E7', CAST(N'2025-03-01T06:26:18.763' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (9, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/>Ngày chiếu:3/3/2025 Giờ chiếu: 11:30 AM<br/> Số ghế: D6, D7', CAST(N'2025-03-02T03:48:55.320' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (10, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Bộ Tứ Báo Thủ<br/>Ngày chiếu:3/5/2025 Giờ chiếu: 10:00 AM<br/> Số ghế: E6, E7', CAST(N'2025-03-02T04:34:53.807' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (11, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/3/2025 Giờ chiếu: 7:30 AM<br/> Số ghế: D5, D6, D7, E5, E6, E7', CAST(N'2025-03-03T05:58:12.560' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (12, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/>Ngày chiếu:3/3/2025 Giờ chiếu: 9:30 AM<br/> Số ghế: B2, B3, B4, E5, E6, E7, E8, H3, H4, H5', CAST(N'2025-03-03T07:47:09.620' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (13, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Đèn Âm Hồn<br/>Ngày chiếu:3/3/2025 Giờ chiếu: 2:00 PM<br/> Số ghế: B6, B7, D4, D5, F6, F7, F8, H3, H4, H5', CAST(N'2025-03-03T07:48:22.393' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (14, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nụ Hôn Bạc Tỷ<br/>Ngày chiếu:3/5/2025 Giờ chiếu: 7:30 AM<br/> Số ghế: D4, D5, E7, E8, G5, G6, I3, I4, J6, J7', CAST(N'2025-03-03T07:49:25.057' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (15, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Võ Đường Đại Náo<br/>Ngày chiếu:3/3/2025 Giờ chiếu: 1:30 PM<br/> Số ghế: A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, G1, G2, G3, G4, G5, G6, G7, G8, G9, G10, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, J1, J2, J3, J4, J5, J6, J7, J8, J9, J10', CAST(N'2025-03-03T07:55:05.580' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (16, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 5:30 PM<br/> Số ghế: D4, D5, D6, D7', CAST(N'2025-03-05T14:54:19.183' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (17, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/5/2025 Giờ chiếu: 7:30 PM<br/> Số ghế: D5, D6', CAST(N'2025-03-05T16:30:23.443' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (18, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 5:30 PM<br/> Số ghế: C7, B5', CAST(N'2025-03-06T05:47:37.347' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (19, 26, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 7:30 PM<br/> Số ghế: E6, E7', CAST(N'2025-03-06T06:05:49.907' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (20, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 7:30 PM<br/> Số ghế: A5, A6', CAST(N'2025-03-06T06:19:32.563' AS DateTime), 1)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (21, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Captain America: Thế Giới Mới<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 10:00 AM<br/> Số ghế: D5, D6, D7, C4, C5, C6, C7', CAST(N'2025-03-06T06:34:08.533' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (22, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 5:30 PM<br/> Số ghế: E6, E7, E4, E5, E8, D4, D5', CAST(N'2025-03-06T06:46:38.567' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (23, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/7/2025 Giờ chiếu: 8:00 AM<br/> Số ghế: E5, E6', CAST(N'2025-03-06T06:51:26.527' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (24, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 5:30 PM<br/> Số ghế: F6, F7', CAST(N'2025-03-06T06:53:58.227' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (25, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 9:30 PM<br/> Số ghế: D9, D10', CAST(N'2025-03-06T06:56:08.037' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (26, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 7:30 PM<br/> Số ghế: C6, C7, D7, D8', CAST(N'2025-03-06T06:59:27.593' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (27, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Nhà Gia Tiên<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 5:30 PM<br/> Số ghế: C6', CAST(N'2025-03-06T07:00:58.327' AS DateTime), 0)
INSERT [dbo].[ThongBao] ([MaThongBao], [MaNguoiDung], [NoiDung], [NgayGui], [TrangThai]) VALUES (28, 37, N'Bạn đã đặt vé thành công<br/>Tên Phim: Bộ Tứ Báo Thủ<br/>Ngày chiếu:3/6/2025 Giờ chiếu: 12:00 PM<br/> Số ghế: D4, D5, D6, D7', CAST(N'2025-03-06T07:03:07.090' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
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
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1020, 1042, N'https://youtu.be/f2SdcotvKKA', NULL)
INSERT [dbo].[Trailer] ([MaTrailer], [MaPhim], [DuongDanTrailer], [MoTaTrailer]) VALUES (1021, 1043, N'https://youtu.be/q-sXkdhHzcs', NULL)
SET IDENTITY_INSERT [dbo].[Trailer] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1, 3, 1, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T22:01:05.640' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (3, 3, 2, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1002, 87, 2, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1005, 91, 120, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1006, 138, 756, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-10T15:08:35.403' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1007, 138, 757, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-10T15:08:36.537' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1012, 139, 756, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-24T15:19:16.440' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1013, 139, 757, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1183, 197, 39, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-25T21:37:46.913' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1184, 197, 40, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-25T21:37:47.123' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1185, 197, 47, 1, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-25T21:40:05.193' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1186, 197, 48, 1, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-25T21:50:11.137' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1192, 197, 46, 1, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-25T22:16:03.067' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1209, 197, 36, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1210, 197, 37, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T00:33:46.223' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1211, 197, 38, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T00:33:46.247' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1212, 160, 885, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T00:50:19.903' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1213, 160, 886, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-01-20T00:50:20.110' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1214, 160, 887, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T00:52:51.880' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1215, 160, 888, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1216, 198, 43, 5, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1217, 198, 44, 5, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1218, 198, 45, 5, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1219, 198, 46, 5, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-10T00:55:06.143' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1220, 198, 47, 5, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1221, 146, 774, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T01:00:34.927' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1222, 146, 775, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T01:00:35.347' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1223, 146, 776, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:00:35.370' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1224, 146, 777, 5, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:00:35.373' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1225, 146, 764, 5, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:04:55.613' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1226, 146, 765, 5, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:04:56.093' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1227, 146, 766, 5, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:04:56.113' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1228, 146, 767, 5, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:04:56.117' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1229, 130, 655, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1230, 130, 656, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:07:46.270' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1231, 130, 665, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:07:46.287' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1232, 130, 666, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:07:46.290' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1233, 109, 135, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:10:02.030' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1234, 109, 136, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:10:02.077' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1235, 109, 145, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1236, 109, 146, 5, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-02-03T01:10:02.087' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1237, 203, 655, 5, CAST(73000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:15:36.543' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1238, 203, 656, 5, CAST(73000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:15:37.003' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1239, 203, 664, 5, CAST(73000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:15:37.023' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1240, 203, 665, 5, CAST(73000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:15:37.047' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1241, 203, 666, 5, CAST(73000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T01:15:37.053' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1247, 78, 35, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:00:01.900' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1248, 78, 36, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:00:02.050' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1249, 79, 38, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:00:33.893' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1250, 79, 39, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:00:33.923' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1251, 79, 35, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:02:30.660' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1252, 79, 36, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1253, 204, 145, 9, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:11:05.637' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1254, 204, 146, 9, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T02:11:05.807' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1255, 79, 27, 9, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T04:30:44.620' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1256, 79, 37, 9, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T04:30:44.817' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1257, 78, 37, 9, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T05:07:06.027' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1258, 78, 38, 9, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T05:07:06.250' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1262, 78, 45, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T16:28:25.410' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1263, 78, 47, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T16:33:53.767' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1264, 78, 48, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T16:33:53.900' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1265, 80, 39, 1, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T16:38:36.510' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1266, 80, 50, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-26T16:46:06.603' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1267, 81, 49, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T17:17:30.707' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1268, 80, 48, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T17:24:27.813' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1269, 80, 49, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-03T17:24:27.937' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1285, 212, 150, 1, CAST(11500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T18:29:31.510' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1291, 248, 37, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-26T21:52:51.417' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1393, 248, 33, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-27T08:59:57.220' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1394, 248, 34, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-27T08:59:57.260' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1395, 248, 35, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-27T08:59:57.267' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1396, 248, 36, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-27T08:59:57.267' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1398, 83, 44, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-27T09:02:08.450' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1399, 83, 45, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-02-27T09:02:08.460' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1403, 250, 38, 1, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-02-27T09:35:25.377' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1416, 243, 45, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1417, 243, 46, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T00:34:49.753' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1420, 198, 75, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:19:06.457' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1421, 198, 76, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:19:06.460' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1422, 203, 703, 26, CAST(75000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:21:46.960' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1423, 203, 704, 26, CAST(75000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:21:47.063' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1424, 198, 84, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:27:55.457' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1425, 198, 85, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:27:55.553' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1426, 198, 86, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T02:27:55.557' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1427, 198, 87, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-01-13T00:52:51.963' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1428, 198, 88, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T04:11:58.147' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1429, 203, 657, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T04:20:27.513' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1430, 203, 658, 1, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T04:20:27.627' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1431, 243, 55, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:02:52.227' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1432, 243, 56, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:02:52.327' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1441, 244, 44, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:25:49.093' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1442, 244, 45, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:25:49.097' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1443, 244, 46, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:25:49.100' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1444, 244, 47, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-01T06:25:49.103' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1461, 250, 36, 26, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-03-02T03:48:26.790' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1462, 250, 37, 26, CAST(6500.00 AS Decimal(10, 2)), CAST(N'2025-03-02T03:48:26.830' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1496, 472, 986, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-02T04:34:22.457' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1497, 472, 987, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-02T04:34:22.553' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1498, 262, 655, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.783' AS DateTime), 1)
GO
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1499, 262, 656, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.897' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1500, 262, 657, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.903' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1501, 262, 665, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.903' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1502, 262, 666, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.907' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1503, 262, 667, 26, CAST(67500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T05:57:29.907' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1504, 249, 12, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:10.983' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1505, 249, 13, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.090' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1506, 249, 14, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.097' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1507, 249, 45, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.100' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1508, 249, 46, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.100' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1509, 249, 47, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.100' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1510, 249, 48, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.103' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1511, 249, 73, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.103' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1512, 249, 74, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.103' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1513, 249, 75, 26, CAST(10000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:46:11.107' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1514, 368, 746, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.223' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1515, 368, 747, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.227' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1516, 368, 764, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.227' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1517, 368, 765, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.230' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1518, 368, 786, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.230' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1519, 368, 787, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.233' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1520, 368, 788, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.233' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1521, 368, 803, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.233' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1522, 368, 804, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.237' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1523, 368, 805, 26, CAST(68000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:47:47.237' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1524, 433, 874, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.690' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1525, 433, 875, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.693' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1526, 433, 887, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.693' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1527, 433, 888, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.693' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1528, 433, 905, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.697' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1529, 433, 906, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.697' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1530, 433, 923, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.697' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1531, 433, 924, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.700' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1532, 433, 936, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.700' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1533, 433, 937, 26, CAST(69000.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:48:48.700' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1534, 251, 1, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.017' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1535, 251, 2, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.107' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1536, 251, 3, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.110' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1537, 251, 4, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.113' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1538, 251, 5, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.113' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1539, 251, 6, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.113' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1540, 251, 7, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.117' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1541, 251, 8, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.117' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1542, 251, 9, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.120' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1543, 251, 10, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.120' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1544, 251, 11, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.123' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1545, 251, 12, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.123' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1546, 251, 13, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.123' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1547, 251, 14, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.127' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1548, 251, 15, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.127' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1549, 251, 16, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.127' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1550, 251, 17, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.130' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1551, 251, 18, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.130' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1552, 251, 19, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.130' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1553, 251, 20, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.133' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1554, 251, 21, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.133' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1555, 251, 22, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.137' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1556, 251, 23, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.137' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1557, 251, 24, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.140' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1558, 251, 25, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.140' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1559, 251, 26, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.140' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1560, 251, 27, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.143' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1561, 251, 28, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.143' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1562, 251, 29, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.143' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1563, 251, 30, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.147' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1564, 251, 31, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.147' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1565, 251, 32, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.150' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1566, 251, 33, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.150' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1567, 251, 34, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.150' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1568, 251, 35, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.153' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1569, 251, 36, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.153' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1570, 251, 37, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.157' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1571, 251, 38, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.157' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1572, 251, 39, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.157' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1573, 251, 40, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.160' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1574, 251, 41, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.160' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1575, 251, 42, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.163' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1576, 251, 43, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.163' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1577, 251, 44, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.163' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1578, 251, 45, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.167' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1579, 251, 46, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.167' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1580, 251, 47, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.170' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1581, 251, 48, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.170' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1582, 251, 49, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.173' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1583, 251, 50, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.173' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1584, 251, 51, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.173' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1585, 251, 52, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.177' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1586, 251, 53, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.177' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1587, 251, 54, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.180' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1588, 251, 55, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.180' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1589, 251, 56, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.183' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1590, 251, 57, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.183' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1591, 251, 58, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.187' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1592, 251, 59, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.187' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1593, 251, 60, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.190' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1594, 251, 61, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.190' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1595, 251, 62, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.193' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1596, 251, 63, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.197' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1597, 251, 64, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.197' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1598, 251, 65, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.200' AS DateTime), 1)
GO
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1599, 251, 66, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-10T07:53:55.200' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1600, 251, 67, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.203' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1601, 251, 68, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.203' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1602, 251, 69, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.207' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1603, 251, 70, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.207' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1604, 251, 71, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.210' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1605, 251, 72, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.210' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1606, 251, 73, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.210' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1607, 251, 74, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.213' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1608, 251, 75, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.213' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1609, 251, 76, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.217' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1610, 251, 77, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.217' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1611, 251, 78, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.220' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1612, 251, 79, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.220' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1613, 251, 80, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.223' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1614, 251, 81, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.223' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1615, 251, 82, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.227' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1616, 251, 83, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.227' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1617, 251, 84, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.230' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1618, 251, 85, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.230' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1619, 251, 86, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.233' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1620, 251, 87, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.233' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1621, 251, 88, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.237' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1622, 251, 89, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.240' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1623, 251, 90, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.240' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1624, 251, 91, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.240' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1625, 251, 92, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.243' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1626, 251, 93, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.243' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1627, 251, 94, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.247' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1628, 251, 95, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.247' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1629, 251, 96, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.250' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1630, 251, 97, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.250' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1631, 251, 98, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.253' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1632, 251, 99, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.253' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1633, 251, 100, 26, CAST(9500.00 AS Decimal(10, 2)), CAST(N'2025-03-03T07:53:55.257' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1635, 280, 34, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T14:53:34.220' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1636, 280, 35, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T14:53:34.287' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1637, 280, 36, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T14:53:34.293' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1638, 280, 37, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T14:53:34.293' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1639, 277, 35, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T16:28:40.820' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1640, 277, 36, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-05T16:28:40.933' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1645, 251, 66, 5, CAST(2000000.00 AS Decimal(10, 2)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1653, 280, 27, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T05:46:00.780' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1654, 279, 15, 26, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T05:46:34.110' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1661, 281, 46, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:05:15.797' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1662, 281, 47, 26, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:05:15.803' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1669, 281, 5, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:19:00.447' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1670, 281, 6, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:19:00.567' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1671, 395, 765, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:26:45.667' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1672, 395, 766, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:26:45.787' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1673, 395, 767, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:26:45.790' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1674, 279, 24, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:33:37.267' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1675, 279, 25, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:33:37.377' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1676, 279, 26, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:33:37.380' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1677, 279, 27, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:33:37.383' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1678, 280, 46, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:34:17.830' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1679, 280, 47, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:34:17.833' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1680, 280, 44, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:44:14.120' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1681, 280, 45, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:44:14.250' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1682, 280, 48, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:45:25.913' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1683, 279, 34, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:46:35.560' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1684, 279, 35, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:46:35.687' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1685, 320, 145, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:51:24.737' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1686, 320, 146, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:51:24.740' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1687, 280, 56, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:53:55.590' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1688, 280, 57, 37, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:53:55.717' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1689, 282, 39, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:56:06.410' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1690, 282, 40, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:56:06.533' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1696, 281, 26, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:59:26.467' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1697, 281, 27, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:59:26.470' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1698, 281, 37, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:59:26.473' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1699, 281, 38, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:59:26.477' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1700, 280, 26, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T06:59:54.283' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1701, 477, 974, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T07:03:06.083' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1702, 477, 975, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T07:03:06.090' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1703, 477, 976, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T07:03:06.097' AS DateTime), 1)
INSERT [dbo].[Ve] ([MaVe], [MaLichChieu], [MaGhe], [MaKhachHang], [GiaVe], [NgayDat], [TrangThai]) VALUES (1704, 477, 977, 37, CAST(65000.00 AS Decimal(10, 2)), CAST(N'2025-03-06T07:03:06.103' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D105348E78FD85]    Script Date: 3/6/2025 7:25:15 AM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC003C4EBA0]    Script Date: 3/6/2025 7:25:15 AM ******/
ALTER TABLE [dbo].[TaiKhoanAdmin] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D10534278C91B6]    Script Date: 3/6/2025 7:25:15 AM ******/
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
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [FK_Combo_ThanhToan] FOREIGN KEY([MaThanhToan])
REFERENCES [dbo].[ThanhToan] ([MaThanhToan])
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [FK_Combo_ThanhToan]
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
/****** Object:  StoredProcedure [dbo].[CapNhatPhongVaGhe]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ThemPhongVaGhe]    Script Date: 3/6/2025 7:25:15 AM ******/
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
/****** Object:  StoredProcedure [dbo].[XoaPhongVaGhe]    Script Date: 3/6/2025 7:25:15 AM ******/
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
