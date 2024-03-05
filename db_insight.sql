-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 02:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_insight`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(70) NOT NULL,
  `admin_password` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Adwaith', 'adwaith@gmail.com', 'qwerty'),
(2, 'Tomaaaa', 'tom@gmailaaaa', '55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(10) NOT NULL,
  `booking_date` varchar(100) NOT NULL DEFAULT '0',
  `booking_amount` int(50) NOT NULL DEFAULT 0,
  `booking_status` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_amount`, `booking_status`, `user_id`) VALUES
(1, '2024-03-02', 214372, 2, 4),
(4, '0', 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buisness`
--

CREATE TABLE `tbl_buisness` (
  `buisness_id` int(10) NOT NULL,
  `buisness_name` varchar(50) NOT NULL,
  `buisness_contact` varchar(100) NOT NULL,
  `buisness_email` varchar(70) NOT NULL,
  `buisness_license` varchar(70) NOT NULL,
  `buisness_logo` varchar(200) NOT NULL,
  `buisness_password` varchar(70) NOT NULL,
  `buisness_address` varchar(70) NOT NULL,
  `place_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buisness`
--

INSERT INTO `tbl_buisness` (`buisness_id`, `buisness_name`, `buisness_contact`, `buisness_email`, `buisness_license`, `buisness_logo`, `buisness_password`, `buisness_address`, `place_id`, `type_id`) VALUES
(3, 'A1log', '987654322', 'a1log@gmail', 'Businesslicense_1542.png', 'businessLogo_1217.jpg', '1234', 'Pbvr', 6, 4),
(4, 'ElectronicStore', '89874642', 'electra123@gmail.com', 'Businesslicense_1149.jpg', 'businessLogo_1772.png', '1234', 'muvattupuzha,ekm', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(10) NOT NULL,
  `cart_qty` int(20) NOT NULL DEFAULT 1,
  `product_id` int(10) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `cart_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `cart_qty`, `product_id`, `booking_id`, `cart_status`) VALUES
(1, 3, 21, 1, 4),
(2, 3, 23, 1, 4),
(3, 7, 24, 1, 4),
(5, 1, 21, 3, 0),
(6, 1, 21, 4, 0),
(7, 1, 23, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `type_id`) VALUES
(7, 'wood', 4),
(8, 'sweets', 5),
(16, 'Computers and accessories', 6),
(17, 'Speakers', 6),
(18, 'Headphones', 6),
(19, 'Cameras', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `chat_id` int(10) NOT NULL,
  `chat_date` varchar(100) NOT NULL,
  `chat_message` varchar(50) NOT NULL,
  `buisness_idto` int(11) NOT NULL DEFAULT 0,
  `buisness_idfrom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`chat_id`, `chat_date`, `chat_message`, `buisness_idto`, `buisness_idfrom`) VALUES
(3, 'March 05 2024, 12:00 PM', 'Hai', 0, 4),
(4, 'March 05 2024, 12:02 PM', 'Hello', 4, 0),
(5, 'March 05 2024, 12:04 PM', 'Hai', 0, 4),
(6, 'March 05 2024, 01:53 PM', 'hii', 0, 4),
(7, 'March 05 2024, 01:54 PM', 'hiii\n', 0, 4),
(8, 'March 05 2024, 04:28 PM', 'hai', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(10) NOT NULL,
  `complaint_date` date NOT NULL,
  `complaint_title` varchar(50) NOT NULL,
  `complaint_reply` varchar(50) NOT NULL DEFAULT 'not yet replied',
  `complaint_content` varchar(50) NOT NULL,
  `complaint_status` int(10) NOT NULL DEFAULT 0,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_date`, `complaint_title`, `complaint_reply`, `complaint_content`, `complaint_status`, `user_id`) VALUES
(4, '2024-02-17', 'dfgbnm', 'sdfvgb', 'redfv', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`, `state_id`) VALUES
(12, 'kozhikode', 1),
(13, 'ernakulam', 1),
(14, 'kannur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(3, 'muvattupuzha', 13),
(4, 'Ferokh', 12),
(5, 'Beypore', 12),
(6, 'Kakkanad', 13),
(7, 'Valapattanam', 14),
(8, 'Taliparamba', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_details` varchar(200) NOT NULL,
  `product_photo` varchar(50) NOT NULL,
  `product_price` int(50) NOT NULL,
  `subcategory_id` int(10) NOT NULL,
  `buisness_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_details`, `product_photo`, `product_price`, `subcategory_id`, `buisness_id`) VALUES
(13, 'Caribbean Pine', 'for pulpwood fiberboard, and chipboard. ', 'productPhoto_1687.png', 78, 3, 3),
(14, 'candys', 'hyj', 'productPhoto_1511.png', 7897, 2, 3),
(21, 'Hp pavilion laptop', 'budget gaming laptops', 'productPhoto_1591.jpg', 61000, 14, 4),
(22, 'EXZON Gaming Pc ', 'EXZON Gaming Pc Full setup Desktop complete computer system Core I7 3770 |16GB Ram |512GB', 'productPhoto_1157.webp', 30000, 4, 4),
(23, 'Blaupunkt SBW550', 'Surround Soundbar with Rear Satellites and 20.3cm Subwoofer 300 W Bluetooth Home Theatre  (Black, 5.1 Channel)', 'productPhoto_1973.webp', 7893, 17, 4),
(24, 'SONY SA-D40 ', 'SA-D40 80 W Bluetooth Home Theatre  (Black, 4.1 Channel)\r\n', 'productPhoto_1192.webp', 1099, 17, 4),
(26, 'SONY Alpha ILCE-6400 ', 'APS-C Mirrorless Camera Body Only Featuring Eye AF and 4K movie recording  (Black)', 'productPhoto_1299.webp', 5000, 18, 4),
(27, 'OPPO Enco Buds 2 ', '28 hours Battery life & Deep Noise Cancellation Bluetooth Headset  (Midnight, True Wireless)', 'productPhoto_1857.webp', 1919, 19, 4),
(29, 'Cosmic Byte G4000 ', 'Headset with Mic and LED Black/Red Wired Gaming Headset', 'productPhoto_1504.webp', 2222, 21, 4),
(31, 'MSI GF63 ', 'Intel Core i5 11th Gen 11260H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/60 Hz)', 'productPhoto_1817.webp', 61939, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_rating` varchar(100) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `review_datetime` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `user_name`, `user_rating`, `user_review`, `review_datetime`, `product_id`) VALUES
(1, 'Suraj', '5', 'Good Product', '2024-03-02 14:12:19', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
(1, 'kerala'),
(2, 'TamilNadu'),
(3, 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(10) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_qty` int(50) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_date`, `stock_qty`, `product_id`) VALUES
(4, '2024-02-11', 193, 10),
(5, '2024-02-11', 754, 12),
(15, '2024-03-02', 60, 21),
(16, '2024-03-02', 12, 22),
(17, '2024-03-02', 25, 23),
(18, '2024-03-01', 10, 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(10) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(3, 'pinewood', 7),
(4, 'Gaming', 9),
(5, 'flagship', 10),
(14, 'Gaming Laptops', 16),
(15, 'HDD', 16),
(17, 'Home theaters', 17),
(18, 'Mirror less', 19),
(19, 'TWS', 18),
(20, 'Wired', 18),
(21, 'Bluetooth', 17),
(22, 'DSLR', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subtype`
--

CREATE TABLE `tbl_subtype` (
  `subtype_id` int(10) NOT NULL,
  `subtype_name` varchar(50) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(10) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(4, 'Logistics'),
(6, 'Electronics'),
(13, 'Mobiles and Smartphones');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_email` varchar(70) NOT NULL,
  `user_address` varchar(60) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `place_id` int(10) NOT NULL,
  `user_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_address`, `user_photo`, `place_id`, `user_password`) VALUES
(1, 'Suraj K S', '9876543210', 'surajks@gmail.com', 'thodupuzha', 'UserPhoto_1696.jpeg', 3, 'qwerty123'),
(4, 'Axdwth', '9074548614', 'axdwth@gmail.com', 'Pbvr', 'UserPhoto_1598.webp', 3, 'qwerty'),
(5, 'adwx', '990997633', 'axdwth@gmail.com', 'sfgchxbjk nx', 'UserPhoto_1116.png', 3, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_buisness`
--
ALTER TABLE `tbl_buisness`
  ADD PRIMARY KEY (`buisness_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_subtype`
--
ALTER TABLE `tbl_subtype`
  ADD PRIMARY KEY (`subtype_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_buisness`
--
ALTER TABLE `tbl_buisness`
  MODIFY `buisness_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_subtype`
--
ALTER TABLE `tbl_subtype`
  MODIFY `subtype_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
