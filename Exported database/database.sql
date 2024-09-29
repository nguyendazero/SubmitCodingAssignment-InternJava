-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping structure for table task_haibazo.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.categories: ~4 rows (approximately)
INSERT INTO `categories` (`id`, `category_name`) VALUES
	(1, 'Clothing'),
	(2, 'Accessories'),
	(3, 'Outdoor'),
	(4, 'Home & Decor');

-- Dumping structure for table task_haibazo.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.colors: ~4 rows (approximately)
INSERT INTO `colors` (`id`, `color_name`) VALUES
	(1, 'Green'),
	(2, 'Red'),
	(3, 'Black'),
	(4, 'Purple');

-- Dumping structure for table task_haibazo.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `average_stars` double NOT NULL,
  `description` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `sale_end_date` datetime(6) DEFAULT NULL,
  `total_view` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.products: ~10 rows (approximately)
INSERT INTO `products` (`id`, `average_stars`, `description`, `image`, `price`, `product_name`, `discount`, `sale_end_date`, `total_view`, `category_id`) VALUES
	(1, 5, 'The Mango Longline Core Trench Coat in Navy combines style and functionality. Made from soft fabric, its longline design offers warmth and sophistication. With a wide collar, cinched waist tie, and side pockets, this versatile coat is perfect for elevatin', 'https://images.asos-media.com/products/mango-longline-core-trench-coat-in-navy/207108910-1-navy?$n_320w$&wid=317&fit=constrain', 50, 'Mango longline core trench coat in navy', 5, '2024-10-27 00:00:00.000000', 0, 1),
	(2, 4, 'The Miss Selfridge Maxi Trench Coat in Stone is a chic addition to your wardrobe. This long, flowing coat features a classic trench design with a belted waist, providing a flattering silhouette. Crafted from lightweight fabric, it’s perfect for layering', 'https://images.asos-media.com/products/miss-selfridge-maxi-trench-coat-in-stone/206361578-1-stone?$n_320w$&wid=317&fit=constrain', 40, 'Miss Selfridge maxi trench coat in stone', 10, '2024-10-22 00:00:00.000000', 0, 1),
	(3, 4.3, '\nThe River Island Faux Wool Jacket with Popper Button Detail in Cream combines style and comfort effortlessly. This chic jacket features a soft faux wool fabric and stylish popper button details, making it a versatile piece for any season. Its relaxed fit', 'https://images.asos-media.com/products/river-island-faux-wool-jacket-with-popper-button-detail-in-cream/205887591-1-cream?$n_320w$&wid=317&fit=constrain', 36, 'River Island faux wool jacket with popper button detail in cream', 0, NULL, 0, 1),
	(4, 5, 'The ASOS DESIGN Denim Double Waistband Jacket in Indigo features a stylish double waistband design for a modern twist on the classic denim jacket. Its rich indigo color makes it a versatile addition to any wardrobe. Perfect for layering, it elevates both ', 'https://images.asos-media.com/products/asos-design-denim-double-waistband-jacket-in-indigo/207322341-1-blue?$n_320w$&wid=317&fit=constrain', 48, 'ASOS DESIGN denim double waistband jacket in indigo', 0, NULL, 0, 1),
	(5, 4.2, 'The Topshop Faux Leather Biker Jacket in Washed Green offers a trendy and edgy look with its soft, faux leather material. The washed green hue adds a unique touch, making it a standout piece. Perfect for adding a layer of attitude to any outfit, this jack', 'https://images.asos-media.com/products/topshop-faux-leather-biker-jacket-in-washed-green/205642337-1-washedgreen?$n_320w$&wid=317&fit=constrain', 60, 'Topshop faux leather biker jacket in washed green', 0, NULL, 0, 1),
	(6, 2.8, 'The Stradivarius PU Buckle Detail Biker Jacket in Burgundy combines classic biker style with modern flair. Made from durable PU material, it features stylish buckle details that enhance its edgy appeal. The rich burgundy color adds a bold touch, making it', 'https://images.asos-media.com/products/stradivarius-pu-buckle-detail-biker-jacket-in-burgundy/207070940-1-red?$n_320w$&wid=317&fit=constrain', 47, 'Stradivarius PU buckle detail biker jacket in burgundy', 12, '2024-10-11 00:00:00.000000', 0, 1),
	(7, 3.7, 'The ASOS DESIGN Top Collar Jacket in Grey Melange offers a sleek, contemporary look perfect for layering. Crafted from a soft fabric blend, it features a stylish top collar that elevates your outfit. The versatile grey melange color makes it easy to pair ', 'https://images.asos-media.com/products/asos-design-top-collar-jacket-in-grey-melange/206053025-1-greymelange?$n_320w$&wid=317&fit=constrain', 55, 'ASOS DESIGN top collar jacket in grey melange', 0, NULL, 0, 1),
	(8, 3, 'The Bershka Boxy Wool Jacket in Sand combines comfort and style effortlessly. This boxy silhouette is crafted from warm wool, making it ideal for cooler days. Its neutral sand color enhances versatility, allowing you to pair it with a range of outfits, fr', 'https://images.asos-media.com/products/bershka-boxy-wool-jacket-in-sand/207141993-1-beige?$n_320w$&wid=317&fit=constrain', 74, 'Bershka boxy wool jacket in sand', 0, NULL, 0, 1),
	(9, 4, 'The Stradivarius Boxy Wool Look Jacket in Green offers a trendy, relaxed fit that adds a pop of color to your outfit. Made with a wool-like fabric, it provides warmth and comfort while maintaining a stylish appearance. The vibrant green hue makes it perfe', 'https://images.asos-media.com/products/stradivarius-boxy-wool-look-jacket-in-green/207160080-1-green?$n_240w$&wid=168&fit=constrain', 49, 'Stradivarius boxy wool look jacket in green', 20, '2024-10-22 00:00:00.000000', 0, 1),
	(10, 2, 'The Stradivarius Wool Look Jacket in Burgundy features a stylish design with a warm, rich color, perfect for adding elegance to any outfit. Ideal for layering in cooler weather.', 'https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-1-red?$n_320w$&wid=317&fit=constrain', 70, 'Stradivarius wool look jacket in burgundy', 0, NULL, 0, 1);

-- Dumping structure for table task_haibazo.products_styles
CREATE TABLE IF NOT EXISTS `products_styles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `style_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4jhdlj7n96qvt4bjrqqyxv5c8` (`product_id`),
  KEY `FK5tcn481n65dau11nkxfov1hrv` (`style_id`),
  CONSTRAINT `FK4jhdlj7n96qvt4bjrqqyxv5c8` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK5tcn481n65dau11nkxfov1hrv` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.products_styles: ~20 rows (approximately)
INSERT INTO `products_styles` (`id`, `product_id`, `style_id`) VALUES
	(1, 1, 5),
	(2, 1, 1),
	(3, 2, 4),
	(4, 3, 6),
	(5, 3, 1),
	(6, 4, 2),
	(7, 4, 5),
	(8, 5, 3),
	(9, 6, 1),
	(10, 6, 2),
	(11, 6, 4),
	(12, 7, 2),
	(13, 7, 5),
	(14, 8, 1),
	(15, 9, 6),
	(16, 9, 4),
	(17, 9, 5),
	(18, 10, 1),
	(19, 10, 5),
	(20, 10, 3);

-- Dumping structure for table task_haibazo.product_images
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_url` tinytext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.product_images: ~40 rows (approximately)
INSERT INTO `product_images` (`id`, `image_url`, `product_id`) VALUES
	(1, 'https://images.asos-media.com/products/mango-longline-core-trench-coat-in-navy/207108910-2?$n_320w$&wid=317&fit=constrain', 1),
	(2, 'https://images.asos-media.com/products/mango-longline-core-trench-coat-in-navy/207108910-3?$n_320w$&wid=317&fit=constrain', 1),
	(5, 'https://images.asos-media.com/products/mango-longline-core-trench-coat-in-navy/207108910-4?$n_320w$&wid=317&fit=constrain', 1),
	(7, 'https://images.asos-media.com/products/mango-longline-core-trench-coat-in-navy/207108910-1-navy?$n_320w$&wid=317&fit=constrain', 1),
	(8, 'https://images.asos-media.com/products/miss-selfridge-maxi-trench-coat-in-stone/206361578-2?$n_320w$&wid=317&fit=constrain', 2),
	(9, 'https://images.asos-media.com/products/miss-selfridge-maxi-trench-coat-in-stone/206361578-3?$n_320w$&wid=317&fit=constrain', 2),
	(10, 'https://images.asos-media.com/products/miss-selfridge-maxi-trench-coat-in-stone/206361578-4?$n_320w$&wid=317&fit=constrain', 2),
	(12, 'https://images.asos-media.com/products/miss-selfridge-maxi-trench-coat-in-stone/206361578-1-stone?$n_320w$&wid=317&fit=constrain', 2),
	(13, 'https://images.asos-media.com/products/river-island-faux-wool-jacket-with-popper-button-detail-in-cream/205887591-2?$n_320w$&wid=317&fit=constrain', 3),
	(14, 'https://images.asos-media.com/products/river-island-faux-wool-jacket-with-popper-button-detail-in-cream/205887591-3?$n_320w$&wid=317&fit=constrain', 3),
	(15, 'https://images.asos-media.com/products/river-island-faux-wool-jacket-with-popper-button-detail-in-cream/205887591-4?$n_240w$&wid=40&fit=constrain', 3),
	(16, 'https://images.asos-media.com/products/river-island-faux-wool-jacket-with-popper-button-detail-in-cream/205887591-1-cream?$n_320w$&wid=317&fit=constrain', 3),
	(18, 'https://images.asos-media.com/products/asos-design-denim-double-waistband-jacket-in-indigo/207322341-2?$n_320w$&wid=317&fit=constrain', 4),
	(20, 'https://images.asos-media.com/products/asos-design-denim-double-waistband-jacket-in-indigo/207322341-3?$n_320w$&wid=317&fit=constrain', 4),
	(21, 'https://images.asos-media.com/products/asos-design-denim-double-waistband-jacket-in-indigo/207322341-4?$n_240w$&wid=40&fit=constrain', 4),
	(23, 'https://images.asos-media.com/products/asos-design-denim-double-waistband-jacket-in-indigo/207322341-1-blue?$n_320w$&wid=317&fit=constrain', 4),
	(25, 'https://images.asos-media.com/products/topshop-faux-leather-biker-jacket-in-washed-green/205642337-2?$n_320w$&wid=317&fit=constrain', 5),
	(27, 'https://images.asos-media.com/products/topshop-faux-leather-biker-jacket-in-washed-green/205642337-3?$n_320w$&wid=317&fit=constrain', 5),
	(28, 'https://images.asos-media.com/products/topshop-faux-leather-biker-jacket-in-washed-green/205642337-4?$n_320w$&wid=317&fit=constrain', 5),
	(29, 'https://images.asos-media.com/products/topshop-faux-leather-biker-jacket-in-washed-green/205642337-1-washedgreen?$n_320w$&wid=317&fit=constrain', 5),
	(30, 'https://images.asos-media.com/products/stradivarius-pu-buckle-detail-biker-jacket-in-burgundy/207070940-2?$n_240w$&wid=40&fit=constrain', 6),
	(31, 'https://images.asos-media.com/products/stradivarius-pu-buckle-detail-biker-jacket-in-burgundy/207070940-3?$n_240w$&wid=40&fit=constrain', 6),
	(32, 'https://images.asos-media.com/products/stradivarius-pu-buckle-detail-biker-jacket-in-burgundy/207070940-4?$n_240w$&wid=40&fit=constrain', 6),
	(34, 'https://images.asos-media.com/products/stradivarius-pu-buckle-detail-biker-jacket-in-burgundy/207070940-1-red?$n_320w$&wid=317&fit=constrain', 6),
	(35, 'https://images.asos-media.com/products/asos-design-top-collar-jacket-in-grey-melange/206053025-2?$n_320w$&wid=317&fit=constrain', 7),
	(36, 'https://images.asos-media.com/products/asos-design-top-collar-jacket-in-grey-melange/206053025-3?$n_240w$&wid=40&fit=constrain', 7),
	(37, 'https://images.asos-media.com/products/asos-design-top-collar-jacket-in-grey-melange/206053025-4?$n_320w$&wid=317&fit=constrain', 7),
	(38, 'https://images.asos-media.com/products/asos-design-top-collar-jacket-in-grey-melange/206053025-1-greymelange?$n_320w$&wid=317&fit=constrain', 7),
	(39, 'https://images.asos-media.com/products/bershka-boxy-wool-jacket-in-sand/207141993-2?$n_320w$&wid=317&fit=constrain', 8),
	(40, 'https://images.asos-media.com/products/bershka-boxy-wool-jacket-in-sand/207141993-3?$n_320w$&wid=317&fit=constrain', 8),
	(41, 'https://images.asos-media.com/products/bershka-boxy-wool-jacket-in-sand/207141993-4?$n_320w$&wid=317&fit=constrain', 8),
	(42, 'https://images.asos-media.com/products/bershka-boxy-wool-jacket-in-sand/207141993-1-beige?$n_320w$&wid=317&fit=constrain', 8),
	(43, 'https://images.asos-media.com/products/stradivarius-boxy-wool-look-jacket-in-green/207160080-2?$n_240w$&wid=40&fit=constrain', 9),
	(44, 'https://images.asos-media.com/products/stradivarius-boxy-wool-look-jacket-in-green/207160080-3?$n_320w$&wid=317&fit=constrain', 9),
	(45, 'https://images.asos-media.com/products/stradivarius-boxy-wool-look-jacket-in-green/207160080-4?$n_240w$&wid=40&fit=constrain', 9),
	(46, 'https://images.asos-media.com/products/stradivarius-boxy-wool-look-jacket-in-green/207160080-1-green?$n_240w$&wid=168&fit=constrain', 9),
	(47, 'https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-2?$n_320w$&wid=317&fit=constrain', 10),
	(48, 'https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-3?$n_320w$&wid=317&fit=constrain', 10),
	(49, 'https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-4?$n_320w$&wid=317&fit=constrain', 10),
	(50, 'https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-1-red?$n_320w$&wid=317&fit=constrain', 10);

-- Dumping structure for table task_haibazo.product_options
CREATE TABLE IF NOT EXISTS `product_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `color_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs4jucklnr9t3ntii94qarr80n` (`color_id`),
  KEY `FK8vv4f8fru80wxocwgxwsrow61` (`product_id`),
  KEY `FK1xhgd1dfag3mtn9a5y4to46g4` (`size_id`),
  CONSTRAINT `FK1xhgd1dfag3mtn9a5y4to46g4` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `FK8vv4f8fru80wxocwgxwsrow61` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKs4jucklnr9t3ntii94qarr80n` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.product_options: ~30 rows (approximately)
INSERT INTO `product_options` (`id`, `quantity`, `color_id`, `product_id`, `size_id`) VALUES
	(3, 0, 3, 1, 6),
	(5, 163, 1, 1, 3),
	(6, 25, 4, 1, 1),
	(9, 2, 4, 2, 1),
	(10, 55, 2, 2, 2),
	(11, 19, 2, 2, 4),
	(12, 66, 2, 3, 1),
	(13, 23, 4, 3, 4),
	(14, 94, 2, 3, 3),
	(15, 13, 2, 4, 6),
	(17, 26, 2, 4, 3),
	(18, 60, 2, 4, 4),
	(19, 94, 2, 5, 3),
	(22, 63, 4, 5, 2),
	(23, 94, 3, 5, 4),
	(25, 42, 2, 6, 3),
	(26, 47, 3, 6, 3),
	(27, 49, 1, 6, 4),
	(28, 48, 4, 7, 3),
	(29, 16, 4, 7, 2),
	(30, 27, 4, 7, 6),
	(31, 9, 1, 8, 6),
	(32, 72, 4, 8, 6),
	(35, 54, 4, 8, 1),
	(36, 39, 1, 9, 2),
	(37, 27, 2, 9, 6),
	(38, 10, 3, 9, 3),
	(39, 5, 1, 10, 6),
	(40, 67, 3, 10, 4),
	(43, 1, 1, 10, 2);

-- Dumping structure for table task_haibazo.sizes
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.sizes: ~5 rows (approximately)
INSERT INTO `sizes` (`id`, `size_name`) VALUES
	(1, 'S'),
	(2, 'M'),
	(3, 'L'),
	(4, 'XL'),
	(6, '2XL');

-- Dumping structure for table task_haibazo.styles
CREATE TABLE IF NOT EXISTS `styles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table task_haibazo.styles: ~6 rows (approximately)
INSERT INTO `styles` (`id`, `style_name`) VALUES
	(1, 'Modern'),
	(2, 'Streetwear'),
	(3, 'Colorfull'),
	(4, 'Patchwork'),
	(5, 'Bohemian'),
	(6, 'Vintage');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
