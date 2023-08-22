-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Ağu 2023, 13:44:14
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `java_se_final`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carts`
--

CREATE TABLE `carts` (
  `car_id` bigint(20) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `carts`
--

INSERT INTO `carts` (`car_id`, `user_email`) VALUES
(153, 'onder@mail.com'),
(154, 'onder@mail.com'),
(155, 'murat@mail.com'),
(156, 'onder@mail.com'),
(157, 'onder@mail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carts_products`
--

CREATE TABLE `carts_products` (
  `carts_car_id` bigint(20) NOT NULL,
  `products_pid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `carts_products`
--

INSERT INTO `carts_products` (`carts_car_id`, `products_pid`) VALUES
(153, 8),
(154, 13),
(155, 13),
(156, 8),
(157, 18);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `cid` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`cid`, `name`) VALUES
(9, 'smartphones'),
(10, 'laptops'),
(11, 'home-decoration');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `iid` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`iid`, `pid`, `images`) VALUES
(56, 8, 'https://i.dummyjson.com/data/products/1/1.jpg'),
(57, 8, 'https://i.dummyjson.com/data/products/1/2.jpg'),
(58, 8, 'https://i.dummyjson.com/data/products/1/3.jpg'),
(59, 8, 'https://i.dummyjson.com/data/products/1/4.jpg'),
(60, 8, 'https://i.dummyjson.com/data/products/1/thumbnail.jpg'),
(61, 9, 'https://i.dummyjson.com/data/products/2/1.jpg'),
(62, 9, 'https://i.dummyjson.com/data/products/2/2.jpg'),
(63, 9, 'https://i.dummyjson.com/data/products/2/3.jpg'),
(64, 9, 'https://i.dummyjson.com/data/products/2/thumbnail.jpg'),
(65, 10, 'https://i.dummyjson.com/data/products/3/1.jpg'),
(66, 11, 'https://i.dummyjson.com/data/products/4/1.jpg'),
(67, 11, 'https://i.dummyjson.com/data/products/4/2.jpg'),
(68, 11, 'https://i.dummyjson.com/data/products/4/3.jpg'),
(69, 11, 'https://i.dummyjson.com/data/products/4/4.jpg'),
(70, 11, 'https://i.dummyjson.com/data/products/4/thumbnail.jpg'),
(71, 12, 'https://i.dummyjson.com/data/products/5/1.jpg'),
(72, 12, 'https://i.dummyjson.com/data/products/5/2.jpg'),
(73, 12, 'https://i.dummyjson.com/data/products/5/3.jpg'),
(74, 13, 'https://i.dummyjson.com/data/products/6/1.png'),
(75, 13, 'https://i.dummyjson.com/data/products/6/2.jpg'),
(76, 13, 'https://i.dummyjson.com/data/products/6/3.png'),
(77, 13, 'https://i.dummyjson.com/data/products/6/4.jpg'),
(78, 14, 'https://i.dummyjson.com/data/products/7/1.jpg'),
(79, 14, 'https://i.dummyjson.com/data/products/7/2.jpg'),
(80, 14, 'https://i.dummyjson.com/data/products/7/3.jpg'),
(81, 14, 'https://i.dummyjson.com/data/products/7/thumbnail.jpg'),
(82, 15, 'https://i.dummyjson.com/data/products/8/1.jpg'),
(83, 15, 'https://i.dummyjson.com/data/products/8/2.jpg'),
(84, 15, 'https://i.dummyjson.com/data/products/8/3.jpg'),
(85, 15, 'https://i.dummyjson.com/data/products/8/4.jpg'),
(86, 15, 'https://i.dummyjson.com/data/products/8/thumbnail.jpg'),
(87, 16, 'https://i.dummyjson.com/data/products/9/1.jpg'),
(88, 16, 'https://i.dummyjson.com/data/products/9/2.png'),
(89, 16, 'https://i.dummyjson.com/data/products/9/3.png'),
(90, 16, 'https://i.dummyjson.com/data/products/9/4.jpg'),
(91, 16, 'https://i.dummyjson.com/data/products/9/thumbnail.jpg'),
(92, 17, 'https://i.dummyjson.com/data/products/10/1.jpg'),
(93, 17, 'https://i.dummyjson.com/data/products/10/2.jpg'),
(94, 17, 'https://i.dummyjson.com/data/products/10/3.jpg'),
(95, 17, 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg'),
(96, 18, 'https://i.dummyjson.com/data/products/26/1.jpg'),
(97, 18, 'https://i.dummyjson.com/data/products/26/2.jpg'),
(98, 18, 'https://i.dummyjson.com/data/products/26/3.jpg'),
(99, 18, 'https://i.dummyjson.com/data/products/26/4.jpg'),
(100, 18, 'https://i.dummyjson.com/data/products/26/5.jpg'),
(101, 18, 'https://i.dummyjson.com/data/products/26/thumbnail.jpg'),
(102, 19, 'https://i.dummyjson.com/data/products/27/1.jpg'),
(103, 19, 'https://i.dummyjson.com/data/products/27/2.jpg'),
(104, 19, 'https://i.dummyjson.com/data/products/27/3.jpg'),
(105, 19, 'https://i.dummyjson.com/data/products/27/4.jpg'),
(106, 19, 'https://i.dummyjson.com/data/products/27/thumbnail.webp'),
(107, 20, 'https://i.dummyjson.com/data/products/28/1.jpg'),
(108, 20, 'https://i.dummyjson.com/data/products/28/2.jpg'),
(109, 20, 'https://i.dummyjson.com/data/products/28/3.png'),
(110, 20, 'https://i.dummyjson.com/data/products/28/4.jpg'),
(111, 20, 'https://i.dummyjson.com/data/products/28/thumbnail.jpg'),
(112, 21, 'https://i.dummyjson.com/data/products/29/1.jpg'),
(113, 21, 'https://i.dummyjson.com/data/products/29/2.jpg'),
(114, 21, 'https://i.dummyjson.com/data/products/29/3.webp'),
(115, 21, 'https://i.dummyjson.com/data/products/29/4.webp'),
(116, 21, 'https://i.dummyjson.com/data/products/29/thumbnail.webp'),
(117, 22, 'https://i.dummyjson.com/data/products/30/1.jpg'),
(118, 22, 'https://i.dummyjson.com/data/products/30/2.jpg'),
(119, 22, 'https://i.dummyjson.com/data/products/30/3.jpg'),
(120, 22, 'https://i.dummyjson.com/data/products/30/thumbnail.jpg'),
(129, 31, 'https://i.dummyjson.com/data/products/1/1.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pid` bigint(20) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `thumbnail` varchar(300) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pid`, `detail`, `price`, `thumbnail`, `title`) VALUES
(8, 'An apple mobile which is nothing like apple', 549, 'https://i.dummyjson.com/data/products/1/thumbnail.jpg', 'iPhone 9'),
(9, 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', 899, 'https://i.dummyjson.com/data/products/2/thumbnail.jpg', 'iPhone X'),
(10, 'Samsung\'s new variant which goes beyond Galaxy to the Universe', 1249, 'https://i.dummyjson.com/data/products/3/thumbnail.jpg', 'Samsung Universe 9'),
(11, 'OPPO F19 is officially announced on April 2021.', 280, 'https://i.dummyjson.com/data/products/4/thumbnail.jpg', 'OPPOF19'),
(12, 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', 499, 'https://i.dummyjson.com/data/products/5/thumbnail.jpg', 'Huawei P30'),
(13, 'MacBook Pro 2021 with mini-LED display may launch between September, November', 1749, 'https://i.dummyjson.com/data/products/6/thumbnail.png', 'MacBook Pro'),
(14, 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', 1499, 'https://i.dummyjson.com/data/products/7/thumbnail.jpg', 'Samsung Galaxy Book'),
(15, 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', 1499, 'https://i.dummyjson.com/data/products/8/thumbnail.jpg', 'Microsoft Surface Laptop 4'),
(16, 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', 1099, 'https://i.dummyjson.com/data/products/9/thumbnail.jpg', 'Infinix INBOOK'),
(17, 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', 1099, 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg', 'HP Pavilion 15-DK1056WM'),
(18, 'Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf', 41, 'https://i.dummyjson.com/data/products/26/thumbnail.jpg', 'Plant Hanger For Home'),
(19, 'Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm', 51, 'https://i.dummyjson.com/data/products/27/thumbnail.webp', 'Flying Wooden Bird'),
(20, '3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)', 20, 'https://i.dummyjson.com/data/products/28/thumbnail.jpg', '3D Embellishment Art Lamp'),
(21, 'Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate', 60, 'https://i.dummyjson.com/data/products/29/thumbnail.webp', 'Handcraft Chinese style'),
(22, 'Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality', 30, 'https://i.dummyjson.com/data/products/30/thumbnail.jpg', 'Key Holder'),
(31, 'asdasd', 2323, 'https://i.dummyjson.com/data/products/1/thumbnail.jpg', 'sadasdasd');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `product_pid` bigint(20) NOT NULL,
  `categories_cid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_categories`
--

INSERT INTO `product_categories` (`product_pid`, `categories_cid`) VALUES
(8, 9),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 11),
(19, 11),
(20, 11),
(21, 11),
(22, 11),
(31, 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `rid` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`rid`, `name`) VALUES
(1, 'ROLE_user'),
(2, 'ROLE_admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`uid`, `age`, `email`, `name`, `password`, `surname`) VALUES
(1, 29, 'onder@mail.com', 'onder', '$2a$10$dM5nQlJk1G97B6bKq4wuEuE8BYKCaKsyNFnbbFoR/Tb9XuC2XVj8a', 'sener'),
(2, 32, 'murat@mail.com', 'murat', '$2a$10$a.g4oRp4YKnqQlclOIq.zefpEqj1jf.7poSKjpXfywolZLY18ERrO', 'sener'),
(3, 32, 'kemal@mail.com', 'kemal', '$2a$10$SRs7rwxB7VmTjIFad3Pecesr81nbf/DdMuXOhVEsUhgq8Svj/usO6', 'saygın'),
(4, 32, 'ali@mail.com', 'ali', '$2a$10$1wBa4BAErDX5DAc9DHMPqevYo8ayxL564UB1.HpmKOVFSxhkmeBFi', 'bilmem');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_uid` bigint(20) NOT NULL,
  `roles_rid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user_roles`
--

INSERT INTO `user_roles` (`user_uid`, `roles_rid`) VALUES
(1, 1),
(1, 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`car_id`);

--
-- Tablo için indeksler `carts_products`
--
ALTER TABLE `carts_products`
  ADD KEY `FKd374wvkyu2a6vfsdeeghal3f5` (`products_pid`),
  ADD KEY `FKfrwowhh42mubw6nfptcvcum8t` (`carts_car_id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `FKrxyqoxq9pdxkhu7dhcy5jgtgj` (`pid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD KEY `FK69oreiy9bgyp9clgw8shmbnij` (`categories_cid`),
  ADD KEY `FKs9rh239b5veog2gg77bfmdyj7` (`product_pid`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKp6taepjm8nbj4doesmj3uj5jy` (`roles_rid`),
  ADD KEY `FKsk35kye23trjmxl5owaoly5y8` (`user_uid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `carts`
--
ALTER TABLE `carts`
  MODIFY `car_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `iid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `rid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `carts_products`
--
ALTER TABLE `carts_products`
  ADD CONSTRAINT `FKd374wvkyu2a6vfsdeeghal3f5` FOREIGN KEY (`products_pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FKfrwowhh42mubw6nfptcvcum8t` FOREIGN KEY (`carts_car_id`) REFERENCES `carts` (`car_id`);

--
-- Tablo kısıtlamaları `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKrxyqoxq9pdxkhu7dhcy5jgtgj` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);

--
-- Tablo kısıtlamaları `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `FK69oreiy9bgyp9clgw8shmbnij` FOREIGN KEY (`categories_cid`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `FKs9rh239b5veog2gg77bfmdyj7` FOREIGN KEY (`product_pid`) REFERENCES `product` (`pid`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKp6taepjm8nbj4doesmj3uj5jy` FOREIGN KEY (`roles_rid`) REFERENCES `role` (`rid`),
  ADD CONSTRAINT `FKsk35kye23trjmxl5owaoly5y8` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
