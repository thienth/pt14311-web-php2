/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : localhost:3306
 Source Schema         : pt14311-web

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 13/02/2020 12:09:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(1) DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`cate_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 't-shirt', NULL, 1, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (2, 'Skinny Jean', NULL, 1, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (3, 'pleated skirt', NULL, 1, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (4, 'blazer', NULL, 1, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (5, 'sweatshirt', NULL, NULL, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (6, 'Dress', NULL, 1, NULL, NULL, NULL, -1);
INSERT INTO `categories` VALUES (7, 'backpack', NULL, NULL, NULL, NULL, NULL, -1);
COMMIT;

-- ----------------------------
-- Table structure for invoice_detail
-- ----------------------------
DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `invoice_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of invoice_detail
-- ----------------------------
BEGIN;
INSERT INTO `invoice_detail` VALUES (5, 96, 1, 39837, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (5, 97, 1, 2573, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (6, 89, 2, 68613, NULL, NULL);
INSERT INTO `invoice_detail` VALUES (6, 96, 1, 39837, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT '0',
  `payment_method` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of invoices
-- ----------------------------
BEGIN;
INSERT INTO `invoices` VALUES (5, 'tieu cuong', '089987789', 'cuongtieu@gmail.com', '15 dong quan', 42410, 2, NULL, NULL);
INSERT INTO `invoices` VALUES (6, 'trần hữu thiện', '0987654321', 'thiendepzai@gmail.com', 'hàm nghi, nam từ liêm, hà nội', 177063, 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_01_05_070735_create_categories_table', 2);
INSERT INTO `migrations` VALUES (5, '2019_01_05_072544_alter_table_categories_update_column', 3);
INSERT INTO `migrations` VALUES (6, '2019_01_05_074643_create_products_table', 3);
INSERT INTO `migrations` VALUES (7, '2019_01_05_075227_create_invoices_table', 4);
INSERT INTO `migrations` VALUES (8, '2019_01_05_075449_create_invoice_detail_table', 4);
INSERT INTO `migrations` VALUES (9, '2019_01_12_014833_alter_table_products_add_views_column', 5);
INSERT INTO `migrations` VALUES (10, '2019_01_12_021523_create_table_product_galleries', 6);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for product_galleries
-- ----------------------------
DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_galleries
-- ----------------------------
BEGIN;
INSERT INTO `product_galleries` VALUES (1, 1, 'https://lorempixel.com/640/480/cats/?10546', NULL, NULL);
INSERT INTO `product_galleries` VALUES (2, 1, 'https://lorempixel.com/640/480/cats/?23905', NULL, NULL);
INSERT INTO `product_galleries` VALUES (3, 1, 'https://lorempixel.com/640/480/cats/?66813', NULL, NULL);
INSERT INTO `product_galleries` VALUES (4, 2, 'https://lorempixel.com/640/480/cats/?67185', NULL, NULL);
INSERT INTO `product_galleries` VALUES (5, 2, 'https://lorempixel.com/640/480/cats/?24575', NULL, NULL);
INSERT INTO `product_galleries` VALUES (6, 2, 'https://lorempixel.com/640/480/cats/?15621', NULL, NULL);
INSERT INTO `product_galleries` VALUES (7, 2, 'https://lorempixel.com/640/480/cats/?69292', NULL, NULL);
INSERT INTO `product_galleries` VALUES (8, 3, 'https://lorempixel.com/640/480/cats/?25547', NULL, NULL);
INSERT INTO `product_galleries` VALUES (9, 3, 'https://lorempixel.com/640/480/cats/?71965', NULL, NULL);
INSERT INTO `product_galleries` VALUES (10, 3, 'https://lorempixel.com/640/480/cats/?31612', NULL, NULL);
INSERT INTO `product_galleries` VALUES (11, 4, 'https://lorempixel.com/640/480/cats/?10227', NULL, NULL);
INSERT INTO `product_galleries` VALUES (12, 4, 'https://lorempixel.com/640/480/cats/?87389', NULL, NULL);
INSERT INTO `product_galleries` VALUES (13, 4, 'https://lorempixel.com/640/480/cats/?33849', NULL, NULL);
INSERT INTO `product_galleries` VALUES (14, 4, 'https://lorempixel.com/640/480/cats/?98511', NULL, NULL);
INSERT INTO `product_galleries` VALUES (15, 5, 'https://lorempixel.com/640/480/cats/?44170', NULL, NULL);
INSERT INTO `product_galleries` VALUES (16, 5, 'https://lorempixel.com/640/480/cats/?26460', NULL, NULL);
INSERT INTO `product_galleries` VALUES (17, 5, 'https://lorempixel.com/640/480/cats/?41734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (18, 6, 'https://lorempixel.com/640/480/cats/?86850', NULL, NULL);
INSERT INTO `product_galleries` VALUES (19, 6, 'https://lorempixel.com/640/480/cats/?29948', NULL, NULL);
INSERT INTO `product_galleries` VALUES (20, 6, 'https://lorempixel.com/640/480/cats/?52631', NULL, NULL);
INSERT INTO `product_galleries` VALUES (21, 7, 'https://lorempixel.com/640/480/cats/?16016', NULL, NULL);
INSERT INTO `product_galleries` VALUES (22, 7, 'https://lorempixel.com/640/480/cats/?80666', NULL, NULL);
INSERT INTO `product_galleries` VALUES (23, 7, 'https://lorempixel.com/640/480/cats/?71484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (24, 7, 'https://lorempixel.com/640/480/cats/?37459', NULL, NULL);
INSERT INTO `product_galleries` VALUES (25, 7, 'https://lorempixel.com/640/480/cats/?25810', NULL, NULL);
INSERT INTO `product_galleries` VALUES (26, 8, 'https://lorempixel.com/640/480/cats/?63687', NULL, NULL);
INSERT INTO `product_galleries` VALUES (27, 8, 'https://lorempixel.com/640/480/cats/?41774', NULL, NULL);
INSERT INTO `product_galleries` VALUES (28, 8, 'https://lorempixel.com/640/480/cats/?53737', NULL, NULL);
INSERT INTO `product_galleries` VALUES (29, 8, 'https://lorempixel.com/640/480/cats/?19013', NULL, NULL);
INSERT INTO `product_galleries` VALUES (30, 8, 'https://lorempixel.com/640/480/cats/?77785', NULL, NULL);
INSERT INTO `product_galleries` VALUES (31, 9, 'https://lorempixel.com/640/480/cats/?44243', NULL, NULL);
INSERT INTO `product_galleries` VALUES (32, 9, 'https://lorempixel.com/640/480/cats/?47469', NULL, NULL);
INSERT INTO `product_galleries` VALUES (33, 9, 'https://lorempixel.com/640/480/cats/?47198', NULL, NULL);
INSERT INTO `product_galleries` VALUES (34, 9, 'https://lorempixel.com/640/480/cats/?51295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (35, 9, 'https://lorempixel.com/640/480/cats/?15267', NULL, NULL);
INSERT INTO `product_galleries` VALUES (36, 10, 'https://lorempixel.com/640/480/cats/?55076', NULL, NULL);
INSERT INTO `product_galleries` VALUES (37, 10, 'https://lorempixel.com/640/480/cats/?56526', NULL, NULL);
INSERT INTO `product_galleries` VALUES (38, 10, 'https://lorempixel.com/640/480/cats/?47395', NULL, NULL);
INSERT INTO `product_galleries` VALUES (39, 10, 'https://lorempixel.com/640/480/cats/?28764', NULL, NULL);
INSERT INTO `product_galleries` VALUES (40, 11, 'https://lorempixel.com/640/480/cats/?37310', NULL, NULL);
INSERT INTO `product_galleries` VALUES (41, 11, 'https://lorempixel.com/640/480/cats/?30736', NULL, NULL);
INSERT INTO `product_galleries` VALUES (42, 11, 'https://lorempixel.com/640/480/cats/?25207', NULL, NULL);
INSERT INTO `product_galleries` VALUES (43, 11, 'https://lorempixel.com/640/480/cats/?51950', NULL, NULL);
INSERT INTO `product_galleries` VALUES (44, 11, 'https://lorempixel.com/640/480/cats/?12853', NULL, NULL);
INSERT INTO `product_galleries` VALUES (45, 12, 'https://lorempixel.com/640/480/cats/?30453', NULL, NULL);
INSERT INTO `product_galleries` VALUES (46, 12, 'https://lorempixel.com/640/480/cats/?58005', NULL, NULL);
INSERT INTO `product_galleries` VALUES (47, 12, 'https://lorempixel.com/640/480/cats/?56907', NULL, NULL);
INSERT INTO `product_galleries` VALUES (48, 13, 'https://lorempixel.com/640/480/cats/?75762', NULL, NULL);
INSERT INTO `product_galleries` VALUES (49, 13, 'https://lorempixel.com/640/480/cats/?18853', NULL, NULL);
INSERT INTO `product_galleries` VALUES (50, 13, 'https://lorempixel.com/640/480/cats/?46606', NULL, NULL);
INSERT INTO `product_galleries` VALUES (51, 14, 'https://lorempixel.com/640/480/cats/?28151', NULL, NULL);
INSERT INTO `product_galleries` VALUES (52, 14, 'https://lorempixel.com/640/480/cats/?12919', NULL, NULL);
INSERT INTO `product_galleries` VALUES (53, 14, 'https://lorempixel.com/640/480/cats/?46318', NULL, NULL);
INSERT INTO `product_galleries` VALUES (54, 15, 'https://lorempixel.com/640/480/cats/?96128', NULL, NULL);
INSERT INTO `product_galleries` VALUES (55, 15, 'https://lorempixel.com/640/480/cats/?29842', NULL, NULL);
INSERT INTO `product_galleries` VALUES (56, 15, 'https://lorempixel.com/640/480/cats/?17676', NULL, NULL);
INSERT INTO `product_galleries` VALUES (57, 15, 'https://lorempixel.com/640/480/cats/?41467', NULL, NULL);
INSERT INTO `product_galleries` VALUES (58, 16, 'https://lorempixel.com/640/480/cats/?23140', NULL, NULL);
INSERT INTO `product_galleries` VALUES (59, 16, 'https://lorempixel.com/640/480/cats/?84316', NULL, NULL);
INSERT INTO `product_galleries` VALUES (60, 16, 'https://lorempixel.com/640/480/cats/?55984', NULL, NULL);
INSERT INTO `product_galleries` VALUES (61, 17, 'https://lorempixel.com/640/480/cats/?46900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (62, 17, 'https://lorempixel.com/640/480/cats/?49131', NULL, NULL);
INSERT INTO `product_galleries` VALUES (63, 17, 'https://lorempixel.com/640/480/cats/?57927', NULL, NULL);
INSERT INTO `product_galleries` VALUES (64, 18, 'https://lorempixel.com/640/480/cats/?16479', NULL, NULL);
INSERT INTO `product_galleries` VALUES (65, 18, 'https://lorempixel.com/640/480/cats/?32847', NULL, NULL);
INSERT INTO `product_galleries` VALUES (66, 18, 'https://lorempixel.com/640/480/cats/?57846', NULL, NULL);
INSERT INTO `product_galleries` VALUES (67, 18, 'https://lorempixel.com/640/480/cats/?77881', NULL, NULL);
INSERT INTO `product_galleries` VALUES (68, 19, 'https://lorempixel.com/640/480/cats/?10022', NULL, NULL);
INSERT INTO `product_galleries` VALUES (69, 19, 'https://lorempixel.com/640/480/cats/?43867', NULL, NULL);
INSERT INTO `product_galleries` VALUES (70, 19, 'https://lorempixel.com/640/480/cats/?38764', NULL, NULL);
INSERT INTO `product_galleries` VALUES (71, 19, 'https://lorempixel.com/640/480/cats/?39340', NULL, NULL);
INSERT INTO `product_galleries` VALUES (72, 19, 'https://lorempixel.com/640/480/cats/?18785', NULL, NULL);
INSERT INTO `product_galleries` VALUES (73, 20, 'https://lorempixel.com/640/480/cats/?32524', NULL, NULL);
INSERT INTO `product_galleries` VALUES (74, 20, 'https://lorempixel.com/640/480/cats/?72784', NULL, NULL);
INSERT INTO `product_galleries` VALUES (75, 20, 'https://lorempixel.com/640/480/cats/?88463', NULL, NULL);
INSERT INTO `product_galleries` VALUES (76, 20, 'https://lorempixel.com/640/480/cats/?96818', NULL, NULL);
INSERT INTO `product_galleries` VALUES (77, 21, 'https://lorempixel.com/640/480/cats/?82362', NULL, NULL);
INSERT INTO `product_galleries` VALUES (78, 21, 'https://lorempixel.com/640/480/cats/?36685', NULL, NULL);
INSERT INTO `product_galleries` VALUES (79, 21, 'https://lorempixel.com/640/480/cats/?31232', NULL, NULL);
INSERT INTO `product_galleries` VALUES (80, 21, 'https://lorempixel.com/640/480/cats/?67896', NULL, NULL);
INSERT INTO `product_galleries` VALUES (81, 22, 'https://lorempixel.com/640/480/cats/?96932', NULL, NULL);
INSERT INTO `product_galleries` VALUES (82, 22, 'https://lorempixel.com/640/480/cats/?57154', NULL, NULL);
INSERT INTO `product_galleries` VALUES (83, 22, 'https://lorempixel.com/640/480/cats/?97056', NULL, NULL);
INSERT INTO `product_galleries` VALUES (84, 22, 'https://lorempixel.com/640/480/cats/?41302', NULL, NULL);
INSERT INTO `product_galleries` VALUES (85, 22, 'https://lorempixel.com/640/480/cats/?37458', NULL, NULL);
INSERT INTO `product_galleries` VALUES (86, 23, 'https://lorempixel.com/640/480/cats/?85766', NULL, NULL);
INSERT INTO `product_galleries` VALUES (87, 23, 'https://lorempixel.com/640/480/cats/?58748', NULL, NULL);
INSERT INTO `product_galleries` VALUES (88, 23, 'https://lorempixel.com/640/480/cats/?35805', NULL, NULL);
INSERT INTO `product_galleries` VALUES (89, 24, 'https://lorempixel.com/640/480/cats/?53471', NULL, NULL);
INSERT INTO `product_galleries` VALUES (90, 24, 'https://lorempixel.com/640/480/cats/?23126', NULL, NULL);
INSERT INTO `product_galleries` VALUES (91, 24, 'https://lorempixel.com/640/480/cats/?11787', NULL, NULL);
INSERT INTO `product_galleries` VALUES (92, 24, 'https://lorempixel.com/640/480/cats/?60390', NULL, NULL);
INSERT INTO `product_galleries` VALUES (93, 24, 'https://lorempixel.com/640/480/cats/?19663', NULL, NULL);
INSERT INTO `product_galleries` VALUES (94, 25, 'https://lorempixel.com/640/480/cats/?33367', NULL, NULL);
INSERT INTO `product_galleries` VALUES (95, 25, 'https://lorempixel.com/640/480/cats/?98762', NULL, NULL);
INSERT INTO `product_galleries` VALUES (96, 25, 'https://lorempixel.com/640/480/cats/?87512', NULL, NULL);
INSERT INTO `product_galleries` VALUES (97, 25, 'https://lorempixel.com/640/480/cats/?61615', NULL, NULL);
INSERT INTO `product_galleries` VALUES (98, 26, 'https://lorempixel.com/640/480/cats/?11866', NULL, NULL);
INSERT INTO `product_galleries` VALUES (99, 26, 'https://lorempixel.com/640/480/cats/?53197', NULL, NULL);
INSERT INTO `product_galleries` VALUES (100, 26, 'https://lorempixel.com/640/480/cats/?28940', NULL, NULL);
INSERT INTO `product_galleries` VALUES (101, 26, 'https://lorempixel.com/640/480/cats/?24319', NULL, NULL);
INSERT INTO `product_galleries` VALUES (102, 26, 'https://lorempixel.com/640/480/cats/?96222', NULL, NULL);
INSERT INTO `product_galleries` VALUES (103, 27, 'https://lorempixel.com/640/480/cats/?51850', NULL, NULL);
INSERT INTO `product_galleries` VALUES (104, 27, 'https://lorempixel.com/640/480/cats/?76288', NULL, NULL);
INSERT INTO `product_galleries` VALUES (105, 27, 'https://lorempixel.com/640/480/cats/?61211', NULL, NULL);
INSERT INTO `product_galleries` VALUES (106, 27, 'https://lorempixel.com/640/480/cats/?27911', NULL, NULL);
INSERT INTO `product_galleries` VALUES (107, 28, 'https://lorempixel.com/640/480/cats/?20731', NULL, NULL);
INSERT INTO `product_galleries` VALUES (108, 28, 'https://lorempixel.com/640/480/cats/?51063', NULL, NULL);
INSERT INTO `product_galleries` VALUES (109, 28, 'https://lorempixel.com/640/480/cats/?82564', NULL, NULL);
INSERT INTO `product_galleries` VALUES (110, 29, 'https://lorempixel.com/640/480/cats/?89182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (111, 29, 'https://lorempixel.com/640/480/cats/?59597', NULL, NULL);
INSERT INTO `product_galleries` VALUES (112, 29, 'https://lorempixel.com/640/480/cats/?97357', NULL, NULL);
INSERT INTO `product_galleries` VALUES (113, 30, 'https://lorempixel.com/640/480/cats/?23119', NULL, NULL);
INSERT INTO `product_galleries` VALUES (114, 30, 'https://lorempixel.com/640/480/cats/?47740', NULL, NULL);
INSERT INTO `product_galleries` VALUES (115, 30, 'https://lorempixel.com/640/480/cats/?35375', NULL, NULL);
INSERT INTO `product_galleries` VALUES (116, 31, 'https://lorempixel.com/640/480/cats/?85442', NULL, NULL);
INSERT INTO `product_galleries` VALUES (117, 31, 'https://lorempixel.com/640/480/cats/?75400', NULL, NULL);
INSERT INTO `product_galleries` VALUES (118, 31, 'https://lorempixel.com/640/480/cats/?92437', NULL, NULL);
INSERT INTO `product_galleries` VALUES (119, 32, 'https://lorempixel.com/640/480/cats/?51217', NULL, NULL);
INSERT INTO `product_galleries` VALUES (120, 32, 'https://lorempixel.com/640/480/cats/?84632', NULL, NULL);
INSERT INTO `product_galleries` VALUES (121, 32, 'https://lorempixel.com/640/480/cats/?19840', NULL, NULL);
INSERT INTO `product_galleries` VALUES (122, 33, 'https://lorempixel.com/640/480/cats/?66297', NULL, NULL);
INSERT INTO `product_galleries` VALUES (123, 33, 'https://lorempixel.com/640/480/cats/?76125', NULL, NULL);
INSERT INTO `product_galleries` VALUES (124, 33, 'https://lorempixel.com/640/480/cats/?48280', NULL, NULL);
INSERT INTO `product_galleries` VALUES (125, 34, 'https://lorempixel.com/640/480/cats/?10008', NULL, NULL);
INSERT INTO `product_galleries` VALUES (126, 34, 'https://lorempixel.com/640/480/cats/?56069', NULL, NULL);
INSERT INTO `product_galleries` VALUES (127, 34, 'https://lorempixel.com/640/480/cats/?33208', NULL, NULL);
INSERT INTO `product_galleries` VALUES (128, 34, 'https://lorempixel.com/640/480/cats/?50674', NULL, NULL);
INSERT INTO `product_galleries` VALUES (129, 35, 'https://lorempixel.com/640/480/cats/?30989', NULL, NULL);
INSERT INTO `product_galleries` VALUES (130, 35, 'https://lorempixel.com/640/480/cats/?67180', NULL, NULL);
INSERT INTO `product_galleries` VALUES (131, 35, 'https://lorempixel.com/640/480/cats/?62204', NULL, NULL);
INSERT INTO `product_galleries` VALUES (132, 35, 'https://lorempixel.com/640/480/cats/?94888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (133, 35, 'https://lorempixel.com/640/480/cats/?40690', NULL, NULL);
INSERT INTO `product_galleries` VALUES (134, 36, 'https://lorempixel.com/640/480/cats/?72384', NULL, NULL);
INSERT INTO `product_galleries` VALUES (135, 36, 'https://lorempixel.com/640/480/cats/?47333', NULL, NULL);
INSERT INTO `product_galleries` VALUES (136, 36, 'https://lorempixel.com/640/480/cats/?34049', NULL, NULL);
INSERT INTO `product_galleries` VALUES (137, 36, 'https://lorempixel.com/640/480/cats/?23086', NULL, NULL);
INSERT INTO `product_galleries` VALUES (138, 36, 'https://lorempixel.com/640/480/cats/?53368', NULL, NULL);
INSERT INTO `product_galleries` VALUES (139, 37, 'https://lorempixel.com/640/480/cats/?97320', NULL, NULL);
INSERT INTO `product_galleries` VALUES (140, 37, 'https://lorempixel.com/640/480/cats/?15688', NULL, NULL);
INSERT INTO `product_galleries` VALUES (141, 37, 'https://lorempixel.com/640/480/cats/?19290', NULL, NULL);
INSERT INTO `product_galleries` VALUES (142, 37, 'https://lorempixel.com/640/480/cats/?14295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (143, 37, 'https://lorempixel.com/640/480/cats/?90872', NULL, NULL);
INSERT INTO `product_galleries` VALUES (144, 38, 'https://lorempixel.com/640/480/cats/?96203', NULL, NULL);
INSERT INTO `product_galleries` VALUES (145, 38, 'https://lorempixel.com/640/480/cats/?59453', NULL, NULL);
INSERT INTO `product_galleries` VALUES (146, 38, 'https://lorempixel.com/640/480/cats/?66525', NULL, NULL);
INSERT INTO `product_galleries` VALUES (147, 38, 'https://lorempixel.com/640/480/cats/?77968', NULL, NULL);
INSERT INTO `product_galleries` VALUES (148, 39, 'https://lorempixel.com/640/480/cats/?42720', NULL, NULL);
INSERT INTO `product_galleries` VALUES (149, 39, 'https://lorempixel.com/640/480/cats/?61860', NULL, NULL);
INSERT INTO `product_galleries` VALUES (150, 39, 'https://lorempixel.com/640/480/cats/?56031', NULL, NULL);
INSERT INTO `product_galleries` VALUES (151, 40, 'https://lorempixel.com/640/480/cats/?43305', NULL, NULL);
INSERT INTO `product_galleries` VALUES (152, 40, 'https://lorempixel.com/640/480/cats/?77715', NULL, NULL);
INSERT INTO `product_galleries` VALUES (153, 40, 'https://lorempixel.com/640/480/cats/?96875', NULL, NULL);
INSERT INTO `product_galleries` VALUES (154, 40, 'https://lorempixel.com/640/480/cats/?79975', NULL, NULL);
INSERT INTO `product_galleries` VALUES (155, 41, 'https://lorempixel.com/640/480/cats/?65481', NULL, NULL);
INSERT INTO `product_galleries` VALUES (156, 41, 'https://lorempixel.com/640/480/cats/?77041', NULL, NULL);
INSERT INTO `product_galleries` VALUES (157, 41, 'https://lorempixel.com/640/480/cats/?79734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (158, 42, 'https://lorempixel.com/640/480/cats/?42028', NULL, NULL);
INSERT INTO `product_galleries` VALUES (159, 42, 'https://lorempixel.com/640/480/cats/?97900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (160, 42, 'https://lorempixel.com/640/480/cats/?32792', NULL, NULL);
INSERT INTO `product_galleries` VALUES (161, 42, 'https://lorempixel.com/640/480/cats/?96427', NULL, NULL);
INSERT INTO `product_galleries` VALUES (162, 43, 'https://lorempixel.com/640/480/cats/?18404', NULL, NULL);
INSERT INTO `product_galleries` VALUES (163, 43, 'https://lorempixel.com/640/480/cats/?30561', NULL, NULL);
INSERT INTO `product_galleries` VALUES (164, 43, 'https://lorempixel.com/640/480/cats/?82719', NULL, NULL);
INSERT INTO `product_galleries` VALUES (165, 43, 'https://lorempixel.com/640/480/cats/?54915', NULL, NULL);
INSERT INTO `product_galleries` VALUES (166, 43, 'https://lorempixel.com/640/480/cats/?59557', NULL, NULL);
INSERT INTO `product_galleries` VALUES (167, 44, 'https://lorempixel.com/640/480/cats/?13149', NULL, NULL);
INSERT INTO `product_galleries` VALUES (168, 44, 'https://lorempixel.com/640/480/cats/?62382', NULL, NULL);
INSERT INTO `product_galleries` VALUES (169, 44, 'https://lorempixel.com/640/480/cats/?65684', NULL, NULL);
INSERT INTO `product_galleries` VALUES (170, 44, 'https://lorempixel.com/640/480/cats/?63440', NULL, NULL);
INSERT INTO `product_galleries` VALUES (171, 45, 'https://lorempixel.com/640/480/cats/?70977', NULL, NULL);
INSERT INTO `product_galleries` VALUES (172, 45, 'https://lorempixel.com/640/480/cats/?64695', NULL, NULL);
INSERT INTO `product_galleries` VALUES (173, 45, 'https://lorempixel.com/640/480/cats/?98096', NULL, NULL);
INSERT INTO `product_galleries` VALUES (174, 45, 'https://lorempixel.com/640/480/cats/?99658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (175, 45, 'https://lorempixel.com/640/480/cats/?28580', NULL, NULL);
INSERT INTO `product_galleries` VALUES (176, 46, 'https://lorempixel.com/640/480/cats/?41240', NULL, NULL);
INSERT INTO `product_galleries` VALUES (177, 46, 'https://lorempixel.com/640/480/cats/?26337', NULL, NULL);
INSERT INTO `product_galleries` VALUES (178, 46, 'https://lorempixel.com/640/480/cats/?93630', NULL, NULL);
INSERT INTO `product_galleries` VALUES (179, 46, 'https://lorempixel.com/640/480/cats/?84024', NULL, NULL);
INSERT INTO `product_galleries` VALUES (180, 47, 'https://lorempixel.com/640/480/cats/?99428', NULL, NULL);
INSERT INTO `product_galleries` VALUES (181, 47, 'https://lorempixel.com/640/480/cats/?26891', NULL, NULL);
INSERT INTO `product_galleries` VALUES (182, 47, 'https://lorempixel.com/640/480/cats/?81523', NULL, NULL);
INSERT INTO `product_galleries` VALUES (183, 47, 'https://lorempixel.com/640/480/cats/?85579', NULL, NULL);
INSERT INTO `product_galleries` VALUES (184, 47, 'https://lorempixel.com/640/480/cats/?91038', NULL, NULL);
INSERT INTO `product_galleries` VALUES (185, 48, 'https://lorempixel.com/640/480/cats/?82464', NULL, NULL);
INSERT INTO `product_galleries` VALUES (186, 48, 'https://lorempixel.com/640/480/cats/?89880', NULL, NULL);
INSERT INTO `product_galleries` VALUES (187, 48, 'https://lorempixel.com/640/480/cats/?96576', NULL, NULL);
INSERT INTO `product_galleries` VALUES (188, 49, 'https://lorempixel.com/640/480/cats/?57634', NULL, NULL);
INSERT INTO `product_galleries` VALUES (189, 49, 'https://lorempixel.com/640/480/cats/?56556', NULL, NULL);
INSERT INTO `product_galleries` VALUES (190, 49, 'https://lorempixel.com/640/480/cats/?93115', NULL, NULL);
INSERT INTO `product_galleries` VALUES (191, 49, 'https://lorempixel.com/640/480/cats/?13609', NULL, NULL);
INSERT INTO `product_galleries` VALUES (192, 50, 'https://lorempixel.com/640/480/cats/?98587', NULL, NULL);
INSERT INTO `product_galleries` VALUES (193, 50, 'https://lorempixel.com/640/480/cats/?52770', NULL, NULL);
INSERT INTO `product_galleries` VALUES (194, 50, 'https://lorempixel.com/640/480/cats/?66402', NULL, NULL);
INSERT INTO `product_galleries` VALUES (195, 51, 'https://lorempixel.com/640/480/cats/?85831', NULL, NULL);
INSERT INTO `product_galleries` VALUES (196, 51, 'https://lorempixel.com/640/480/cats/?76195', NULL, NULL);
INSERT INTO `product_galleries` VALUES (197, 51, 'https://lorempixel.com/640/480/cats/?72317', NULL, NULL);
INSERT INTO `product_galleries` VALUES (198, 52, 'https://lorempixel.com/640/480/cats/?19033', NULL, NULL);
INSERT INTO `product_galleries` VALUES (199, 52, 'https://lorempixel.com/640/480/cats/?87591', NULL, NULL);
INSERT INTO `product_galleries` VALUES (200, 52, 'https://lorempixel.com/640/480/cats/?60897', NULL, NULL);
INSERT INTO `product_galleries` VALUES (201, 52, 'https://lorempixel.com/640/480/cats/?54972', NULL, NULL);
INSERT INTO `product_galleries` VALUES (202, 53, 'https://lorempixel.com/640/480/cats/?69178', NULL, NULL);
INSERT INTO `product_galleries` VALUES (203, 53, 'https://lorempixel.com/640/480/cats/?29671', NULL, NULL);
INSERT INTO `product_galleries` VALUES (204, 53, 'https://lorempixel.com/640/480/cats/?91658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (205, 54, 'https://lorempixel.com/640/480/cats/?76412', NULL, NULL);
INSERT INTO `product_galleries` VALUES (206, 54, 'https://lorempixel.com/640/480/cats/?24867', NULL, NULL);
INSERT INTO `product_galleries` VALUES (207, 54, 'https://lorempixel.com/640/480/cats/?54658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (208, 55, 'https://lorempixel.com/640/480/cats/?54009', NULL, NULL);
INSERT INTO `product_galleries` VALUES (209, 55, 'https://lorempixel.com/640/480/cats/?41465', NULL, NULL);
INSERT INTO `product_galleries` VALUES (210, 55, 'https://lorempixel.com/640/480/cats/?51223', NULL, NULL);
INSERT INTO `product_galleries` VALUES (211, 55, 'https://lorempixel.com/640/480/cats/?90484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (212, 56, 'https://lorempixel.com/640/480/cats/?67326', NULL, NULL);
INSERT INTO `product_galleries` VALUES (213, 56, 'https://lorempixel.com/640/480/cats/?61444', NULL, NULL);
INSERT INTO `product_galleries` VALUES (214, 56, 'https://lorempixel.com/640/480/cats/?69381', NULL, NULL);
INSERT INTO `product_galleries` VALUES (215, 57, 'https://lorempixel.com/640/480/cats/?59653', NULL, NULL);
INSERT INTO `product_galleries` VALUES (216, 57, 'https://lorempixel.com/640/480/cats/?77492', NULL, NULL);
INSERT INTO `product_galleries` VALUES (217, 57, 'https://lorempixel.com/640/480/cats/?29601', NULL, NULL);
INSERT INTO `product_galleries` VALUES (218, 57, 'https://lorempixel.com/640/480/cats/?33522', NULL, NULL);
INSERT INTO `product_galleries` VALUES (219, 57, 'https://lorempixel.com/640/480/cats/?96833', NULL, NULL);
INSERT INTO `product_galleries` VALUES (220, 58, 'https://lorempixel.com/640/480/cats/?31175', NULL, NULL);
INSERT INTO `product_galleries` VALUES (221, 58, 'https://lorempixel.com/640/480/cats/?87020', NULL, NULL);
INSERT INTO `product_galleries` VALUES (222, 58, 'https://lorempixel.com/640/480/cats/?29338', NULL, NULL);
INSERT INTO `product_galleries` VALUES (223, 58, 'https://lorempixel.com/640/480/cats/?97502', NULL, NULL);
INSERT INTO `product_galleries` VALUES (224, 58, 'https://lorempixel.com/640/480/cats/?17065', NULL, NULL);
INSERT INTO `product_galleries` VALUES (225, 59, 'https://lorempixel.com/640/480/cats/?36711', NULL, NULL);
INSERT INTO `product_galleries` VALUES (226, 59, 'https://lorempixel.com/640/480/cats/?23487', NULL, NULL);
INSERT INTO `product_galleries` VALUES (227, 59, 'https://lorempixel.com/640/480/cats/?52090', NULL, NULL);
INSERT INTO `product_galleries` VALUES (228, 59, 'https://lorempixel.com/640/480/cats/?25114', NULL, NULL);
INSERT INTO `product_galleries` VALUES (229, 60, 'https://lorempixel.com/640/480/cats/?94806', NULL, NULL);
INSERT INTO `product_galleries` VALUES (230, 60, 'https://lorempixel.com/640/480/cats/?65979', NULL, NULL);
INSERT INTO `product_galleries` VALUES (231, 60, 'https://lorempixel.com/640/480/cats/?16462', NULL, NULL);
INSERT INTO `product_galleries` VALUES (232, 60, 'https://lorempixel.com/640/480/cats/?58719', NULL, NULL);
INSERT INTO `product_galleries` VALUES (233, 60, 'https://lorempixel.com/640/480/cats/?38888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (234, 61, 'https://lorempixel.com/640/480/cats/?43706', NULL, NULL);
INSERT INTO `product_galleries` VALUES (235, 61, 'https://lorempixel.com/640/480/cats/?49139', NULL, NULL);
INSERT INTO `product_galleries` VALUES (236, 61, 'https://lorempixel.com/640/480/cats/?72622', NULL, NULL);
INSERT INTO `product_galleries` VALUES (237, 62, 'https://lorempixel.com/640/480/cats/?91536', NULL, NULL);
INSERT INTO `product_galleries` VALUES (238, 62, 'https://lorempixel.com/640/480/cats/?27182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (239, 62, 'https://lorempixel.com/640/480/cats/?39972', NULL, NULL);
INSERT INTO `product_galleries` VALUES (240, 62, 'https://lorempixel.com/640/480/cats/?97179', NULL, NULL);
INSERT INTO `product_galleries` VALUES (241, 63, 'https://lorempixel.com/640/480/cats/?95300', NULL, NULL);
INSERT INTO `product_galleries` VALUES (242, 63, 'https://lorempixel.com/640/480/cats/?73870', NULL, NULL);
INSERT INTO `product_galleries` VALUES (243, 63, 'https://lorempixel.com/640/480/cats/?76734', NULL, NULL);
INSERT INTO `product_galleries` VALUES (244, 63, 'https://lorempixel.com/640/480/cats/?52520', NULL, NULL);
INSERT INTO `product_galleries` VALUES (245, 63, 'https://lorempixel.com/640/480/cats/?71973', NULL, NULL);
INSERT INTO `product_galleries` VALUES (246, 64, 'https://lorempixel.com/640/480/cats/?71530', NULL, NULL);
INSERT INTO `product_galleries` VALUES (247, 64, 'https://lorempixel.com/640/480/cats/?64561', NULL, NULL);
INSERT INTO `product_galleries` VALUES (248, 64, 'https://lorempixel.com/640/480/cats/?13452', NULL, NULL);
INSERT INTO `product_galleries` VALUES (249, 65, 'https://lorempixel.com/640/480/cats/?15601', NULL, NULL);
INSERT INTO `product_galleries` VALUES (250, 65, 'https://lorempixel.com/640/480/cats/?87968', NULL, NULL);
INSERT INTO `product_galleries` VALUES (251, 65, 'https://lorempixel.com/640/480/cats/?88828', NULL, NULL);
INSERT INTO `product_galleries` VALUES (252, 65, 'https://lorempixel.com/640/480/cats/?89200', NULL, NULL);
INSERT INTO `product_galleries` VALUES (253, 66, 'https://lorempixel.com/640/480/cats/?51062', NULL, NULL);
INSERT INTO `product_galleries` VALUES (254, 66, 'https://lorempixel.com/640/480/cats/?92177', NULL, NULL);
INSERT INTO `product_galleries` VALUES (255, 66, 'https://lorempixel.com/640/480/cats/?48145', NULL, NULL);
INSERT INTO `product_galleries` VALUES (256, 67, 'https://lorempixel.com/640/480/cats/?29025', NULL, NULL);
INSERT INTO `product_galleries` VALUES (257, 67, 'https://lorempixel.com/640/480/cats/?37588', NULL, NULL);
INSERT INTO `product_galleries` VALUES (258, 67, 'https://lorempixel.com/640/480/cats/?47573', NULL, NULL);
INSERT INTO `product_galleries` VALUES (259, 68, 'https://lorempixel.com/640/480/cats/?62921', NULL, NULL);
INSERT INTO `product_galleries` VALUES (260, 68, 'https://lorempixel.com/640/480/cats/?42596', NULL, NULL);
INSERT INTO `product_galleries` VALUES (261, 68, 'https://lorempixel.com/640/480/cats/?24186', NULL, NULL);
INSERT INTO `product_galleries` VALUES (262, 68, 'https://lorempixel.com/640/480/cats/?15940', NULL, NULL);
INSERT INTO `product_galleries` VALUES (263, 69, 'https://lorempixel.com/640/480/cats/?17788', NULL, NULL);
INSERT INTO `product_galleries` VALUES (264, 69, 'https://lorempixel.com/640/480/cats/?10763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (265, 69, 'https://lorempixel.com/640/480/cats/?83058', NULL, NULL);
INSERT INTO `product_galleries` VALUES (266, 69, 'https://lorempixel.com/640/480/cats/?95174', NULL, NULL);
INSERT INTO `product_galleries` VALUES (267, 69, 'https://lorempixel.com/640/480/cats/?86660', NULL, NULL);
INSERT INTO `product_galleries` VALUES (268, 70, 'https://lorempixel.com/640/480/cats/?91763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (269, 70, 'https://lorempixel.com/640/480/cats/?94007', NULL, NULL);
INSERT INTO `product_galleries` VALUES (270, 70, 'https://lorempixel.com/640/480/cats/?28914', NULL, NULL);
INSERT INTO `product_galleries` VALUES (271, 71, 'https://lorempixel.com/640/480/cats/?56913', NULL, NULL);
INSERT INTO `product_galleries` VALUES (272, 71, 'https://lorempixel.com/640/480/cats/?83906', NULL, NULL);
INSERT INTO `product_galleries` VALUES (273, 71, 'https://lorempixel.com/640/480/cats/?67868', NULL, NULL);
INSERT INTO `product_galleries` VALUES (274, 72, 'https://lorempixel.com/640/480/cats/?22942', NULL, NULL);
INSERT INTO `product_galleries` VALUES (275, 72, 'https://lorempixel.com/640/480/cats/?72215', NULL, NULL);
INSERT INTO `product_galleries` VALUES (276, 72, 'https://lorempixel.com/640/480/cats/?17840', NULL, NULL);
INSERT INTO `product_galleries` VALUES (277, 73, 'https://lorempixel.com/640/480/cats/?49262', NULL, NULL);
INSERT INTO `product_galleries` VALUES (278, 73, 'https://lorempixel.com/640/480/cats/?83690', NULL, NULL);
INSERT INTO `product_galleries` VALUES (279, 73, 'https://lorempixel.com/640/480/cats/?80454', NULL, NULL);
INSERT INTO `product_galleries` VALUES (280, 73, 'https://lorempixel.com/640/480/cats/?93506', NULL, NULL);
INSERT INTO `product_galleries` VALUES (281, 74, 'https://lorempixel.com/640/480/cats/?60060', NULL, NULL);
INSERT INTO `product_galleries` VALUES (282, 74, 'https://lorempixel.com/640/480/cats/?76305', NULL, NULL);
INSERT INTO `product_galleries` VALUES (283, 74, 'https://lorempixel.com/640/480/cats/?26573', NULL, NULL);
INSERT INTO `product_galleries` VALUES (284, 74, 'https://lorempixel.com/640/480/cats/?41199', NULL, NULL);
INSERT INTO `product_galleries` VALUES (285, 74, 'https://lorempixel.com/640/480/cats/?92334', NULL, NULL);
INSERT INTO `product_galleries` VALUES (286, 75, 'https://lorempixel.com/640/480/cats/?50670', NULL, NULL);
INSERT INTO `product_galleries` VALUES (287, 75, 'https://lorempixel.com/640/480/cats/?64812', NULL, NULL);
INSERT INTO `product_galleries` VALUES (288, 75, 'https://lorempixel.com/640/480/cats/?78308', NULL, NULL);
INSERT INTO `product_galleries` VALUES (289, 76, 'https://lorempixel.com/640/480/cats/?62819', NULL, NULL);
INSERT INTO `product_galleries` VALUES (290, 76, 'https://lorempixel.com/640/480/cats/?83129', NULL, NULL);
INSERT INTO `product_galleries` VALUES (291, 76, 'https://lorempixel.com/640/480/cats/?32736', NULL, NULL);
INSERT INTO `product_galleries` VALUES (292, 76, 'https://lorempixel.com/640/480/cats/?55558', NULL, NULL);
INSERT INTO `product_galleries` VALUES (293, 77, 'https://lorempixel.com/640/480/cats/?70344', NULL, NULL);
INSERT INTO `product_galleries` VALUES (294, 77, 'https://lorempixel.com/640/480/cats/?89445', NULL, NULL);
INSERT INTO `product_galleries` VALUES (295, 77, 'https://lorempixel.com/640/480/cats/?77880', NULL, NULL);
INSERT INTO `product_galleries` VALUES (296, 77, 'https://lorempixel.com/640/480/cats/?28495', NULL, NULL);
INSERT INTO `product_galleries` VALUES (297, 78, 'https://lorempixel.com/640/480/cats/?49993', NULL, NULL);
INSERT INTO `product_galleries` VALUES (298, 78, 'https://lorempixel.com/640/480/cats/?88527', NULL, NULL);
INSERT INTO `product_galleries` VALUES (299, 78, 'https://lorempixel.com/640/480/cats/?26314', NULL, NULL);
INSERT INTO `product_galleries` VALUES (300, 79, 'https://lorempixel.com/640/480/cats/?32978', NULL, NULL);
INSERT INTO `product_galleries` VALUES (301, 79, 'https://lorempixel.com/640/480/cats/?28861', NULL, NULL);
INSERT INTO `product_galleries` VALUES (302, 79, 'https://lorempixel.com/640/480/cats/?22483', NULL, NULL);
INSERT INTO `product_galleries` VALUES (303, 79, 'https://lorempixel.com/640/480/cats/?22837', NULL, NULL);
INSERT INTO `product_galleries` VALUES (304, 80, 'https://lorempixel.com/640/480/cats/?36945', NULL, NULL);
INSERT INTO `product_galleries` VALUES (305, 80, 'https://lorempixel.com/640/480/cats/?78182', NULL, NULL);
INSERT INTO `product_galleries` VALUES (306, 80, 'https://lorempixel.com/640/480/cats/?35643', NULL, NULL);
INSERT INTO `product_galleries` VALUES (307, 80, 'https://lorempixel.com/640/480/cats/?56801', NULL, NULL);
INSERT INTO `product_galleries` VALUES (308, 81, 'https://lorempixel.com/640/480/cats/?35066', NULL, NULL);
INSERT INTO `product_galleries` VALUES (309, 81, 'https://lorempixel.com/640/480/cats/?56994', NULL, NULL);
INSERT INTO `product_galleries` VALUES (310, 81, 'https://lorempixel.com/640/480/cats/?72359', NULL, NULL);
INSERT INTO `product_galleries` VALUES (311, 81, 'https://lorempixel.com/640/480/cats/?75484', NULL, NULL);
INSERT INTO `product_galleries` VALUES (312, 81, 'https://lorempixel.com/640/480/cats/?36072', NULL, NULL);
INSERT INTO `product_galleries` VALUES (313, 82, 'https://lorempixel.com/640/480/cats/?69415', NULL, NULL);
INSERT INTO `product_galleries` VALUES (314, 82, 'https://lorempixel.com/640/480/cats/?32684', NULL, NULL);
INSERT INTO `product_galleries` VALUES (315, 82, 'https://lorempixel.com/640/480/cats/?83509', NULL, NULL);
INSERT INTO `product_galleries` VALUES (316, 82, 'https://lorempixel.com/640/480/cats/?68163', NULL, NULL);
INSERT INTO `product_galleries` VALUES (317, 83, 'https://lorempixel.com/640/480/cats/?34439', NULL, NULL);
INSERT INTO `product_galleries` VALUES (318, 83, 'https://lorempixel.com/640/480/cats/?12321', NULL, NULL);
INSERT INTO `product_galleries` VALUES (319, 83, 'https://lorempixel.com/640/480/cats/?99543', NULL, NULL);
INSERT INTO `product_galleries` VALUES (320, 84, 'https://lorempixel.com/640/480/cats/?83179', NULL, NULL);
INSERT INTO `product_galleries` VALUES (321, 84, 'https://lorempixel.com/640/480/cats/?37380', NULL, NULL);
INSERT INTO `product_galleries` VALUES (322, 84, 'https://lorempixel.com/640/480/cats/?84763', NULL, NULL);
INSERT INTO `product_galleries` VALUES (323, 85, 'https://lorempixel.com/640/480/cats/?61238', NULL, NULL);
INSERT INTO `product_galleries` VALUES (324, 85, 'https://lorempixel.com/640/480/cats/?63909', NULL, NULL);
INSERT INTO `product_galleries` VALUES (325, 85, 'https://lorempixel.com/640/480/cats/?77036', NULL, NULL);
INSERT INTO `product_galleries` VALUES (326, 85, 'https://lorempixel.com/640/480/cats/?33796', NULL, NULL);
INSERT INTO `product_galleries` VALUES (327, 85, 'https://lorempixel.com/640/480/cats/?58483', NULL, NULL);
INSERT INTO `product_galleries` VALUES (328, 86, 'https://lorempixel.com/640/480/cats/?10900', NULL, NULL);
INSERT INTO `product_galleries` VALUES (329, 86, 'https://lorempixel.com/640/480/cats/?98306', NULL, NULL);
INSERT INTO `product_galleries` VALUES (330, 86, 'https://lorempixel.com/640/480/cats/?52197', NULL, NULL);
INSERT INTO `product_galleries` VALUES (331, 86, 'https://lorempixel.com/640/480/cats/?95751', NULL, NULL);
INSERT INTO `product_galleries` VALUES (332, 87, 'https://lorempixel.com/640/480/cats/?41875', NULL, NULL);
INSERT INTO `product_galleries` VALUES (333, 87, 'https://lorempixel.com/640/480/cats/?41472', NULL, NULL);
INSERT INTO `product_galleries` VALUES (334, 87, 'https://lorempixel.com/640/480/cats/?84127', NULL, NULL);
INSERT INTO `product_galleries` VALUES (335, 87, 'https://lorempixel.com/640/480/cats/?34285', NULL, NULL);
INSERT INTO `product_galleries` VALUES (336, 88, 'https://lorempixel.com/640/480/cats/?39336', NULL, NULL);
INSERT INTO `product_galleries` VALUES (337, 88, 'https://lorempixel.com/640/480/cats/?64044', NULL, NULL);
INSERT INTO `product_galleries` VALUES (338, 88, 'https://lorempixel.com/640/480/cats/?22783', NULL, NULL);
INSERT INTO `product_galleries` VALUES (339, 89, 'https://lorempixel.com/640/480/cats/?29636', NULL, NULL);
INSERT INTO `product_galleries` VALUES (340, 89, 'https://lorempixel.com/640/480/cats/?43731', NULL, NULL);
INSERT INTO `product_galleries` VALUES (341, 89, 'https://lorempixel.com/640/480/cats/?19978', NULL, NULL);
INSERT INTO `product_galleries` VALUES (342, 89, 'https://lorempixel.com/640/480/cats/?88288', NULL, NULL);
INSERT INTO `product_galleries` VALUES (343, 89, 'https://lorempixel.com/640/480/cats/?83141', NULL, NULL);
INSERT INTO `product_galleries` VALUES (344, 90, 'https://lorempixel.com/640/480/cats/?73346', NULL, NULL);
INSERT INTO `product_galleries` VALUES (345, 90, 'https://lorempixel.com/640/480/cats/?96721', NULL, NULL);
INSERT INTO `product_galleries` VALUES (346, 90, 'https://lorempixel.com/640/480/cats/?76491', NULL, NULL);
INSERT INTO `product_galleries` VALUES (347, 90, 'https://lorempixel.com/640/480/cats/?41459', NULL, NULL);
INSERT INTO `product_galleries` VALUES (348, 90, 'https://lorempixel.com/640/480/cats/?21570', NULL, NULL);
INSERT INTO `product_galleries` VALUES (349, 91, 'https://lorempixel.com/640/480/cats/?28548', NULL, NULL);
INSERT INTO `product_galleries` VALUES (350, 91, 'https://lorempixel.com/640/480/cats/?67578', NULL, NULL);
INSERT INTO `product_galleries` VALUES (351, 91, 'https://lorempixel.com/640/480/cats/?28660', NULL, NULL);
INSERT INTO `product_galleries` VALUES (352, 91, 'https://lorempixel.com/640/480/cats/?63472', NULL, NULL);
INSERT INTO `product_galleries` VALUES (353, 92, 'https://lorempixel.com/640/480/cats/?30587', NULL, NULL);
INSERT INTO `product_galleries` VALUES (354, 92, 'https://lorempixel.com/640/480/cats/?79295', NULL, NULL);
INSERT INTO `product_galleries` VALUES (355, 92, 'https://lorempixel.com/640/480/cats/?75003', NULL, NULL);
INSERT INTO `product_galleries` VALUES (356, 92, 'https://lorempixel.com/640/480/cats/?84365', NULL, NULL);
INSERT INTO `product_galleries` VALUES (357, 93, 'https://lorempixel.com/640/480/cats/?69509', NULL, NULL);
INSERT INTO `product_galleries` VALUES (358, 93, 'https://lorempixel.com/640/480/cats/?83933', NULL, NULL);
INSERT INTO `product_galleries` VALUES (359, 93, 'https://lorempixel.com/640/480/cats/?19892', NULL, NULL);
INSERT INTO `product_galleries` VALUES (360, 93, 'https://lorempixel.com/640/480/cats/?41532', NULL, NULL);
INSERT INTO `product_galleries` VALUES (361, 94, 'https://lorempixel.com/640/480/cats/?67116', NULL, NULL);
INSERT INTO `product_galleries` VALUES (362, 94, 'https://lorempixel.com/640/480/cats/?36441', NULL, NULL);
INSERT INTO `product_galleries` VALUES (363, 94, 'https://lorempixel.com/640/480/cats/?16388', NULL, NULL);
INSERT INTO `product_galleries` VALUES (364, 94, 'https://lorempixel.com/640/480/cats/?30963', NULL, NULL);
INSERT INTO `product_galleries` VALUES (365, 95, 'https://lorempixel.com/640/480/cats/?85888', NULL, NULL);
INSERT INTO `product_galleries` VALUES (366, 95, 'https://lorempixel.com/640/480/cats/?22352', NULL, NULL);
INSERT INTO `product_galleries` VALUES (367, 95, 'https://lorempixel.com/640/480/cats/?42291', NULL, NULL);
INSERT INTO `product_galleries` VALUES (368, 95, 'https://lorempixel.com/640/480/cats/?91372', NULL, NULL);
INSERT INTO `product_galleries` VALUES (369, 96, 'https://lorempixel.com/640/480/cats/?59349', NULL, NULL);
INSERT INTO `product_galleries` VALUES (370, 96, 'https://lorempixel.com/640/480/cats/?83747', NULL, NULL);
INSERT INTO `product_galleries` VALUES (371, 96, 'https://lorempixel.com/640/480/cats/?32735', NULL, NULL);
INSERT INTO `product_galleries` VALUES (372, 97, 'https://lorempixel.com/640/480/cats/?87529', NULL, NULL);
INSERT INTO `product_galleries` VALUES (373, 97, 'https://lorempixel.com/640/480/cats/?42776', NULL, NULL);
INSERT INTO `product_galleries` VALUES (374, 97, 'https://lorempixel.com/640/480/cats/?24658', NULL, NULL);
INSERT INTO `product_galleries` VALUES (375, 97, 'https://lorempixel.com/640/480/cats/?36707', NULL, NULL);
INSERT INTO `product_galleries` VALUES (376, 97, 'https://lorempixel.com/640/480/cats/?74194', NULL, NULL);
INSERT INTO `product_galleries` VALUES (377, 98, 'https://lorempixel.com/640/480/cats/?77399', NULL, NULL);
INSERT INTO `product_galleries` VALUES (378, 98, 'https://lorempixel.com/640/480/cats/?61915', NULL, NULL);
INSERT INTO `product_galleries` VALUES (379, 98, 'https://lorempixel.com/640/480/cats/?50838', NULL, NULL);
INSERT INTO `product_galleries` VALUES (380, 98, 'https://lorempixel.com/640/480/cats/?23918', NULL, NULL);
INSERT INTO `product_galleries` VALUES (381, 98, 'https://lorempixel.com/640/480/cats/?25714', NULL, NULL);
INSERT INTO `product_galleries` VALUES (382, 99, 'https://lorempixel.com/640/480/cats/?92140', NULL, NULL);
INSERT INTO `product_galleries` VALUES (383, 99, 'https://lorempixel.com/640/480/cats/?82045', NULL, NULL);
INSERT INTO `product_galleries` VALUES (384, 99, 'https://lorempixel.com/640/480/cats/?35338', NULL, NULL);
INSERT INTO `product_galleries` VALUES (385, 99, 'https://lorempixel.com/640/480/cats/?10732', NULL, NULL);
INSERT INTO `product_galleries` VALUES (386, 99, 'https://lorempixel.com/640/480/cats/?28363', NULL, NULL);
INSERT INTO `product_galleries` VALUES (387, 100, 'https://lorempixel.com/640/480/cats/?70770', NULL, NULL);
INSERT INTO `product_galleries` VALUES (388, 100, 'https://lorempixel.com/640/480/cats/?38965', NULL, NULL);
INSERT INTO `product_galleries` VALUES (389, 100, 'https://lorempixel.com/640/480/cats/?15945', NULL, NULL);
INSERT INTO `product_galleries` VALUES (392, 104, 'images/galleries/pro_104/5c3ab409d5c66.png', '2019-01-13 03:44:09', '2019-01-13 03:44:09');
INSERT INTO `product_galleries` VALUES (395, 104, 'images/galleries/pro_104/5c3adfaf21275.png', '2019-01-13 06:50:23', '2019-01-13 06:50:23');
INSERT INTO `product_galleries` VALUES (397, 104, 'images/galleries/pro_104/5c3ae29f408fa.png', '2019-01-13 07:02:55', '2019-01-13 07:02:55');
INSERT INTO `product_galleries` VALUES (398, 114, 'images/galleries/pro_114/5c4bcd5214459.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (399, 114, 'images/galleries/pro_114/5c4bcd5215c1a.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (400, 114, 'images/galleries/pro_114/5c4bcd521a3f9.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
INSERT INTO `product_galleries` VALUES (401, 114, 'images/galleries/pro_114/5c4bcd521b1ee.jpeg', '2019-01-26 03:00:34', '2019-01-26 03:00:34');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int(10) unsigned NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `star` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_cate_id_foreign` (`cate_id`),
  CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (310, 'Mohr-Schroeder', 'https://lorempixel.com/640/480/?47299', 1, 2146, 'Alice, in a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not notice this question, but hurriedly went on, \'\"--found it advisable to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his Normans--\" How are you getting on?\' said the Cat, \'a dog\'s not mad. You grant that?\'.', 'ARE a simpleton.\' Alice did not quite know what to beautify is, I suppose?\' \'Yes,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on, \'if you don\'t know what a Mock Turtle is.\' \'It\'s the thing Mock Turtle Soup is made from,\' said the Queen. \'I haven\'t opened it yet,\' said the White Rabbit, trotting slowly back again, and we won\'t talk about her.', 4.00, NULL, NULL, 296);
INSERT INTO `products` VALUES (311, 'Lindgren, Walker and O\'Keefe', 'https://lorempixel.com/640/480/?60016', 3, 1699, 'However, she did not at all know whether it would like the name: however, it only grinned a little wider. \'Come, it\'s pleased so far,\' thought Alice, and she went round the court and got behind him, and very soon had to kneel down on the floor: in another minute there was not even room for this, and she tried her best to climb up one of the cakes, and was delighted to find that she knew the name.', 'Alice could bear: she got up in great disgust, and walked off; the Dormouse fell asleep instantly, and neither of the others took the least notice of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice looked at each other for some time without hearing anything more: at last came a rumbling of little cartwheels, and the sound of a good many little girls in my.', 1.00, NULL, NULL, 1375);
INSERT INTO `products` VALUES (312, 'Smitham, Runolfsson and Ernser', 'https://lorempixel.com/640/480/?85059', 4, 236, 'So she began nibbling at the righthand bit again, and did not venture to go near the house till she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two to think about stopping herself before she found herself falling down a very deep well. Either the well was very deep, or she fell very slowly, for she had plenty of time as she went down to look about her.', 'I should have croqueted the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you know the way out of this pool? I am very tired of sitting by her sister on the bank, with her head in the lap of her sister, who was gently brushing away some dead leaves that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' said Alice. \'I\'m a--I\'m.', 5.00, NULL, NULL, 321);
INSERT INTO `products` VALUES (313, 'Dach-Carter', 'https://lorempixel.com/640/480/?47277', 5, 2346, 'I shall fall right THROUGH the earth! How funny it\'ll seem to come out among the people that walk with their heads downward! The Antipathies, I think--\' (she was rather glad there WAS no one listening, this time, as it didn\'t sound at all the right word) \'--but I shall have to ask them what the name of nearly everything there. \'That\'s the judge,\' she said to herself, \'to be going messages for a.', 'Pray how did you manage on the twelfth?\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon interrupted in a very hopeful tone though), \'I won\'t have any pepper in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on.', 2.00, NULL, NULL, 373);
INSERT INTO `products` VALUES (314, 'Kling, Watsica and Sauer', 'https://lorempixel.com/640/480/?10928', 3, 1158, 'The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I must, I must,\' the King said, turning to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you executed, whether you\'re nervous or not.\'.', 'King very decidedly, and he called the Queen, who was passing at the moment, \'My dear! I wish you were down here with me! There are no mice in the air, I\'m afraid, but you might catch a bat, and that\'s very like a mouse, you know. But do cats eat bats, I wonder?\' And here Alice began to feel very uneasy: to be sure, she had not long to doubt, for the next moment she felt a little nervous about.', 5.00, NULL, NULL, 1059);
INSERT INTO `products` VALUES (315, 'Langosh, Turcotte and Armstrong', 'https://lorempixel.com/640/480/?81015', 4, 2953, 'Alice thought this a very curious sensation, which puzzled her a good deal frightened at the sudden change, but very glad to find herself still in existence; \'and now for the garden!\' and she ran with all speed back to the Cheshire Cat, she was surprised to find that her neck would bend about easily in any direction, like a serpent. She had just succeeded in curving it down into a graceful.', 'SHE, of course,\' said the Dodo, pointing to Alice with one finger; and the whole party swam to the shore. CHAPTER III. A Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their fur clinging close to them, and was delighted to find that she knew the name of the country is, you know. Please, Ma\'am, is.', 1.00, NULL, NULL, 525);
INSERT INTO `products` VALUES (316, 'Gibson, Dibbert and Mertz', 'https://lorempixel.com/640/480/?23628', 6, 1753, 'King. The White Rabbit put on his spectacles and looked anxiously round, to make out which were the two sides of it; and as it can\'t possibly make me larger, it must make me smaller, I suppose.\' So she swallowed one of the jurymen. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just then she noticed that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like.', 'She was a little nervous about it just at first, the two creatures got so close to her: first, because the Duchess was VERY ugly; and secondly, because she was exactly the right height to rest her chin upon Alice\'s shoulder, and it was an uncomfortably sharp chin. However, she did not like to be a letter, written by the prisoner to--to somebody.\' \'It must have been changed for Mabel! I\'ll try.', 3.00, NULL, NULL, 130);
INSERT INTO `products` VALUES (317, 'Mueller, Ryan and O\'Connell', 'https://lorempixel.com/640/480/?79287', 2, 839, 'MUST be more to come, so she sat still and said nothing. \'When we were little,\' the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on muttering over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be what he did with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM.', 'I shall have somebody to talk to.\' \'How are you getting on?\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said Alice. \'Well, I can\'t show it you myself,\' the Mock Turtle said with a sigh: \'he taught Laughing and Grief, they used to say.\' \'So he did, so he did,\' said the Mouse. \'Of course,\' the Mock Turtle said: \'I\'m too stiff. And the Gryphon never learnt it.\' \'Hadn\'t time,\'.', 3.00, NULL, NULL, 488);
INSERT INTO `products` VALUES (318, 'Farrell Group', 'https://lorempixel.com/640/480/?88885', 4, 798, 'King; and as he wore his crown over the wig, (look at the frontispiece if you want to see how he can EVEN finish, if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Mock Turtle, and to hear his history. I must go back and see after some executions I have ordered\'; and she walked off, leaving Alice alone with the Gryphon. Alice did not like to drop the jar for fear of killing.', 'I can\'t tell you just now what the moral of that is--\"The more there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it is.\' \'I quite agree with you,\' said the King, with an air of great relief. \'Call the next witness!\' said the King. \'Shan\'t,\' said the cook. The King looked anxiously at the White Rabbit.', 1.00, NULL, NULL, 1208);
INSERT INTO `products` VALUES (319, 'Bogan Ltd', 'https://lorempixel.com/640/480/?71197', 4, 2869, 'Mock Turtle angrily: \'really you are very dull!\' \'You ought to be Number One,\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the reason and all that,\' he said to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked down at her feet, they seemed to be in a VERY unpleasant.', 'An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the rest, Between yourself and me.\' \'That\'s the most important piece of evidence we\'ve heard yet,\' said the White Rabbit; \'in fact, there\'s nothing written on the OUTSIDE.\' He unfolded the paper as he spoke, and added \'It isn\'t a letter, after all: it\'s.', 4.00, NULL, NULL, 479);
INSERT INTO `products` VALUES (320, 'Ondricka-Sawayn', 'https://lorempixel.com/640/480/?81625', 4, 1538, 'Duchess, \'as pigs have to fly; and the m--\' But here, to Alice\'s great surprise, the Duchess\'s voice died away, even in the middle of her favourite word \'moral,\' and the arm that was linked into hers began to tremble. Alice looked up, and there stood the Queen in front of them, with her arms folded, frowning like a thunderstorm. \'A fine day, your Majesty!\' the Duchess began in a loud, indignant.', 'Bill,\' she gave one sharp kick, and waited to see what the next witness would be like, but it puzzled her very much of a globe of goldfish she had accidentally upset the week before. \'Oh, I BEG your pardon!\' she exclaimed in a tone of great surprise. \'Of course not,\' said the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said nothing; she had sat down with her face in her hands.', 3.00, NULL, NULL, 1440);
INSERT INTO `products` VALUES (321, 'Trantow, Senger and Johnston', 'https://lorempixel.com/640/480/?72286', 2, 2870, 'It\'s by far the most confusing thing I ever heard!\' \'Yes, I think you\'d take a fancy to cats if you could only see her. She is such a nice soft thing to nurse--and she\'s such a capital one for catching mice--oh, I beg your pardon!\' cried Alice again, for this time the Queen had ordered. They very soon came upon a neat little house, on the door of the house of the March Hare: she thought it must.', 'It means much the same thing,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the Dormouse say?\' one of the trees under which she had wept when she was a little nervous about it just at first, the two creatures got so close to her, one on each side, and opened their eyes and mouths so VERY wide, but she gained courage as she went on, \'What HAVE you been doing here?\'.', 5.00, NULL, NULL, 2327);
INSERT INTO `products` VALUES (322, 'Baumbach PLC', 'https://lorempixel.com/640/480/?66234', 3, 1620, 'Alice didn\'t think that proved it at all; however, she went on growing, and growing, and very soon had to kneel down on the floor: in another minute there was not even room for this, and she tried hard to whistle to it; but she was terribly frightened all the time he was speaking, and this Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to herself in a game of play with.', 'In another minute the whole head appeared, and then Alice put down her flamingo, and began an account of the game, feeling very glad she had someone to listen to her, still it was very like having a game of play with a cart-horse, and expecting every moment to be lost: away went Alice like the wind, and the pool rippling to the waving of the reeds--the rattling teacups would change to dull.', 5.00, NULL, NULL, 720);
INSERT INTO `products` VALUES (323, 'Daniel LLC', 'https://lorempixel.com/640/480/?42941', 3, 2814, 'That your eye was as steady as ever; Yet you balanced an eel on the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I can remember feeling a little different. But if I\'m not the same, the next question is, Who in the world am I? Ah, THAT\'S the great puzzle!\' And she began fancying.', 'I\'ll manage better this time,\' she said to herself as she ran. \'How surprised he\'ll be when he finds out who I am! But I\'d better take him his fan and gloves--that is, if I can find them.\' As she said this, she looked up, but it was too late to wish that! She went on growing, and, as a last resource, she put one arm out of the wood to listen. The Fish-Footman began by producing from under his.', 2.00, NULL, NULL, 1883);
INSERT INTO `products` VALUES (324, 'long dep trai', NULL, 5, 5000, NULL, NULL, 3.00, '2019-10-16 08:00:46', '2019-10-16 08:00:46', 438);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'thienth', '', 'admin@gmail.com', NULL, 200, '$2y$10$OOISsl61lYqO1NvzQDQonO8k0kY/cAYavmbWp0MN4YudawHzT9wou', 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL);
INSERT INTO `users` VALUES (2, 'chungcc', '', 'moderator@gmail.com', NULL, 700, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', 'pASVtJ9LtlAX6f6uFgRL9AEgI3p7KkiqVv6eWJekpRKMlULsUkAgG93E1zuQ', NULL, NULL);
INSERT INTO `users` VALUES (3, 'member', '', 'member@gmail.com', NULL, 1, '$2y$10$uy21.IAUibmlW1l68bVqxOoNiIrqECbTkdXufUqihT8LMNoe3GIqa', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'thienth', 'public/images/5d8dc5aebcd06-8ad2f5971cd04cbe2bd5d3849aa7c005.jpeg', 'thienth32@gmail.com', NULL, 0, '$2y$10$QivAI.SR1VuNX0cGuvApoe2GPwKizSP1QNu2cX33AFsDHIGSd.R0G', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'Long le ve', 'public/images/5d8dc5cc34742-9e1eb9cc83a76c1e0f0cde98957aa56a.jpeg', 'Longdeptrai@gmail.com', NULL, 0, '$2y$10$NJIlRPCMXm6wq5u5Q/7Yq.PW30xLghUJu7wXaQleddiqiWlpbgnSm', NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, '12312sdfsdf', 'public/images/5d8dc86d9b38e-79bee3bdfa512da82062c3f4de40c0a4.jpeg', 'werewr@sfsdf.sd', NULL, 0, '$2y$10$Pj.hYMounKr0XfbVfhRQAuC74XbNUqVhR5OBz0fJpPObyivdg2LX6', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
