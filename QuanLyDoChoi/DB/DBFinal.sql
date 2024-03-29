USE [QuanLyDoChoi]
GO
/****** Object:  Table [dbo].[chiTietSanPham]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietSanPham](
	[idChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[maSanPham] [varchar](10) NULL,
	[tenSanPham] [nvarchar](50) NULL,
	[idLoaiSanPham] [int] NULL,
	[idXuatXU] [int] NULL,
	[idDonViTinh] [int] NULL,
	[idKhoiLuong] [int] NULL,
	[idKhuyenMai] [int] NULL,
	[ngayXuatKho] [date] NULL,
	[soLuongTon] [int] NULL,
	[donGia] [float] NULL,
	[barCode] [varchar](12) NULL,
	[ghiChu] [nvarchar](100) NULL,
	[hinhAnh] [varchar](50) NULL,
	[trangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donViTinh]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donViTinh](
	[idDonViTinh] [int] IDENTITY(1,1) NOT NULL,
	[maDonViTinh] [varchar](10) NULL,
	[tenDonViTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gioHang]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gioHang](
	[idGioHang] [int] IDENTITY(1,1) NOT NULL,
	[idChiTietSanPham] [int] NULL,
	[soLuong] [int] NULL,
	[tongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDon]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDon](
	[idHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[idKhachHang] [int] NULL,
	[idNhanVien] [int] NULL,
	[ngayTao] [date] NULL,
	[tongTienHang] [float] NULL,
	[giamGia] [float] NULL,
	[thueVAT] [int] NULL,
	[hinhThucThanhToan] [nvarchar](30) NULL,
	[KhachCanTra] [float] NULL,
	[KhachTra] [float] NULL,
	[tienThua] [float] NULL,
	[ghiChu] [nvarchar](100) NULL,
	[KhachTraCK] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDonChiTiet]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDonChiTiet](
	[idHoaDonChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[idHoaDon] [int] NULL,
	[idSanPhamChiTiet] [int] NULL,
	[soLuong] [int] NULL,
	[giamGia] [float] NULL,
	[donGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoaDonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[idKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[maKhachHang] [varchar](20) NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[diachi] [nvarchar](200) NULL,
	[sdt] [varchar](11) NULL,
	[diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoiLuong]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoiLuong](
	[idKhoiLuong] [int] IDENTITY(1,1) NOT NULL,
	[maKhoiLuong] [varchar](10) NULL,
	[tenKhoiLuong] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhoiLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenMai]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenMai](
	[idKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[maKhuyenMai] [varchar](20) NULL,
	[loaiKhuyenMai] [nvarchar](10) NULL,
	[giaTri] [float] NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[trangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiSanPham]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiSanPham](
	[idLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[maLoaiSanPham] [varchar](10) NULL,
	[tenLoaiSanPham] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[idNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVien] [varchar](20) NULL,
	[tenNhanVien] [nvarchar](50) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](200) NULL,
	[sdt] [varchar](11) NULL,
	[email] [varchar](100) NULL,
	[trangThai] [bit] NULL,
	[chucVu] [bit] NULL,
	[matKhau] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[idXuatXu] [int] IDENTITY(1,1) NOT NULL,
	[maXuatXu] [varchar](10) NULL,
	[tenXuatXu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chiTietSanPham] ON 

INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (1, N'SP001', N'Đồ chơi xe khủng long bạo chúa nuốt ô tô.', 1, 1, 1, 1, 2, CAST(N'2023-10-03' AS Date), 27, 147000, N'140023657482', N'Không', N'khunglongbaochua.png', 0)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (2, N'SP002', N'Đồ chơi mô hình xe cẩu móc có đèn nhạc Toystar.', 1, 2, 1, 4, 1, CAST(N'2023-10-03' AS Date), 23, 243000, N'190023601941', N'Không', N'rsz_do-choi-mo-hinh-xe-moc-cau-toystar-1.jpg', 0)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (3, N'SP003', N'Đồ chơi xe Bugatti biến hình robot Mecha Ares.', 1, 2, 2, 3, 1, CAST(N'2023-10-03' AS Date), 29, 171000, N'190023601942', N'Không', N'rsz_robot-bien-hinh-sieu-xe-bugatti-1.png', 0)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (4, N'SP004', N'Đồ chơi đường hầm sư tử.', 1, 2, 1, 4, 2, CAST(N'2023-10-03' AS Date), 41, 795000, N'190028412345', N'Không', N'rsz_do-choi-duong-ham-su-tu-1.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (12, N'SP005', N'Đồ chơi xe cứu hộ có đèn nhạc Toystar.', 1, 2, 1, 3, 1, CAST(N'2023-10-03' AS Date), 13, 485000, N'184263002144', N'Không', N'rsz_1o-to-do-choi-xe-cuu-ho-toystar-1.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (18, N'SP006', N'Trò chơi Mắt trố.', 4, 1, 2, 1, 2, CAST(N'2023-10-04' AS Date), 16, 60000, N'125336541021', N'Không', N'rsz_tro-choi-mat-tro-cho-be-2.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (19, N'SP007', N'Đồ chơi bàn cân toán học Khỉ Puppy Up.', 4, 1, 1, 3, 1, CAST(N'2023-10-04' AS Date), 36, 237000, N'125336541028', N'Không', N'rsz_do-choi-ban-can-toan-hoc-puppy-up-1.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (20, N'SP008', N'Bàn vẽ từ tính tự xóa đa năng cho bé.', 4, 2, 3, 3, 1, CAST(N'2023-10-04' AS Date), 38, 171000, N'125336541066', N'Không', N'rsz_bamg-ve-tu-xoa-co-chan-da-nang-2.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (21, N'SP009', N'Bàn vẽ tranh thông minh', 4, 1, 1, 3, 1, CAST(N'2023-10-04' AS Date), 75, 222000, N'125336541421', N'Không', N'banvetranhthongminh.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (22, N'SP010', N'Máy đọc thẻ Song Ngữ Anh Việt.', 4, 2, 1, 3, 1, CAST(N'2023-10-04' AS Date), 40, 500000, N'125336900142', N'Không', N'rsz_may-doc-the-song-ngu-anh-viet-2.png', 1)
INSERT [dbo].[chiTietSanPham] ([idChiTietSanPham], [maSanPham], [tenSanPham], [idLoaiSanPham], [idXuatXU], [idDonViTinh], [idKhoiLuong], [idKhuyenMai], [ngayXuatKho], [soLuongTon], [donGia], [barCode], [ghiChu], [hinhAnh], [trangThai]) VALUES (23, N'SP011', N'Đồ chơi đàn gõ mộc cầm 8 thanh.', 3, 1, 3, 1, 2, CAST(N'2023-10-08' AS Date), 6, 63000, N'196254786235', N'Không', N'rsz_dan-go-moc-cam-8-thanh-2.png', 1)
SET IDENTITY_INSERT [dbo].[chiTietSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[donViTinh] ON 

INSERT [dbo].[donViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh]) VALUES (1, N'DVT001', N'Bộ')
INSERT [dbo].[donViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh]) VALUES (2, N'DVT002', N'Hộp')
INSERT [dbo].[donViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh]) VALUES (3, N'DVT003', N'Cái')
INSERT [dbo].[donViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh]) VALUES (4, N'DVT004', N'Chiếc')
SET IDENTITY_INSERT [dbo].[donViTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[gioHang] ON 

INSERT [dbo].[gioHang] ([idGioHang], [idChiTietSanPham], [soLuong], [tongTien]) VALUES (123, 19, 1, 237000)
INSERT [dbo].[gioHang] ([idGioHang], [idChiTietSanPham], [soLuong], [tongTien]) VALUES (124, 23, 2, 126000)
SET IDENTITY_INSERT [dbo].[gioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[hoaDon] ON 

INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (8, 2, 2, CAST(N'2023-09-05' AS Date), 1797000, 30000, 10, N'Tiền Mặt', 1946700, 2000000, 53300, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (9, 1, 2, CAST(N'2023-10-05' AS Date), 1733000, 0, 10, N'Tiền Mặt', 1906300, 2000000, 93700, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (10, 6, 2, CAST(N'2023-10-05' AS Date), 647000, 0, 10, N'Tiền Mặt', 711700, 720000, 8300, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (11, 6, 2, CAST(N'2023-10-05' AS Date), 500000, 5000, 10, N'Tiền Mặt', 545000, 550000, 5000, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (12, 1, 2, CAST(N'2023-10-06' AS Date), 386000, 0, 10, N'Tiền Mặt', 424600, 500000, 75400, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (13, 3, 2, CAST(N'2023-10-06' AS Date), 1460000, 0, 10, N'Cả Hai', 1606000, 500000, 0, N'Khách Sộp <3', 1106000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (14, 4, 2, CAST(N'2023-10-06' AS Date), 594000, 0, 10, N'Chuyển Khoản', 653400, 0, 46600, N'Không', 700000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (15, 6, 2, CAST(N'2023-10-07' AS Date), 3211000, 15000, 10, N'Cả Hai', 3517100, 1500000, 162900, N'Không', 2180000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (16, 5, 2, CAST(N'2023-10-08' AS Date), 468000, 0, 10, N'Cả Hai', 514800, 250000, 200, N'Không', 265000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (17, 6, 2, CAST(N'2023-10-08' AS Date), 513000, 10000, 10, N'Tiền Mặt', 554300, 554300, 0, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (18, 6, 2, CAST(N'2023-10-08' AS Date), 795000, 0, 10, N'Tiền Mặt', 874500, 874500, 0, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (19, 6, 2, CAST(N'2023-10-08' AS Date), 1074000, 0, 10, N'Cả Hai', 1181400, 1000000, 600, N'Không', 182000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (20, 2, 2, CAST(N'2023-10-08' AS Date), 222000, 0, 10, N'Tiền Mặt', 244200, 245000, 800, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (21, 2, 2, CAST(N'2023-10-09' AS Date), 354000, 20000, 10, N'Cả Hai', 369400, 200000, 600, N'Không', 170000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (22, 2, 2, CAST(N'2023-10-09' AS Date), 1215000, 0, 10, N'Tiền Mặt', 1336500, 1336500, 0, N'không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (23, 2, 2, CAST(N'2023-10-09' AS Date), 485000, 0, 10, N'Tiền Mặt', 533500, 540000, 6500, N'không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (24, 5, 2, CAST(N'2023-10-10' AS Date), 789000, 10000, 10, N'Cả Hai', 857900, 500000, 42100, N'Không', 400000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (25, 2, 2, CAST(N'2023-10-10' AS Date), 966000, 20000, 10, N'Cả Hai', 1042600, 500000, 7400, N'Không', 550000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (26, 7, 2, CAST(N'2023-10-10' AS Date), 20000, 0, 10, N'Tiền Mặt', 22000, 22000, 0, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (27, 8, 2, CAST(N'2023-10-17' AS Date), 842000, 0, 10, N'Cả Hai', 926200, 500000, 73800, N'Không', 500000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (28, 2, 2, CAST(N'2023-10-31' AS Date), 20000, 10000, 10, N'Chuyển Khoản', 12000, 0, 0, N'không', 12000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (29, 3, 2, CAST(N'2023-10-31' AS Date), 97000, 0, 10, N'Tiền Mặt', 106700, 107000, 300, N'không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (30, 3, 2, CAST(N'2023-10-31' AS Date), 1666500, 10000, 10, N'Tiền Mặt', 1823150, 1900000, 76850, N'k', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (31, 2, 2, CAST(N'2023-10-31' AS Date), 97000, 10000, 10, N'Chuyển Khoản', 96700, 0, 3300, N'k', 100000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (32, 2, 2, CAST(N'2023-10-31' AS Date), 397500, 0, 10, N'Tiền Mặt', 437250, 500000, 62750, N'k', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (33, 2, 2, CAST(N'2023-10-31' AS Date), 97000, 10000, 10, N'Tiền Mặt', 96700, 100000, 3300, N'k', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (34, 2, 2, CAST(N'2023-11-01' AS Date), 444000, 20000, 10, N'Chuyển Khoản', 468400, 0, 31600, N'k', 500000)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (35, 2, 2, CAST(N'2023-11-01' AS Date), 841500, 10000, 10, N'Tiền Mặt', 915650, 1000000, 84350, N'không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (36, 2, 1, CAST(N'2023-11-07' AS Date), 745000, 0, 10, N'Tiền Mặt', 819500, 820000, 500, N'Không', 0)
INSERT [dbo].[hoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [ngayTao], [tongTienHang], [giamGia], [thueVAT], [hinhThucThanhToan], [KhachCanTra], [KhachTra], [tienThua], [ghiChu], [KhachTraCK]) VALUES (37, 2, 2, CAST(N'2023-11-27' AS Date), 3045000, 20000, 10, N'Tiền Mặt', 3329500, 4000000, 650500, N'k', 0)
SET IDENTITY_INSERT [dbo].[hoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[hoaDonChiTiet] ON 

INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (12, 8, 3, 2, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (13, 8, 12, 3, 20, 485000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (14, 9, 12, 1, 20, 485000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (15, 9, 18, 5, 20, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (16, 9, 19, 4, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (17, 10, 22, 1, 20, 500000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (18, 10, 1, 1, 20, 147000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (19, 11, 22, 1, 20, 500000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (20, 12, 2, 2, 50000, 243000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (21, 13, 12, 2, 20, 485000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (22, 13, 18, 1, 20, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (23, 13, 19, 1, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (24, 13, 2, 1, 50000, 243000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (25, 14, 18, 2, 20, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (26, 14, 19, 2, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (27, 15, 22, 5, 20, 500000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (28, 15, 19, 3, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (29, 16, 23, 2, 20, 63000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (30, 16, 20, 2, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (31, 17, 20, 1, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (32, 17, 3, 2, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (33, 18, 4, 1, 20, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (34, 19, 21, 3, 20, 222000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (35, 19, 20, 1, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (36, 19, 19, 1, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (37, 20, 21, 1, 20, 222000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (38, 21, 1, 2, 20, 147000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (39, 21, 18, 1, 20, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (40, 22, 2, 5, 20, 243000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (41, 23, 12, 1, 20, 485000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (42, 24, 2, 3, 20, 243000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (43, 24, 18, 1, 20, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (44, 25, 4, 1, 20, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (45, 25, 3, 1, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (46, 26, 18, 2, 50000, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (47, 27, 20, 2, 20, 171000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (48, 27, 22, 1, 20, 500000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (49, 28, 18, 2, 50000, 60000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (50, 29, 1, 1, 50000, 147000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (51, 30, 4, 3, 50, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (52, 30, 19, 2, 20, 237000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (53, 31, 1, 1, 50000, 147000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (54, 32, 4, 1, 50, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (55, 33, 1, 1, 50000, 147000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (56, 34, 21, 2, 20, 222000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (57, 35, 21, 2, 20, 222000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (58, 35, 4, 1, 50, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (59, 36, 4, 1, 50000, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (60, 37, 4, 2, 50000, 795000)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSanPhamChiTiet], [soLuong], [giamGia], [donGia]) VALUES (61, 37, 12, 3, 20, 485000)
SET IDENTITY_INSERT [dbo].[hoaDonChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[khachHang] ON 

INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (1, N'KH000', N'Khách Lẻ', N'not', N'not', N'not', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (2, N'KH001', N'Phạm Thị Thảo', N'thao@gmail.com', N'Hà Nội', N'0312566245', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (3, N'KH002', N'Nguyễn Quang Tuấn', N'tuan@gmail.com', N'Hà Nội', N'0214562389', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (4, N'KH003', N'Phạm Thanh Tùng', N'tung@gmail.com', N'Yên Bái', N'0578216325', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (5, N'KH004', N'Nguyễn Vỹ Hùng', N'hung@gmail.com', N'Hà Nội', N'0981256752', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (6, N'KH005', N'Phạm Hồng Thúy', N'thuy@gmail.com', N'Thanh Hóa', N'0316255786', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (7, N'KH006', N'Tiến Đạt', N'dat@fpt.edu.vn', N'Hà Nội', N'0343144320', 10)
INSERT [dbo].[khachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diachi], [sdt], [diem]) VALUES (8, N'KH007', N'Phạm Hoàng Anh', N'ha@gmail.com', N'Yên Bái', N'0981256752', 10)
SET IDENTITY_INSERT [dbo].[khachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[khoiLuong] ON 

INSERT [dbo].[khoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong]) VALUES (1, N'KL001', N'150g')
INSERT [dbo].[khoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong]) VALUES (2, N'KL002', N'50g')
INSERT [dbo].[khoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong]) VALUES (3, N'KL003', N'200g')
INSERT [dbo].[khoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong]) VALUES (4, N'KL004', N'900g')
SET IDENTITY_INSERT [dbo].[khoiLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[khuyenMai] ON 

INSERT [dbo].[khuyenMai] ([idKhuyenMai], [maKhuyenMai], [loaiKhuyenMai], [giaTri], [ngayBatDau], [ngayKetThuc], [trangThai]) VALUES (1, N'Not', N'%', 20, CAST(N'2022-04-12' AS Date), CAST(N'2022-04-19' AS Date), 0)
INSERT [dbo].[khuyenMai] ([idKhuyenMai], [maKhuyenMai], [loaiKhuyenMai], [giaTri], [ngayBatDau], [ngayKetThuc], [trangThai]) VALUES (2, N'Black_Friday', N'Tiền', 50000, CAST(N'2023-10-01' AS Date), CAST(N'2023-11-10' AS Date), 0)
INSERT [dbo].[khuyenMai] ([idKhuyenMai], [maKhuyenMai], [loaiKhuyenMai], [giaTri], [ngayBatDau], [ngayKetThuc], [trangThai]) VALUES (3, N'Mid-autumn festival', N'Tiền', 30000, CAST(N'2023-10-08' AS Date), CAST(N'2023-10-10' AS Date), 0)
INSERT [dbo].[khuyenMai] ([idKhuyenMai], [maKhuyenMai], [loaiKhuyenMai], [giaTri], [ngayBatDau], [ngayKetThuc], [trangThai]) VALUES (15, N'Nhíp', N'%', 50, CAST(N'2023-10-17' AS Date), CAST(N'2023-11-30' AS Date), 1)
INSERT [dbo].[khuyenMai] ([idKhuyenMai], [maKhuyenMai], [loaiKhuyenMai], [giaTri], [ngayBatDau], [ngayKetThuc], [trangThai]) VALUES (16, N'SonNgu', N'%', 30, CAST(N'2023-11-02' AS Date), CAST(N'2023-11-03' AS Date), 0)
SET IDENTITY_INSERT [dbo].[khuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[loaiSanPham] ON 

INSERT [dbo].[loaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham]) VALUES (1, N'LSP001', N'Đồ Chơi Mô Hình')
INSERT [dbo].[loaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham]) VALUES (2, N'LSP002', N'Đồ Chơi Điều Khiển')
INSERT [dbo].[loaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham]) VALUES (3, N'LSP002', N'Đồ Chơi Gỗ')
INSERT [dbo].[loaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham]) VALUES (4, N'LSP002', N'Đồ Giáo Giục')
SET IDENTITY_INSERT [dbo].[loaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[nhanVien] ON 

INSERT [dbo].[nhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [email], [trangThai], [chucVu], [matKhau]) VALUES (1, N'huetv12', N'Tưởng Văn Huế', 1, CAST(N'2004-04-28' AS Date), N'Hà Nội', N'0827111754', N'hue@gmail.com', 1, 0, N'huedz123')
INSERT [dbo].[nhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [email], [trangThai], [chucVu], [matKhau]) VALUES (2, N'manhnv99', N'Nguyễn Vĩ Mạnh', 1, CAST(N'2004-04-28' AS Date), N'Hà Nội', N'0343144320', N'manhnqt@gmail.com', 1, 1, N'manhdz123')
SET IDENTITY_INSERT [dbo].[nhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON 

INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu]) VALUES (1, N'XX001', N'Việt Nam')
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu]) VALUES (2, N'XX002', N'Trung Quốc')
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idDonViTinh])
REFERENCES [dbo].[donViTinh] ([idDonViTinh])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idKhoiLuong])
REFERENCES [dbo].[khoiLuong] ([idKhoiLuong])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idKhuyenMai])
REFERENCES [dbo].[khuyenMai] ([idKhuyenMai])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idLoaiSanPham])
REFERENCES [dbo].[loaiSanPham] ([idLoaiSanPham])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idXuatXU])
REFERENCES [dbo].[XuatXu] ([idXuatXu])
GO
ALTER TABLE [dbo].[gioHang]  WITH CHECK ADD FOREIGN KEY([idChiTietSanPham])
REFERENCES [dbo].[chiTietSanPham] ([idChiTietSanPham])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[khachHang] ([idKhachHang])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[nhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([idHoaDon])
REFERENCES [dbo].[hoaDon] ([idHoaDon])
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([idSanPhamChiTiet])
REFERENCES [dbo].[chiTietSanPham] ([idChiTietSanPham])
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPham]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPham]
as begin
select distinct chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamBanItNhat]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamBanItNhat]
as begin
select distinct top 1 chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by soLuongBanDuoc asc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamBanNhieuNhat]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamBanNhieuNhat]
as begin
select distinct top 1 chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by soLuongBanDuoc desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamCaoNhat]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamCaoNhat]
as begin
select distinct top 1 chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by DoanhThuTuSanPham desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamLSP]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamLSP](@loaiSanPham nvarchar(50))
as begin
select distinct chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where loaiSanPham.tenLoaiSanPham=@loaiSanPham
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamThapNhat]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamThapNhat]
as begin
select distinct top 1 chiTietSanPham.maSanPham maSanPham,
			chiTietSanPham.tenSanPham tenSanPham,
			loaiSanPham.tenLoaiSanPham loaiSanPham,
			chiTietSanPham.ngayXuatKho ngayXuatKho,
			chiTietSanPham.soLuongTon soLuongTon,
			chiTietSanPham.donGia donGia,
			SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
			SUM(hoaDonChiTiet.soLuong * chiTietSanPham.donGia) DoanhThuTuSanPham
from chiTietSanPham join loaiSanPham on chiTietSanPham.idLoaiSanPham=loaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on chiTietSanPham.idChiTietSanPham=hoaDonChiTiet.idSanPhamChiTiet
					join hoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					group by chiTietSanPham.maSanPham,chiTietSanPham.tenSanPham,loaiSanPham.tenLoaiSanPham,chiTietSanPham.ngayXuatKho,
					chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by DoanhThuTuSanPham asc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuTheoNgayChon]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuTheoNgayChon](@from varchar(50),@to varchar(50))
as begin
	select ngayTao ngayTao,
	SUM(KhachCanTra) tongTien 
from hoaDon where ngayTao between @from and @to group by ngayTao
end
GO
/****** Object:  StoredProcedure [dbo].[pr_HoaDonChiTiet]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_HoaDonChiTiet](@idHoaDon int)
as begin
select	   hoaDon.idHoaDon idHoaDon,
		   ctsp.maSanPham maSanPham,
		   ctsp.tenSanPham tenSanPham,
		   hoaDonChiTiet.soLuong soLuong,
		   ctsp.donGia donGia,
		   khuyenMai.loaiKhuyenMai loaiKhuyenMai,
		   khuyenMai.giaTri giaTri
	from hoaDon join hoaDonChiTiet on hoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
				   join khachHang on hoaDon.idKhachHang=khachHang.idKhachHang
				   join chiTietSanPham ctsp on hoaDonChiTiet.idSanPhamChiTiet=ctsp.idChiTietSanPham
				   join khuyenMai on ctsp.idKhuyenMai=khuyenMai.idKhuyenMai
				   where hoaDon.idHoaDon=@idHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[SanPhamBought]    Script Date: 16/01/2024 11:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPhamBought](@idKhachHang int)
as begin
	select ctsp.maSanPham maSanPham,
		   ctsp.tenSanPham tenSanPham,
		   hoaDon.ngayTao ngayTao,
		   hoaDonChiTiet.soLuong soLuong,
		   ctsp.donGia donGia  
	from hoaDon join hoaDonChiTiet on hoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
				   join khachHang on hoaDon.idKhachHang=khachHang.idKhachHang
				   join chiTietSanPham ctsp on hoaDonChiTiet.idSanPhamChiTiet=ctsp.idChiTietSanPham
				   where khachHang.idKhachHang=@idKhachHang
end
GO
