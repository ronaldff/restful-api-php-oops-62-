-- Adminer 4.8.2-dev MySQL 5.5.5-10.4.14-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1,	'Fashion',	'Category for anything related to fashion.',	'2014-06-01 00:35:07',	'2014-05-30 12:04:33'),
(2,	'Electronics',	'Gadgets, drones and more.',	'2014-06-01 00:35:07',	'2014-05-30 12:04:33'),
(3,	'Motors',	'Motor sports and more',	'2014-06-01 00:35:07',	'2014-05-30 12:04:54'),
(5,	'Movies',	'Movie products.',	'0000-00-00 00:00:00',	'2016-01-08 07:57:26'),
(6,	'Books',	'Kindle books, audio books and more.',	'0000-00-00 00:00:00',	'2016-01-08 07:57:47'),
(13,	'Sports',	'Drop into new winter gear.',	'2016-01-09 02:24:24',	'2016-01-08 19:54:24');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1,	'LG P880 4X HD',	'My first awesome phone!',	336,	3,	'2014-06-01 01:12:26',	'2014-05-31 11:42:26'),
(2,	'Google Nexus 4',	'The most awesome phone of 2013!',	299,	2,	'2014-06-01 01:12:26',	'2014-05-31 11:42:26'),
(3,	'Samsung Galaxy S4',	'How about no?',	600,	3,	'2014-06-01 01:12:26',	'2014-05-31 11:42:26'),
(6,	'Bench Shirt',	'The best shirt!',	29,	1,	'2014-06-01 01:12:26',	'2014-05-30 20:42:21'),
(7,	'Lenovo Laptop',	'My business partner.',	399,	2,	'2014-06-01 01:13:45',	'2014-05-30 20:43:39'),
(8,	'Samsung Galaxy Tab 10.1',	'Good tablet.',	259,	2,	'2014-06-01 01:14:13',	'2014-05-30 20:44:08'),
(9,	'Spalding Watch',	'My sports watch.',	199,	1,	'2014-06-01 01:18:36',	'2014-05-30 20:48:31'),
(10,	'Sony Smart Watch',	'The coolest smart watch!',	300,	2,	'2014-06-06 17:10:01',	'2014-06-05 12:39:51'),
(11,	'Huawei Y300',	'For testing purposes.',	100,	2,	'2014-06-06 17:11:04',	'2014-06-05 12:40:54'),
(12,	'Abercrombie Lake Arnold Shirt',	'Perfect as gift!',	60,	1,	'2014-06-06 17:12:21',	'2014-06-05 12:42:11'),
(13,	'Abercrombie Allen Brook Shirt',	'Cool red shirt!',	70,	1,	'2014-06-06 17:12:59',	'2014-06-05 12:42:49'),
(26,	'Another product',	'Awesome product!',	555,	2,	'2014-11-22 19:07:34',	'2014-11-21 14:37:34'),
(28,	'Wallet',	'You can absolutely use this one!',	799,	6,	'2014-12-04 21:12:03',	'2014-12-03 16:42:03'),
(31,	'Amanda Waller Shirt',	'New awesome shirt!',	333,	1,	'2014-12-13 00:52:54',	'2014-12-11 20:22:54'),
(42,	'Nike Shoes for Men',	'Nike Shoes',	12999,	3,	'2015-12-12 06:47:08',	'2015-12-12 00:17:08'),
(48,	'Bristol Shoes',	'Awesome shoes.',	999,	5,	'2016-01-08 06:36:37',	'2016-01-08 00:06:37'),
(60,	'Rolex Watch',	'Luxury watch.',	25000,	1,	'2016-01-11 15:46:02',	'2016-01-11 09:16:02'),
(65,	'Amazing Pillow 2.0',	'The best pillow for amazing programmers.',	199,	2,	'2021-09-14 08:45:59',	'2021-09-14 06:45:59'),
(66,	'Amazing Pillow',	'The best pillow for amazing',	19,	1,	'2021-09-14 08:47:13',	'2021-09-14 06:47:13');

-- 2021-09-14 07:04:35
