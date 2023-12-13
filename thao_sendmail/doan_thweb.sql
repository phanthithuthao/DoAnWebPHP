-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 05:18 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_thweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listbrand`
--

CREATE TABLE `listbrand` (
  `idBrand` char(10) NOT NULL,
  `nameBrand` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `urlImageBrand` text NOT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `listbrand`
--

INSERT INTO `listbrand` (`idBrand`, `nameBrand`, `urlImageBrand`, `country`) VALUES
('B10', 'Lexus ', 'logo10.jpg', 'Nhật Bản'),
('B2', 'Toyota', 'logo2.jpg', 'Nhật Bản'),
('B3', 'BMW', 'logo3.jpg', 'Đức'),
('B4', 'Audi', 'logo4.jpg', 'Đức'),
('B5', 'Subaru', 'logo5.png', 'Nhật Bản'),
('B6', 'Lamborghini', 'logo6.png', 'Ý'),
('B7', 'Ferrari', 'logo7.png', 'Ý'),
('B8', 'Mclaren', 'logo8.jpg', 'Anh'),
('B9', 'Mazda', 'logo9.png', 'Nhật Bản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `idProduct` char(10) NOT NULL,
  `nameProduct` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priceProduct` float NOT NULL,
  `urlImagePro` text NOT NULL,
  `idBrand` char(10) DEFAULT NULL,
  `Engine` char(10) DEFAULT NULL,
  `horsePower` char(10) DEFAULT NULL,
  `seat` int(5) NOT NULL,
  `gearBox` char(50) NOT NULL,
  `width` char(10) NOT NULL,
  `height` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idProduct`, `nameProduct`, `priceProduct`, `urlImagePro`, `idBrand`, `Engine`, `horsePower`, `seat`, `gearBox`, `width`, `height`) VALUES
('P10', 'Fortuner', 1612000000, 'pro10.jpg', 'B2', '2000', '178', 7, '6', '1900', '1800'),
('P11', '330i M Sport', 2499000000, 'pro11.jpg', 'B3', '2000', '248', 4, '8', '1900', ' 1800'),
('P12', '740Li', 5369000000, 'pro12.jpg', 'B3', '2998', '400', 4, '8', '1900', '1400'),
('P13', 'X5 xDrive40i M Sport', 4549000000, 'pro13.jpg', 'B3', '3000', '250', 5, '10', '1900', '1400'),
('P14', '430i Convertible M Sport', 3599000000, 'pro14.jpg', 'B3', '2000', '248', 4, '10', '1900', '1400'),
('P15', 'Z4 Roadster', 3329000000, 'pro15.jpg', 'B3', '2000', '230', 2, '10', '1900', '1200'),
('P16', 'A8L', 5699000000, 'pro16.jpg', 'B4', '4000', '320', 5, '10', '1900', '1400'),
('P17', 'A5 Cabriolet', 2510000000, 'pro17.png', 'B4', '3200', '278', 5, '10', '1900', '1400'),
('P18', 'R8 Coupe', 13000000000, 'pro18.jpg', 'B4', '8000', '560', 2, '12', '1900', '1200'),
('P19', 'Q8 ', 4500000000, 'pro19.jpg', 'B4', '4200', '400', 4, '12', '1900', '1400'),
('P20', 'A7 Sportback', 3299000000, 'pro20.jpg', 'B4', '3200', '230', 5, '10', '1900', '1400'),
('P21', 'Forester', 1128000000, 'pro21.jpeg', 'B5', '2000', '190', 7, '10', '1900', '1400'),
('P22', 'BRZ Sport', 1900000000, 'pro22.jpg', 'B5', '3400', '300', 2, '10', '1900', '1400'),
('P23', 'WRX STI', 2100000000, 'pro23.jpg', 'B5', '4000', '390', 2, '10', '1900', '1200'),
('P24', 'Outback', 1868000000, 'pro24.jpg', 'B5', '2300', '190', 5, '7', '1900', '1400'),
('P25', 'Levorg', 1489000000, 'pro25.jpg', 'B5', '2500', '230', 5, '7', '1900', '1400'),
('P26', 'Aventador', 27000000000, 'pro26.jpg', 'B6', '12000', '700', 2, '12', '1900', '1200'),
('P27', 'Huracan', 24000000000, 'pro27.jpg', 'B6', '10000', '560', 2, '12', '1900', '1200'),
('P28', 'Urus', 26000000000, 'pro28.jpg', 'B6', '10000', '560', 4, '12', '1900', '1400'),
('P29', 'Gallardo', 30000000000, 'pro29.jpg', 'B6', '8000', '550', 2, '12', '1900', '1200'),
('P30', 'Murcielago', 29000000000, 'pro30.jpg', 'B6', '10000', '500', 2, '12', '1900', '1200'),
('P31', 'F12 Berlinetta', 25000000000, 'pro31.jpg', 'B7', '12000', '600', 2, '12', '1900', '1200'),
('P32', '458 Italia', 19000000000, 'pro32.jpg', 'B7', '8000', '550', 2, '12', '1900', '1200'),
('P33', 'California T', 17200000000, 'pro33.jpeg', 'B7', '8000', '550', 2, '12', '1900', '1200'),
('P34', '821 Superfast', 27000000000, 'pro34.jpg', 'B7', '12000', '700', 2, '12', '1900', '1200'),
('P35', '488 Pista Spyder', 25000000000, 'pro35.jpg', 'B7', '8000', '530', 2, '12', '1900', '1200'),
('P36', '720S Spider', 24000000000, 'pro36.jpg', 'B8', '8000', '600', 2, '12', '1900', '1200'),
('P37', '675LT Coupe', 27000000000, 'pro37.jpg', 'B8', '8000', '570', 2, '12', '1900', '1200'),
('P38', '650S Spider', 18000000000, 'pro38.jpg', 'B8', '8000', '570', 2, '12', '1900', '1200'),
('P39', '570S Coupe', 15000000000, 'pro39.jpg', 'B8', '8000', '550', 2, '12', '1900', '1200'),
('P40', 'Senna', 70000000000, 'pro40.jpg', 'B8', '12000', '800', 2, '12', '1900', '1200'),
('P41', 'CX-5', 1149000000, 'pro41.jpg', 'B9', '3200', '250', 5, '8', '1900', '1400'),
('P42', 'CX-9', 1855000000, 'pro42.jpg', 'B9', '3200', '270', 7, '8', '1900', '1400'),
('P43', 'BT-50', 759000000, 'pro43.jpg', 'B9', '3200', '200', 4, '8', '1900', '1400'),
('P44', '6 Sedan', 1019000000, 'pro44.png', 'B9', '2500', '200', 4, '8', '1900', '1400'),
('P45', '3 Hatchback', 669000000, 'pro45.jpg', 'B9', '2500', '200', 4, '8', '1900', '1200'),
('P46', 'RC300 Coupe', 3290000000, 'pro46.jpg', 'B10', '3500', '350', 4, '10', '1900', '1200'),
('P47', 'GX460', 5690000000, 'pro47.jpg', 'B10', '4000', '400', 5, '10', '1900', '1400'),
('P48', 'RX450h', 4650000000, 'pro48.jpg', 'B10', '4000', '450', 5, '10', '1900', '1400'),
('P49', 'LS500h', 7830000000, 'pro49.jpg', 'B10', '5000', '450', 4, '12', '1900', '1400'),
('P50', 'ES250', 3040000000, 'pro50.jpg', 'B10', '3200', '300', 4, '10', '1900', '1400'),
('P6', 'Vios', 531000000, 'pro6.jpg', 'B2', '2000', '170', 4, '8', '1900', '1400'),
('P7', 'Camry', 1235000000, 'pro7.jpg', 'B2', '2200', '180', 4, '8', '1900', '1400'),
('P8', 'Hilux', 799000000, 'pro8.jpg', 'B2', '2500', '200', 4, '9', '1900', '1500'),
('P9', 'Innova', 989000000, 'pro9.jpg', 'B2', '2800', '170', 7, '8', '1900', '1400');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test_drives`
--

CREATE TABLE `test_drives` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `phoneUser` varchar(12) NOT NULL,
  `emailUser` varchar(50) NOT NULL,
  `role` bit(1) NOT NULL,
  `addressUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` bit(1) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`idUser`, `userName`, `pass`, `phoneUser`, `emailUser`, `role`, `addressUser`, `gender`, `image`) VALUES
(11, 'chauduc             ', '123456             ', '0909000000  ', 'chauduc@gmail.com                                 ', b'1', 'Vũng Tàu', b'1', 'user1.png'),
(22, 'truonggiang         ', '123456              ', '0909111111  ', 'truonggiang@gmail.com                             ', b'1', 'TP Hồ Chí Minh', b'1', 'user2.png'),
(33, 'anhkhoa             ', '123456              ', '0909222222  ', 'anhkhoa@gmail.com                                 ', b'1', 'TP Hồ Chí Minh', b'1', 'user3.png'),
(44, 'nhathuy             ', '123456              ', '0909333333  ', 'nhathuy@gmail.com                                 ', b'0', 'Bình Phước', b'1', 'user4.png'),
(55, 'bannu               ', '123456              ', '0909444444  ', 'bannu@gmail.com                                   ', b'0', 'Bình Phước', b'0', 'user5.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `listbrand`
--
ALTER TABLE `listbrand`
  ADD PRIMARY KEY (`idBrand`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idBrand` (`idBrand`);

--
-- Chỉ mục cho bảng `test_drives`
--
ALTER TABLE `test_drives`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `test_drives`
--
ALTER TABLE `test_drives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `listbrand` (`idBrand`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
