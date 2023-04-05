-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'eMbdb7Xgyn5RD2FoUcJqEuN1x0dvzZtp',1,'2023-03-18 00:27:06','2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2028-03-18 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'Top Slider Image 2','2028-03-18 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'Homepage middle 1','2028-03-18 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,'Homepage middle 2','2028-03-18 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(5,'Homepage middle 3','2028-03-18 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(6,'Homepage big 1','2028-03-18 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(7,'Homepage bottom small','2028-03-18 00:00:00','not_set','WUGT4JSMZIBG','promotion/7.jpg','/products',0,7,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(8,'Product sidebar','2028-03-18 00:00:00','product-sidebar','BAMQIFJKRA0F','promotion/8.jpg','/products',0,8,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(9,'Homepage big 2','2028-03-18 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Officiis aperiam quae accusantium corrupti. Vitae quos dolores neque illum beatae molestiae. Sed illum doloribus dolorem commodi error sint soluta.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,'Fashion',0,'Aut ut sed voluptas mollitia eaque sint quidem. Quos nulla accusantium quod itaque quo consequuntur numquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(3,'Electronic',0,'Similique repellat dolores non veritatis. Eligendi qui ipsa ut fugit ex sunt ad. Incidunt sunt sunt eum magni ab totam voluptatum quisquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(4,'Commercial',0,'Ullam voluptas necessitatibus quidem consequatur rem corrupti. Eaque qui aliquam quidem qui omnis quaerat. Necessitatibus optio non culpa fugiat quos est. Repellat at atque ullam iure animi maiores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Grace Senger','nella67@example.org','+1.770.839.4074','1036 Adams Station Suite 587\nEast Ryleyview, MA 20091','A magni qui et quod.','Accusantium omnis reiciendis vero voluptatum dolore corrupti unde. Vel et iusto et aut inventore qui. Itaque quaerat aut et rem molestias. Omnis hic exercitationem expedita tempore. Voluptatibus voluptate fuga aut non a facilis temporibus. Unde omnis ratione a ad id et. Ut at dolorum quia et. Cum corrupti tempora culpa quo omnis molestiae. Quasi impedit est vel esse dicta asperiores. In voluptate eius ullam magnam velit. Consequatur repudiandae quam nihil rerum magni amet.','unread','2023-03-18 00:27:06','2023-03-18 00:27:06'),(2,'Mr. Pedro Ebert','avery.von@example.com','989-349-8488','7514 Alex Rapids\nWest Orrin, SD 87041-5535','Autem sit reiciendis voluptatem similique illo.','Veniam similique debitis pariatur et. Rerum omnis aperiam consequatur qui dicta quaerat minus. Accusamus fugit ipsum nulla dolore consequatur non. Quia reiciendis ratione aliquid modi eaque cupiditate voluptatem eos. Veritatis est vero nesciunt omnis occaecati. Iusto tempore autem et eaque voluptate. Nostrum placeat delectus consequatur eaque.','unread','2023-03-18 00:27:06','2023-03-18 00:27:06'),(3,'Alexandria Anderson','coty.konopelski@example.net','+1 (680) 747-2161','581 Dicki Forges\nNew Friedaborough, NJ 09766','Est vitae autem ipsum ipsa dolorem voluptate.','Nobis est natus iusto nostrum officiis consectetur. Quia et ratione autem doloremque. Officiis delectus sit earum dolor beatae. Voluptatibus praesentium excepturi exercitationem optio eligendi. Quia amet excepturi laborum corporis. Recusandae ut qui ut eius. Veritatis ad aut et maiores. Consequatur consequatur asperiores fugiat sint officiis reiciendis. Minus fuga ut esse delectus nostrum. Perspiciatis ea quibusdam omnis hic ut vero ipsa. Quo esse impedit molestiae consequuntur.','unread','2023-03-18 00:27:06','2023-03-18 00:27:06'),(4,'Prof. Jacques Hudson','mcclure.caterina@example.net','(847) 877-0694','50913 Carter Tunnel\nSouth Stephanieburgh, VA 06272','Aut minima veritatis voluptatem magni doloremque.','Ad et consequuntur perspiciatis praesentium repellendus cum veritatis. Blanditiis sequi dolorem tenetur rerum. Excepturi eum alias aut placeat ea. Dolorem vitae pariatur libero adipisci animi cumque. Commodi possimus eos ea quia praesentium maiores qui. Magni impedit dolores minima at et possimus harum. Sint qui eaque et aut officiis sequi.','read','2023-03-18 00:27:06','2023-03-18 00:27:06'),(5,'Robbie Luettgen','rae.friesen@example.org','657.960.2671','116 Kulas Harbors Suite 506\nMagdalenshire, TX 63287-0021','Eum atque voluptatibus officia ducimus eligendi.','Perspiciatis et blanditiis libero ut. Temporibus ducimus sequi doloribus accusantium laudantium incidunt libero enim. Sit dolorem id ab voluptatem ut. Nostrum et consectetur sapiente laboriosam. Nesciunt et quia possimus dolorem dolore. Quia repellat vitae nisi asperiores ipsum non sit. Quidem repellendus excepturi itaque minima qui aliquam illo aliquam. Ratione ipsum veritatis neque repellendus voluptatem dignissimos non. Veritatis eveniet ut qui sit alias.','unread','2023-03-18 00:27:06','2023-03-18 00:27:06'),(6,'Alexzander Bayer','wiza.glenda@example.net','941-471-1209','4992 Antonina Island Suite 094\nGonzaloport, OK 20126','Porro odit qui et possimus ut nam.','Facere facere explicabo illo. Suscipit enim veniam quo ullam rerum dignissimos. Dolorem dicta nihil doloribus voluptate. Consequuntur vero corrupti molestiae commodi aut. Consequatur non consequuntur inventore soluta sint explicabo modi. Aperiam a occaecati nihil tempore. Perferendis hic corrupti nulla laborum illo consequatur eum. Architecto id accusamus exercitationem eos dolores nemo. Suscipit omnis similique voluptas.','read','2023-03-18 00:27:06','2023-03-18 00:27:06'),(7,'Clint Klein','vivianne38@example.com','+1-629-876-6062','142 Eryn Fork\nRobertstown, CT 49633','Sit aliquam unde tempore consequatur.','Debitis iste ipsa voluptas sed molestiae. Ducimus temporibus magnam repudiandae. Eum consectetur enim ducimus et aut est. Natus ipsum veniam sit aperiam qui et. Aut at omnis et aut. Quidem et corporis totam eum. Soluta aut architecto mollitia officia repellendus ab tenetur. Nobis optio mollitia cum repellendus. Officia aut sit deleniti nesciunt voluptatem. Sed dicta aut illum voluptatum.','unread','2023-03-18 00:27:06','2023-03-18 00:27:06'),(8,'Prof. Jayce Lockman PhD','xheaney@example.net','(734) 721-8603','8873 Melba Union\nEast Bobbyshire, NY 26563-6127','Qui aut tenetur maxime et omnis.','Magni et magni eveniet ipsa. Iusto qui itaque rerum ullam unde aut. Et similique non voluptatem rerum consequatur et culpa dolor. Sequi sit ut ipsum omnis. At sapiente labore dolor quod odio cum non. Eligendi ab tempora delectus ex cupiditate molestiae odio. Qui harum eveniet doloremque rerum. Culpa alias in harum illo quisquam inventore doloribus ut. Voluptatum possimus ab voluptatum ut. Qui sit dolorem asperiores officiis. Eos assumenda quis sit natus ex in. Sed quia voluptas accusamus.','read','2023-03-18 00:27:06','2023-03-18 00:27:06'),(9,'Mr. Jakob Vandervort','ltoy@example.org','1-463-992-1532','9905 Elsie Fields Apt. 748\nMelodymouth, KS 65261','Voluptate sequi vel tenetur.','Ad eum nihil neque vel accusamus perspiciatis et et. Quasi ipsam omnis in nostrum nesciunt quidem et aut. Eligendi eligendi voluptatem quo velit itaque. Quas voluptatem tenetur cumque laboriosam et. Aperiam culpa amet in molestiae quidem nam. Quisquam omnis et assumenda est nihil. Necessitatibus harum officiis hic nihil. Vel voluptas consequatur et qui et aut. Quia nemo qui est pariatur. Vel laboriosam adipisci maxime dolor necessitatibus voluptate non quae. Aut incidunt libero temporibus.','read','2023-03-18 00:27:06','2023-03-18 00:27:06'),(10,'Brielle Walter','dayton24@example.net','1-949-867-8607','3355 Zboncak Green\nShyannside, MS 01366-7877','Est corporis ea excepturi reprehenderit.','Repudiandae eveniet reprehenderit reprehenderit repellendus. Quo incidunt magni nihil exercitationem similique aut. Quia dolorum nihil perferendis debitis. Enim quam assumenda sint eos. Qui accusantium saepe voluptatem aliquid dolor illo ut. Dicta molestiae eaque nobis ea unde omnis delectus. Optio ea distinctio nemo labore. Unde maiores maiores vitae nihil enim.','read','2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2023-03-18 00:26:59','2023-03-18 00:26:59');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(2,'EUR','€',0,2,1,0,0.84,'2023-03-18 00:26:59','2023-03-18 00:26:59'),(3,'VND','₫',0,0,2,0,23203,'2023-03-18 00:26:59','2023-03-18 00:26:59');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Clyde Lindgren','customer@botble.com','+12528631794','GW','Alabama','Augustaborough','245 Mylene Plains Suite 588',1,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','80150-5893'),(2,'Dr. Clyde Lindgren','customer@botble.com','+19098233260','MO','Vermont','Davisview','990 Oswaldo Manor',1,0,'2023-03-18 00:27:05','2023-03-18 00:27:05','35031-1444'),(3,'Alvis Ferry','vendor@botble.com','+15408018855','SA','Tennessee','Lake Carletonmouth','61023 Amos Drive Apt. 839',2,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','45777-8917'),(4,'Alvis Ferry','vendor@botble.com','+13517556153','AT','Alabama','East Lolita','377 Melisa Tunnel',2,0,'2023-03-18 00:27:05','2023-03-18 00:27:05','72525'),(5,'Kayli Windler DVM','adams.edgardo@example.com','+19383372389','NG','Arizona','Fisherport','33187 Leanna Points',3,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','09453-0738'),(6,'Maria Bradtke','jwest@example.com','+18309126848','GW','Montana','Rodriguezville','8113 Schaden Unions',4,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','47757-2039'),(7,'Nathen Considine','nmitchell@example.org','+16625936451','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',5,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','24984'),(8,'Mr. Emmet Wisoky Jr.','americo67@example.com','+14844977966','RS','Arizona','Doylechester','7094 Lehner Hills',6,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','77044'),(9,'Braulio Orn','cschmitt@example.org','+19097425968','AU','Washington','South Rebekahmouth','775 Rodriguez Forest Suite 036',7,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','81694'),(10,'Buford Mosciski MD','jschaden@example.com','+13084766509','BM','Arkansas','Spencerview','34301 Annabell Turnpike',8,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','33854-6721'),(11,'Zaria Predovic IV','huels.devonte@example.org','+18454594287','BO','New York','Mullerborough','927 Arnoldo Trail Suite 312',9,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','57303'),(12,'Kobe Morissette','charity.bartell@example.org','+16673776596','BN','Wyoming','North Elmira','12671 Hank Square Suite 882',10,1,'2023-03-18 00:27:05','2023-03-18 00:27:05','40204');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Clyde Lindgren','customer@botble.com','$2y$10$Yl6S7VekwlzAfeseZqpKqurH2a8QwP8RoubTYSlTc7zm0aRldUKOK','customers/2.jpg','2003-02-24','+12486780656',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(2,'Alvis Ferry','vendor@botble.com','$2y$10$lRBUATyyzXRNosOdp9HGiOgbAkvQu8lgj1qkH8gyUyLfKPytR16s.','customers/6.jpg','2002-03-15','+19494706659',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:09','2023-03-18 07:27:05',NULL,'activated',1,'2023-03-18 07:27:09'),(3,'Kayli Windler DVM','adams.edgardo@example.com','$2y$10$RXiaz/Ly3o2u9FVFLf9XPux5LXqYVeAlR6ahVmFUgFGCEpxhhLt0K','customers/1.jpg','1986-02-28','+15347104003',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(4,'Maria Bradtke','jwest@example.com','$2y$10$CUkTWBZKPvRr4Ffs3pHMF.utky62DaU0mjINtyYapWjBnEFQO3fKe','customers/2.jpg','1982-02-16','+19143233756',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(5,'Nathen Considine','nmitchell@example.org','$2y$10$Xsmt/VNctJOAXDBvel3GzOC4A6miztby4N1vx9ZIfD2EtH0EpPZX.','customers/3.jpg','1996-03-14','+17405609024',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(6,'Mr. Emmet Wisoky Jr.','americo67@example.com','$2y$10$cUwYhl8OL5xAlfR.L/pwn.UnnUY99/V8Y2IbbZ08D10V8wvdnCdvW','customers/4.jpg','1980-03-02','+16314559434',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(7,'Braulio Orn','cschmitt@example.org','$2y$10$FZMPVKExWGwHkOVJW1YX7uTF8SJX6YqYOP1.jlWiOiS1QdK2KWILu','customers/5.jpg','1995-02-16','+13863834789',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:09','2023-03-18 07:27:05',NULL,'activated',1,'2023-03-18 07:27:09'),(8,'Buford Mosciski MD','jschaden@example.com','$2y$10$UWWNOFy2DVM8XBXpsvhtzuDD7GPTbvtyVFwsi.nFHIB7FSe1r1opi','customers/6.jpg','2003-03-12','+12404716240',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:09','2023-03-18 07:27:05',NULL,'activated',1,'2023-03-18 07:27:09'),(9,'Zaria Predovic IV','huels.devonte@example.org','$2y$10$8RU9o1RaRAk0QqzCoaH0KuD0h366rjheTzYxaaJ8F04Wspaa8hGLC','customers/7.jpg','1984-03-16','+18282082966',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL),(10,'Kobe Morissette','charity.bartell@example.org','$2y$10$yCxkGDUIUmrMdgH9pofAn.4Dqd5dQifnWY/KY6uYpi5tL86xbyyl.','customers/8.jpg','1984-02-20','+13366659901',NULL,'2023-03-18 00:27:05','2023-03-18 00:27:05','2023-03-18 07:27:05',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,51.36,12,4),(1,2,35.64,13,1),(1,3,16,12,2),(1,4,356.6376,18,4),(1,5,808.2,12,4),(1,6,166.94,20,1),(1,7,427.55,12,1),(1,8,574.5828,16,1),(1,9,313.23,18,2),(1,10,1057.92,16,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2023-04-17 00:00:00','published','2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(1,2,'2 Year',10,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(1,3,'3 Year',20,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,4,'4GB',0,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,5,'8GB',10,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,6,'16GB',20,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,7,'Core i5',0,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,8,'Core i7',10,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,9,'Core i9',20,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,10,'128GB',0,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,11,'256GB',10,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,12,'512GB',20,9999,0,'2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',1,'77044','shipping_address'),(2,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',2,'77044','shipping_address'),(3,'Zaria Predovic IV','+18454594287','huels.devonte@example.org','BO','New York','Mullerborough','927 Arnoldo Trail Suite 312',3,'57303','shipping_address'),(4,'Zaria Predovic IV','+18454594287','huels.devonte@example.org','BO','New York','Mullerborough','927 Arnoldo Trail Suite 312',4,'57303','shipping_address'),(5,'Kobe Morissette','+16673776596','charity.bartell@example.org','BN','Wyoming','North Elmira','12671 Hank Square Suite 882',5,'40204','shipping_address'),(6,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',6,'09453-0738','shipping_address'),(7,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',7,'09453-0738','shipping_address'),(8,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',8,'77044','shipping_address'),(9,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',9,'77044','shipping_address'),(10,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',10,'09453-0738','shipping_address'),(11,'Maria Bradtke','+18309126848','jwest@example.com','GW','Montana','Rodriguezville','8113 Schaden Unions',11,'47757-2039','shipping_address'),(12,'Maria Bradtke','+18309126848','jwest@example.com','GW','Montana','Rodriguezville','8113 Schaden Unions',12,'47757-2039','shipping_address'),(13,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',13,'09453-0738','shipping_address'),(14,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',14,'09453-0738','shipping_address'),(15,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',15,'77044','shipping_address'),(16,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',16,'77044','shipping_address'),(17,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',17,'77044','shipping_address'),(18,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',18,'77044','shipping_address'),(19,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',19,'77044','shipping_address'),(20,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',20,'24984','shipping_address'),(21,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',21,'77044','shipping_address'),(22,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',22,'77044','shipping_address'),(23,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',23,'77044','shipping_address'),(24,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',24,'77044','shipping_address'),(25,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',25,'24984','shipping_address'),(26,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',26,'24984','shipping_address'),(27,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',27,'24984','shipping_address'),(28,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',28,'09453-0738','shipping_address'),(29,'Kayli Windler DVM','+19383372389','adams.edgardo@example.com','NG','Arizona','Fisherport','33187 Leanna Points',29,'09453-0738','shipping_address'),(30,'Kobe Morissette','+16673776596','charity.bartell@example.org','BN','Wyoming','North Elmira','12671 Hank Square Suite 882',30,'40204','shipping_address'),(31,'Kobe Morissette','+16673776596','charity.bartell@example.org','BN','Wyoming','North Elmira','12671 Hank Square Suite 882',31,'40204','shipping_address'),(32,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',32,'77044','shipping_address'),(33,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',33,'77044','shipping_address'),(34,'Mr. Emmet Wisoky Jr.','+14844977966','americo67@example.com','RS','Arizona','Doylechester','7094 Lehner Hills',34,'77044','shipping_address'),(35,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',35,'24984','shipping_address'),(36,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',36,'24984','shipping_address'),(37,'Dr. Clyde Lindgren','+12528631794','customer@botble.com','GW','Alabama','Augustaborough','245 Mylene Plains Suite 588',37,'80150-5893','shipping_address'),(38,'Dr. Clyde Lindgren','+12528631794','customer@botble.com','GW','Alabama','Augustaborough','245 Mylene Plains Suite 588',38,'80150-5893','shipping_address'),(39,'Nathen Considine','+16625936451','nmitchell@example.org','AT','South Dakota','Myrticestad','292 Jerald Walk Suite 907',39,'24984','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-03-09 16:27:09','2023-03-09 16:27:09'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-03-09 16:27:09','2023-03-09 16:27:09'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(4,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-03-01 08:27:09','2023-03-01 08:27:09'),(5,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-03-01 08:27:09','2023-03-01 08:27:09'),(6,'confirm_payment','Payment was confirmed (amount $1,522.00) by %user_name%',0,2,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(7,'create_shipment','Created shipment for order',0,2,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-03-16 10:27:09','2023-03-16 10:27:09'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-03-16 10:27:09','2023-03-16 10:27:09'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-03-14 20:27:09','2023-03-14 20:27:09'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-03-14 20:27:09','2023-03-14 20:27:09'),(15,'confirm_payment','Payment was confirmed (amount $1,006.00) by %user_name%',0,4,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-03-03 00:27:09','2023-03-03 00:27:09'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-03-03 00:27:09','2023-03-03 00:27:09'),(19,'confirm_payment','Payment was confirmed (amount $5,444.00) by %user_name%',0,5,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-03-13 18:27:09','2023-03-13 18:27:09'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-03-13 18:27:09','2023-03-13 18:27:09'),(23,'confirm_payment','Payment was confirmed (amount $1,590.00) by %user_name%',0,6,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-03-10 22:27:09','2023-03-10 22:27:09'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-03-10 22:27:09','2023-03-10 22:27:09'),(27,'confirm_payment','Payment was confirmed (amount $2,283.00) by %user_name%',0,7,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(28,'create_shipment','Created shipment for order',0,7,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(29,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-03-10 00:27:09','2023-03-10 00:27:09'),(30,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-03-10 00:27:09','2023-03-10 00:27:09'),(31,'confirm_payment','Payment was confirmed (amount $1,252.75) by %user_name%',0,8,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(32,'create_shipment','Created shipment for order',0,8,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-03-14 00:27:09','2023-03-14 00:27:09'),(34,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-03-14 00:27:09','2023-03-14 00:27:09'),(35,'confirm_payment','Payment was confirmed (amount $2,715.00) by %user_name%',0,9,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(37,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-03-09 06:27:09','2023-03-09 06:27:09'),(38,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-03-09 06:27:09','2023-03-09 06:27:09'),(39,'confirm_payment','Payment was confirmed (amount $2,189.00) by %user_name%',0,10,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(40,'create_shipment','Created shipment for order',0,10,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-03-06 08:27:09','2023-03-06 08:27:09'),(43,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-03-06 08:27:09','2023-03-06 08:27:09'),(44,'confirm_payment','Payment was confirmed (amount $3,935.00) by %user_name%',0,11,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-03-12 04:27:09','2023-03-12 04:27:09'),(47,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-03-12 04:27:09','2023-03-12 04:27:09'),(48,'create_shipment','Created shipment for order',0,12,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-03-12 14:27:09','2023-03-12 14:27:09'),(50,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-03-12 14:27:09','2023-03-12 14:27:09'),(51,'confirm_payment','Payment was confirmed (amount $2,885.50) by %user_name%',0,13,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(52,'create_shipment','Created shipment for order',0,13,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(53,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-03-14 18:27:09','2023-03-14 18:27:09'),(54,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-03-14 18:27:09','2023-03-14 18:27:09'),(55,'confirm_payment','Payment was confirmed (amount $1,512.00) by %user_name%',0,14,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(56,'create_shipment','Created shipment for order',0,14,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(59,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(60,'confirm_payment','Payment was confirmed (amount $1,572.00) by %user_name%',0,15,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(61,'create_shipment','Created shipment for order',0,15,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(65,'create_shipment','Created shipment for order',0,16,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-03-16 00:27:09','2023-03-16 00:27:09'),(68,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-03-16 00:27:09','2023-03-16 00:27:09'),(69,'confirm_payment','Payment was confirmed (amount $1,698.00) by %user_name%',0,17,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-03-16 04:27:09','2023-03-16 04:27:09'),(72,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-03-16 04:27:09','2023-03-16 04:27:09'),(73,'confirm_payment','Payment was confirmed (amount $1,188.00) by %user_name%',0,18,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(74,'create_shipment','Created shipment for order',0,18,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-03-17 02:27:09','2023-03-17 02:27:09'),(76,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-03-17 02:27:09','2023-03-17 02:27:09'),(77,'confirm_payment','Payment was confirmed (amount $1,017.00) by %user_name%',0,19,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(78,'create_shipment','Created shipment for order',0,19,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(81,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(82,'confirm_payment','Payment was confirmed (amount $5,098.50) by %user_name%',0,20,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(83,'create_shipment','Created shipment for order',0,20,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-03-12 00:27:09','2023-03-12 00:27:09'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-03-12 00:27:09','2023-03-12 00:27:09'),(86,'create_shipment','Created shipment for order',0,21,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-03-15 18:27:09','2023-03-15 18:27:09'),(89,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-03-15 18:27:09','2023-03-15 18:27:09'),(90,'create_shipment','Created shipment for order',0,22,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-03-14 16:27:09','2023-03-14 16:27:09'),(93,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-03-14 16:27:09','2023-03-14 16:27:09'),(94,'confirm_payment','Payment was confirmed (amount $2,393.00) by %user_name%',0,23,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(95,'create_shipment','Created shipment for order',0,23,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(98,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(99,'confirm_payment','Payment was confirmed (amount $574.00) by %user_name%',0,24,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(100,'create_shipment','Created shipment for order',0,24,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(103,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(104,'confirm_payment','Payment was confirmed (amount $20.00) by %user_name%',0,25,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(105,'create_shipment','Created shipment for order',0,25,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(107,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(108,'confirm_payment','Payment was confirmed (amount $1,168.00) by %user_name%',0,26,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(109,'create_shipment','Created shipment for order',0,26,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-03-17 10:27:09','2023-03-17 10:27:09'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-03-17 10:27:09','2023-03-17 10:27:09'),(113,'confirm_payment','Payment was confirmed (amount $2,034.00) by %user_name%',0,27,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(115,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-03-17 12:27:09','2023-03-17 12:27:09'),(117,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-03-17 12:27:09','2023-03-17 12:27:09'),(118,'confirm_payment','Payment was confirmed (amount $3,772.00) by %user_name%',0,28,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(119,'create_shipment','Created shipment for order',0,28,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(120,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-03-15 12:27:09','2023-03-15 12:27:09'),(122,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-03-15 12:27:09','2023-03-15 12:27:09'),(123,'confirm_payment','Payment was confirmed (amount $530.00) by %user_name%',0,29,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(124,'create_shipment','Created shipment for order',0,29,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(125,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-03-17 14:27:09','2023-03-17 14:27:09'),(127,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-03-17 14:27:09','2023-03-17 14:27:09'),(128,'confirm_payment','Payment was confirmed (amount $1,512.00) by %user_name%',0,30,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(129,'create_shipment','Created shipment for order',0,30,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(130,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-03-16 18:27:10','2023-03-16 18:27:10'),(132,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-03-16 18:27:10','2023-03-16 18:27:10'),(133,'create_shipment','Created shipment for order',0,31,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-03-17 08:27:10','2023-03-17 08:27:10'),(135,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-03-17 08:27:10','2023-03-17 08:27:10'),(136,'confirm_payment','Payment was confirmed (amount $1,182.00) by %user_name%',0,32,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(137,'create_shipment','Created shipment for order',0,32,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-03-16 08:27:10','2023-03-16 08:27:10'),(139,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-03-16 08:27:10','2023-03-16 08:27:10'),(140,'confirm_payment','Payment was confirmed (amount $3,420.00) by %user_name%',0,33,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(141,'create_shipment','Created shipment for order',0,33,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(142,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(143,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-03-14 16:27:10','2023-03-14 16:27:10'),(144,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-03-14 16:27:10','2023-03-14 16:27:10'),(145,'confirm_payment','Payment was confirmed (amount $680.00) by %user_name%',0,34,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(146,'create_shipment','Created shipment for order',0,34,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(147,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-03-17 12:27:10','2023-03-17 12:27:10'),(149,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-03-17 12:27:10','2023-03-17 12:27:10'),(150,'confirm_payment','Payment was confirmed (amount $2,576.50) by %user_name%',0,35,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(151,'create_shipment','Created shipment for order',0,35,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(152,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-03-17 06:27:10','2023-03-17 06:27:10'),(153,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-03-17 06:27:10','2023-03-17 06:27:10'),(154,'create_shipment','Created shipment for order',0,36,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-03-16 12:27:10','2023-03-16 12:27:10'),(156,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-03-16 12:27:10','2023-03-16 12:27:10'),(157,'confirm_payment','Payment was confirmed (amount $2,508.00) by %user_name%',0,37,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(158,'create_shipment','Created shipment for order',0,37,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(160,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(161,'confirm_payment','Payment was confirmed (amount $566.00) by %user_name%',0,38,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(162,'create_shipment','Created shipment for order',0,38,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(164,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(165,'confirm_payment','Payment was confirmed (amount $4,442.00) by %user_name%',0,39,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(166,'create_shipment','Created shipment for order',0,39,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(167,'update_status','Order confirmed by %user_name%',0,2,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(168,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(169,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(170,'update_status','Order confirmed by %user_name%',0,15,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(171,'update_status','Order confirmed by %user_name%',0,19,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(172,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(173,'update_status','Order confirmed by %user_name%',0,24,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(174,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(175,'update_status','Order confirmed by %user_name%',0,27,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(176,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(177,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(178,'update_status','Order confirmed by %user_name%',0,30,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(179,'update_status','Order confirmed by %user_name%',0,33,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11'),(180,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-03-18 00:27:11','2023-03-18 00:27:11');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,20.00,0.00,'[]',NULL,32,'Beat Headphone','products/3.jpg',1515.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(2,1,1,905.00,0.00,'[]',NULL,73,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',528.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(3,2,2,761.00,0.00,'[]',NULL,75,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',1488.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(4,3,1,40.50,0.00,'[]',NULL,30,'Smart Watches','products/2-3.jpg',615.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(5,3,2,898.00,0.00,'[]',NULL,39,'Smart Watch External (Digital)','products/5-1.jpg',1278.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(6,3,3,566.00,0.00,'[]',NULL,81,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',1833.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(7,4,2,503.00,0.00,'[]',NULL,44,'Audio Equipment','products/7.jpg',1156.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(8,5,2,898.00,0.00,'[]',NULL,39,'Smart Watch External (Digital)','products/5-1.jpg',1278.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(9,5,3,1216.00,0.00,'[]',NULL,51,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1800.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(10,6,3,530.00,0.00,'[]',NULL,67,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',2307.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(11,7,3,761.00,0.00,'[]',NULL,75,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',2232.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(12,8,1,80.25,0.00,'[]',NULL,26,'Dual Camera 20MP (Digital)','products/1.jpg',592.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(13,8,1,40.50,0.00,'[]',NULL,27,'Smart Watches','products/2.jpg',615.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(14,8,2,566.00,0.00,'[]',NULL,80,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1222.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(15,9,3,905.00,0.00,'[]',NULL,73,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',1584.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(16,10,1,491.00,0.00,'[]',NULL,41,'Nikon HD camera','products/6.jpg',623.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(17,10,3,566.00,0.00,'[]',NULL,82,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1833.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(18,11,2,20.00,0.00,'[]',NULL,33,'Beat Headphone','products/3.jpg',1010.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(19,11,2,1274.00,0.00,'[]',NULL,54,'Xbox One Wireless Controller Black Color','products/11-2.jpg',1360.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(20,11,3,449.00,0.00,'[]',NULL,79,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',2265.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(21,12,1,566.00,0.00,'[]',NULL,83,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',611.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(22,13,3,40.50,0.00,'[]',NULL,30,'Smart Watches','products/2-3.jpg',1845.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(23,13,3,594.00,0.00,'[]',NULL,36,'Red &amp; Black Headphone','products/4-1.jpg',2424.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(24,13,2,491.00,0.00,'[]',NULL,42,'Nikon HD camera','products/6.jpg',1246.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(25,14,3,504.00,0.00,'[]',NULL,58,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',1761.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(26,15,3,20.00,0.00,'[]',NULL,34,'Beat Headphone','products/3.jpg',1515.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(27,15,3,504.00,0.00,'[]',NULL,59,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1761.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(28,16,3,530.00,0.00,'[]',NULL,68,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17-1.jpg',2307.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(29,17,3,566.00,0.00,'[]',NULL,81,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',1833.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(30,18,2,594.00,0.00,'[]',NULL,37,'Red &amp; Black Headphone','products/4-2.jpg',1616.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(31,19,1,1017.00,0.00,'[]',NULL,70,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',837.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(32,20,3,40.50,0.00,'[]',NULL,29,'Smart Watches','products/2-2.jpg',1845.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(33,20,3,898.00,0.00,'[]',NULL,38,'Smart Watch External (Digital)','products/5.jpg',1917.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(34,20,3,761.00,0.00,'[]',NULL,75,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',2232.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(35,21,2,491.00,0.00,'[]',NULL,40,'Nikon HD camera','products/6.jpg',1246.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(36,22,3,1254.00,0.00,'[]',NULL,46,'Smart Televisions','products/8.jpg',1875.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(37,22,1,1274.00,0.00,'[]',NULL,52,'Xbox One Wireless Controller Black Color','products/11.jpg',680.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(38,22,1,563.00,0.00,'[]',NULL,55,'EPSION Plaster Printer','products/12.jpg',507.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(39,23,2,20.00,0.00,'[]',NULL,33,'Beat Headphone','products/3.jpg',1010.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(40,23,1,543.00,0.00,'[]',NULL,62,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',881.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(41,23,2,905.00,0.00,'[]',NULL,72,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1056.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(42,24,1,574.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',844.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(43,25,1,20.00,0.00,'[]',NULL,32,'Beat Headphone','products/3.jpg',505.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(44,26,1,594.00,0.00,'[]',NULL,36,'Red &amp; Black Headphone','products/4-1.jpg',808.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(45,26,1,574.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',844.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(46,27,2,1017.00,0.00,'[]',NULL,69,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',1674.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(47,28,2,503.00,0.00,'[]',NULL,43,'Audio Equipment','products/7.jpg',1156.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(48,28,1,1254.00,0.00,'[]',NULL,48,'Smart Televisions','products/8-2.jpg',625.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(49,28,3,504.00,0.00,'[]',NULL,59,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1761.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(50,29,1,530.00,0.00,'[]',NULL,67,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',769.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(51,30,3,504.00,0.00,'[]',NULL,58,'Sound Intone I65 Earphone White Version (Digital)','products/13-1.jpg',1761.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','physical',0),(52,31,1,530.00,0.00,'[]',NULL,67,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',769.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(53,32,2,591.00,0.00,'[]',NULL,49,'Samsung Smart Phone (Digital)','products/9.jpg',1248.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(54,33,3,574.00,0.00,'[]',NULL,64,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',2532.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(55,33,3,566.00,0.00,'[]',NULL,82,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1833.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(56,34,1,680.00,0.00,'[]',NULL,78,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',823.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(57,35,3,40.50,0.00,'[]',NULL,27,'Smart Watches','products/2.jpg',1845.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(58,35,2,491.00,0.00,'[]',NULL,40,'Nikon HD camera','products/6.jpg',1246.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(59,35,3,491.00,0.00,'[]',NULL,42,'Nikon HD camera','products/6.jpg',1869.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(60,36,1,680.00,0.00,'[]',NULL,78,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',823.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(61,37,2,1254.00,0.00,'[]',NULL,48,'Smart Televisions','products/8-2.jpg',1250.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(62,38,1,566.00,0.00,'[]',NULL,82,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',611.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(63,39,3,1254.00,0.00,'[]',NULL,48,'Smart Televisions','products/8-2.jpg',1875.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0),(64,39,1,680.00,0.00,'[]',NULL,78,'MVMTH Classical Leather Watch In Black (Digital)','products/21-1.jpg',823.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',6,'1','default','pending',965.00,0.00,0.00,NULL,NULL,0.00,965.00,1,NULL,1,NULL,'knmqb11w5GiT4pszM4i9tMx3wwDra',1,'2023-03-09 16:27:09','2023-03-18 00:27:09',1),(2,'#10000002',6,'1','default','completed',1522.00,0.00,0.00,NULL,NULL,0.00,1522.00,1,NULL,1,'2023-03-18 00:27:10','bCnQaGuQtgBUjGP2TQxyfKINnsfbu',2,'2023-03-01 08:27:09','2023-03-18 00:27:10',2),(3,'#10000003',9,'1','default','completed',3534.50,0.00,0.00,NULL,NULL,0.00,3534.50,1,NULL,1,'2023-03-18 00:27:09','XSx2POOuhG2136Z7YXnLBBDK337Pe',3,'2023-03-16 10:27:09','2023-03-18 00:27:09',2),(4,'#10000004',9,'1','default','pending',1006.00,0.00,0.00,NULL,NULL,0.00,1006.00,1,NULL,1,NULL,'28sCUkJzqKTsvRJCyLwXhs8XKZ68g',4,'2023-03-14 20:27:09','2023-03-18 00:27:09',1),(5,'#10000005',10,'1','default','pending',5444.00,0.00,0.00,NULL,NULL,0.00,5444.00,1,NULL,1,NULL,'OMcHLzsHczSaEFOnp3NgDgyPUEnvj',5,'2023-03-03 00:27:09','2023-03-18 00:27:09',2),(6,'#10000006',3,'1','default','pending',1590.00,0.00,0.00,NULL,NULL,0.00,1590.00,1,NULL,1,NULL,'g2QkUPvNTL5CD9HX7JXcwZdEaBGq2',6,'2023-03-13 18:27:09','2023-03-18 00:27:09',3),(7,'#10000007',3,'1','default','pending',2283.00,0.00,0.00,NULL,NULL,0.00,2283.00,1,NULL,1,NULL,'6OQJMfVshf4jbtmOAFMvmmhR2VYbF',7,'2023-03-10 22:27:09','2023-03-18 00:27:09',2),(8,'#10000008',6,'1','default','pending',1252.75,0.00,0.00,NULL,NULL,0.00,1252.75,1,NULL,1,NULL,'GBvNDpdPSdcIAzizvF5kSA1Q0zVcz',8,'2023-03-10 00:27:09','2023-03-18 00:27:09',2),(9,'#10000009',6,'1','default','pending',2715.00,0.00,0.00,NULL,NULL,0.00,2715.00,1,NULL,1,NULL,'9KspFmG61kQ3onWoKIQmqXApxTnEg',9,'2023-03-14 00:27:09','2023-03-18 00:27:09',1),(10,'#10000010',3,'1','default','completed',2189.00,0.00,0.00,NULL,NULL,0.00,2189.00,1,NULL,1,'2023-03-18 00:27:10','54CHLlut3Q27UGjEgy04g9LFye1BE',10,'2023-03-09 06:27:09','2023-03-18 00:27:10',2),(11,'#10000011',4,'1','default','pending',3935.00,0.00,0.00,NULL,NULL,0.00,3935.00,1,NULL,1,NULL,'syn5VXuOL1QgW3aS6T01sND8sXwAA',11,'2023-03-06 08:27:09','2023-03-18 00:27:09',1),(12,'#10000012',4,'1','default','pending',566.00,0.00,0.00,NULL,NULL,0.00,566.00,1,NULL,1,NULL,'lRLL5NyZ1gpcLhiSolU3b9Zn6wOWJ',12,'2023-03-12 04:27:09','2023-03-18 00:27:09',2),(13,'#10000013',3,'1','default','pending',2885.50,0.00,0.00,NULL,NULL,0.00,2885.50,1,NULL,1,NULL,'P9UWQb4zOqHZPlp6okSoRgVYq5jMz',13,'2023-03-12 14:27:09','2023-03-18 00:27:09',2),(14,'#10000014',3,'1','default','completed',1512.00,0.00,0.00,NULL,NULL,0.00,1512.00,1,NULL,1,'2023-03-18 00:27:10','0qh7nczSGLwTUwzZ2aQW6pGoJyhjm',14,'2023-03-14 18:27:09','2023-03-18 00:27:10',1),(15,'#10000015',6,'1','default','completed',1572.00,0.00,0.00,NULL,NULL,0.00,1572.00,1,NULL,1,'2023-03-18 00:27:10','iLonkhEwy7DOhbmDMYFJAFjDAqcTw',15,'2023-03-13 00:27:09','2023-03-18 00:27:10',1),(16,'#10000016',6,'1','default','completed',1590.00,0.00,0.00,NULL,NULL,0.00,1590.00,1,NULL,1,'2023-03-18 00:27:09','0XdZG684VFgX9JYBpek7nneo7cpf4',16,'2023-03-13 00:27:09','2023-03-18 00:27:09',3),(17,'#10000017',6,'1','default','pending',1698.00,0.00,0.00,NULL,NULL,0.00,1698.00,1,NULL,1,NULL,'d2JUEdQYJWCOoi3PCr2bdVWtsSLy8',17,'2023-03-16 00:27:09','2023-03-18 00:27:09',2),(18,'#10000018',6,'1','default','pending',1188.00,0.00,0.00,NULL,NULL,0.00,1188.00,1,NULL,1,NULL,'gGr8HRgd6k9ZyNqA7rdHc0Tu4cvyr',18,'2023-03-16 04:27:09','2023-03-18 00:27:09',2),(19,'#10000019',6,'1','default','completed',1017.00,0.00,0.00,NULL,NULL,0.00,1017.00,1,NULL,1,'2023-03-18 00:27:10','NULbe0lua9cYgy4JWnBixAMhd4bAA',19,'2023-03-17 02:27:09','2023-03-18 00:27:10',3),(20,'#10000020',5,'1','default','pending',5098.50,0.00,0.00,NULL,NULL,0.00,5098.50,1,NULL,1,NULL,'shjC3oQPFC5Xfq64giWfY0wcquHZj',20,'2023-03-11 08:27:09','2023-03-18 00:27:09',2),(21,'#10000021',6,'1','default','completed',982.00,0.00,0.00,NULL,NULL,0.00,982.00,1,NULL,1,'2023-03-18 00:27:09','cGJY3rneouSNWQqtpow2x0dnhlkJ6',21,'2023-03-12 00:27:09','2023-03-18 00:27:09',2),(22,'#10000022',6,'1','default','completed',5599.00,0.00,0.00,NULL,NULL,0.00,5599.00,1,NULL,1,'2023-03-18 00:27:09','RCh52pFSgtpwhuU8MrIBNxXx1wzEn',22,'2023-03-15 18:27:09','2023-03-18 00:27:09',1),(23,'#10000023',6,'1','default','completed',2393.00,0.00,0.00,NULL,NULL,0.00,2393.00,1,NULL,1,'2023-03-18 00:27:10','igHNkGxsd0IxAhnKZZVKHb78OR9XB',23,'2023-03-14 16:27:09','2023-03-18 00:27:10',1),(24,'#10000024',6,'1','default','completed',574.00,0.00,0.00,NULL,NULL,0.00,574.00,1,NULL,1,'2023-03-18 00:27:10','bzmvsc9AVfzkKduOJNbI4WHswT9ij',24,'2023-03-11 08:27:09','2023-03-18 00:27:10',2),(25,'#10000025',5,'1','default','pending',20.00,0.00,0.00,NULL,NULL,0.00,20.00,1,NULL,1,NULL,'5wQ5rnKJrvPcBpVz2fTzIXj3qiFFJ',25,'2023-03-13 22:27:09','2023-03-18 00:27:09',1),(26,'#10000026',5,'1','default','completed',1168.00,0.00,0.00,NULL,NULL,0.00,1168.00,1,NULL,1,'2023-03-18 00:27:11','5O2YfnqQHWaEeO02s5VlsdOlOFPSQ',26,'2023-03-13 22:27:09','2023-03-18 00:27:11',2),(27,'#10000027',5,'1','default','completed',2034.00,0.00,0.00,NULL,NULL,0.00,2034.00,1,NULL,1,'2023-03-18 00:27:11','OroNjd1VQyVEVSbUErM6BLmav30sZ',27,'2023-03-17 10:27:09','2023-03-18 00:27:11',3),(28,'#10000028',3,'1','default','completed',3772.00,0.00,0.00,NULL,NULL,0.00,3772.00,1,NULL,1,'2023-03-18 00:27:11','1awYhlXt4xLCfqTDtHVjrYyP5EJyO',28,'2023-03-17 12:27:09','2023-03-18 00:27:11',1),(29,'#10000029',3,'1','default','completed',530.00,0.00,0.00,NULL,NULL,0.00,530.00,1,NULL,1,'2023-03-18 00:27:11','iH0JDg5MioqBTbSMZISJz3oyaRhef',29,'2023-03-15 12:27:09','2023-03-18 00:27:11',3),(30,'#10000030',10,'1','default','completed',1512.00,0.00,0.00,NULL,NULL,0.00,1512.00,1,NULL,1,'2023-03-18 00:27:11','xf36q5TuTjkh0CYbecagnjePjYUSk',30,'2023-03-17 14:27:09','2023-03-18 00:27:11',1),(31,'#10000031',10,'1','default','pending',530.00,0.00,0.00,NULL,NULL,0.00,530.00,1,NULL,1,NULL,'ht18iTQmDsdBgGsuRQMglZktRlbRZ',31,'2023-03-16 18:27:10','2023-03-18 00:27:10',3),(32,'#10000032',6,'1','default','pending',1182.00,0.00,0.00,NULL,NULL,0.00,1182.00,1,NULL,1,NULL,'nuUxtfXR6HNSYrwM9Ywdh1pR24H8g',32,'2023-03-17 08:27:10','2023-03-18 00:27:10',3),(33,'#10000033',6,'1','default','completed',3420.00,0.00,0.00,NULL,NULL,0.00,3420.00,1,NULL,1,'2023-03-18 00:27:11','VD3zWtWjuhSr5bLW2gxzc0RTe0X9R',33,'2023-03-16 08:27:10','2023-03-18 00:27:11',2),(34,'#10000034',6,'1','default','completed',680.00,0.00,0.00,NULL,NULL,0.00,680.00,1,NULL,1,'2023-03-18 00:27:11','CV92Ag6LdcGf9qaeIgeKKjy8SCV7F',34,'2023-03-14 16:27:10','2023-03-18 00:27:11',1),(35,'#10000035',5,'1','default','pending',2576.50,0.00,0.00,NULL,NULL,0.00,2576.50,1,NULL,1,NULL,'KRLGnnz0mJUD7GKpkIwgw0DuhZhuj',35,'2023-03-17 12:27:10','2023-03-18 00:27:10',2),(36,'#10000036',5,'1','default','pending',680.00,0.00,0.00,NULL,NULL,0.00,680.00,1,NULL,1,NULL,'r2GJjpIZIaEvYfqFyBcgDdkRxssYl',36,'2023-03-17 06:27:10','2023-03-18 00:27:10',1),(37,'#10000037',1,'1','default','pending',2508.00,0.00,0.00,NULL,NULL,0.00,2508.00,1,NULL,1,NULL,'wW7PvAbEsgx80Bn6IZFVZadHjlzRP',37,'2023-03-16 12:27:10','2023-03-18 00:27:10',1),(38,'#10000038',1,'1','default','pending',566.00,0.00,0.00,NULL,NULL,0.00,566.00,1,NULL,1,NULL,'yfPTZDmHNyASgXDjK7lRrNczbK4Tj',38,'2023-03-17 20:27:10','2023-03-18 00:27:10',2),(39,'#10000039',5,'1','default','pending',4442.00,0.00,0.00,NULL,NULL,0.00,4442.00,1,NULL,1,NULL,'qOcIVvyjPL317TLfdNlRGL7EdrDMz',39,'2023-03-17 20:27:10','2023-03-18 00:27:10',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-03-18 00:27:04','2023-03-18 00:27:04',0),(2,'Size','size','text',1,1,1,'published',1,'2023-03-18 00:27:04','2023-03-18 00:27:04',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-03-18 00:27:04','2023-03-18 00:27:04'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-03-18 00:27:04','2023-03-18 00:27:04');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(23,'Networking',17,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-03-18 00:27:00','2023-03-18 00:27:00');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,17),(1,19),(2,6),(2,15),(3,1),(3,7),(3,15),(3,21),(4,23),(7,9),(7,10),(7,15),(7,16),(8,16),(8,20),(9,4),(9,23),(11,3),(11,4),(11,22),(12,23),(13,2),(13,19),(13,21),(15,12),(15,14),(15,16),(15,17),(17,2),(17,8),(17,12),(18,1),(18,14),(19,11),(19,12),(19,20),(20,3),(20,8),(20,18),(20,22),(21,3),(21,9),(21,17),(22,3),(22,7),(22,17),(23,5),(23,11),(23,18),(24,1),(24,2),(24,10),(25,18),(25,19),(26,6),(26,8),(26,10),(27,1),(27,9),(27,13),(27,14),(27,18),(27,22),(28,5),(28,12),(28,20),(29,15),(29,21),(29,23),(30,7),(30,20),(31,2),(31,4),(31,5),(31,10),(31,11),(32,6),(32,19),(33,13),(34,8),(35,22),(36,5),(36,11),(36,21),(37,4),(37,6),(37,7);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,2),(1,6),(1,9),(1,11),(1,14),(1,15),(1,17),(1,21),(1,22),(2,3),(2,4),(2,5),(2,7),(2,8),(2,10),(2,12),(2,13),(2,18),(2,20),(2,23),(3,16),(3,19);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-03-18 00:27:00','2023-03-18 00:27:00',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-03-18 00:27:00','2023-03-18 00:27:00',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-03-18 00:27:00','2023-03-18 00:27:00',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6),(1,8),(1,9),(1,10),(1,12),(1,14),(1,16),(2,4),(2,5),(2,13),(2,14),(2,15),(2,18),(2,20),(3,5),(3,6),(3,8),(3,12),(3,19),(3,20),(4,3),(4,10),(4,11),(4,12),(4,14),(4,15),(5,11),(5,12),(5,15),(5,16),(5,19),(6,1),(6,2),(6,8),(6,12),(6,15),(6,17),(7,3),(7,5),(7,6),(7,13),(7,14),(7,19),(8,2),(8,11),(8,12),(8,16),(8,17),(8,19),(9,8),(9,11),(9,13),(9,15),(9,16),(9,20),(10,2),(10,6),(10,8),(10,15),(10,17),(10,20),(11,1),(11,2),(11,12),(11,14),(11,15),(11,16),(12,3),(12,7),(12,8),(12,13),(12,18),(13,4),(13,5),(13,7),(13,12),(13,18),(14,1),(14,2),(14,5),(14,8),(14,11),(14,12),(14,15),(15,3),(15,6),(15,7),(15,8),(15,17),(15,19),(16,3),(16,5),(16,8),(16,9),(16,14),(16,17),(17,9),(17,14),(17,15),(17,16),(17,20),(18,1),(18,4),(18,6),(18,9),(18,10),(18,15),(18,16),(19,6),(19,10),(19,11),(19,12),(19,15),(19,16),(19,18),(20,2),(20,4),(20,5),(20,6),(20,13),(20,16),(20,17),(21,1),(21,4),(21,5),(21,6),(21,11),(21,17),(22,1),(22,5),(22,8),(22,12),(22,14),(23,2),(23,10),(23,12),(23,15),(23,19);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(4,38,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(5,38,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(6,38,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(7,38,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(8,39,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(9,39,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(10,39,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(11,39,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(12,49,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(13,49,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(14,49,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(15,50,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(16,50,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(17,50,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(18,57,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(19,57,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(20,58,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(21,58,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(22,59,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(23,59,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(24,60,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(25,60,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(26,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(27,67,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(28,67,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(29,67,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(30,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(31,68,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(32,68,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(33,68,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(34,77,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(35,77,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(36,77,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(37,78,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(38,78,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04'),(39,78,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-18 07:27:04\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-03-18 00:27:04','2023-03-18 00:27:04');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,18),(2,6),(2,21),(3,9),(3,12),(3,15);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-03-18 00:27:00','2023-03-18 00:27:00'),(2,'New','#00c9a7','published','2023-03-18 00:27:00','2023-03-18 00:27:00'),(3,'Sale','#fe9931','published','2023-03-18 00:27:00','2023-03-18 00:27:00');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(2,4),(2,5),(3,2),(3,4),(3,5),(4,3),(4,4),(4,6),(5,1),(5,4),(6,1),(6,2),(6,4),(7,1),(7,2),(7,5),(8,3),(8,4),(9,2),(9,3),(9,6),(10,1),(10,5),(11,1),(11,2),(11,6),(12,2),(12,4),(12,5),(13,1),(13,2),(13,6),(14,1),(14,2),(15,3),(15,5),(16,1),(16,4),(16,5),(17,1),(17,4),(18,4),(18,6),(19,2),(19,4),(19,5),(20,2),(20,3),(21,2),(21,4),(21,5),(22,2),(22,4),(22,5),(23,2),(23,3),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(2,'Mobile',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(3,'Iphone',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(4,'Printer',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(5,'Office',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(6,'IT',NULL,'published','2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(27,1,14),(31,1,16),(43,1,22),(59,1,30),(69,1,35),(71,1,36),(83,1,42),(87,1,44),(89,1,45),(95,1,48),(97,1,49),(103,1,52),(113,1,57),(117,1,59),(9,2,5),(11,2,6),(15,2,8),(21,2,11),(33,2,17),(37,2,19),(49,2,25),(55,2,28),(101,2,51),(105,2,53),(107,2,54),(17,3,9),(19,3,10),(35,3,18),(45,3,23),(65,3,33),(67,3,34),(77,3,39),(81,3,41),(99,3,50),(115,3,58),(5,4,3),(7,4,4),(25,4,13),(39,4,20),(47,4,24),(53,4,27),(73,4,37),(75,4,38),(109,4,55),(119,4,60),(3,5,2),(13,5,7),(23,5,12),(29,5,15),(41,5,21),(51,5,26),(57,5,29),(61,5,31),(63,5,32),(79,5,40),(85,5,43),(91,5,46),(93,5,47),(111,5,56),(4,6,2),(24,6,12),(36,6,18),(38,6,19),(42,6,21),(46,6,23),(64,6,32),(70,6,35),(74,6,37),(80,6,40),(82,6,41),(90,6,45),(96,6,48),(112,6,56),(114,6,57),(120,6,60),(8,7,4),(14,7,7),(20,7,10),(60,7,30),(78,7,39),(84,7,42),(100,7,50),(110,7,55),(6,8,3),(10,8,5),(12,8,6),(18,8,9),(66,8,33),(76,8,38),(86,8,43),(88,8,44),(104,8,52),(108,8,54),(118,8,59),(16,9,8),(28,9,14),(30,9,15),(44,9,22),(50,9,25),(52,9,26),(54,9,27),(68,9,34),(94,9,47),(98,9,49),(106,9,53),(2,10,1),(22,10,11),(26,10,13),(32,10,16),(34,10,17),(40,10,20),(48,10,24),(56,10,28),(58,10,29),(62,10,31),(72,10,36),(92,10,46),(102,10,51),(116,10,58);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,2,0),(6,29,2,0),(7,30,2,0),(8,31,3,1),(9,32,3,0),(10,33,3,0),(11,34,3,0),(12,35,4,1),(13,36,4,0),(14,37,4,0),(15,38,5,1),(16,39,5,0),(17,40,6,1),(18,41,6,0),(19,42,6,0),(20,43,7,1),(21,44,7,0),(22,45,7,0),(23,46,8,1),(24,47,8,0),(25,48,8,0),(26,49,9,1),(27,50,9,0),(28,51,10,1),(29,52,11,1),(30,53,11,0),(31,54,11,0),(32,55,12,1),(33,56,12,0),(34,57,13,1),(35,58,13,0),(36,59,13,0),(37,60,13,0),(38,61,14,1),(39,62,15,1),(40,63,15,0),(41,64,16,1),(42,65,16,0),(43,66,16,0),(44,67,17,1),(45,68,17,0),(46,69,18,1),(47,70,18,0),(48,71,18,0),(49,72,19,1),(50,73,19,0),(51,74,20,1),(52,75,20,0),(53,76,20,0),(54,77,21,1),(55,78,21,0),(56,79,22,1),(57,80,23,1),(58,81,23,0),(59,82,23,0),(60,83,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-03-18',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-115-A0',0,17,0,1,1,2,0,0,80.25,NULL,NULL,NULL,20.00,14.00,16.00,592.00,NULL,32784,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-167-A0',0,10,0,1,1,1,0,0,40.5,NULL,NULL,NULL,11.00,10.00,12.00,615.00,NULL,37635,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-189-A0',0,17,0,1,1,2,0,0,20,NULL,NULL,NULL,11.00,18.00,11.00,505.00,NULL,52576,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-187-A0',0,18,0,1,1,2,0,0,594,451.44,NULL,NULL,16.00,12.00,12.00,808.00,NULL,146197,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-171-A0',0,13,0,1,1,6,0,0,898,NULL,NULL,NULL,12.00,18.00,11.00,639.00,NULL,79624,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-154-A0',0,12,0,1,1,2,0,0,491,NULL,NULL,NULL,20.00,13.00,14.00,623.00,NULL,146360,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-144-A0',0,12,0,1,1,5,0,0,503,NULL,NULL,NULL,13.00,20.00,19.00,578.00,NULL,13817,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-161-A0',0,16,0,1,1,5,0,0,1254,990.66,NULL,NULL,20.00,17.00,13.00,625.00,NULL,104292,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-103-A0',0,12,0,1,1,3,0,0,591,NULL,NULL,NULL,18.00,13.00,18.00,624.00,NULL,62044,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-134-A0',0,15,0,1,0,1,0,0,1216,NULL,NULL,NULL,14.00,19.00,20.00,600.00,NULL,52781,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-115-A0',0,16,0,1,0,6,0,0,1274,NULL,NULL,NULL,12.00,11.00,10.00,680.00,NULL,161369,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-197-A0',0,13,0,1,0,4,0,0,563,405.36,NULL,NULL,14.00,16.00,12.00,507.00,NULL,14749,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-191-A0',0,15,0,1,0,7,0,0,504,NULL,NULL,NULL,17.00,18.00,17.00,587.00,NULL,145051,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-167-A0',0,13,0,1,0,7,0,0,510,NULL,NULL,NULL,11.00,14.00,13.00,847.00,NULL,114496,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-123-A0',0,13,0,1,0,2,0,0,543,NULL,NULL,NULL,14.00,11.00,17.00,881.00,NULL,78792,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-112-A0',0,13,0,1,0,7,0,0,574,493.64,NULL,NULL,19.00,10.00,14.00,844.00,NULL,57592,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-136-A0',0,15,0,1,0,5,0,0,530,NULL,NULL,NULL,13.00,18.00,20.00,769.00,NULL,128734,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-200-A0',0,18,0,1,0,2,0,0,1017,NULL,NULL,NULL,19.00,14.00,14.00,837.00,NULL,137093,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-141-A0',0,12,0,1,0,6,0,0,905,NULL,NULL,NULL,18.00,10.00,16.00,528.00,NULL,9466,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-106-A0',0,20,0,1,0,1,0,0,761,563.14,NULL,NULL,17.00,15.00,10.00,744.00,NULL,110808,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-195-A0',0,18,0,1,0,5,0,0,680,NULL,NULL,NULL,13.00,15.00,20.00,823.00,NULL,80841,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-110-A0',0,13,0,1,0,6,0,0,449,NULL,NULL,NULL,13.00,10.00,11.00,755.00,NULL,137456,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-130-A0',0,11,0,1,0,4,0,0,566,NULL,NULL,NULL,19.00,14.00,16.00,611.00,NULL,105997,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-115-A0',0,17,0,1,0,2,1,0,80.25,NULL,NULL,NULL,20.00,14.00,16.00,592.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-115-A0-A1',0,17,0,1,0,2,1,0,80.25,NULL,NULL,NULL,20.00,14.00,16.00,592.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-115-A0-A2',0,17,0,1,0,2,1,0,80.25,NULL,NULL,NULL,20.00,14.00,16.00,592.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-167-A0',0,10,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,10.00,12.00,615.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-167-A0-A1',0,10,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,10.00,12.00,615.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-167-A0-A2',0,10,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,10.00,12.00,615.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]','SW-167-A0-A3',0,10,0,1,0,1,1,0,40.5,NULL,NULL,NULL,11.00,10.00,12.00,615.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-189-A0',0,17,0,1,0,2,1,0,20,NULL,NULL,NULL,11.00,18.00,11.00,505.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-189-A0-A1',0,17,0,1,0,2,1,0,20,NULL,NULL,NULL,11.00,18.00,11.00,505.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(33,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-189-A0-A2',0,17,0,1,0,2,1,0,20,NULL,NULL,NULL,11.00,18.00,11.00,505.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(34,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-189-A0-A3',0,17,0,1,0,2,1,0,20,NULL,NULL,NULL,11.00,18.00,11.00,505.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(35,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-187-A0',0,18,0,1,0,2,1,0,594,451.44,NULL,NULL,16.00,12.00,12.00,808.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(36,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-187-A0-A1',0,18,0,1,0,2,1,0,594,421.74,NULL,NULL,16.00,12.00,12.00,808.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(37,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-187-A0-A2',0,18,0,1,0,2,1,0,594,528.66,NULL,NULL,16.00,12.00,12.00,808.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(38,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-171-A0',0,13,0,1,0,6,1,0,898,NULL,NULL,NULL,12.00,18.00,11.00,639.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(39,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-171-A0-A1',0,13,0,1,0,6,1,0,898,NULL,NULL,NULL,12.00,18.00,11.00,639.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-154-A0',0,12,0,1,0,2,1,0,491,NULL,NULL,NULL,20.00,13.00,14.00,623.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-154-A0-A1',0,12,0,1,0,2,1,0,491,NULL,NULL,NULL,20.00,13.00,14.00,623.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(42,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-154-A0-A2',0,12,0,1,0,2,1,0,491,NULL,NULL,NULL,20.00,13.00,14.00,623.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-144-A0',0,12,0,1,0,5,1,0,503,NULL,NULL,NULL,13.00,20.00,19.00,578.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(44,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-144-A0-A1',0,12,0,1,0,5,1,0,503,NULL,NULL,NULL,13.00,20.00,19.00,578.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(45,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-144-A0-A2',0,12,0,1,0,5,1,0,503,NULL,NULL,NULL,13.00,20.00,19.00,578.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(46,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-161-A0',0,16,0,1,0,5,1,0,1254,990.66,NULL,NULL,20.00,17.00,13.00,625.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(47,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-161-A0-A1',0,16,0,1,0,5,1,0,1254,890.34,NULL,NULL,20.00,17.00,13.00,625.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(48,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-161-A0-A2',0,16,0,1,0,5,1,0,1254,890.34,NULL,NULL,20.00,17.00,13.00,625.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-103-A0',0,12,0,1,0,3,1,0,591,NULL,NULL,NULL,18.00,13.00,18.00,624.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(50,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-103-A0-A1',0,12,0,1,0,3,1,0,591,NULL,NULL,NULL,18.00,13.00,18.00,624.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-134-A0',0,15,0,1,0,1,1,0,1216,NULL,NULL,NULL,14.00,19.00,20.00,600.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-115-A0',0,16,0,1,0,6,1,0,1274,NULL,NULL,NULL,12.00,11.00,10.00,680.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(53,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-115-A0-A1',0,16,0,1,0,6,1,0,1274,NULL,NULL,NULL,12.00,11.00,10.00,680.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-115-A0-A2',0,16,0,1,0,6,1,0,1274,NULL,NULL,NULL,12.00,11.00,10.00,680.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(55,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-197-A0',0,13,0,1,0,4,1,0,563,405.36,NULL,NULL,14.00,16.00,12.00,507.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-197-A0-A1',0,13,0,1,0,4,1,0,563,416.62,NULL,NULL,14.00,16.00,12.00,507.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(57,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-191-A0',0,15,0,1,0,7,1,0,504,NULL,NULL,NULL,17.00,18.00,17.00,587.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(58,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-191-A0-A1',0,15,0,1,0,7,1,0,504,NULL,NULL,NULL,17.00,18.00,17.00,587.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(59,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-191-A0-A2',0,15,0,1,0,7,1,0,504,NULL,NULL,NULL,17.00,18.00,17.00,587.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(60,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-191-A0-A3',0,15,0,1,0,7,1,0,504,NULL,NULL,NULL,17.00,18.00,17.00,587.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(61,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-167-A0',0,13,0,1,0,7,1,0,510,NULL,NULL,NULL,11.00,14.00,13.00,847.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-123-A0',0,13,0,1,0,2,1,0,543,NULL,NULL,NULL,14.00,11.00,17.00,881.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-123-A0-A1',0,13,0,1,0,2,1,0,543,NULL,NULL,NULL,14.00,11.00,17.00,881.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-112-A0',0,13,0,1,0,7,1,0,574,493.64,NULL,NULL,19.00,10.00,14.00,844.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-112-A0-A1',0,13,0,1,0,7,1,0,574,493.64,NULL,NULL,19.00,10.00,14.00,844.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(66,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-112-A0-A2',0,13,0,1,0,7,1,0,574,459.2,NULL,NULL,19.00,10.00,14.00,844.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(67,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-136-A0',0,15,0,1,0,5,1,0,530,NULL,NULL,NULL,13.00,18.00,20.00,769.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(68,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-136-A0-A1',0,15,0,1,0,5,1,0,530,NULL,NULL,NULL,13.00,18.00,20.00,769.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(69,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-200-A0',0,18,0,1,0,2,1,0,1017,NULL,NULL,NULL,19.00,14.00,14.00,837.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(70,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-200-A0-A1',0,18,0,1,0,2,1,0,1017,NULL,NULL,NULL,19.00,14.00,14.00,837.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-200-A0-A2',0,18,0,1,0,2,1,0,1017,NULL,NULL,NULL,19.00,14.00,14.00,837.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-141-A0',0,12,0,1,0,6,1,0,905,NULL,NULL,NULL,18.00,10.00,16.00,528.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-141-A0-A1',0,12,0,1,0,6,1,0,905,NULL,NULL,NULL,18.00,10.00,16.00,528.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-106-A0',0,20,0,1,0,1,1,0,761,563.14,NULL,NULL,17.00,15.00,10.00,744.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-106-A0-A1',0,20,0,1,0,1,1,0,761,662.07,NULL,NULL,17.00,15.00,10.00,744.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-106-A0-A2',0,20,0,1,0,1,1,0,761,662.07,NULL,NULL,17.00,15.00,10.00,744.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(77,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-195-A0',0,18,0,1,0,5,1,0,680,NULL,NULL,NULL,13.00,15.00,20.00,823.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(78,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-195-A0-A1',0,18,0,1,0,5,1,0,680,NULL,NULL,NULL,13.00,15.00,20.00,823.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(79,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-110-A0',0,13,0,1,0,6,1,0,449,NULL,NULL,NULL,13.00,10.00,11.00,755.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(80,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-130-A0',0,11,0,1,0,4,1,0,566,NULL,NULL,NULL,19.00,14.00,16.00,611.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(81,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-130-A0-A1',0,11,0,1,0,4,1,0,566,NULL,NULL,NULL,19.00,14.00,16.00,611.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(82,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-130-A0-A2',0,11,0,1,0,4,1,0,566,NULL,NULL,NULL,19.00,14.00,16.00,611.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(83,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-130-A0-A3',0,11,0,1,0,4,1,0,566,NULL,NULL,NULL,19.00,14.00,16.00,611.00,NULL,0,'2023-03-18 00:27:04','2023-03-18 00:27:09','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Dual Camera 20MP',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Smart Watches',NULL,NULL),('vi',30,'Smart Watches',NULL,NULL),('vi',31,'Beat Headphone',NULL,NULL),('vi',32,'Beat Headphone',NULL,NULL),('vi',33,'Beat Headphone',NULL,NULL),('vi',34,'Beat Headphone',NULL,NULL),('vi',35,'Red & Black Headphone',NULL,NULL),('vi',36,'Red & Black Headphone',NULL,NULL),('vi',37,'Red & Black Headphone',NULL,NULL),('vi',38,'Smart Watch External',NULL,NULL),('vi',39,'Smart Watch External',NULL,NULL),('vi',40,'Nikon HD camera',NULL,NULL),('vi',41,'Nikon HD camera',NULL,NULL),('vi',42,'Nikon HD camera',NULL,NULL),('vi',43,'Audio Equipment',NULL,NULL),('vi',44,'Audio Equipment',NULL,NULL),('vi',45,'Audio Equipment',NULL,NULL),('vi',46,'Smart Televisions',NULL,NULL),('vi',47,'Smart Televisions',NULL,NULL),('vi',48,'Smart Televisions',NULL,NULL),('vi',49,'Samsung Smart Phone',NULL,NULL),('vi',50,'Samsung Smart Phone',NULL,NULL),('vi',51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',52,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',53,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',54,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',55,'EPSION Plaster Printer',NULL,NULL),('vi',56,'EPSION Plaster Printer',NULL,NULL),('vi',57,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',58,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',59,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',60,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',61,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',64,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',65,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',66,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',67,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',68,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',69,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',70,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',71,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',77,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',78,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',79,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',80,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',81,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',82,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',83,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,8,4.00,'Clean & perfect source code','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(2,9,16,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(3,6,10,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(4,8,11,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(5,4,13,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(6,9,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),(7,1,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(8,3,22,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(9,9,19,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(10,4,1,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(11,5,18,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(12,9,7,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(13,8,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(14,9,18,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(15,7,4,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(16,3,14,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\"]'),(17,4,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/10.jpg\"]'),(18,4,4,5.00,'Best ecommerce CMS online store!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(19,3,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(20,6,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(21,7,16,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(22,5,14,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(23,2,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(24,10,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(25,9,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(26,1,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(28,5,10,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(30,9,20,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(31,6,17,4.00,'Good app, good backup service and support. Good documentation.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(32,2,7,1.00,'Good app, good backup service and support. Good documentation.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(33,4,21,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(35,8,3,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\"]'),(36,7,6,2.00,'Best ecommerce CMS online store!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\"]'),(37,4,11,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(38,7,19,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(39,10,20,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(40,9,17,2.00,'Best ecommerce CMS online store!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(41,4,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(42,6,14,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(44,4,14,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(45,6,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\"]'),(47,9,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/11.jpg\"}'),(48,7,22,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\"]'),(49,8,5,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(50,8,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\"]'),(51,8,15,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(52,8,13,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(53,7,15,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\"]'),(54,3,5,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(57,5,7,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/9.jpg\"}'),(58,9,8,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(60,7,2,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\"]'),(61,3,11,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(62,2,2,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\"]'),(63,8,9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(64,10,23,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(66,1,5,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\"]'),(67,8,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(68,7,20,4.00,'Clean & perfect source code','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(70,9,1,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(71,2,4,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\"]'),(72,6,9,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\"]'),(73,10,3,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(74,1,11,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(76,7,21,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(78,5,4,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(79,6,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/11.jpg\"}'),(80,8,10,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(81,9,5,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(82,7,11,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(83,8,17,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/21.jpg\"]'),(84,1,6,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(85,5,1,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(86,4,15,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(88,4,19,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(90,8,7,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(91,1,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(92,6,5,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(93,6,16,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(95,8,4,4.00,'Good app, good backup service and support. Good documentation.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(97,3,4,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-18 00:27:06','2023-03-18 00:27:06','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-03-09 16:27:09','2023-03-09 16:27:09'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-03-16 08:27:09','2023-03-18 00:27:09'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-03-01 08:27:09','2023-03-01 08:27:09'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-03-16 08:27:09','2023-03-18 00:27:09'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-03-16 10:27:09','2023-03-16 10:27:09'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-03-16 10:27:09','2023-03-18 00:27:09'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-03-14 20:27:09','2023-03-14 20:27:09'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-03-16 10:27:09','2023-03-18 00:27:09'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-03-03 00:27:09','2023-03-03 00:27:09'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-03-16 12:27:09','2023-03-18 00:27:09'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-03-13 18:27:09','2023-03-13 18:27:09'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-03-16 14:27:09','2023-03-18 00:27:09'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-03-10 22:27:09','2023-03-10 22:27:09'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-03-16 14:27:09','2023-03-18 00:27:09'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-03-10 00:27:09','2023-03-10 00:27:09'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-03-16 16:27:09','2023-03-18 00:27:09'),(19,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-03-14 00:27:09','2023-03-14 00:27:09'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-03-16 16:27:09','2023-03-18 00:27:09'),(21,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-03-09 06:27:09','2023-03-09 06:27:09'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-03-16 18:27:09','2023-03-18 00:27:09'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(24,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-03-06 08:27:09','2023-03-06 08:27:09'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-03-16 20:27:09','2023-03-18 00:27:09'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-03-12 04:27:09','2023-03-12 04:27:09'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-03-16 20:27:09','2023-03-18 00:27:09'),(28,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-03-12 14:27:09','2023-03-12 14:27:09'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-03-16 22:27:09','2023-03-18 00:27:09'),(30,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-03-14 18:27:09','2023-03-14 18:27:09'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-03-16 22:27:09','2023-03-18 00:27:09'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(33,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-03-17 00:27:09','2023-03-18 00:27:09'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(36,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-03-13 00:27:09','2023-03-13 00:27:09'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-03-17 00:27:09','2023-03-18 00:27:09'),(38,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,16,16,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(40,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-03-16 00:27:09','2023-03-16 00:27:09'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-03-17 00:27:09','2023-03-18 00:27:09'),(42,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-03-16 04:27:09','2023-03-16 04:27:09'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-03-17 02:27:09','2023-03-18 00:27:09'),(44,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-03-17 02:27:09','2023-03-17 02:27:09'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-03-17 02:27:09','2023-03-18 00:27:09'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-03-17 04:27:09','2023-03-18 00:27:09'),(49,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-03-12 00:27:09','2023-03-12 00:27:09'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-03-17 06:27:09','2023-03-18 00:27:09'),(51,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,21,21,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(52,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,21,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(53,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-03-15 18:27:09','2023-03-15 18:27:09'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-03-17 06:27:09','2023-03-18 00:27:09'),(55,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,22,22,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-03-14 16:27:09','2023-03-14 16:27:09'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-03-17 08:27:09','2023-03-18 00:27:09'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(60,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-03-11 08:27:09','2023-03-11 08:27:09'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-03-17 08:27:09','2023-03-18 00:27:09'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(63,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-03-17 10:27:09','2023-03-18 00:27:09'),(65,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-03-13 22:27:09','2023-03-13 22:27:09'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-03-17 10:27:09','2023-03-18 00:27:09'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(68,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-03-17 10:27:09','2023-03-17 10:27:09'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-03-17 10:27:09','2023-03-18 00:27:09'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,27,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(71,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-03-17 12:27:09','2023-03-17 12:27:09'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-03-17 12:27:09','2023-03-18 00:27:09'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(74,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-03-15 12:27:09','2023-03-15 12:27:09'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-03-17 12:27:09','2023-03-18 00:27:09'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-03-18 00:27:09','2023-03-18 00:27:09'),(77,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-03-17 14:27:09','2023-03-17 14:27:09'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-03-17 14:27:09','2023-03-18 00:27:09'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(80,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-03-16 18:27:10','2023-03-16 18:27:10'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-03-17 14:27:10','2023-03-18 00:27:10'),(82,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-03-17 08:27:10','2023-03-17 08:27:10'),(83,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-03-17 16:27:10','2023-03-18 00:27:10'),(84,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-03-16 08:27:10','2023-03-16 08:27:10'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-03-17 16:27:10','2023-03-18 00:27:10'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(87,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-03-14 16:27:10','2023-03-14 16:27:10'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-03-17 16:27:10','2023-03-18 00:27:10'),(89,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,34,'2023-03-18 00:27:10','2023-03-18 00:27:10'),(90,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-03-17 12:27:10','2023-03-17 12:27:10'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-03-17 18:27:10','2023-03-18 00:27:10'),(92,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-03-17 06:27:10','2023-03-17 06:27:10'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-03-17 18:27:10','2023-03-18 00:27:10'),(94,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-03-16 12:27:10','2023-03-16 12:27:10'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-03-17 20:27:10','2023-03-18 00:27:10'),(96,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-03-17 20:27:10','2023-03-18 00:27:10'),(98,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-03-17 20:27:10','2023-03-17 20:27:10'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-03-17 22:27:10','2023-03-18 00:27:10');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2043.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0093677897','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-27 07:27:09',NULL,NULL,NULL),(2,2,NULL,1488.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0092889853','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-23 07:27:09','2023-03-18 07:27:09',NULL,NULL),(3,3,NULL,3726.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0067945269','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:09','2023-03-18 07:27:09',NULL,NULL),(4,4,NULL,1156.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0015298145','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-22 07:27:09',NULL,NULL,NULL),(5,5,NULL,3078.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0098892217','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-24 07:27:09',NULL,NULL,NULL),(6,6,NULL,2307.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0088829673','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-28 07:27:09',NULL,NULL,NULL),(7,7,NULL,2232.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD008413806','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-23 07:27:09',NULL,NULL,NULL),(8,8,NULL,2429.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0075087318','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-25 07:27:09',NULL,NULL,NULL),(9,9,NULL,1584.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0042894359','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-25 07:27:09',NULL,NULL,NULL),(10,10,NULL,2456.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0011019083','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-22 07:27:09','2023-03-18 07:27:09',NULL,NULL),(11,11,NULL,4635.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0068317500','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:09',NULL,NULL,NULL),(12,12,NULL,611.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0012596706','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09',NULL,NULL,NULL),(13,13,NULL,5515.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0063903557','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-22 07:27:09',NULL,NULL,NULL),(14,14,NULL,1761.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD004708297','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:09','2023-03-18 07:27:09',NULL,NULL),(15,15,NULL,3276.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD008953893','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09','2023-03-18 07:27:09',NULL,NULL),(16,16,NULL,2307.00,NULL,NULL,'','delivered',1590.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0090284258','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-21 07:27:09','2023-03-18 07:27:09',NULL,NULL),(17,17,NULL,1833.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0015519660','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-25 07:27:09',NULL,NULL,NULL),(18,18,NULL,1616.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0020902970','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-24 07:27:09',NULL,NULL,NULL),(19,19,NULL,837.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD003253103','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-27 07:27:09','2023-03-18 07:27:09',NULL,NULL),(20,20,NULL,5994.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0054063414','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:09',NULL,NULL,NULL),(21,21,NULL,1246.00,NULL,NULL,'','delivered',982.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0077543178','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09','2023-03-18 07:27:09',NULL,NULL),(22,22,NULL,3062.00,NULL,NULL,'','delivered',5599.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0013012644','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-23 07:27:09','2023-03-18 07:27:09',NULL,NULL),(23,23,NULL,2947.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0045969187','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-28 07:27:09','2023-03-18 07:27:09',NULL,NULL),(24,24,NULL,844.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0025311744','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09','2023-03-18 07:27:09',NULL,NULL),(25,25,NULL,505.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0073387281','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09',NULL,NULL,NULL),(26,26,NULL,1652.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0039660915','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-22 07:27:09','2023-03-18 07:27:09',NULL,NULL),(27,27,NULL,1674.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD007339718','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-21 07:27:09','2023-03-18 07:27:09',NULL,NULL),(28,28,NULL,3542.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0056746526','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:09','2023-03-18 07:27:09',NULL,NULL),(29,29,NULL,769.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0024928211','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-19 07:27:09','2023-03-18 07:27:09',NULL,NULL),(30,30,NULL,1761.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:09','2023-03-18 00:27:09','JJD0070817421','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-25 07:27:09','2023-03-18 07:27:09',NULL,NULL),(31,31,NULL,769.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0084045147','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-25 07:27:10',NULL,NULL,NULL),(32,32,NULL,1248.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0056880031','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-21 07:27:10',NULL,NULL,NULL),(33,33,NULL,4365.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0024773727','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:10','2023-03-18 07:27:10',NULL,NULL),(34,34,NULL,823.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0051164397','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-26 07:27:10','2023-03-18 07:27:10',NULL,NULL),(35,35,NULL,4960.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0066692271','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-27 07:27:10',NULL,NULL,NULL),(36,36,NULL,823.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0017132747','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-22 07:27:10',NULL,NULL,NULL),(37,37,NULL,1250.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0042624964','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-27 07:27:10',NULL,NULL,NULL),(38,38,NULL,611.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0067878486','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:10',NULL,NULL,NULL),(39,39,NULL,2698.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-18 00:27:10','2023-03-18 00:27:10','JJD0052964408','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-20 07:27:10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(2,'None',0.000000,2,'published','2023-03-18 00:27:06','2023-03-18 00:27:06'),(3,'Import Tax',15.000000,3,'published','2023-03-18 00:27:06','2023-03-18 00:27:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'PAYMENT',1,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'ORDER &amp; RETURNS',2,'published','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','a4a916cbc9f2ffcafc9f19392922751a',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','a4a916cbc9f2ffcafc9f19392922751a',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','0026e45e3690a89bc2e97873558146d5',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','37a78003e854b42e4551d10bd52053d7',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','2b70b0547ea15916fce43bba204ee442',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','deb2ed91dfc10de30de2b3dd55ad8898',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','059e79ce54917c301c209dd4262cebe0',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','fb617e1700e636306b369b41042cff0a',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','37a78003e854b42e4551d10bd52053d7',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','2b70b0547ea15916fce43bba204ee442',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','deb2ed91dfc10de30de2b3dd55ad8898',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','059e79ce54917c301c209dd4262cebe0',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',916,'brands/1.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(2,0,'2','2',1,'image/jpeg',916,'brands/2.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(3,0,'3','3',1,'image/jpeg',916,'brands/3.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(4,0,'4','4',1,'image/jpeg',916,'brands/4.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(5,0,'5','5',1,'image/jpeg',916,'brands/5.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(6,0,'6','6',1,'image/jpeg',916,'brands/6.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(7,0,'7','7',1,'image/jpeg',916,'brands/7.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(8,0,'1','1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(9,0,'2','2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(10,0,'3','3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(11,0,'4','4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(12,0,'5','5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(13,0,'6','6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(14,0,'7','7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(15,0,'8','8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(16,0,'1','1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(17,0,'10-1','10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(18,0,'10-2','10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(19,0,'10','10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(20,0,'11-1','11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(21,0,'11-2','11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(22,0,'11-3','11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(23,0,'11','11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(24,0,'12-1','12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(25,0,'12-2','12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(26,0,'12-3','12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(27,0,'12','12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(28,0,'13-1','13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(29,0,'13','13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(30,0,'14','14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(31,0,'15-1','15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(32,0,'15','15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(33,0,'16','16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(34,0,'17-1','17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(35,0,'17-2','17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(36,0,'17-3','17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(37,0,'17','17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(38,0,'18-1','18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(39,0,'18-2','18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(40,0,'18-3','18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(41,0,'18','18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(42,0,'19-1','19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(43,0,'19-2','19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(44,0,'19-3','19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2023-03-18 00:27:01','2023-03-18 00:27:01',NULL),(45,0,'19','19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(46,0,'2-1','2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(47,0,'2-2','2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(48,0,'2-3','2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(49,0,'2','2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(50,0,'20-1','20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(51,0,'20-2','20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(52,0,'20-3','20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(53,0,'20','20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(54,0,'21-1','21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(55,0,'21-2','21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(56,0,'21','21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(57,0,'22-1','22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(58,0,'22-2','22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(59,0,'22-3','22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(60,0,'22','22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(61,0,'23-1','23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-03-18 00:27:02','2023-03-18 00:27:02',NULL),(62,0,'23-2','23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(63,0,'23-3','23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(64,0,'23','23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(65,0,'3','3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(66,0,'4-1','4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(67,0,'4-2','4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(68,0,'4-3','4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(69,0,'4','4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(70,0,'5-1','5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(71,0,'5-2','5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(72,0,'5-3','5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(73,0,'5','5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(74,0,'6','6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(75,0,'7','7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(76,0,'8-1','8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(77,0,'8-2','8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(78,0,'8-3','8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(79,0,'8','8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(80,0,'9-1','9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(81,0,'9-2','9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2023-03-18 00:27:03','2023-03-18 00:27:03',NULL),(82,0,'9','9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(83,0,'1','1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(84,0,'10','10',4,'image/jpeg',2165,'customers/10.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(85,0,'2','2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(86,0,'3','3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(87,0,'4','4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(88,0,'5','5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-03-18 00:27:05','2023-03-18 00:27:05',NULL),(89,0,'6','6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-03-18 00:27:05','2023-03-18 00:27:05',NULL),(90,0,'7','7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-03-18 00:27:05','2023-03-18 00:27:05',NULL),(91,0,'8','8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-03-18 00:27:05','2023-03-18 00:27:05',NULL),(92,0,'9','9',4,'image/jpeg',2165,'customers/9.jpg','[]','2023-03-18 00:27:05','2023-03-18 00:27:05',NULL),(93,0,'1','1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(94,0,'10','10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(95,0,'11','11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(96,0,'2','2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(97,0,'3','3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(98,0,'4','4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(99,0,'5','5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(100,0,'6','6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(101,0,'7','7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(102,0,'8','8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(103,0,'9','9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(105,0,'1-md','1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(108,0,'2-md','2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(111,0,'3-md','3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(113,0,'1','1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(114,0,'2','2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(115,0,'3','3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(116,0,'4','4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(117,0,'5','5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(118,0,'6','6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(119,0,'7','7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(120,0,'8','8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(121,0,'9','9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(122,0,'app','app',8,'image/png',1849,'general/app.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(124,0,'favicon','favicon',8,'image/png',1925,'general/favicon.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(126,0,'logo-light','logo-light',8,'image/png',783,'general/logo-light.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(127,0,'logo','logo',8,'image/png',793,'general/logo.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(134,0,'1','1',9,'image/png',3482,'stores/1.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(135,0,'10','10',9,'image/png',1675,'stores/10.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(136,0,'11','11',9,'image/png',1857,'stores/11.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(137,0,'12','12',9,'image/png',2046,'stores/12.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(138,0,'13','13',9,'image/png',1597,'stores/13.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(139,0,'14','14',9,'image/png',1649,'stores/14.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(140,0,'15','15',9,'image/png',2120,'stores/15.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(141,0,'16','16',9,'image/png',2556,'stores/16.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(142,0,'17','17',9,'image/png',2631,'stores/17.png','[]','2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(143,0,'2','2',9,'image/png',3369,'stores/2.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(144,0,'3','3',9,'image/png',3044,'stores/3.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(145,0,'4','4',9,'image/png',3096,'stores/4.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(146,0,'5','5',9,'image/png',3607,'stores/5.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(147,0,'6','6',9,'image/png',3778,'stores/6.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(148,0,'7','7',9,'image/png',1566,'stores/7.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(149,0,'8','8',9,'image/png',1773,'stores/8.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL),(150,0,'9','9',9,'image/png',1671,'stores/9.png','[]','2023-03-18 00:27:09','2023-03-18 00:27:09',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(2,0,'product-categories','product-categories',0,'2023-03-18 00:26:59','2023-03-18 00:26:59',NULL),(3,0,'products','products',0,'2023-03-18 00:27:00','2023-03-18 00:27:00',NULL),(4,0,'customers','customers',0,'2023-03-18 00:27:04','2023-03-18 00:27:04',NULL),(5,0,'news','news',0,'2023-03-18 00:27:06','2023-03-18 00:27:06',NULL),(6,0,'sliders','sliders',0,'2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(7,0,'promotion','promotion',0,'2023-03-18 00:27:07','2023-03-18 00:27:07',NULL),(8,0,'general','general',0,'2023-03-18 00:27:08','2023-03-18 00:27:08',NULL),(9,0,'stores','stores',0,'2023-03-18 00:27:08','2023-03-18 00:27:08',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,5,'main-menu','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'Quick links','quick-links','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'Company','company','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,'Business','business','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(5,'Menu chính','menu-chinh','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(7,'Công ty','cong-ty','published','2023-03-18 00:27:08','2023-03-18 00:27:08'),(8,'Doanh nghiệp','doanh-nghiep','published','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-18 00:27:00','2023-03-18 00:27:00'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-03-18 00:27:04','2023-03-18 00:27:04'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2020_11_18_150916_ads_create_ads_table',2),(28,'2021_12_02_035301_add_ads_translations_table',2),(29,'2015_06_29_025744_create_audit_history',3),(30,'2015_06_18_033822_create_blog_table',4),(31,'2021_02_16_092633_remove_default_value_for_author_type',4),(32,'2021_12_03_030600_create_blog_translations',4),(33,'2022_04_19_113923_add_index_to_table_posts',4),(34,'2016_06_17_091537_create_contacts_table',5),(35,'2020_03_05_041139_create_ecommerce_tables',6),(36,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(37,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(38,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(39,'2021_02_18_073505_update_table_ec_reviews',6),(40,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(41,'2021_03_10_025153_change_column_tax_amount',6),(42,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(43,'2021_04_28_074008_ecommerce_create_product_label_table',6),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(45,'2021_06_28_153141_correct_slugs_data',6),(46,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(47,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(48,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(49,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(51,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(52,'2021_11_23_071403_correct_languages_for_product_variations',6),(53,'2021_11_28_031808_add_product_tags_translations',6),(54,'2021_12_01_031123_add_featured_image_to_ec_products',6),(55,'2022_01_01_033107_update_table_ec_shipments',6),(56,'2022_02_16_042457_improve_product_attribute_sets',6),(57,'2022_03_22_075758_correct_product_name',6),(58,'2022_04_19_113334_add_index_to_ec_products',6),(59,'2022_04_28_144405_remove_unused_table',6),(60,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(61,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(62,'2022_06_16_095633_add_index_to_some_tables',6),(63,'2022_06_30_035148_create_order_referrals_table',6),(64,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(65,'2022_08_14_032836_create_ec_order_returns_table',6),(66,'2022_08_14_033554_create_ec_order_return_items_table',6),(67,'2022_08_15_040324_add_billing_address',6),(68,'2022_08_30_091114_support_digital_products_table',6),(69,'2022_09_13_095744_create_options_table',6),(70,'2022_09_13_104347_create_option_value_table',6),(71,'2022_10_05_163518_alter_table_ec_order_product',6),(72,'2022_10_12_041517_create_invoices_table',6),(73,'2022_10_12_142226_update_orders_table',6),(74,'2022_10_13_024916_update_table_order_returns',6),(75,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(76,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(77,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(78,'2022_11_19_041643_add_ec_tax_product_table',6),(79,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(80,'2022_12_17_041532_fix_address_in_order_invoice',6),(81,'2022_12_26_070329_create_ec_product_views_table',6),(82,'2023_01_04_033051_fix_product_categories',6),(83,'2023_01_09_050400_add_ec_global_options_translations_table',6),(84,'2023_01_10_093754_add_missing_option_value_id',6),(85,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(86,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(87,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(88,'2023_02_27_095752_remove_duplicate_reviews',6),(89,'2018_07_09_221238_create_faq_table',7),(90,'2021_12_03_082134_create_faq_translations',7),(91,'2016_10_03_032336_create_languages_table',8),(92,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(93,'2021_12_03_075608_create_page_translations',9),(94,'2019_11_18_061011_create_country_table',10),(95,'2021_12_03_084118_create_location_translations',10),(96,'2021_12_03_094518_migrate_old_location_data',10),(97,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(98,'2022_01_16_085908_improve_plugin_location',10),(99,'2022_08_04_052122_delete_location_backup_tables',10),(100,'2022_10_29_065232_increase_states_abbreviation_column',10),(101,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(102,'2021_07_06_030002_create_marketplace_table',11),(103,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(104,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(105,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(106,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(107,'2021_12_06_031304_update_table_mp_customer_revenues',11),(108,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(109,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(110,'2022_11_02_071413_add_more_info_for_store',11),(111,'2022_11_02_080444_add_tax_info',11),(112,'2023_02_01_062030_add_store_translations',11),(113,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(114,'2023_02_17_023648_fix_store_prefix',11),(115,'2017_10_24_154832_create_newsletter_table',12),(116,'2017_05_18_080441_create_payment_tables',13),(117,'2021_03_27_144913_add_customer_type_into_table_payments',13),(118,'2021_05_24_034720_make_column_currency_nullable',13),(119,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(120,'2021_10_19_020859_update_metadata_field',13),(121,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(122,'2022_07_07_153354_update_charge_id_in_table_payments',13),(123,'2017_07_11_140018_create_simple_slider_table',14),(124,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,7,2,1522.00,0.00,1522.00,0.00,'USD',NULL,'2023-03-11 08:27:10','2023-03-11 08:27:10',0,NULL),(2,7,10,2189.00,0.00,2189.00,1522.00,'USD',NULL,'2023-03-01 08:27:10','2023-03-01 08:27:10',0,NULL),(3,2,14,1512.00,0.00,1512.00,0.00,'USD',NULL,'2023-03-14 16:27:10','2023-03-14 16:27:10',0,NULL),(4,2,15,1572.00,0.00,1572.00,1512.00,'USD',NULL,'2023-02-12 16:27:10','2023-02-12 16:27:10',0,NULL),(5,8,19,1017.00,0.00,1017.00,0.00,'USD',NULL,'2023-02-12 16:27:10','2023-02-12 16:27:10',0,NULL),(6,2,23,2393.00,0.00,2393.00,3084.00,'USD',NULL,'2023-02-22 16:27:10','2023-02-22 16:27:10',0,NULL),(7,7,24,574.00,0.00,574.00,3711.00,'USD',NULL,'2023-02-16 00:27:11','2023-02-16 00:27:11',0,NULL),(8,7,26,1168.00,0.00,1168.00,4285.00,'USD',NULL,'2023-03-14 16:27:11','2023-03-14 16:27:11',0,NULL),(9,8,27,2034.00,0.00,2034.00,1017.00,'USD',NULL,'2023-03-11 08:27:11','2023-03-11 08:27:11',0,NULL),(10,2,28,3772.00,0.00,3772.00,5477.00,'USD',NULL,'2023-03-01 08:27:11','2023-03-01 08:27:11',0,NULL),(11,8,29,530.00,0.00,530.00,3051.00,'USD',NULL,'2023-02-22 16:27:11','2023-02-22 16:27:11',0,NULL),(12,2,30,1512.00,0.00,1512.00,9249.00,'USD',NULL,'2023-02-16 00:27:11','2023-02-16 00:27:11',0,NULL),(13,7,33,3420.00,0.00,3420.00,5453.00,'USD',NULL,'2023-03-14 16:27:11','2023-03-14 16:27:11',0,NULL),(14,2,34,680.00,0.00,680.00,10761.00,'USD',NULL,'2023-03-01 08:27:11','2023-03-01 08:27:11',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,33.00,11441.00,'USD','','{\"name\":\"Michale Graham\",\"number\":\"+19207804509\",\"full_name\":\"Monserrat Bosco\",\"description\":\"Jayden Lynch\"}',NULL,0,'processing',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(2,2,0.00,979.00,11408.00,'USD','','{\"name\":\"Michale Graham\",\"number\":\"+19207804509\",\"full_name\":\"Monserrat Bosco\",\"description\":\"Jayden Lynch\"}',NULL,0,'completed',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(3,2,0.00,1755.00,10429.00,'USD','','{\"name\":\"Michale Graham\",\"number\":\"+19207804509\",\"full_name\":\"Monserrat Bosco\",\"description\":\"Jayden Lynch\"}',NULL,0,'completed',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(4,2,0.00,2406.00,8674.00,'USD','','{\"name\":\"Michale Graham\",\"number\":\"+19207804509\",\"full_name\":\"Monserrat Bosco\",\"description\":\"Jayden Lynch\"}',NULL,0,'processing',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(5,7,0.00,761.00,8873.00,'USD','','{\"name\":\"Payton Kirlin\",\"number\":\"+12188801113\",\"full_name\":\"Virginie Cronin\",\"description\":\"Kory Tremblay\"}',NULL,0,'completed',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(6,7,0.00,1311.00,8112.00,'USD','','{\"name\":\"Payton Kirlin\",\"number\":\"+12188801113\",\"full_name\":\"Virginie Cronin\",\"description\":\"Kory Tremblay\"}',NULL,0,'pending',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(7,7,0.00,836.00,6801.00,'USD','','{\"name\":\"Payton Kirlin\",\"number\":\"+12188801113\",\"full_name\":\"Virginie Cronin\",\"description\":\"Kory Tremblay\"}',NULL,0,'completed',NULL,'2023-03-18 00:27:12','2023-03-18 00:27:12',NULL),(8,7,0.00,574.00,5965.00,'USD','','{\"name\":\"Payton Kirlin\",\"number\":\"+12188801113\",\"full_name\":\"Virginie Cronin\",\"description\":\"Kory Tremblay\"}',NULL,0,'processing',NULL,'2023-03-18 00:27:13','2023-03-18 00:27:13',NULL),(9,8,0.00,427.00,3581.00,'USD','','{\"name\":\"Mr. Desmond Leffler III\",\"number\":\"+13474237973\",\"full_name\":\"Jimmy Emard IV\",\"description\":\"Mrs. Mara Doyle IV\"}',NULL,0,'processing',NULL,'2023-03-18 00:27:13','2023-03-18 00:27:13',NULL),(10,8,0.00,944.00,3154.00,'USD','','{\"name\":\"Mr. Desmond Leffler III\",\"number\":\"+13474237973\",\"full_name\":\"Jimmy Emard IV\",\"description\":\"Mrs. Mara Doyle IV\"}',NULL,0,'processing',NULL,'2023-03-18 00:27:13','2023-03-18 00:27:13',NULL),(11,8,0.00,293.00,2210.00,'USD','','{\"name\":\"Mr. Desmond Leffler III\",\"number\":\"+13474237973\",\"full_name\":\"Jimmy Emard IV\",\"description\":\"Mrs. Mara Doyle IV\"}',NULL,0,'pending',NULL,'2023-03-18 00:27:13','2023-03-18 00:27:13',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','asha22@example.net','+19383368004','7447 Sabrina Lakes Suite 508','IM','Montana','Port Allene',2,'stores/1.png','Sint dolor molestiae suscipit.','Ratione cum et reiciendis ut hic quo deleniti. Est ut illo laboriosam reiciendis aperiam et aut. Ducimus laboriosam nisi iure.','published',NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09',NULL,NULL),(2,'Global Office','dickinson.gene@example.org','+13186235943','372 Lexus Inlet','UY','Tennessee','Breitenbergchester',7,'stores/2.png','Odio saepe consectetur asperiores porro.','Quidem maiores quos numquam sed. Magni quis saepe voluptatibus repellendus quis modi iste. Adipisci non alias dolore hic asperiores est molestiae.','published',NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09',NULL,NULL),(3,'Young Shop','bruce.stroman@example.net','+13512745243','7941 Lockman Greens','BT','Maryland','Volkmanport',8,'stores/3.png','Eligendi omnis libero enim ut debitis nihil enim.','Accusantium aut accusamus quo ad. Molestiae enim maxime nostrum et eum occaecati. Qui aut voluptatem enim animi.','published',NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,6268.00,0.00,11441.00,'$2y$10$ljQv90h3et0RrvW04INGYeJb5yzcC1Huhy9IlUFQm5OpEFPZbyyjq','{\"name\":\"Michale Graham\",\"number\":\"+19207804509\",\"full_name\":\"Monserrat Bosco\",\"description\":\"Jayden Lynch\"}','2023-03-18 00:27:09','2023-03-18 00:27:12','bank_transfer',NULL),(2,7,5391.00,0.00,8873.00,'$2y$10$Y3btapEv.7qdyoc4U9yw2enpPzrjy.AC3kxL4BPTwEsHKiiGPwq5W','{\"name\":\"Payton Kirlin\",\"number\":\"+12188801113\",\"full_name\":\"Virginie Cronin\",\"description\":\"Kory Tremblay\"}','2023-03-18 00:27:09','2023-03-18 00:27:13','bank_transfer',NULL),(3,8,1917.00,0.00,3581.00,'$2y$10$mEj1RW3SDRUQ3yswhSfK4eY4UtsPlCx5tD9v5Lw6u8Xy8mYgzpjPq','{\"name\":\"Mr. Desmond Leffler III\",\"number\":\"+13474237973\",\"full_name\":\"Jimmy Emard IV\",\"description\":\"Mrs. Mara Doyle IV\"}','2023-03-18 00:27:09','2023-03-18 00:27:13','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,'About us','<p>Alice opened the door between us. For instance, if you don\'t even know what to do next, when suddenly a footman in livery came running out of the Nile On every golden scale! \'How cheerfully he seems to be almost out of sight, they were lying on their slates, when the White Rabbit hurried by--the frightened Mouse splashed his way through the doorway; \'and even if my head would go through,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice.</p><p>She drew her foot as far as they all cheered. Alice thought she might as well as the White Rabbit read:-- \'They told me he was going on, as she could, for the Duchess replied, in a dreamy sort of knot, and then they wouldn\'t be in Bill\'s place for a minute, trying to fix on one, the cook had disappeared. \'Never mind!\' said the Gryphon, sighing in his turn; and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the same age as herself, to see its.</p><p>Alice ventured to taste it, and then they both sat silent and looked at Two. Two began in a twinkling! Half-past one, time for dinner!\' (\'I only wish they WOULD not remember ever having heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Gryphon. \'Well, I never knew so much contradicted in her life before, and behind it, it occurred to her chin upon Alice\'s shoulder, and it set to work nibbling at the cook took the place of the hall: in fact she was in March.\' As.</p><p>What would become of me?\' Luckily for Alice, the little golden key, and when she caught it, and very angrily. \'A knot!\' said Alice, always ready to ask any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, turning to the other: the Duchess was sitting between them, fast asleep, and the choking of the bread-and-butter. Just at this moment the King, \'or I\'ll have you executed on the other side will make you dry enough!\' They all sat down again into its face in her hands, wondering if.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(3,'Terms Of Use','<p>King turned pale, and shut his eyes.--\'Tell her about the reason is--\' here the Mock Turtle replied in an offended tone, \'so I should think you could keep it to half-past one as long as you can--\' \'Swim after them!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice in a languid, sleepy voice. \'Who are YOU?\' said the Queen. \'I haven\'t the slightest idea,\' said the Cat said, waving its right paw round, \'lives a March Hare. The Hatter was out of court! Suppress him! Pinch him! Off with his.</p><p>Lizard, who seemed ready to talk about her pet: \'Dinah\'s our cat. And she\'s such a new idea to Alice, and she felt unhappy. \'It was the fan and a scroll of parchment in the wind, and the constant heavy sobbing of the tale was something like it,\' said Alice. \'Did you say it.\' \'That\'s nothing to what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been changed several times since then.\' \'What do you call him Tortoise--\' \'Why did they live at the house.</p><p>Sends in a whisper.) \'That would be very likely it can be,\' said the King; and the jury had a VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what did the archbishop find?\' The Mouse did not like to be found: all she could get to the tarts on the floor, as it went, as if he had a bone in his sleep, \'that \"I breathe when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'ve tried the effect of.</p><p>When the procession moved on, three of her voice. Nobody moved. \'Who cares for you?\' said the King, \'that only makes the world you fly, Like a tea-tray in the house, and wondering what to beautify is, I can\'t put it right; \'not that it is!\' \'Why should it?\' muttered the Hatter. \'I told you butter wouldn\'t suit the works!\' he added in a very curious to see its meaning. \'And just as well wait, as she spoke; \'either you or your head must be on the bank, and of having nothing to do.\" Said the.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(4,'Terms &amp; Conditions','<p>Mabel, for I know I do!\' said Alice sadly. \'Hand it over here,\' said the Cat. \'I said pig,\' replied Alice; \'and I do it again and again.\' \'You are old,\' said the Dormouse, who seemed ready to talk nonsense. The Queen\'s argument was, that if something wasn\'t done about it while the Mouse heard this, it turned a back-somersault in at the top of her head down to the garden door. Poor Alice! It was the BEST butter, you know.\' \'I don\'t quite understand you,\' she said, as politely as she could. \'The.</p><p>Duchess was VERY ugly; and secondly, because she was exactly the right words,\' said poor Alice, \'it would be QUITE as much use in knocking,\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a day did you manage on the stairs. Alice knew it was empty: she did not like to see the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself, as she added, to herself, \'Now, what am I to get through the.</p><p>I\'ve said as yet.\' \'A cheap sort of life! I do wonder what they\'ll do well enough; don\'t be nervous, or I\'ll have you executed, whether you\'re a little before she had caught the baby violently up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Hatter. \'I deny it!\' said the Queen, who was reading the list of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Hatter: \'as the things get used up.\' \'But what happens when one eats cake, but Alice had been looking at.</p><p>On various pretexts they all spoke at once, and ran off, thinking while she remembered how small she was holding, and she hastily dried her eyes to see it quite plainly through the glass, and she had made her draw back in their paws. \'And how do you call him Tortoise--\' \'Why did you manage on the end of the jury asked. \'That I can\'t see you?\' She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the jury eagerly wrote down all three dates on their slates, \'SHE.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(5,'Refund Policy','<p>Dormouse go on crying in this affair, He trusts to you how the Dodo suddenly called out to sea as you say things are \"much of a water-well,\' said the Dormouse: \'not in that soup!\' Alice said to live. \'I\'ve seen a good opportunity for croqueting one of them didn\'t know how to begin.\' For, you see, Alice had never left off when they saw the Mock Turtle had just begun \'Well, of all this time, as it can be,\' said the youth, \'one would hardly suppose That your eye was as long as it was over at.</p><p>YOUR opinion,\' said Alice. \'Why, you don\'t even know what to beautify is, I suppose?\' \'Yes,\' said Alice indignantly, and she at once in the world you fly, Like a tea-tray in the other. \'I beg your pardon!\' said the King; and the reason and all the time they had to fall a long silence after this, and after a pause: \'the reason is, that there\'s any one of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Turn a somersault in the pool as it left no mark on the ground as she.</p><p>Dormouse fell asleep instantly, and neither of the jury consider their verdict,\' the King hastily said, and went down to them, they were filled with cupboards and book-shelves; here and there she saw maps and pictures hung upon pegs. She took down a large mustard-mine near here. And the Gryphon said to herself; \'the March Hare was said to the table to measure herself by it, and on it (as she had but to open them again, and did not at all know whether it would all wash off in the kitchen that.</p><p>Mock Turtle. \'Very much indeed,\' said Alice. \'Well, then,\' the Cat again, sitting on a three-legged stool in the window?\' \'Sure, it\'s an arm for all that.\' \'Well, it\'s got no sorrow, you know. So you see, Miss, this here ought to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself \'This is Bill,\' she gave one sharp kick, and waited to see if there were three little sisters--they were learning to draw,\' the Dormouse went on, \'What HAVE you been doing here?\'.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(10,'Affiliate','<p>Hatter. \'I told you butter wouldn\'t suit the works!\' he added looking angrily at the door-- Pray, what is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the best way you can;--but I must go by the English, who wanted leaders, and had just begun to dream that she had never been so much frightened that she had never been in a hurry that she never knew so much at this, she was shrinking rapidly; so she began nursing her child again, singing a.</p><p>SHOES.\' the Gryphon went on. Her listeners were perfectly quiet till she had sat down a very good height indeed!\' said the Footman, \'and that for two reasons. First, because I\'m on the stairs. Alice knew it was a child,\' said the Duchess, \'as pigs have to fly; and the White Rabbit. She was walking by the fire, and at last the Mouse, turning to the rose-tree, she went on: \'--that begins with an M, such as mouse-traps, and the whole head appeared, and then all the first to break the silence.</p><p>I shall remember it in asking riddles that have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a most extraordinary noise going on rather better now,\' she said, without opening its eyes, \'Of course, of course; just what I say,\' the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a melancholy air, and, after folding his arms and frowning at the March Hare. \'He denies it,\' said Alice timidly. \'Would you tell me,\' said Alice, (she had kept a piece of it.</p><p>I\'ve kept her eyes immediately met those of a candle is blown out, for she thought, and looked at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King say in a hot tureen! Who for such dainties would not join the dance. So they couldn\'t get them out again. The Mock Turtle went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(11,'Career','<p>Gryphon, with a shiver. \'I beg your pardon!\' cried Alice in a great hurry, muttering to itself in a hoarse growl, \'the world would go anywhere without a moment\'s pause. The only things in the newspapers, at the bottom of a large caterpillar, that was trickling down his brush, and had just upset the week before. \'Oh, I know!\' exclaimed Alice, who had spoken first. \'That\'s none of my own. I\'m a hatter.\' Here the Queen said to herself, \'if one only knew the right way of expressing yourself.\' The.</p><p>Alice, a little scream of laughter. \'Oh, hush!\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the cook and the Gryphon said to the other: he came trotting along in a whisper.) \'That would be worth the trouble of getting her hands up to her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to her, still it had VERY long claws and a scroll of parchment in the grass, merely remarking that a red-hot poker will burn you if you were INSIDE.</p><p>Time, and round Alice, every now and then Alice put down yet, before the trial\'s over!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in an offended tone, \'so I should frighten them out again. Suddenly she came upon a heap of sticks and dry leaves, and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do.\" Said the mouse to the Knave. The Knave did so, very carefully, remarking, \'I really must be what he did with the.</p><p>OURS they had any sense, they\'d take the hint; but the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long time together.\' \'Which is just the case with my wife; And the Gryphon as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon sat up and ran off, thinking while she remembered the number of bathing machines in the pictures of him), while the rest waited in silence. At last the Mouse, turning to the other, trying every door, she found it.</p>',1,NULL,'default',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'FPJPI7N6OT','bank_transfer',NULL,965.00,1,'pending','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'UP3MULBGOS','paystack',NULL,1522.00,2,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'R3SEVQUPGC','bank_transfer',NULL,3534.50,3,'pending','confirm',9,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'L7PESKCC0O','paystack',NULL,1006.00,4,'completed','confirm',9,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'GZ6OUOXIZW','mollie',NULL,5444.00,5,'completed','confirm',10,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'O1CEEBEGPF','razorpay',NULL,1590.00,6,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'NYPG9AQQJW','stripe',NULL,2283.00,7,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'IYOP2EA4ZG','stripe',NULL,1252.75,8,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'RIMHEXZVO8','mollie',NULL,2715.00,9,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'SUVSWCURRH','paypal',NULL,2189.00,10,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'KIAEGWQ2WJ','paypal',NULL,3935.00,11,'completed','confirm',4,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'U0WYEB3TYA','bank_transfer',NULL,566.00,12,'pending','confirm',4,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'VQ22MWUKLY','sslcommerz',NULL,2885.50,13,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'SUVADRJQP2','paystack',NULL,1512.00,14,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'ITHK3YQSJC','mollie',NULL,1572.00,15,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'I9HBFROUVB','cod',NULL,1590.00,16,'pending','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'NQFNYTMVZE','stripe',NULL,1698.00,17,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'KL93ZXGJCA','stripe',NULL,1188.00,18,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'69YE4XARBZ','paystack',NULL,1017.00,19,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'GUA4KOAK1Z','razorpay',NULL,5098.50,20,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'QM6MZKCBWN','cod',NULL,982.00,21,'pending','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'V0MB0V4EUU','cod',NULL,5599.00,22,'pending','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'9FJMFKEJ5Y','sslcommerz',NULL,2393.00,23,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'WMNEBAXYNS','mollie',NULL,574.00,24,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'YN0RHC9NGH','razorpay',NULL,20.00,25,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'ZH41UTJ0L0','paypal',NULL,1168.00,26,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'U7JQQA9BIK','paypal',NULL,2034.00,27,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'LHQ8TDIJHN','mollie',NULL,3772.00,28,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'CRTPKAO0QA','mollie',NULL,530.00,29,'completed','confirm',3,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'SWLDGFBQW1','stripe',NULL,1512.00,30,'completed','confirm',10,NULL,NULL,'2023-03-18 00:27:09','2023-03-18 00:27:09','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'OCZRTUDHQX','bank_transfer',NULL,530.00,31,'pending','confirm',10,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'ZNYHKEKUUC','stripe',NULL,1182.00,32,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'MDJXFQ51CZ','sslcommerz',NULL,3420.00,33,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'3425FOXPOD','paystack',NULL,680.00,34,'completed','confirm',6,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'UEAKRMQJVK','mollie',NULL,2576.50,35,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'4RZ79JCS9A','bank_transfer',NULL,680.00,36,'pending','confirm',5,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'HPUVIEY71R','paystack',NULL,2508.00,37,'completed','confirm',1,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'FYN4BWVBA7','stripe',NULL,566.00,38,'completed','confirm',1,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'KYAIMVBBTF','stripe',NULL,4442.00,39,'completed','confirm',5,NULL,NULL,'2023-03-18 00:27:10','2023-03-18 00:27:10','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(1,2),(3,2),(1,3),(3,3),(2,4),(3,4),(2,5),(3,5),(2,6),(4,6),(1,7),(4,7),(2,8),(3,8),(1,9),(3,9),(2,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2447,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',946,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2247,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2170,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',959,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1522,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2169,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1118,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2177,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1115,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',691,NULL,'2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-03-18 00:26:59'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','547dbf47ba9842e294cbcdc5c7f9b890',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-seo_description','Martfury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, Martfury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(31,'theme-martfury-copyright','© 2023 Martfury. All Rights Reserved.',NULL,NULL),(32,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(33,'theme-martfury-logo','general/logo.png',NULL,NULL),(34,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(35,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(36,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(37,'theme-martfury-email','contact@martfury.co',NULL,NULL),(38,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(39,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(40,'theme-martfury-homepage_id','1',NULL,NULL),(41,'theme-martfury-blog_page_id','6',NULL,NULL),(42,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(44,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(45,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(46,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(47,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(48,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(49,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(50,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(51,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(52,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(53,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(54,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(55,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(56,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(57,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(58,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(59,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(60,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(61,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(62,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(64,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(65,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(66,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(67,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(68,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(69,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(70,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(71,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(72,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(73,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(76,'theme-martfury-social-name-1','Facebook','2023-03-18 00:27:08','2023-03-18 00:27:08'),(77,'theme-martfury-social-url-1','https://www.facebook.com/','2023-03-18 00:27:08','2023-03-18 00:27:08'),(78,'theme-martfury-social-icon-1','fa-facebook','2023-03-18 00:27:08','2023-03-18 00:27:08'),(79,'theme-martfury-social-color-1','#3b5999','2023-03-18 00:27:08','2023-03-18 00:27:08'),(80,'theme-martfury-social-name-2','Twitter','2023-03-18 00:27:08','2023-03-18 00:27:08'),(81,'theme-martfury-social-url-2','https://www.twitter.com/','2023-03-18 00:27:08','2023-03-18 00:27:08'),(82,'theme-martfury-social-icon-2','fa-twitter','2023-03-18 00:27:08','2023-03-18 00:27:08'),(83,'theme-martfury-social-color-2','#55ACF9','2023-03-18 00:27:08','2023-03-18 00:27:08'),(84,'theme-martfury-social-name-3','Instagram','2023-03-18 00:27:08','2023-03-18 00:27:08'),(85,'theme-martfury-social-url-3','https://www.instagram.com/','2023-03-18 00:27:08','2023-03-18 00:27:08'),(86,'theme-martfury-social-icon-3','fa-instagram','2023-03-18 00:27:08','2023-03-18 00:27:08'),(87,'theme-martfury-social-color-3','#E1306C','2023-03-18 00:27:08','2023-03-18 00:27:08'),(88,'theme-martfury-social-name-4','Youtube','2023-03-18 00:27:08','2023-03-18 00:27:08'),(89,'theme-martfury-social-url-4','https://www.youtube.com/','2023-03-18 00:27:08','2023-03-18 00:27:08'),(90,'theme-martfury-social-icon-4','fa-youtube','2023-03-18 00:27:08','2023-03-18 00:27:08'),(91,'theme-martfury-social-color-4','#FF0000','2023-03-18 00:27:08','2023-03-18 00:27:08'),(92,'theme-martfury-vi-copyright','© 2023 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(93,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(94,'theme-martfury-vi-homepage_id','1',NULL,NULL),(95,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(98,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(99,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(100,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(101,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(102,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-03-18 00:27:07','2023-03-18 00:27:07'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-18 00:26:59','2023-03-18 00:26:59'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-18 00:27:00','2023-03-18 00:27:00'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2023-03-18 00:27:04','2023-03-18 00:27:04'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-18 00:27:06','2023-03-18 00:27:06'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-03-18 00:27:07','2023-03-18 00:27:07'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-03-18 00:27:07','2023-03-18 00:27:07'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-03-18 00:27:07','2023-03-18 00:27:07'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-03-18 00:27:07','2023-03-18 00:27:07'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-03-18 00:27:07','2023-03-18 00:27:07'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(84,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-03-18 00:27:07','2023-03-18 00:27:08'),(94,'home',1,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(97,'terms-amp-conditions',4,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(104,'career',11,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2023-03-18 00:27:07','2023-03-18 00:27:07'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-03-18 00:27:09','2023-03-18 00:27:09'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-03-18 00:27:09','2023-03-18 00:27:09'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-03-18 00:27:09','2023-03-18 00:27:09');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-03-18 00:27:07','2023-03-18 00:27:07'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-03-18 00:27:07','2023-03-18 00:27:07');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$AMONVq574L1ifa2vrputBuF3e5YL0u5/2IT6FjELBhI211TM4YWmq',NULL,'2023-03-18 00:27:06','2023-03-18 00:27:06','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2023-03-18 00:27:08','2023-03-18 00:27:08'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2023-03-18 00:27:08','2023-03-18 00:27:08');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-18 14:27:46