-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 06:24 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xemdiem`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_canbogiangvien`
--

CREATE TABLE IF NOT EXISTS `t_canbogiangvien` (
  `MaCBGV` int(11) NOT NULL,
  `TenCBGV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaNhomND` int(4) NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_canbogiangvien`
--

INSERT INTO `t_canbogiangvien` (`MaCBGV`, `TenCBGV`, `Email`, `MatKhau`, `MaNhomND`, `TrangThai`) VALUES
(123456, 'Nguyễn Thị Hoa', 'hoa@gmail.com', '123456', 0, b'0'),
(123457, 'Phạm Như Quỳnh', 'quynhpn@gmail.com', ' 777  ', 0, b'0'),
(22, '222', '2', '2', 0, b'1'),
(333, '333', '3', '    ', 1, b'1'),
(0, '333', '33', '33', 0, b'1'),
(98, 'trang', 'gg', 'gg', 0, b'1'),
(101010, '333', '33', '33', 0, b'1'),
(456, 'rr', 'rr', 'rr', 0, b'1'),
(89999, 'hhh', '', '', 0, b'1'),
(677, '777', '77', '77', 0, b'1'),
(66, '66', '', '66', 0, b'1'),
(99999, '9', '9', '9', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `t_danhmuc`
--

CREATE TABLE IF NOT EXISTS `t_danhmuc` (
`MaDM` int(11) NOT NULL,
  `TenDM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_diem`
--

CREATE TABLE IF NOT EXISTS `t_diem` (
  `MaKQ` int(11) NOT NULL,
  `DiemQT` int(11) NOT NULL,
  `DiemKT` int(11) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_diem`
--

INSERT INTO `t_diem` (`MaKQ`, `DiemQT`, `DiemKT`, `GhiChu`) VALUES
(0, 0, 0, ''),
(1, 1, 1, ''),
(4, 10, 10, ''),
(5, 9, 10, ''),
(6, 1, 10, ''),
(7, 9, 9, '222'),
(11, 2, 2, ''),
(12, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_hocky`
--

CREATE TABLE IF NOT EXISTS `t_hocky` (
  `MaHK` varchar(10) NOT NULL,
  `TenHK` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_hocky`
--

INSERT INTO `t_hocky` (`MaHK`, `TenHK`) VALUES
('1_2014', 'Học kỳ I năm học 2014'),
('1_2015', 'Học kỳ 1 năm học 2015'),
('2_2014', 'Học kỳ 2 năm học 2014'),
('2_2015', 'Học kỳ 2 năm học 2015');

-- --------------------------------------------------------

--
-- Table structure for table `t_khoa`
--

CREATE TABLE IF NOT EXISTS `t_khoa` (
  `MaKhoa` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhoa` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_khoa`
--

INSERT INTO `t_khoa` (`MaKhoa`, `TenKhoa`) VALUES
('CNTT', 'Công nghệ thông tin'),
('KTQL', 'Kinh tế và quản lí xây dựng'),
('CTT', 'Công trình thủy');

-- --------------------------------------------------------

--
-- Table structure for table `t_khoahoc`
--

CREATE TABLE IF NOT EXISTS `t_khoahoc` (
  `MaKHoc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TenKHoc` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_khoahoc`
--

INSERT INTO `t_khoahoc` (`MaKHoc`, `TenKHoc`) VALUES
('2011_2016', '2011 - 2016'),
('2010_2015', '2010 - 2015'),
('2012_2017', '2012 - 2017'),
('2013-2018', '2013-2018'),
('2014-2019', '2014-2019'),
('', '2013-2018');

-- --------------------------------------------------------

--
-- Table structure for table `t_lop`
--

CREATE TABLE IF NOT EXISTS `t_lop` (
  `MaLop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLop` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MaKhoa` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_lop`
--

INSERT INTO `t_lop` (`MaLop`, `TenLop`, `MaKhoa`) VALUES
('56PM1', '56PM1', 'CNTT'),
('56PM2', '56PM2', 'CNTT'),
('57PM', '57PM', 'CNTT'),
('55PM', '55PM', 'CNTT'),
('56KT6', '56KT6', 'KTQL'),
('56CG1', '56CG1', 'CTT');

-- --------------------------------------------------------

--
-- Table structure for table `t_monhoc`
--

CREATE TABLE IF NOT EXISTS `t_monhoc` (
  `MaMH` int(11) NOT NULL,
  `TenMH` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SoTinChi` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_monhoc`
--

INSERT INTO `t_monhoc` (`MaMH`, `TenMH`, `SoTinChi`) VALUES
(471738, 'N.dạng xử lý tiếng nói', 3),
(471717, 'Hệ quản trị cơ sở dữ liệu', 2),
(410112, 'Tư tưởng Hồ Chí Minh', 2),
(471731, 'Công nghệ web', 2),
(471772, 'C# và MT NET', 3),
(390111, 'Đại số tuyến tính', 3),
(390121, 'Giải tích 1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_monhoclop`
--

CREATE TABLE IF NOT EXISTS `t_monhoclop` (
`MaMonLop` int(11) NOT NULL,
  `MaHK` varchar(10) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `MaLop` varchar(10) NOT NULL,
  `NgayThi` date NOT NULL,
  `MaPhongThi` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_monhoclop`
--

INSERT INTO `t_monhoclop` (`MaMonLop`, `MaHK`, `MaMH`, `MaLop`, `NgayThi`, `MaPhongThi`) VALUES
(4, '1_2015', 390111, '56CG1', '2015-11-30', '106H1'),
(5, '1_2015', 390111, '57PM1', '2015-11-26', '107H1'),
(6, '1_2014', 471717, '56PM1', '2015-11-25', '103H1'),
(7, '1_2015', 471717, '57PM1', '2015-11-23', '102H1'),
(8, '1_2015', 471738, '57PM', '2015-02-08', '106H1');

-- --------------------------------------------------------

--
-- Table structure for table `t_monhocsinhvien`
--

CREATE TABLE IF NOT EXISTS `t_monhocsinhvien` (
`MaMHSV` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `MaMHLop` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_monhocsinhvien`
--

INSERT INTO `t_monhocsinhvien` (`MaMHSV`, `MaSV`, `MaMHLop`) VALUES
(24, 121256, 8),
(1, 123456, 4),
(4, 123456, 6),
(13, 123456, 8),
(25, 131356, 8),
(26, 141456, 7),
(5, 456892, 4),
(14, 456892, 8),
(21, 588257, 6),
(11, 588257, 8),
(8, 679021, 5),
(6, 679021, 6),
(15, 679021, 8),
(7, 722999, 7),
(16, 722999, 8),
(17, 806157, 8),
(12, 826357, 8),
(9, 1506655, 8),
(10, 1533657, 8);

-- --------------------------------------------------------

--
-- Table structure for table `t_nhomnguoidung`
--

CREATE TABLE IF NOT EXISTS `t_nhomnguoidung` (
  `MaNhomND` int(4) NOT NULL,
  `TenNhomND` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_nhomnguoidung`
--

INSERT INTO `t_nhomnguoidung` (`MaNhomND`, `TenNhomND`) VALUES
(0, 'Admin2'),
(1, 'Cán bộ giảng viên'),
(2, 'Sinh Viên');

-- --------------------------------------------------------

--
-- Table structure for table `t_phong`
--

CREATE TABLE IF NOT EXISTS `t_phong` (
  `MaPhong` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenPhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_phong`
--

INSERT INTO `t_phong` (`MaPhong`, `TenPhong`) VALUES
('101H1', '101H1'),
('102H1', '102H1'),
('103H1', '103H1'),
('104H1', '104H1'),
('106H1', '106H1'),
('107H1', '107H1');

-- --------------------------------------------------------

--
-- Table structure for table `t_quyentruycap`
--

CREATE TABLE IF NOT EXISTS `t_quyentruycap` (
`MaQuyenTC` int(11) NOT NULL,
  `MaNhomQuyen` int(11) DEFAULT NULL,
  `MaDanhMuc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_sinhvien`
--

CREATE TABLE IF NOT EXISTS `t_sinhvien` (
  `MaSV` int(11) NOT NULL,
  `TenSV` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `QueQuan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLopQL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKHoc` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_sinhvien`
--

INSERT INTO `t_sinhvien` (`MaSV`, `TenSV`, `MatKhau`, `NgaySinh`, `QueQuan`, `SDT`, `Email`, `MaLopQL`, `MaKHoc`, `TrangThai`) VALUES
(456892, 'Phan Bá Thái', 'thai', '1991-11-02', 'Thái Bính', '0168923445', 'thai@gmail.com', '56PM1', '2010_2015', b'1'),
(679021, 'Phan Văn Minh', 'minh', '1990-12-23', 'Hà Nội', '0972893441', 'minh@gmail.com', '56KT6', '2011_2016', b'1'),
(123456, 'Nguyễn Thị Mai', 'mai', '1993-11-03', 'Nghệ An', '0168993332', 'mai@gmail.com', '56KT6', '2010_2015', b'1'),
(729111, 'Phạm Thị Lệ', 'le', '1992-12-16', 'Thanh Hóa', '0168997345', 'le@gmail.com', '56PM2', '2011_2016', b'1'),
(722999, 'Nguyễn Thị Hoa', 'hoa', '1993-12-09', 'Hà Nội', '01682954438', 'hoa@gmail.com', '56PM1', '2011_2016', b'1'),
(806157, 'Hoàng Thị Giang', 'giang', '1994-12-22', 'Hà Nội', '', 'gianghoang@gmail.com', '57PM', '2012_2017', b'1'),
(1506655, 'Trần Tuấn Anh', 'anh', '0000-00-00', 'Nam Định', '', '', '55PM', '2010_2015', b'1'),
(1533657, 'Trần Thành Đạt', 'dat', '1993-12-01', 'Hải Dương', '', '', '56PM1', '2011_2016', b'1'),
(588257, 'Phạm Văn	Đoàn', 'doan', '0000-00-00', 'Nghệ An', '', '', '57PM', '2010_2015', b'1'),
(826357, 'Nguyễn Cao	Đức', 'Cao Đức', '1992-12-07', 'Hà Nội', '', 'caoduc@gmail.com', '57PM', '2012_2017', b'1'),
(121256, 'Nguyễn Lan Phương', 'phuong', '1990-12-02', 'Hà Giang', '', 'phuong@gmail.com', '56PM2', '2011_2016', b'1'),
(131356, 'Phạm Thị Hoa', 'hoa', '1993-12-15', 'Cao Bằng', '', 'hoapham@gmail.com', '56PM1', '2011_2016', b'1'),
(141456, 'Hoàng Văn Long', 'long', '1991-12-13', '', '', 'longit@gmail.com', '57PM', '2012_2017', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `t_thoikhoabieu`
--

CREATE TABLE IF NOT EXISTS `t_thoikhoabieu` (
  `MaSV` int(11) NOT NULL,
  `MaHK` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaThu` int(11) NOT NULL,
  `MaTiet` int(11) NOT NULL,
  `MaMon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_thu`
--

CREATE TABLE IF NOT EXISTS `t_thu` (
`MaThu` int(11) NOT NULL,
  `TenThu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_thu`
--

INSERT INTO `t_thu` (`MaThu`, `TenThu`) VALUES
(1, 'Thứ 2'),
(2, 'Thứ 3'),
(3, 'Thứ 4'),
(4, 'Thứ 5'),
(5, 'Thứ 6'),
(6, 'Thứ 7'),
(7, 'Chủ nhật');

-- --------------------------------------------------------

--
-- Table structure for table `t_tiet`
--

CREATE TABLE IF NOT EXISTS `t_tiet` (
`MaTiet` int(11) NOT NULL,
  `TenTiet` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_tintuc`
--

CREATE TABLE IF NOT EXISTS `t_tintuc` (
`MaTin` int(11) NOT NULL,
  `TieuDe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `NgayDang` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_tintuc`
--

INSERT INTO `t_tintuc` (`MaTin`, `TieuDe`, `NoiDung`, `NgayDang`) VALUES
(1, 'Thông báo danh mục môn học thay thế môn học (Giáo dục quốc phòng) áp dụng từ học kỳ I năm học 2015-2016. ', 'Libraries\\Pictures\\mon hoc thay the quoc phong.jpg', '2015-11-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_canbogiangvien`
--
ALTER TABLE `t_canbogiangvien`
 ADD PRIMARY KEY (`MaCBGV`);

--
-- Indexes for table `t_danhmuc`
--
ALTER TABLE `t_danhmuc`
 ADD PRIMARY KEY (`MaDM`);

--
-- Indexes for table `t_diem`
--
ALTER TABLE `t_diem`
 ADD PRIMARY KEY (`MaKQ`);

--
-- Indexes for table `t_hocky`
--
ALTER TABLE `t_hocky`
 ADD PRIMARY KEY (`MaHK`);

--
-- Indexes for table `t_khoa`
--
ALTER TABLE `t_khoa`
 ADD PRIMARY KEY (`MaKhoa`);

--
-- Indexes for table `t_khoahoc`
--
ALTER TABLE `t_khoahoc`
 ADD PRIMARY KEY (`MaKHoc`);

--
-- Indexes for table `t_lop`
--
ALTER TABLE `t_lop`
 ADD PRIMARY KEY (`MaLop`), ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Indexes for table `t_monhoc`
--
ALTER TABLE `t_monhoc`
 ADD PRIMARY KEY (`MaMH`);

--
-- Indexes for table `t_monhoclop`
--
ALTER TABLE `t_monhoclop`
 ADD PRIMARY KEY (`MaMonLop`), ADD UNIQUE KEY `MaHK` (`MaHK`,`MaMH`,`MaLop`);

--
-- Indexes for table `t_monhocsinhvien`
--
ALTER TABLE `t_monhocsinhvien`
 ADD PRIMARY KEY (`MaMHSV`), ADD UNIQUE KEY `MaSV` (`MaSV`,`MaMHLop`);

--
-- Indexes for table `t_nhomnguoidung`
--
ALTER TABLE `t_nhomnguoidung`
 ADD PRIMARY KEY (`MaNhomND`);

--
-- Indexes for table `t_phong`
--
ALTER TABLE `t_phong`
 ADD PRIMARY KEY (`MaPhong`);

--
-- Indexes for table `t_quyentruycap`
--
ALTER TABLE `t_quyentruycap`
 ADD PRIMARY KEY (`MaQuyenTC`);

--
-- Indexes for table `t_sinhvien`
--
ALTER TABLE `t_sinhvien`
 ADD PRIMARY KEY (`MaSV`);

--
-- Indexes for table `t_thu`
--
ALTER TABLE `t_thu`
 ADD PRIMARY KEY (`MaThu`);

--
-- Indexes for table `t_tiet`
--
ALTER TABLE `t_tiet`
 ADD PRIMARY KEY (`MaTiet`);

--
-- Indexes for table `t_tintuc`
--
ALTER TABLE `t_tintuc`
 ADD PRIMARY KEY (`MaTin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_danhmuc`
--
ALTER TABLE `t_danhmuc`
MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_monhoclop`
--
ALTER TABLE `t_monhoclop`
MODIFY `MaMonLop` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_monhocsinhvien`
--
ALTER TABLE `t_monhocsinhvien`
MODIFY `MaMHSV` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `t_quyentruycap`
--
ALTER TABLE `t_quyentruycap`
MODIFY `MaQuyenTC` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_thu`
--
ALTER TABLE `t_thu`
MODIFY `MaThu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t_tiet`
--
ALTER TABLE `t_tiet`
MODIFY `MaTiet` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_tintuc`
--
ALTER TABLE `t_tintuc`
MODIFY `MaTin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
