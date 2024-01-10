-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2024 lúc 10:43 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthd`
--

CREATE TABLE `cthd` (
  `SOHD` int(11) NOT NULL,
  `MASP` char(4) NOT NULL,
  `SL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cthd`
--

INSERT INTO `cthd` (`SOHD`, `MASP`, `SL`) VALUES
(1001, 'TV02', 10),
(1002, 'BB01', 20),
(1002, 'BB02', 20),
(1002, 'BC04', 20),
(1003, 'BB03', 10),
(1004, 'TV01', 20),
(1004, 'TV02', 20),
(1004, 'TV03', 20),
(1004, 'TV04', 20),
(1005, 'TV05', 50),
(1005, 'TV06', 50),
(1006, 'TV07', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `SOHD` int(11) NOT NULL,
  `NGHD` datetime DEFAULT NULL,
  `MAKH` char(4) DEFAULT NULL,
  `MANV` char(4) DEFAULT NULL,
  `TRIGIA` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`SOHD`, `NGHD`, `MAKH`, `MANV`, `TRIGIA`) VALUES
(1003, '0000-00-00 00:00:00', 'KH02', 'NV01', 100000.00),
(1004, '0000-00-00 00:00:00', 'KH02', 'NV01', 180000.00),
(1007, '0000-00-00 00:00:00', 'KH03', 'NV03', 510000.00),
(1009, '0000-00-00 00:00:00', 'KH03', 'NV04', 200000.00),
(1011, '0000-00-00 00:00:00', 'KH04', 'NV03', 250000.00),
(1012, '0000-00-00 00:00:00', 'KH05', 'NV03', 21000.00),
(1013, '0000-00-00 00:00:00', 'KH06', 'NV01', 5000.00),
(1014, '0000-00-00 00:00:00', 'KH03', 'NV02', 3150000.00),
(1015, '0000-00-00 00:00:00', 'KH06', 'NV01', 910000.00),
(1016, '0000-00-00 00:00:00', 'KH07', 'NV02', 12500.00),
(1017, '0000-00-00 00:00:00', 'KH08', 'NV03', 35000.00),
(1018, '0000-00-00 00:00:00', 'KH08', 'NV03', 330000.00),
(1020, '0000-00-00 00:00:00', 'KH09', 'NV04', 70000.00),
(1021, '0000-00-00 00:00:00', 'KH10', 'NV03', 67500.00),
(1022, '0000-00-00 00:00:00', NULL, 'NV03', 7000.00),
(1023, '0000-00-00 00:00:00', NULL, 'NV01', 330000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` char(4) NOT NULL,
  `HOTEN` varchar(40) DEFAULT NULL,
  `DCHI` varchar(50) DEFAULT NULL,
  `SODT` varchar(20) DEFAULT NULL,
  `NGSINH` datetime DEFAULT NULL,
  `NGDK` datetime DEFAULT NULL,
  `DOANHSO` decimal(18,2) DEFAULT NULL,
  `LOAIKH` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `DCHI`, `SODT`, `NGSINH`, `NGDK`, `DOANHSO`, `LOAIKH`) VALUES
('KH01', 'Nguyễn Văn B', '731,Tran Hung Dao, Q 5 ,Tp HCM', '08823451', '1960-10-22 00:00:00', '2006-10-22 00:00:00', 13000000.00, NULL),
('KH02', 'Tran Ngoc Han', '23/5, Nguyen Trai, Q 5, Tp HCM', '0908256478', '1974-04-03 00:00:00', '2006-07-30 00:00:00', 280000.00, NULL),
('KH03', 'Tran Ngoc Linh', '45, Nguyen Canh Chan, Q 1, Tp HCM', '0938776266', '1980-06-12 00:00:00', '2006-08-05 00:00:00', 3860000.00, NULL),
('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q 10, Tp HCM', '0917325476', '1965-03-09 00:00:00', '2006-10-02 00:00:00', 250000.00, NULL),
('KH05', 'Le Nhat Minh', '34, Truong Dinh, Q 3, Tp HCM', '08246108', '1950-03-10 00:00:00', '2006-10-28 00:00:00', 21000.00, NULL),
('KH06', 'Le Hoai Thuong', '227, Nguyen Van Cu, Q 5, Tp HCM', '08631738', '1981-12-31 00:00:00', '2006-11-24 00:00:00', 915000.00, NULL),
('KH07', 'Nguyen Van Tam', '32/3, Tran Binh Trong, Q 5, Tp HCM', '0916783565', '1971-04-06 00:00:00', '2006-12-01 00:00:00', 12500.00, NULL),
('KH08', 'Phan Thi Thanh', '45/2, An Duong Vuong, Q 5, Tp HCM', '0938435756', '1971-01-10 00:00:00', '2006-12-13 00:00:00', 365000.00, NULL),
('KH09', 'Le Ha Vinh', '873, Le Hong Phong, Q 5, Tp HCM', '08654763', '1979-09-03 00:00:00', '2007-01-14 00:00:00', 70000.00, NULL),
('KH10', 'Ha Duy Lap', '34/34B, Nguyen Trai, Q 1, Tp HCM', '08768904', '1983-05-02 00:00:00', '2007-01-16 00:00:00', 67500.00, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` char(4) NOT NULL,
  `HOTEN` varchar(20) DEFAULT NULL,
  `SODT` varchar(20) DEFAULT NULL,
  `NGVL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `HOTEN`, `SODT`, `NGVL`) VALUES
('NV01', 'Nguyen Nhu Nhut', '0927345678', '2006-04-13 00:00:00'),
('NV02', 'Le Thi Phi Yen', '0987567390', '2006-04-21 00:00:00'),
('NV03', 'Nguyen Van B', '0997047382', '2006-04-27 00:00:00'),
('NV04', 'Ngo Thanh Tuan', '0913758498', '2006-06-24 00:00:00'),
('NV05', 'Nguyen Thi Truc ', '0918590387', '2006-07-20 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` char(4) NOT NULL,
  `TENSP` varchar(20) DEFAULT NULL,
  `DVT` varchar(20) DEFAULT NULL,
  `NUOCSX` varchar(40) DEFAULT NULL,
  `GIA` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `DVT`, `NUOCSX`, `GIA`) VALUES
('BB01', 'But bi', 'cay', 'Viet Nam', 5000.00),
('BB02', 'But bi', 'cay', 'Trung Quoc', 7000.00),
('BB03', 'But bi', 'hop', 'Thai Lan', 100000.00),
('BC01', 'But chi', 'cay', 'Singapore', 3000.00),
('BC02', 'But chi', 'cay', 'Singapore', 5000.00),
('BC03', 'But chi', 'cay', 'Viet Nam', 3500.00),
('BC04', 'But chi', 'hop', 'Viet Nam', 30000.00),
('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', 40000.00),
('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', 55000.00),
('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', 51000.00),
('ST04', 'So tay', 'quyen', 'Thai Lan', 55000.00),
('ST05', 'So tay mong', 'quyen', 'Thai Lan', 20000.00),
('ST06', 'Phan viet bang', 'hop', 'Viet Nam', 5000.00),
('ST07', 'Phan khong bui', 'hop', 'Viet Nam', 7000.00),
('ST08', 'Bong bang', 'cai', 'Viet Nam', 1000.00),
('ST09', 'But long', 'cay', 'Viet Nam', 5000.00),
('ST10', 'But long', 'cay', 'Trung Quoc', 7000.00),
('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', 2500.00),
('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', 4500.00),
('TV03', 'Tap 100 giay tot', 'quyen', 'Viet Nam', 3000.00),
('TV04', 'Tap 200 giay tot', 'quyen', 'Viet Nam', 5500.00),
('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', 23000.00),
('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', 53000.00),
('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', 34000.00);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`SOHD`,`MASP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`SOHD`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
