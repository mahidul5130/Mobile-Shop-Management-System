-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 08:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(5, 'mahidul5130', '0123456789', 0, 'mahidul5130@gmail.com', '01705568901', 1),
(6, 'chamak', 'chamak', 1, 'chamak.saha@g.bracu.ac.bd', '+8801705568901', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(2, 'Welcome to', 'SHOPAHOLIC Mobile Store', 'Click Here to register now.', 'register.php', '243006337_istockphoto-1138251272-612x612.jpg', 1, 1),
(3, 'aa', 'SHOPAHOLIC Mobile Store', 'aa', 'register.php', '606471232_317694702_1332764350619072_3582765767417581894_n.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Smartphone', 1),
(2, 'Tablet', 1),
(3, 'Accessories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `color_master`
--

CREATE TABLE `color_master` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_master`
--

INSERT INTO `color_master` (`id`, `color`, `status`) VALUES
(1, 'Black', 1),
(2, 'Silver', 1),
(3, 'Gold', 1),
(4, 'Purple', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Md. Mahidul Haque', 'mahidul5130@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00'),
(2, 'Chamak Saha', 'chamak.saha@g.bracu.ac.bd', '1234567890', 'testing', '2020-01-19 07:59:38'),
(3, 'Somak Saha', 'somak.saha@g.bracu.ac.bd', '1234567890', 'testing', '2020-01-19 08:00:09'),
(4, 'Arfan Hakim Swapnil', 'arfan.hakim.swapnil@g.bracu.ac.bd', '9990413778', 'test', '2020-05-01 09:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'BDT', 1500, 1),
(2, 'First60', 20, 'Percentage', 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(2, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 201599, 'pending', 1, 0, 0, 0, 0, '3266a92db4b5615019da', '', 0, 0, '', 0, '', '', '2022-12-01 04:47:12'),
(3, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 200599, 'pending', 1, 0, 0, 0, 0, 'eaf23dbfd5ef542f9818', '', 0, 0, '', 1, '1000', 'FIRST50', '2022-12-01 05:43:18'),
(4, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 808496, 'pending', 1, 0, 0, 0, 0, '188f6aa5094ef5e6b6a6', '', 0, 0, '', 2, '289999', 'FIRST60', '2022-12-01 05:46:38'),
(5, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 143599, 'pending', 1, 0, 0, 0, 0, '97f4f68b2b773835aa9b', '', 0, 0, '', 2, '57999.8', 'FIRST60', '2022-12-01 06:00:49'),
(6, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 200599, 'pending', 1, 0, 0, 0, 0, '6eee8c2e9849fd073dda', '', 0, 0, '', 1, '1000', 'FIRST50', '2022-12-01 06:05:18'),
(7, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 161279, 'pending', 1, 0, 0, 0, 0, '49e0fee87ce0871e7c59', '', 0, 0, '', 2, '40319.8', 'FIRST60', '2022-12-01 06:42:28'),
(8, 4, 'Flat no - D6, MHB Monalee, In front of Graveyard Gate, Ga-40/5, Ga-40/5a, Japaneese School Road, Road in front of Cambrian College, Bashtola, Shahjadpur, Gulshan, Dhaka-1212', 'Dhaka', 1212, 'COD', 201599, 'pending', 1, 0, 0, 0, 0, '86859b993d7bdf01f6ed', '', 0, 0, '', 0, '', '', '2022-12-07 09:02:22'),
(9, 6, 'Dhaka', 'Dhaka', 40484, 'COD', 402198, 'pending', 1, 0, 0, 0, 0, '18f48b44f4165e4b055f', '', 0, 0, '', 1, '1000', 'First50', '2022-12-13 02:44:10'),
(10, 6, 'Dhaka', 'Dhaka', 40484, 'COD', 201599, 'pending', 1, 0, 0, 0, 0, '7a8bb6284ea34d759c6c', '', 0, 0, '', 0, '', '', '2022-12-16 09:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_attr_id`, `qty`, `price`) VALUES
(2, 2, 19, 24, 1, 201599),
(3, 3, 19, 24, 1, 201599),
(4, 4, 19, 21, 5, 219699),
(5, 5, 19, 24, 1, 201599),
(6, 6, 19, 24, 1, 201599),
(7, 7, 19, 24, 1, 201599),
(8, 8, 19, 24, 1, 201599),
(9, 9, 19, 24, 1, 201599),
(10, 9, 19, 25, 1, 201599),
(11, 10, 19, 24, 1, 201599);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(19, 1, 1, 'Apple iPhone 14 Pro Max', 0, 0, 0, '336944823_apple-iphone-14-pro-4.jpg', 'Apple iPhone 14 Pro Max comes with a 6.7 inches LTPO Super Retina XDR OLED 1290 x 2796 pixels screen. It has a double punch-hole design. The back camera is of quad 48+12+12 Megapixel + TOF 3D LiDAR scanner with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 14 Pro Max comes with – mAh battery with – fast charging solution. It has 6 GB RAM, up to 3.46 GHz Hexa-core CPU and Apple GPU. It is powered by a 4 nm Apple A16 Bionic chipset. The device comes with 128, 256, 512 GB or 1 TB internal storage.', '<figure class=\"wp-block-table aligncenter\"><div class=\"table-is-responsive\"><table><tbody><tr><td><strong>First Release</strong></td><td>September 16, 2022</td></tr><tr><td><strong>Colors</strong></td><td>Space Black, Silver, Gold, Deep Purple</td></tr><tr><th> Connectivity</th><th> </th></tr><tr><td>Network</td><td>2G, 3G, 4G, 5G</td></tr><tr><td>SIM</td><td>Dual SIM (Nano-SIM and eSIM)</td></tr><tr><td>WLAN</td><td>? dual-band, Wi-Fi hotspot</td></tr><tr><td>Bluetooth</td><td>? v5.3, A2DP, LE</td></tr><tr><td>GPS</td><td>? A-GPS, GLONASS, GALILEO, BDS, QZSS</td></tr><tr><td>Radio</td><td>?</td></tr><tr><td>USB</td><td>Lightning, USB 2.0</td></tr><tr><td>OTG</td><td>?</td></tr><tr><td>USB Type-C</td><td>? (Proprietary reversible connector)</td></tr><tr><td>NFC</td><td>?</td></tr><tr><th> Body</th><th> </th></tr><tr><td>Style</td><td>Double Punch-hole</td></tr><tr><td>Material</td><td>Gorilla Glass front & back, stainless steel frame</td></tr><tr><td>Water Resistance</td><td>? IP68 dust/water resistant (up to 6m for 30 mins)</td></tr><tr><td>Dimensions</td><td>160.7 x 77.6 x 7.9 millimeters</td></tr><tr><td>Weight</td><td>240 grams</td></tr><tr><th> Display</th><th> </th></tr><tr><td>Size</td><td>6.7 inches</td></tr><tr><td>Resolution</td><td>1290 x 2796 pixels (460 ppi)</td></tr><tr><td>Technology</td><td>LTPO Super Retina XDR OLED Touchscreen</td></tr><tr><td>Protection</td><td>? Scratch-resistant ceramic glass, oleophobic coating</td></tr><tr><td>Features</td><td>120Hz, HDR10, Dolby Vision, 2000 nits (max.), Always-On display</td></tr><tr><th> Back Camera</th><th> </th></tr><tr><td>Resolution</td><td>Quad 48+12+12 Megapixel + TOF 3D LiDAR scanner</td></tr><tr><td>Features</td><td>Dual Pixel PDAF, sensor-shift OIS, ultrawide, telephoto, 3x optical zoom, depth & more</td></tr><tr><td>Video Recording</td><td>4K (2160p), Dolby Vision HDR, 10-bit HDR, stereo sound rec.,Cinematic mode, ProRes</td></tr><tr><th> Front Camera</th><th> </th></tr><tr><td>Resolution</td><td>Dual 12 Megapixel + SL 3D</td></tr><tr><td>Features</td><td>F/1.9 aperture, PDAF, HDR, 1/3.6?, depth / biometrics sensor</td></tr><tr><td>Video Recording</td><td>4K (2160p), gyro-EIS, Cinematic mode</td></tr><tr><th> Battery</th><th> </th></tr><tr><td>Type and Capacity</td><td>Lithium-ion – mAh (non-removable)</td></tr><tr><td>Fast Charging</td><td>? – Fast Charging (50% in 30 minutes) <br>USB Power Delivery 2.0</td></tr><tr><td>Wireless Charging</td><td>? Fast Wireless Charging (15W MagSafe, 7.5W Qi magnetic)</td></tr><tr><th> Performance</th><th> </th></tr><tr><td>Operating System</td><td>iOS 16</td></tr><tr><td>Chipset</td><td>Apple A16 Bionic (4 nm)</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Processor</td><td>Hexa-core, up to 3.46 GHz</td></tr><tr><td>GPU</td><td>Apple GPU (5-core graphics)</td></tr><tr><th> Storage</th><th> </th></tr><tr><td>ROM</td><td>128 / 256 / 512 GB / 1 TB (NVMe)</td></tr><tr><td>External Slot</td><td>?</td></tr><tr><th> Sound</th><th> </th></tr><tr><td>3.5mm Jack</td><td>?</td></tr><tr><td>Features</td><td>Loudspeaker (stereo speakers)</td></tr><tr><th> Security</th><th> </th></tr><tr><td>Fingerprint</td><td>?</td></tr><tr><td>Face Unlock</td><td>? Apple Face ID</td></tr><tr><th> Others</th></tr><tr><td>Notification Light</td><td>? LED Flash for Alerts</td></tr><tr><td>Sensors</td><td>Face ID, Accelerometer, Proximity, Gyroscope, E-Compass, Barometer</td></tr><tr><td>Other Features</td><td>– Apple Pay (Visa, MasterCard, AMEX certified)<br>– Siri<br>– Ultra Wideband (UWB) support<br>– Emergency SOS via satellite (SMS sending/receiving)</td></tr><tr><td>Manufactured by</td><td>Apple</td></tr><tr><td>Sar Value</td><td> </td></tr></tbody></table></div></figure>', 1, '', '', '', 1, 1),
(20, 3, 16, 'Joyroom JR-QP191 10000mAh 22.5W Fast Charging Power Bank', 0, 0, 0, '991196270_jr-qp191-01-500x500.jpg', '<div class=\"short-description\" itemprop=\"offers\" itemscope=\"\" itemtype=\"http://schema.org/Offer\">\r\n                            <link itemprop=\"availability\" href=\"http://schema.org/InStock\">\r\n                            <link itemprop=\"itemCondition\" href=\"http://schema.org/NewCondition\">\r\n                            <meta itemprop=\"priceCurrency\" content=\"BDT\">\r\n                            <meta itemprop=\"price\" content=\"1305.0000\">\r\n                            <h2>Key Features</h2>\r\n                            <ul><li>Model: JR-QP191</li><li>Battery Display: Large LED Digital Display\r\n</li><li>Battery Capacity: 10000mAh / 22.5W\r\n</li><li>Input Ports: Micro USB, USB Type-C\r\n</li><li>Output Ports: USB x2 &amp; Type-C x 1</li><li class=\"view-more\" data-area=\"specification\">View More Info</li></ul>\r\n                        </div>', '<div class=\"short-description\" itemprop=\"offers\" itemscope=\"\" itemtype=\"http://schema.org/Offer\">\r\n                            <link itemprop=\"availability\" href=\"http://schema.org/InStock\">\r\n                            <link itemprop=\"itemCondition\" href=\"http://schema.org/NewCondition\">\r\n                            <meta itemprop=\"priceCurrency\" content=\"BDT\">\r\n                            <meta itemprop=\"price\" content=\"1305.0000\">\r\n                            <h2>Key Features</h2>\r\n                            <ul><li>Model: JR-QP191</li><li>Battery Display: Large LED Digital Display\r\n</li><li>Battery Capacity: 10000mAh / 22.5W\r\n</li><li>Input Ports: Micro USB, USB Type-C\r\n</li><li>Output Ports: USB x2 &amp; Type-C x 1</li><li class=\"view-more\" data-area=\"specification\">View More Info</li></ul>\r\n                        </div>', 0, '', '', '', 5, 1),
(21, 1, 4, 'Oppo A17K', 0, 0, 0, '462102242_Oppo-A17K.jpg', '<p>Oppo A17K comes with 6.56 inches HD+ screen. It has a Full-View waterdrop notch design. The back camera is of dual 8 MP with LED flash, autofocus, panorama etc. and Full HD video recording. The front camera is of 5 MP. Oppo A17K comes with 5000 mAh battery with 10W fast charging. It has 3 GB RAM, up to 2.3 GHz octa-core CPU and PowerVR GE8320 GPU. It is powered by a MediaTek Helio G35 (12nm) chipset. The device comes with 64 GB internal storage and MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>', '<table><tbody><tr><td><strong>First Release</strong></td><td>October 18, 2022</td></tr><tr><td><strong>Colors</strong></td><td>Navy Blue, Gold</td></tr><tr><th> \r\nConnectivity</th><th></th></tr><tr><td>Network</td><td>2G, 3G, 4G</td></tr><tr><td>SIM</td><td>Dual Nano SIM</td></tr><tr><td>WLAN</td><td>? dual-band, Wi-Fi hotspot</td></tr><tr><td>Bluetooth</td><td>? v5.3, A2DP, LE, aptX HD</td></tr><tr><td>GPS</td><td>? A-GPS, GLONASS, BDS, GALILEO</td></tr><tr><td>Radio</td><td>Unspecified</td></tr><tr><td>USB</td><td>v2.0</td></tr><tr><td>OTG</td><td>?</td></tr><tr><td>USB Type-C</td><td>?</td></tr><tr><td>NFC</td><td>?</td></tr><tr><th> \r\nBody</th><th></th></tr><tr><td>Style</td><td>Minimal Notch</td></tr><tr><td>Material</td><td>Panda Glass front, plastic body</td></tr><tr><td>Water Resistance</td><td>? IPX4 water resistance</td></tr><tr><td>Dimensions</td><td>164.2 x 75.6 x 8.3 millimeters</td></tr><tr><td>Weight</td><td>189 grams</td></tr><tr><th> \r\nDisplay</th><th></th></tr><tr><td>Size</td><td>6.56 inches</td></tr><tr><td>Resolution</td><td>HD+ 720 x 1612 pixels (269 ppi)</td></tr><tr><td>Technology</td><td>IPS LCD Touchscreen</td></tr><tr><td>Protection</td><td>? Panda Glass</td></tr><tr><td>Features</td><td>Multitouch</td></tr><tr><th> \r\nBack Camera</th><th></th></tr><tr><td>Resolution</td><td>8 Megapixel</td></tr><tr><td>Features</td><td>Autofocus, LED flash, f/2.0 & more</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th> \r\nFront Camera</th><th></th></tr><tr><td>Resolution</td><td>5 Megapixel</td></tr><tr><td>Features</td><td>F/2.2 aperture & more</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th> \r\nBattery</th><th></th></tr><tr><td>Type and Capacity</td><td>Lithium-polymer 5000 mAh (non-removable)</td></tr><tr><td>Fast Charging</td><td>? 10W Fast Charging</td></tr><tr><th> \r\nPerformance</th><th></th></tr><tr><td>Operating System</td><td>Android 12 (ColorOS 12.1)</td></tr><tr><td>Chipset</td><td>Mediatek Helio G35 (12 nm)</td></tr><tr><td>RAM</td><td>3 GB</td></tr><tr><td>Processor</td><td>Octa core, up to 2.3 GHz</td></tr><tr><td>GPU</td><td>PowerVR GE8320</td></tr><tr><th> \r\nStorage</th><th></th></tr><tr><td>ROM</td><td>64 GB (eMMC 5.1)</td></tr><tr><td>MicroSD Slot</td><td>?</td></tr><tr><th> \r\nSound</th><th></th></tr><tr><td>3.5mm Jack</td><td>?</td></tr><tr><td>Features</td><td>Loudspeaker</td></tr><tr><th> \r\nSecurity</th><th></th></tr><tr><td>Fingerprint</td><td>? Side-mounted</td></tr><tr><td>Face Unlock</td><td>?</td></tr><tr><th> \r\nOthers</th></tr><tr><td>Notification Light</td><td></td></tr><tr><td>Sensors</td><td>Fingerprint, Accelerometer, Proximity, E-Compass</td></tr><tr><td>Manufactured by</td><td>Oppo</td></tr><tr><td>Made in</td><td>Bangladesh</td></tr><tr><td>Sar Value</td><td></td></tr></tbody></table>', 1, '', '', '', 5, 1),
(22, 1, 2, 'Samsung Galaxy A23', 0, 0, 0, '367443282_Samsung-Galaxy-A23.jpg', '<p>Samsung Galaxy A23 comes with 6.6 inches Full HD+ PLS TFT screen. It has a waterdrop notch front camera design. The back camera is of Quad 50+5+2+2 with PDAF, OIS, f/1.8 aperture, ultrawide, depth sensor, dedicated macro camera etc. and 4K video recording. The front camera is of 8 MP. Galaxy A23&nbsp;comes with 5000 mAh battery with 25W fast charging. It has 6 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 680 4G (6 nm) chipset. The device comes with 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>', '<table><tbody><tr><td><strong>First Release</strong></td><td>March 25, 2022</td></tr><tr><td><strong>Colors</strong></td><td>Black, White, Peach, Blue</td></tr><tr><th>&nbsp;\r\nConnectivity</th><th></th></tr><tr><td>Network</td><td>2G, 3G, 4G</td></tr><tr><td>SIM</td><td>Dual Nano SIM</td></tr><tr><td>WLAN</td><td>?&nbsp;dual-band, Wi-Fi direct, Wi-Fi hotspot</td></tr><tr><td>Bluetooth</td><td>? v5.0, A2DP, LE</td></tr><tr><td>GPS</td><td>? A-GPS, GLONASS, BDS, Galileo</td></tr><tr><td>Radio</td><td>Unspecified</td></tr><tr><td>USB</td><td>v2.0</td></tr><tr><td>OTG</td><td>?</td></tr><tr><td>USB Type-C</td><td>?</td></tr><tr><td>NFC</td><td>?</td></tr><tr><th>&nbsp;\r\nBody</th><th></th></tr><tr><td>Style</td><td>Minimal Notch</td></tr><tr><td>Material</td><td>Gorilla Glass 5 front, plastic body</td></tr><tr><td>Water Resistance</td><td>?</td></tr><tr><td>Dimensions</td><td>164.5 x 76.9 x 8.4 millimeters</td></tr><tr><td>Weight</td><td>195 grams</td></tr><tr><th>&nbsp;\r\nDisplay</th><th></th></tr><tr><td>Size</td><td>6.6 inches</td></tr><tr><td>Resolution</td><td>Full HD+ 1080 x 2408 pixels (400 ppi)</td></tr><tr><td>Technology</td><td>PLS TFT Touchscreen</td></tr><tr><td>Protection</td><td>? Corning Gorilla Glass 5</td></tr><tr><td>Features</td><td>Multitouch</td></tr><tr><th>&nbsp;\r\nBack Camera</th><th></th></tr><tr><td>Resolution</td><td>Quad 50+5+2+2 Megapixel</td></tr><tr><td>Features</td><td>PDAF, OIS, f/1.8, macro, 123º ultrawide, depth, LED flash &amp; more</td></tr><tr><td>Video Recording</td><td>4K Ultra HD (2160p)</td></tr><tr><th>&nbsp;\r\nFront Camera</th><th></th></tr><tr><td>Resolution</td><td>8 Megapixel</td></tr><tr><td>Features</td><td>F/2.2 aperture</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th>&nbsp;\r\nBattery</th><th></th></tr><tr><td>Type and Capacity</td><td>Lithium-polymer 5000 mAh (non-removable)</td></tr><tr><td>Fast Charging</td><td>? 25W Fast Charging</td></tr><tr><th>&nbsp;\r\nPerformance</th><th></th></tr><tr><td>Operating System</td><td>Android 12 (One UI 4.1)</td></tr><tr><td>Chipset</td><td>Qualcomm Snapdragon 680 4G (6 nm)</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Processor</td><td>Octa core, up to 2.4 GHz</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><th>&nbsp;\r\nStorage</th><th></th></tr><tr><td>ROM</td><td>64 / 128 GB (eMMC 5.1)</td></tr><tr><td>MicroSD Slot</td><td>?&nbsp;Dedicated slot</td></tr><tr><th>&nbsp;\r\nSound</th><th></th></tr><tr><td>3.5mm Jack</td><td>?</td></tr><tr><td>Features</td><td>Loudspeaker</td></tr><tr><th>&nbsp;\r\nSecurity</th><th></th></tr><tr><td>Fingerprint</td><td>? Side-mounted</td></tr><tr><td>Face Unlock</td><td>?</td></tr><tr><th>&nbsp;\r\nOthers</th></tr><tr><td>Notification Light</td><td></td></tr><tr><td>Sensors</td><td>Fingerprint, Accelerometer, Proximity, Gyroscope, E-Compass</td></tr><tr><td>Manufactured by</td><td>Samsung</td></tr><tr><td>Made in</td><td>Bangladesh</td></tr><tr><td>Sar Value</td><td></td></tr></tbody></table>', 1, '', '', '', 5, 1),
(23, 1, 1, 'Google Pixel 4a 5G Full Specifications', 0, 0, 0, '602114232_Google-Pixel-4a-new-black.jpg', '<p>Google Pixel 4a 5G comes with&nbsp;6.2 inches Full HD+ OLED screen. It has&nbsp;a left punch-hole design. The&nbsp;back camera is of dual 12.2+16 MP&nbsp;with PDAF, dual-LED flash, OIS, ultrawide etc. and 4K video recording. The&nbsp;front camera is of 8 MP. Google Pixel 4a 5G comes with&nbsp;3885 mAh battery&nbsp;and&nbsp;18W fast charging. It has&nbsp;6 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 620 GPU. It is powered by a&nbsp;Qualcomm Snapdragon 765G (7 nm) chipset. The device comes with 128 GB internal storage and no MicroSD slot. There is a back-mounted&nbsp;fingerprint sensor&nbsp;in this phone.</p>', '<table><tbody><tr><td><strong>First Release</strong> </td><td>Upcoming [Expected: November 5, 2020]</td></tr><tr><td><strong>Colors</strong></td><td>Just Black</td></tr><tr><th>&nbsp;\r\nConnectivity</th><th></th></tr><tr><td>Network</td><td>2G, 3G, 4G, 5G</td></tr><tr><td>SIM</td><td> Nano-SIM and/or eSIM</td></tr><tr><td>WLAN</td><td>? dual-band, Wi-Fi direct, DLNA, Wi-Fi hotspot</td></tr><tr><td>Bluetooth</td><td>? v5.1, A2DP, LE,&nbsp;aptX HD</td></tr><tr><td>GPS</td><td>? A-GPS, GLONASS, BDS, GALILEO, QZSS</td></tr><tr><td>Radio</td><td>Unspecified</td></tr><tr><td>USB</td><td>v3.1</td></tr><tr><td>OTG</td><td>?</td></tr><tr><td>USB Type-C</td><td>?</td></tr><tr><td>NFC</td><td>?</td></tr><tr><th>&nbsp;\r\nBody</th><th></th></tr><tr><td>Style</td><td>Punch-hole</td></tr><tr><td>Material</td><td>Gorilla Glass 3 front, plastic body</td></tr><tr><td>Water Resistance</td><td> ? </td></tr><tr><td>Dimensions</td><td>153.9 x 74 x 8.2 millimeters</td></tr><tr><td>Weight</td><td>168 grams</td></tr><tr><th>&nbsp;\r\nDisplay</th><th></th></tr><tr><td>Size</td><td>6.2 inches</td></tr><tr><td>Resolution</td><td>Full HD+ 1080 x 2340 pixels (413 ppi)</td></tr><tr><td>Technology</td><td>OLED Touchscreen</td></tr><tr><td>Protection</td><td>? Corning Gorilla Glass 3</td></tr><tr><td>Features</td><td>Always-on display, HDR</td></tr><tr><th>&nbsp;\r\nBack Camera</th><th></th></tr><tr><td>Resolution</td><td>12.2 + 16 Megapixel</td></tr><tr><td>Features</td><td>Dual pixel PDAF, LED flash, 107º ultrawide, f/1.7 &amp; f/2.2, OIS, auto-HDR &amp; more</td></tr><tr><td>Video Recording</td><td>Ultra HD 4K (2160p), gyro-EIS</td></tr><tr><th>&nbsp;\r\nFront Camera</th><th></th></tr><tr><td>Resolution</td><td>8 Megapixel</td></tr><tr><td>Features</td><td>F/2.0, 1/4.0?, 1.12µm, auto-HDR &amp; more</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th>&nbsp;\r\nBattery</th><th></th></tr><tr><td>Type and Capacity</td><td>Lithium-polymer 3885 mAh (non-removable)</td></tr><tr><td>Fast Charging</td><td>? 18W Fast Charging<br>USB Power Delivery 2.0</td></tr><tr><th>&nbsp;\r\nPerformance</th><th></th></tr><tr><td>Operating System</td><td>Android 11</td></tr><tr><td>Chipset</td><td>Qualcomm Snapdragon 765G (7 nm)</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Processor</td><td>Octa core, up to 2.4 GHz</td></tr><tr><td>GPU</td><td>Adreno 620</td></tr><tr><th>&nbsp;\r\nStorage</th><th></th></tr><tr><td>ROM</td><td>128 GB (UFS 2.1)</td></tr><tr><td>MicroSD Slot</td><td>?</td></tr><tr><th>&nbsp;\r\nSound</th><th></th></tr><tr><td>3.5mm Jack</td><td>?</td></tr><tr><td>Features</td><td>Loudspeaker (stereo speakers)</td></tr><tr><th>&nbsp;\r\nSecurity</th><th></th></tr><tr><td>Fingerprint</td><td>? On the back</td></tr><tr><td>Face Unlock</td><td>?</td></tr><tr><th>&nbsp;\r\nOthers</th><th></th></tr><tr><td>Notification Light</td><td></td></tr><tr><td>Sensors</td><td>Fingerprint, Accelerometer, Gyro, Proximity, E-Compass, Barometer</td></tr><tr><td>Manufactured by</td><td>Google</td></tr><tr><td>Made in</td><td></td></tr><tr><td>Sar Value</td><td></td></tr></tbody></table>', 0, '', '', '', 5, 1),
(24, 1, 3, 'Xiaomi Redmi Note 11 Full Specifications', 0, 0, 0, '470049708_Xiaomi-Redmi-Note-11.jpg', '<p>Xiaomi Redmi Note 11 comes with 6.43 inches Full HD+  AMOLED screen. It has a center punch-hole design on the front. The display is protected by a 3rd generation Gorilla Glass. The back camera is of quad 50+8+2+2 MP with PDAF, f/1.8 aperture, 118º ultrawide, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 13 MP. Xiaomi Redmi Note 11 comes with 5000 mAh big battery with a 33W Fast Charging solution. It has 4, 6 or 8 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 680 4G (6 nm)&nbsp;chipset. The phone comes with 64 or 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>', '<table><tbody><tr><td><strong>First Release</strong></td><td>February 9, 2022</td></tr><tr><td><strong>Colors</strong></td><td>Graphite Gray, Pearl White, Star Blue</td></tr><tr><th>&nbsp;\r\nConnectivity</th><th></th></tr><tr><td>Network</td><td>2G, 3G, 4G</td></tr><tr><td>SIM</td><td>Dual Nano SIM</td></tr><tr><td>WLAN</td><td>? dual-band, Wi-Fi direct, Wi-Fi hotspot</td></tr><tr><td>Bluetooth</td><td>? v5.0, A2DP, LE</td></tr><tr><td>GPS</td><td>? A-GPS, GLONASS, BDS, GALILEO</td></tr><tr><td>Radio</td><td>? FM</td></tr><tr><td>USB</td><td>v2.0</td></tr><tr><td>OTG</td><td>?</td></tr><tr><td>USB Type-C</td><td>?</td></tr><tr><td>NFC</td><td>? (Market dependent)</td></tr><tr><td>Infrared</td><td>?</td></tr><tr><th>&nbsp;\r\nBody</th><th></th></tr><tr><td>Style</td><td>Punch-hole</td></tr><tr><td>Material</td><td>Gorilla Glass 3 front, plastic body</td></tr><tr><td>Water Resistance</td><td>? (IP53, dust and splash protection)</td></tr><tr><td>Dimensions</td><td>159.9 x 73.9 x 8.1 millimeters</td></tr><tr><td>Weight</td><td>179 grams</td></tr><tr><th>&nbsp;\r\nDisplay</th><th></th></tr><tr><td>Size</td><td>6.43 inches</td></tr><tr><td>Resolution</td><td>Full HD+ 1080 x 2400 pixels (409 ppi)</td></tr><tr><td>Technology</td><td>AMOLED Touchscreen</td></tr><tr><td>Protection</td><td>? Corning Gorilla Glass 3</td></tr><tr><td>Features</td><td>90Hz refresh rate, 1000 nits max. brightness</td></tr><tr><th>&nbsp;\r\nBack Camera</th><th></th></tr><tr><td>Resolution</td><td>Quad 50+8+2+2 Megapixel</td></tr><tr><td>Features</td><td>PDAF, LED flash, f/1.8, 1/2.76?, 0.64µm, ultrawide, macro, depth &amp; more</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th>&nbsp;\r\nFront Camera</th><th></th></tr><tr><td>Resolution</td><td>13 Megapixel</td></tr><tr><td>Features</td><td>F/2.5, HDR, 1/3.06?, 1.12µm &amp; more</td></tr><tr><td>Video Recording</td><td>Full HD (1080p)</td></tr><tr><th>&nbsp;\r\nBattery</th><th></th></tr><tr><td>Type and Capacity</td><td>Lithium-polymer 5000 mAh (non-removable)</td></tr><tr><td>Fast Charging</td><td>? 33W Quick Charge 3+ (100% in 60 min)<br>– Power Delivery 3.0</td></tr><tr><th>&nbsp;\r\nPerformance</th><th></th></tr><tr><td>Operating System</td><td>Android 11 (MIUI 13)</td></tr><tr><td>Chipset</td><td>Qualcomm Snapdragon 680 4G (6 nm)</td></tr><tr><td>RAM</td><td>4 / 6 / 8 GB</td></tr><tr><td>Processor</td><td>Octa core, up to 2.4 GHz</td></tr><tr><td>GPU</td><td>Adreno 610</td></tr><tr><th>&nbsp;\r\nStorage</th><th></th></tr><tr><td>ROM</td><td>64 / 128 GB (UFS 2.2)</td></tr><tr><td>MicroSD Slot</td><td>? Dedicated slot</td></tr><tr><th>&nbsp;\r\nSound</th><th></th></tr><tr><td>3.5mm Jack</td><td>?</td></tr><tr><td>Features</td><td>Loudspeaker (stereo speakers), 24-bit/192kHz audio</td></tr><tr><th>&nbsp;\r\nSecurity</th><th></th></tr><tr><td>Fingerprint</td><td>? Side-mounted</td></tr><tr><td>Face Unlock</td><td>?</td></tr><tr><th>&nbsp;\r\nOthers</th></tr><tr><td>Notification Light</td><td></td></tr><tr><td>Sensors</td><td>Fingerprint, Accelerometer, Gyroscope, Proximity, E-Compass</td></tr><tr><td>Manufactured by</td><td>Xiaomi</td></tr><tr><td>Made in</td><td>Bangladesh</td></tr><tr><td>Sar Value</td><td></td></tr></tbody></table>', 1, '', '', '', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size_id`, `color_id`, `mrp`, `price`, `qty`) VALUES
(12, 19, 5, 4, 297249, 289999, 100),
(13, 19, 5, 3, 297249, 289999, 100),
(14, 19, 5, 2, 297249, 289999, 100),
(15, 19, 5, 1, 297249, 289999, 100),
(16, 19, 4, 4, 262296, 255899, 100),
(17, 19, 4, 3, 262296, 255899, 100),
(18, 19, 4, 2, 262296, 255899, 100),
(19, 19, 4, 1, 262296, 255899, 100),
(20, 19, 3, 4, 225191, 219699, 100),
(21, 19, 3, 3, 225191, 219699, 100),
(22, 19, 3, 2, 225191, 219699, 100),
(23, 19, 3, 1, 225191, 219699, 100),
(24, 19, 2, 4, 206639, 201599, 100),
(25, 19, 2, 3, 206639, 201599, 100),
(26, 19, 2, 2, 206639, 201599, 100),
(27, 19, 2, 1, 206639, 201599, 100),
(28, 20, 0, 1, 1405, 1305, 100),
(29, 21, 1, 1, 13990, 12990, 100),
(30, 22, 2, 2, 31599, 27999, 100),
(31, 23, 2, 1, 52000, 50000, 100),
(32, 24, 1, 0, 20000, 19599, 100),
(33, 24, 2, 0, 21000, 20499, 100);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_images`) VALUES
(5, 19, '474903268_Apple-iPhone-14-Pro-iPhone-14-Pro-Max-silver-220907_inline.jpg.large.jpg'),
(6, 19, '855471677_iphone-14-pro-finish-select-202209-6-7inch-gold.jpg'),
(7, 19, '803795755_download.jpg'),
(8, 20, '392270377_jr-qp191-01-500x500.jpg'),
(9, 21, '527151613_Oppo-A17K.jpg'),
(10, 22, '510105240_Samsung-Galaxy-A23.jpg'),
(11, 23, '392195504_Google-Pixel-4a-new-black.jpg'),
(12, 24, '686266783_Xiaomi-Redmi-Note-11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(14, 19, 6, 'Worst', 'Price is too high', 1, '2022-12-15 03:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `rom_master`
--

CREATE TABLE `rom_master` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rom_master`
--

INSERT INTO `rom_master` (`id`, `size`, `status`, `order_by`) VALUES
(1, '64 GB', 1, 0),
(2, '128 GB', 1, 1),
(3, '256 GB', 1, 2),
(4, '512 GB', 1, 3),
(5, '1 TB', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, '', '2019-04-09 00:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 1, 'Apple', 1),
(2, 1, 'Samsung', 1),
(3, 1, 'Xiaomi', 1),
(4, 1, 'Oppo', 1),
(5, 1, 'Vivo', 1),
(6, 1, 'Google', 1),
(7, 1, 'OnePlus', 1),
(8, 1, 'Lenovo', 1),
(9, 1, 'LG', 1),
(10, 1, 'Huawei', 1),
(11, 2, 'Apple', 1),
(12, 2, 'Samsung', 1),
(13, 2, 'Lenovo', 1),
(14, 2, 'Amazon', 1),
(16, 3, 'Power Banks', 1),
(17, 3, 'Wall Charger', 1),
(18, 3, 'USB Cables', 1),
(19, 3, 'Headphone', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(4, 'Md. Mahidul Haque', '123456', 'mahidul5130@gmail.com', '01705568901', '2022-12-01 03:03:47'),
(5, 'Chamak Saha', 'admin', 'chamak.saha@g.bracu.ac.bd', '8801705568901', '2022-12-13 02:34:59'),
(6, 'Arfan Hakim', 'admin', 'arfan.hakim.swapnil@g.bracu.ac.bd', '15455454544551', '2022-12-13 02:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_master`
--
ALTER TABLE `color_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master`
--
ALTER TABLE `rom_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `color_master`
--
ALTER TABLE `color_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rom_master`
--
ALTER TABLE `rom_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
