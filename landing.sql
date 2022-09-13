-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 03:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landing`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Type`, `Create_at`, `Update_at`) VALUES
(1, 'Project Land', '2022-01-06 09:17:45', '2022-01-06 13:29:20'),
(2, 'Apartment', '2022-01-06 09:17:45', '2022-01-06 13:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `custommer`
--

CREATE TABLE `custommer` (
  `ID` int(11) NOT NULL,
  `idUser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` timestamp NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detailland`
--

CREATE TABLE `detailland` (
  `ID` int(11) NOT NULL,
  `idLand` int(11) NOT NULL,
  `Project` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Paradigm` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Floor` int(11) NOT NULL,
  `Building` int(11) NOT NULL,
  `Area` double NOT NULL,
  `BedRoom` int(11) NOT NULL,
  `BathRoom` int(11) NOT NULL,
  `Direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detailland`
--

INSERT INTO `detailland` (`ID`, `idLand`, `Project`, `Paradigm`, `Status`, `Floor`, `Building`, `Area`, `BedRoom`, `BathRoom`, `Direction`) VALUES
(1, 1, 'LOUIS CITY HOÀNG MAI', 'Nhà liền kề', 'Chưa bán', 1, 1, 312, 2, 2, 'Đông Nam'),
(2, 2, 'MARASA CITY Văn Chiến', 'Nhà liền kề ', 'Chưa bán', 2, 2, 452, 3, 3, 'Đông Bắc'),
(3, 3, 'MATAKA CITY VIỆT DŨNG', 'Nhà liền kề', 'Chưa bán', 3, 3, 425, 5, 2, 'Nam'),
(4, 7, 'TRUNG HỒ CITY QUẬN 8', 'Chung cư', 'Chưa bán', 25, 3, 150, 3, 2, 'Đông Bắc'),
(5, 8, 'VĂN CHIẾN CITY QUẬN TÂN BÌNH', 'Chung cư', 'Chưa bán', 12, 1, 145, 3, 1, 'Tây Nam'),
(6, 4, 'HIẾU NGHĨA CITY QUẬN NGŨ HÀNH SƠN', 'Nhà liền kề', 'Chưa bán', 2, 14, 429, 4, 2, 'Đông Nam'),
(7, 6, 'HIẾU NGHĨA CITY QUẬN SƠN TRÀ', 'Chung cư', 'Chưa bán', 25, 3, 425, 2, 2, 'Đông'),
(8, 5, 'SALALA CITY HẢI CẢNG', 'Chung cư', 'Chưa bán', 6, 2, 312, 1, 1, 'Bắc'),
(9, 9, 'PAUL CITY NARAKA', 'Nhà liền kề', 'chưa bán', 3, 2, 425, 3, 2, 'Đông Nam');

-- --------------------------------------------------------

--
-- Table structure for table `land`
--

CREATE TABLE `land` (
  `ID` int(11) NOT NULL,
  `IdCategory` int(11) NOT NULL,
  `SubTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IsFree` tinyint(1) NOT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ImageArr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `land`
--

INSERT INTO `land` (`ID`, `IdCategory`, `SubTitle`, `Title`, `IsFree`, `Address`, `Image`, `ImageArr`, `Price`, `Description`, `Create_at`, `Update_at`) VALUES
(1, 1, 'LOUIS CITY HOÀNG MAI', 'Smart-Home', 0, 'Hoàng Văn Thụ,Thị trấn Phước Hải, Huyện Đất Đỏ', 'https://dat24h.com/uploads/news/2018/nha-dat.jpg', '', 600000000, 'Lavila Đông Qui Nhơn là dự án biệt thự thương mại mặt tiền mới do Kiến Á Group phát triển tại Khu dân cư Hoàng Văn Thụ,Thị trấn Phước Hải, Huyện Đất Đỏ\r\n\r\nDự án được xây dựng trên khu đất có diện tích gần 8.000 m2 với quy mô 60 căn nhà phố thương mại. Diệ', '2022-01-06 09:32:35', '2022-01-07 13:44:17'),
(2, 2, 'MARASA CITY Văn chiến', 'Smart-PenHouse', 0, ' Đường Hoàng Hoa Thám,Quận Hoàm Kiếm', 'https://danhkhoireal.vn/wp-content/uploads/2019/01/du-an-harbor-garden.jpg', '', 700000000, 'Căn biệt thự Sim City có thiết kế theo phong cách châu âu nhưng vẫn mang bản sắc dân tộc Việt Nam. Căn hộ ấm áp, không gian sống yên bình. Mỗi buổi sáng sớm tận hưởng những ánh sáng nhẹ nhàng ngập tràn căn phòng, những tiếng chim ca ríu rít trên cành cây ', '2022-01-06 09:32:35', '2022-01-07 13:45:32'),
(3, 1, 'MATAKA CITY VIỆT DŨNG', 'Wood-PenHouse', 1, 'Khu dân cư Cát Lái, phường Cát Lái, quận 2', 'https://news.mogi.vn/wp-content/uploads/2018/04/banner-1-1.jpg', '', 500000000, 'Lavila Đông Sài Gòn là một dự án nhà mặt phố thương mại tọa lạc tại khu dân cư Cát Lái sầm uất tại quận 2. Dự án có tổng diện tích đất xây dựng là gần 8000 mét vuông với quy mô gồm 60 căn nhà phố thương mại (mỗi căn diện tích từ 320 – 345 mét vuông).\r\n\r\nM', '2022-01-06 09:39:02', '2022-01-07 13:46:12'),
(4, 2, 'HIẾU NGHĨA CITY QUẬN NGŨ HÀNH SƠN', 'Smart-PenHouse', 1, 'Phường Hòa Qúi, Quận Ngũ Hành Sơn', 'https://danhkhoireal.vn/wp-content/uploads/2020/03/phoi-canh-du-an-can-ho-the-royal-da-nang.jpg', '', 800000000, 'Dự án Căn hộ The Royal Đà Nẵng Boutique Hotel & Condo – Tháp Ven Sông là Nhà ở cao tầng, khách sạn cao cấp và chuỗi thương mại – dịch vụ tọa lạc tại Thửa số 82, Tờ bản đồ số 7 (Khu A1-1), Mặt tiền Đường Bạch Đằng, Phường Bình Thuận, Quận Hải Châu, TP Đà N', '2022-01-06 09:39:02', '2022-01-07 14:24:37'),
(5, 2, 'SALALA CITY HẢI CẢNG', 'Lake-PenHoue', 0, '76 Trần Hưng Đạo, phường Hải Cảng', 'https://altararesidences.vn/wp-content/uploads/2019/05/ngoai-canh-altara-quy-nhon-11.jpg', '', 500000000, 'Dự án được đánh giá sở hữu vị trí đắc địa, với 3 mặt view biển, vừa sát kề trung tâm chính trị – văn hóa – kinh tế của TP. Quy Nhơn. Với hạ tầng giao thông đồng bộ, thuận tiện với nhiều tuyến phố lớn chạy qua, mọi dịch vụ, tiện ích xã hội đều nằm trọn trong bán kính chỉ 3 km tính từ dự án.\r\n\r\nĐặc biệt, Altara Residences Quy Nhơn còn sở hữu hệ thống tiện ích đẳng cấp bậc nhất, đem đến cho cộng đồng cư dân một cuộc sống chuẩn mực, góp phần tái định nghĩa lại quy chuẩn sống đẳng cấp cho cộng đồng cư dân tương lai. Từ khu thương mại dịch vụ quy tụ những thương hiệu đẳng cấp; hệ thống thang máy thông minh với vận tốc 4m/s được bố trí riêng biệt dành cho khối nhà ở; bể bơi ngoài trời và rooftop bar vươn ra phía biển; nhà trẻ với không gian hiện đại được tích hợp ngay trong tòa nhà đều được kiến tạo theo đúng những tiêu chuẩn cao cấp nhất.', '2022-01-06 09:46:27', '2022-01-07 13:47:37'),
(6, 1, 'HIẾU NGHĨA CITY QUẬN SƠN TRÀ', 'Smart-PenHouse', 0, 'Đường Võ Nguyên Giáp,Quận Thanh Khê', 'https://bandatdanang.net.vn/wp-content/uploads/Du-an-can-ho-The-6Nature-Da-Nang-la-to-hop-can-ho-chung-cu-cao-cap-dang-rat-duoc-quan-tam.jpg', '', 800000000, 'The 6Nature Đà Nẵng tọa lạc trên tuyến đường Võ Nguyên Giáp. Đây là cung đường biển quyến rũ nhất hành tinh. Vì thế The 6Nature sở hữu những lợi thế hiếm có so với nhiều dự án khác. Đó là tầm nhìn triệu đô với 3 mặt tiền cực kỳ thoáng đãng. \r\nCăn hộ The 6Nature Đà Nẵng được xây dựng trên diện tích 3.966m2 với tổng vốn đầu tư lên đến 2.000 tỷ đồng. Dự án có mật độ xây dựng khá thấp, chỉ khoảng 58,7%. The 6Nature Đà Nẵng cung cấp cho khách hàng khoảng 300 phòng khách sạn và 486 căn hộ cao cấp. Các căn hộ ở đây đều sở hữu tầm nhìn vĩnh cửu. Đó là view bãi biển Mỹ Khê, view sông Hàn và thành phố Đà Nẵng lung linh ánh sáng mỗi khi đêm về. Đây là những sản phẩm bất động sản hạng sang. Tất cả mang đến không gian sống vô cùng lý tưởng cho khách hàng khi đến với thành phố biển. \r\n\r\nNằm ở vị trí đắt giá và được chủ đầu tư hết lòng chăm chút, căn hộ The 6Nature Đà Nẵng thu hút bởi phong cách sống kiêu sa, sang chảnh. Tại đây cộng đồng cư dân thông thái sẽ được trải nghiệm chuỗi tiện ích đẳng cấp có một không hai. Những tiện ích này làm nên đặc quyền sống dành riêng cho giới thượng lưu. Đặc biệt căn hộ The 6Nature Đà Nẵng có pháp lý rất minh bạch. Khách hàng mua căn hộ tại đây sẽ được sở hữu sổ hồng lâu dài.', '2022-01-06 09:46:27', '2022-01-07 13:48:06'),
(7, 2, 'TRUNG HỒ CITY QUẬN 8', 'Lake-PenHouse', 1, 'Khu dân cư An Lão, Phường Bến Nghé, Quận 8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcsdn0mVbJ85Bjru6WqrWOevpPWNE9yTucSQ&usqp=CAU', '', 900000000, 'Nếu không tính các căn hộ sân vườn ở Lakeview 1 ra thì toàn bộ 5 phân khu Thủ Thiêm Lake View chỉ có khoảng 4 căn Penthouse mà thôi. Trong đó, phân khu Lakeview 3 có 2 căn (đã hoàn thiện) và phân khu Lakeview 5 có 2 căn (chưa xây dựng).\r\n\r\nThiết kế của căn hộ Penthouse chính là điểm khác biệt lớn nhất của loại hình này so với các dòng sản phẩm khác có trong dự án. Nổi bật nhất là nét xa hoa, sang trọng và căn hộ Penthouse thường phải có từ hai tầng trở lên.\r\n\r\nNgoài ra, căn hộ còn có ban công rộng chạy dọc theo ngôi nhà, hình thành một không gian ngoài trời thoáng mát và để cho chủ nhà có thể thư giãn thoải mái. Cùng xem và đánh giá mẫu Penthouse Sunwah Pearl nằm cách dự án Thủ Thiêm Lake View khoảng 300m để có cái nhìn tổng thể hơn.', '2022-01-07 14:03:28', '2022-01-07 14:04:12'),
(8, 1, 'VĂN CHIẾN CITY QUẬN TÂN BÌNH', 'Wood-PenHouse', 1, 'Phường Hòa Hiệp, Quận Tân Bình', 'https://www.minotti.com/media/immagini/27469_z_MINOTTI_PENTHOUSE_01.jpg', '', 888888888, 'Penthouse được trang bị nội thất hiện đại, có hồ bơi riêng, mang đến cho chủ nhân căn hộ sự riêng tư tuyệt đối và cảm giác làm chủ bầu trời, dẫn đầu giới thượng lưu, sở hữu đặc quyền sử dụng thang mấy VIP và các tiện ích đẳng cấp riêng biệt.\r\nVới số lượng giới hạn của  Penthouse tại VĂN CHIẾN CITY QUẬN TÂN BÌNH, cùng giá trị đẳng cấp của căn hộ chỉ dành cho số ít chủ nhân thành đạt, am tường không gian sống, số lượng giới hạn tạo nên cộng đồng thượng lưu khép kín, đặc quyền riêng tư.', '2022-01-07 14:03:28', '2022-01-07 14:04:23'),
(9, 1, 'PAUL CITY NARAKA', 'Smart-PenHouse', 1, 'Đường An Dương Vương, Phường Phan Đình Phùng', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fIaQ-9Niz7uMZKSgpiRjTegabLfqsNjIxA&usqp=CAU', '', 900000000, 'Dự án được xây dựng với mong muốn đem lại một cuộc sống đẳng cấp, sang trọng và đầy đủ tiện nghi dành riêng cho cư dân tại dự án. Chính vì điều đó, CĐT đã cho xây dựng hệ thống tiện ích đa dạng và đầy đủ tại dự án với:\r\n+ Bể bơi bốn mùa.\r\n+ Hệ thống công viên với: Vườn nướng, Sky garden trên cao, công viên cây xanh, đi kèm với hệ thống phòng gym, spa, sân thể thao ngoài trời, ngay tại trong dự án.\r\n+ Dự án sẽ được trang bị hệ thống điều hòa trung tâm có chức năng quản lý thông minh, tổ hợp thang máy tốc độ cao, hệ thống Camera quan sát hiện đại cùng đội ngũ nhân viên an ninh được đào tạo chuyên nghiệp; đường truyền Internet, hệ thống báo cháy tự động, hệ thống chữa cháy và bình cứu hỏa được bố trí tại tất cả các khu vực trong tòa nhà.', '2022-01-07 14:15:51', '2022-01-07 14:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `shedule`
--

CREATE TABLE `shedule` (
  `ID` int(11) NOT NULL,
  `idCustommer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idLand` int(11) NOT NULL,
  `Time` datetime NOT NULL,
  `Update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Password`, `Create_at`, `Update_at`) VALUES
('1', 'nghia', '123456', '2022-01-06 09:13:04', '2022-01-06 09:13:04'),
('2', 'Chien', '123456', '2022-01-06 09:47:56', '2022-01-06 09:47:56'),
('3', 'Trung', '123456', '2022-01-06 09:47:56', '2022-01-06 09:47:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custommer`
--
ALTER TABLE `custommer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `detailland`
--
ALTER TABLE `detailland`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idLand` (`idLand`);

--
-- Indexes for table `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `land_ibfk_1` (`IdCategory`);

--
-- Indexes for table `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idLand` (`idLand`),
  ADD KEY `shedule_ibfk_1` (`idCustommer`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custommer`
--
ALTER TABLE `custommer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detailland`
--
ALTER TABLE `detailland`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `land`
--
ALTER TABLE `land`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shedule`
--
ALTER TABLE `shedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `custommer`
--
ALTER TABLE `custommer`
  ADD CONSTRAINT `custommer_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`ID`);

--
-- Constraints for table `detailland`
--
ALTER TABLE `detailland`
  ADD CONSTRAINT `detailland_ibfk_1` FOREIGN KEY (`idLand`) REFERENCES `land` (`ID`);

--
-- Constraints for table `shedule`
--
ALTER TABLE `shedule`
  ADD CONSTRAINT `shedule_ibfk_2` FOREIGN KEY (`idLand`) REFERENCES `land` (`ID`),
  ADD CONSTRAINT `shedule_ibfk_3` FOREIGN KEY (`idCustommer`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
