-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://kuronekohair.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://kuronekohair.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Kuroneko Hair','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','ゆったり時間と癒しの美容室サンプルサイト','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','6','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','Y年n月j日','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";i:1;s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','9','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:91:\"/Users/user/Local Sites/kuronekohair/app/public/wp-content/themes/twentytwentyone/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','kuroneko-hair','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','kuroneko-hair','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1673887891','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:6:{i:1671889893;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671899572;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671899573;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671900693;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672332693;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','~P&3_@)1a>G/U`I+6xf;vYt[VyMaw(`TCFTZy$%avu2R<}DB5R[GRzr?AGT3aPzw','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','08ZoEn>mOhZDP>2THD3Ot@$g+Tb`/pU?#_PPemTk/oq>pjWz:b=&<f..h)@W^3`h','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658594946;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (144,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":2,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (145,'auth_key','*HZeaI.vxK]LQP&IYR6#!<wIg[KO)Ezx{yPXd$%xY>VzZ[i~Mq:?4#^~QpI&9.SJ','no');
INSERT INTO `wp_options` VALUES (146,'auth_salt','ni50F N=qtQ>L>Yby/py:,>G/vj^PFD_uG#<cnkOB%BQ~8U1JJYoU y?A.qkRHvb','no');
INSERT INTO `wp_options` VALUES (147,'logged_in_key','_>Jt<CsY[^~|4M-s!|emvZ%)Zo=d>40PTq.8w.M,VtP{qJclEprN/!pPxU7u<Q.?','no');
INSERT INTO `wp_options` VALUES (148,'logged_in_salt','xPyw ezQ%Q6qTfI=TMPx7HL_SN<4;vGUQAp/w8b+#.nq|E4J/xr&=g~%M`wqY26^','no');
INSERT INTO `wp_options` VALUES (154,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (169,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (170,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (171,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (186,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (193,'current_theme','Kuroneko Hair','yes');
INSERT INTO `wp_options` VALUES (194,'theme_mods_twentytwentyone','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658850257;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (195,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (199,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (200,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (262,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (281,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (335,'theme_mods_kuroneko-hair','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:95;}','yes');
INSERT INTO `wp_options` VALUES (383,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:7:\"version\";s:5:\"6.1.1\";s:9:\"timestamp\";i:1671887287;}','no');
INSERT INTO `wp_options` VALUES (579,'_transient_timeout_global_styles_kuroneko-hair','1671887316','no');
INSERT INTO `wp_options` VALUES (580,'_transient_global_styles_kuroneko-hair','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (581,'_transient_timeout_global_styles_svg_filters_kuroneko-hair','1671887316','no');
INSERT INTO `wp_options` VALUES (582,'_transient_global_styles_svg_filters_kuroneko-hair','<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>','no');
INSERT INTO `wp_options` VALUES (584,'_site_transient_timeout_theme_roots','1671889085','no');
INSERT INTO `wp_options` VALUES (585,'_site_transient_theme_roots','a:5:{s:13:\"kuroneko-hair\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (590,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.1.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1671887286;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (591,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671887287;s:7:\"checked\";a:5:{s:13:\"kuroneko-hair\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:17:\"twentytwentythree\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-10-26 09:20:28\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentytwentythree/1.0/ja.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (592,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671887287;s:8:\"response\";a:1:{s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=2791650\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wp-multibyte-patch\";s:4:\"slug\";s:18:\"wp-multibyte-patch\";s:6:\"plugin\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-multibyte-patch/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-multibyte-patch.2.9.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/wp-multibyte-patch.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:2:{s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:3:\"2.9\";}}','no');
INSERT INTO `wp_options` VALUES (593,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1672492089','no');
INSERT INTO `wp_options` VALUES (594,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (30,22,'_edit_lock','1658652830:1');
INSERT INTO `wp_postmeta` VALUES (31,25,'_edit_lock','1664915880:1');
INSERT INTO `wp_postmeta` VALUES (36,31,'_edit_lock','1664999317:1');
INSERT INTO `wp_postmeta` VALUES (41,35,'_wp_old_slug','%e6%96%b0%e4%bd%9c%e3%82%b7%e3%83%a3%e3%83%b3%e3%83%97%e3%83%bc%e3%83%bb%e3%83%88%e3%83%aa%e3%83%bc%e3%83%88%e3%83%a1%e3%83%b3%e3%83%88%e5%85%a5%e8%8d%b7%e3%81%97%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (42,35,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (43,35,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (44,35,'_thumbnail_id','221');
INSERT INTO `wp_postmeta` VALUES (45,36,'_wp_old_slug','%e9%9b%91%e8%aa%8c%e3%81%ab%e6%8e%b2%e8%bc%89%e3%81%95%e3%82%8c%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (46,36,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (47,36,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (48,36,'_wp_old_date','2020-04-16');
INSERT INTO `wp_postmeta` VALUES (49,36,'_thumbnail_id','216');
INSERT INTO `wp_postmeta` VALUES (50,37,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (51,37,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (52,37,'_wp_old_slug','%e8%87%a8%e6%99%82%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (53,37,'_wp_old_slug','temporaryclosed');
INSERT INTO `wp_postmeta` VALUES (54,37,'_wp_old_date','2020-05-01');
INSERT INTO `wp_postmeta` VALUES (55,37,'_wp_old_slug','temporary-closed');
INSERT INTO `wp_postmeta` VALUES (56,38,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (57,38,'_wp_old_slug','%e6%98%a5%e3%83%bb%e5%a4%8f%e3%81%ab%e5%90%91%e3%81%91%e3%81%a6%e3%80%81%e3%83%98%e3%82%a2%e3%82%ab%e3%83%a9%e3%83%bc%e3%81%ae%e6%96%b0%e8%89%b2%e3%81%8c%e7%99%bb%e5%a0%b4');
INSERT INTO `wp_postmeta` VALUES (58,38,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (59,38,'_wp_old_date','2020-04-02');
INSERT INTO `wp_postmeta` VALUES (60,38,'_thumbnail_id','208');
INSERT INTO `wp_postmeta` VALUES (61,39,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (62,39,'_wp_old_slug','%e3%82%b9%e3%82%bf%e3%83%83%e3%83%95%e3%81%8c%e5%85%a5%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (63,39,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (64,39,'_thumbnail_id','217');
INSERT INTO `wp_postmeta` VALUES (65,40,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (66,40,'_wp_old_slug','%e3%83%ad%e3%82%b1%e3%83%bc%e3%82%b7%e3%83%a7%e3%83%b3%e6%92%ae%e5%bd%b1%e3%81%ab%e8%a1%8c%e3%81%8d%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (67,40,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (68,40,'_wp_old_slug','photo');
INSERT INTO `wp_postmeta` VALUES (69,40,'_wp_old_date','2019-05-22');
INSERT INTO `wp_postmeta` VALUES (70,40,'_wp_old_date','2020-08-22');
INSERT INTO `wp_postmeta` VALUES (71,40,'_wp_old_date','2020-09-22');
INSERT INTO `wp_postmeta` VALUES (72,40,'_thumbnail_id','211');
INSERT INTO `wp_postmeta` VALUES (73,27,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (74,27,'_wp_old_slug','%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8%e3%83%aa%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%a2%e3%83%ab%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (75,27,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (76,27,'_wp_old_date','2019-12-01');
INSERT INTO `wp_postmeta` VALUES (77,27,'_wp_old_date','2021-01-01');
INSERT INTO `wp_postmeta` VALUES (78,27,'_wp_old_date','2020-10-01');
INSERT INTO `wp_postmeta` VALUES (79,27,'_thumbnail_id','219');
INSERT INTO `wp_postmeta` VALUES (80,41,'_wp_attached_file','2020/05/noimage.png');
INSERT INTO `wp_postmeta` VALUES (81,41,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:19:\"2020/05/noimage.png\";s:8:\"filesize\";i:16929;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"noimage-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6315;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"noimage-1024x538.png\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28249;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"noimage-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5488;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"noimage-768x403.png\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20591;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (82,42,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (83,42,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (84,42,'_wp_old_date','2020-12-16');
INSERT INTO `wp_postmeta` VALUES (85,42,'_wp_old_slug','%e5%b9%b4%e6%9c%ab%e5%b9%b4%e5%a7%8b%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (86,43,'_wp_old_slug','%e3%83%91%e3%83%bc%e3%82%bd%e3%83%8a%e3%83%ab%e3%82%ab%e3%83%a9%e3%83%bc%e3%81%ae%e7%a0%94%e4%bf%ae%e3%81%ab%e8%a1%8c%e3%81%a3%e3%81%a6%e3%81%8d%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (87,43,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (88,43,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (89,43,'_thumbnail_id','213');
INSERT INTO `wp_postmeta` VALUES (90,44,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (91,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,44,'_menu_item_object_id','44');
INSERT INTO `wp_postmeta` VALUES (93,44,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (94,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,44,'_menu_item_url','http://wptheme-beginners.com/demo/');
INSERT INTO `wp_postmeta` VALUES (98,45,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (99,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (100,45,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (101,45,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (102,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (103,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (104,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (105,45,'_menu_item_url','https://wptheme-beginners.com/demo/hairstyles/');
INSERT INTO `wp_postmeta` VALUES (106,134,'_wp_old_date','2021-02-27');
INSERT INTO `wp_postmeta` VALUES (107,134,'_thumbnail_id','208');
INSERT INTO `wp_postmeta` VALUES (108,137,'_wp_old_date','2021-02-27');
INSERT INTO `wp_postmeta` VALUES (109,137,'_wp_old_slug','%e8%87%a8%e6%99%82%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (110,137,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (111,142,'_wp_attached_file','2021/02/personal-color-scaled-1.jpg');
INSERT INTO `wp_postmeta` VALUES (112,142,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:35:\"2021/02/personal-color-scaled-1.jpg\";s:8:\"filesize\";i:358489;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"personal-color-scaled-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34133;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"personal-color-scaled-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103437;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"personal-color-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28917;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"personal-color-scaled-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73188;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:37:\"personal-color-scaled-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175457;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:37:\"personal-color-scaled-1-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:258937;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:37:\"personal-color-scaled-1-1568x1046.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1046;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180270;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1519134969\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:7:\"0.00025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (113,153,'_thumbnail_id','180');
INSERT INTO `wp_postmeta` VALUES (114,153,'_wp_page_template','one-column.php');
INSERT INTO `wp_postmeta` VALUES (115,154,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (116,154,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (117,154,'_menu_item_object_id','153');
INSERT INTO `wp_postmeta` VALUES (118,154,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (119,154,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (120,154,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (121,154,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (122,154,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,170,'_wp_attached_file','2021/03/hairstyle1.png');
INSERT INTO `wp_postmeta` VALUES (124,170,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:22:\"2021/03/hairstyle1.png\";s:8:\"filesize\";i:177995;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"hairstyle1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23380;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"hairstyle1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18357;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"hairstyle1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:111346;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (125,172,'_wp_attached_file','2021/03/hairstyle2.png');
INSERT INTO `wp_postmeta` VALUES (126,172,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:22:\"2021/03/hairstyle2.png\";s:8:\"filesize\";i:153223;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"hairstyle2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20561;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"hairstyle2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16283;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"hairstyle2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:93329;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (127,173,'_wp_attached_file','2021/03/hairstyle3.png');
INSERT INTO `wp_postmeta` VALUES (128,173,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:22:\"2021/03/hairstyle3.png\";s:8:\"filesize\";i:168471;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"hairstyle3-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22117;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"hairstyle3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17619;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"hairstyle3-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105766;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (129,174,'_wp_attached_file','2021/03/hairstyle4.png');
INSERT INTO `wp_postmeta` VALUES (130,174,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:22:\"2021/03/hairstyle4.png\";s:8:\"filesize\";i:167659;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"hairstyle4-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23678;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"hairstyle4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18854;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"hairstyle4-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106728;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (131,35,'_wp_old_slug','%e6%96%b0%e4%bd%9c%e3%82%b7%e3%83%a3%e3%83%b3%e3%83%97%e3%83%bc%e3%83%bb%e3%83%88%e3%83%aa%e3%83%bc%e3%83%88%e3%83%a1%e3%83%b3%e3%83%88%e5%85%a5%e8%8d%b7%e3%81%97%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (132,35,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (133,35,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (134,35,'_thumbnail_id','221');
INSERT INTO `wp_postmeta` VALUES (135,36,'_wp_old_slug','%e9%9b%91%e8%aa%8c%e3%81%ab%e6%8e%b2%e8%bc%89%e3%81%95%e3%82%8c%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (136,36,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (137,36,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (138,36,'_wp_old_date','2020-04-16');
INSERT INTO `wp_postmeta` VALUES (139,36,'_thumbnail_id','216');
INSERT INTO `wp_postmeta` VALUES (140,37,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (141,37,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (142,37,'_wp_old_slug','%e8%87%a8%e6%99%82%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (143,37,'_wp_old_slug','temporaryclosed');
INSERT INTO `wp_postmeta` VALUES (144,37,'_wp_old_date','2020-05-01');
INSERT INTO `wp_postmeta` VALUES (145,37,'_wp_old_slug','temporary-closed');
INSERT INTO `wp_postmeta` VALUES (146,38,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (147,38,'_wp_old_slug','%e6%98%a5%e3%83%bb%e5%a4%8f%e3%81%ab%e5%90%91%e3%81%91%e3%81%a6%e3%80%81%e3%83%98%e3%82%a2%e3%82%ab%e3%83%a9%e3%83%bc%e3%81%ae%e6%96%b0%e8%89%b2%e3%81%8c%e7%99%bb%e5%a0%b4');
INSERT INTO `wp_postmeta` VALUES (148,38,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (149,38,'_wp_old_date','2020-04-02');
INSERT INTO `wp_postmeta` VALUES (150,38,'_thumbnail_id','208');
INSERT INTO `wp_postmeta` VALUES (151,39,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (152,39,'_wp_old_slug','%e3%82%b9%e3%82%bf%e3%83%83%e3%83%95%e3%81%8c%e5%85%a5%e3%82%8a%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (153,39,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (154,39,'_thumbnail_id','217');
INSERT INTO `wp_postmeta` VALUES (155,40,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (156,40,'_wp_old_slug','%e3%83%ad%e3%82%b1%e3%83%bc%e3%82%b7%e3%83%a7%e3%83%b3%e6%92%ae%e5%bd%b1%e3%81%ab%e8%a1%8c%e3%81%8d%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (157,40,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (158,40,'_wp_old_slug','photo');
INSERT INTO `wp_postmeta` VALUES (159,40,'_wp_old_date','2019-05-22');
INSERT INTO `wp_postmeta` VALUES (160,40,'_wp_old_date','2020-08-22');
INSERT INTO `wp_postmeta` VALUES (161,40,'_wp_old_date','2020-09-22');
INSERT INTO `wp_postmeta` VALUES (162,40,'_thumbnail_id','211');
INSERT INTO `wp_postmeta` VALUES (163,27,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (164,27,'_wp_old_slug','%e3%83%9b%e3%83%bc%e3%83%a0%e3%83%9a%e3%83%bc%e3%82%b8%e3%83%aa%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%a2%e3%83%ab%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (165,27,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (166,27,'_wp_old_date','2019-12-01');
INSERT INTO `wp_postmeta` VALUES (167,27,'_wp_old_date','2021-01-01');
INSERT INTO `wp_postmeta` VALUES (168,27,'_wp_old_date','2020-10-01');
INSERT INTO `wp_postmeta` VALUES (169,27,'_thumbnail_id','219');
INSERT INTO `wp_postmeta` VALUES (170,42,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (171,42,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (172,42,'_wp_old_date','2020-12-16');
INSERT INTO `wp_postmeta` VALUES (173,42,'_wp_old_slug','%e5%b9%b4%e6%9c%ab%e5%b9%b4%e5%a7%8b%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (174,43,'_wp_old_slug','%e3%83%91%e3%83%bc%e3%82%bd%e3%83%8a%e3%83%ab%e3%82%ab%e3%83%a9%e3%83%bc%e3%81%ae%e7%a0%94%e4%bf%ae%e3%81%ab%e8%a1%8c%e3%81%a3%e3%81%a6%e3%81%8d%e3%81%be%e3%81%97%e3%81%9f');
INSERT INTO `wp_postmeta` VALUES (175,43,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (176,43,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (177,43,'_thumbnail_id','213');
INSERT INTO `wp_postmeta` VALUES (178,175,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (179,175,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (180,175,'_menu_item_object_id','175');
INSERT INTO `wp_postmeta` VALUES (181,175,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (182,175,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (183,175,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (184,175,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (185,175,'_menu_item_url','http://wptheme-beginners.com/demo/');
INSERT INTO `wp_postmeta` VALUES (186,176,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (187,176,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (188,176,'_menu_item_object_id','176');
INSERT INTO `wp_postmeta` VALUES (189,176,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (190,176,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (191,176,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (192,176,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (193,176,'_menu_item_url','https://wptheme-beginners.com/demo/hairstyles/');
INSERT INTO `wp_postmeta` VALUES (194,134,'_wp_old_date','2021-02-27');
INSERT INTO `wp_postmeta` VALUES (195,134,'_thumbnail_id','208');
INSERT INTO `wp_postmeta` VALUES (196,137,'_wp_old_date','2021-02-27');
INSERT INTO `wp_postmeta` VALUES (197,137,'_wp_old_slug','%e8%87%a8%e6%99%82%e4%bc%91%e6%a5%ad%e3%81%ae%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (198,137,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (199,153,'_thumbnail_id','180');
INSERT INTO `wp_postmeta` VALUES (200,153,'_wp_page_template','one-column.php');
INSERT INTO `wp_postmeta` VALUES (201,177,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (202,177,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (203,177,'_menu_item_object_id','153');
INSERT INTO `wp_postmeta` VALUES (204,177,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (205,177,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (206,177,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (207,177,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (208,177,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (209,179,'_wp_attached_file','2021/03/concept.jpg');
INSERT INTO `wp_postmeta` VALUES (210,179,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:19:\"2021/03/concept.jpg\";s:8:\"filesize\";i:3760058;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"concept-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59744;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"concept-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:343459;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"concept-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46174;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"concept-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:212700;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"concept-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:691273;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:21:\"concept-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:716577;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596451423\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (211,180,'_wp_attached_file','2021/03/concept-1.jpg');
INSERT INTO `wp_postmeta` VALUES (212,180,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2021/03/concept-1.jpg\";s:8:\"filesize\";i:3760058;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"concept-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59744;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"concept-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:343459;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"concept-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46174;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"concept-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:212700;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"concept-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:691273;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:23:\"concept-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:716577;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596451423\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (213,182,'_wp_attached_file','2021/03/pic_hero-default.jpg');
INSERT INTO `wp_postmeta` VALUES (214,182,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:660;s:4:\"file\";s:28:\"2021/03/pic_hero-default.jpg\";s:8:\"filesize\";i:252259;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14705;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"pic_hero-default-1024x528.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97939;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7188;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-768x396.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (221,207,'_wp_attached_file','2021/04/sunflower.jpg');
INSERT INTO `wp_postmeta` VALUES (222,207,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2021/04/sunflower.jpg\";s:8:\"filesize\";i:1811182;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"sunflower-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25211;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"sunflower-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135761;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"sunflower-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16567;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"sunflower-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83058;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"sunflower-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:289116;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:23:\"sunflower-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:302000;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (223,208,'_wp_attached_file','2021/04/sunflower-1.jpg');
INSERT INTO `wp_postmeta` VALUES (224,208,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2021/04/sunflower-1.jpg\";s:8:\"filesize\";i:1811182;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"sunflower-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25211;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"sunflower-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135761;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"sunflower-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16567;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"sunflower-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83058;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"sunflower-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:289116;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:25:\"sunflower-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:302000;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (225,209,'_wp_attached_file','2021/04/rainy-day.jpg');
INSERT INTO `wp_postmeta` VALUES (226,209,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2021/04/rainy-day.jpg\";s:8:\"filesize\";i:1542845;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"rainy-day-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18123;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"rainy-day-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77372;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"rainy-day-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13078;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"rainy-day-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51044;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"rainy-day-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154718;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:23:\"rainy-day-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161381;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (227,210,'_wp_attached_file','2021/04/rainy-day-1.jpg');
INSERT INTO `wp_postmeta` VALUES (228,210,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2021/04/rainy-day-1.jpg\";s:8:\"filesize\";i:1542845;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"rainy-day-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18123;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"rainy-day-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77372;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"rainy-day-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13078;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"rainy-day-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51044;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"rainy-day-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154718;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:25:\"rainy-day-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161381;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (229,211,'_wp_attached_file','2021/04/lighthouse.jpg');
INSERT INTO `wp_postmeta` VALUES (230,211,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:22:\"2021/04/lighthouse.jpg\";s:8:\"filesize\";i:1075678;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"lighthouse-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13809;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"lighthouse-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79501;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"lighthouse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"lighthouse-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48266;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"lighthouse-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162270;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:24:\"lighthouse-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:168702;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (231,212,'_wp_attached_file','2021/04/lighthouse-1.jpg');
INSERT INTO `wp_postmeta` VALUES (232,212,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:24:\"2021/04/lighthouse-1.jpg\";s:8:\"filesize\";i:1075678;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"lighthouse-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13809;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"lighthouse-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79501;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"lighthouse-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"lighthouse-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48266;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"lighthouse-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162270;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"lighthouse-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:168702;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (233,213,'_wp_attached_file','2021/04/color.jpg');
INSERT INTO `wp_postmeta` VALUES (234,213,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:17:\"2021/04/color.jpg\";s:8:\"filesize\";i:744249;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"color-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21603;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"color-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114662;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"color-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13924;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"color-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70052;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"color-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:247136;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:19:\"color-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:257690;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (235,214,'_wp_attached_file','2021/04/color-1.jpg');
INSERT INTO `wp_postmeta` VALUES (236,214,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:19:\"2021/04/color-1.jpg\";s:8:\"filesize\";i:744249;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"color-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21603;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"color-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114662;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"color-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13924;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"color-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70052;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"color-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:247136;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:21:\"color-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:257690;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (237,215,'_wp_attached_file','2021/04/magazine.jpg');
INSERT INTO `wp_postmeta` VALUES (238,215,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:20:\"2021/04/magazine.jpg\";s:8:\"filesize\";i:905179;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"magazine-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25768;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"magazine-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72381;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"magazine-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21394;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"magazine-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52414;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"magazine-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122143;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"magazine-1568x1046.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1046;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125158;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596454427\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (239,216,'_wp_attached_file','2021/04/magazine-1.jpg');
INSERT INTO `wp_postmeta` VALUES (240,216,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:22:\"2021/04/magazine-1.jpg\";s:8:\"filesize\";i:905179;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"magazine-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25768;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"magazine-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72381;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"magazine-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21394;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"magazine-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52414;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"magazine-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122143;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:24:\"magazine-1-1568x1046.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1046;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125158;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596454427\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (241,217,'_wp_attached_file','2021/04/sakura.jpg');
INSERT INTO `wp_postmeta` VALUES (242,217,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:18:\"2021/04/sakura.jpg\";s:8:\"filesize\";i:894093;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"sakura-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13293;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"sakura-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56650;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"sakura-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9603;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"sakura-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37162;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"sakura-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106578;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:20:\"sakura-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110876;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,218,'_wp_attached_file','2021/04/sakura-1.jpg');
INSERT INTO `wp_postmeta` VALUES (244,218,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:20:\"2021/04/sakura-1.jpg\";s:8:\"filesize\";i:894093;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"sakura-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13293;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"sakura-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56650;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"sakura-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9603;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"sakura-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37162;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"sakura-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106578;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"sakura-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110876;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245,219,'_wp_attached_file','2021/04/hp-renewal.jpg');
INSERT INTO `wp_postmeta` VALUES (246,219,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:22:\"2021/04/hp-renewal.jpg\";s:8:\"filesize\";i:1317488;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"hp-renewal-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29662;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"hp-renewal-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95598;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"hp-renewal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23566;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"hp-renewal-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67105;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"hp-renewal-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:170760;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:24:\"hp-renewal-1568x1046.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1046;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175307;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596454179\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (247,220,'_wp_attached_file','2021/04/hp-renewal-1.jpg');
INSERT INTO `wp_postmeta` VALUES (248,220,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1334;s:4:\"file\";s:24:\"2021/04/hp-renewal-1.jpg\";s:8:\"filesize\";i:1317488;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"hp-renewal-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29662;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"hp-renewal-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95598;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"hp-renewal-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23566;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"hp-renewal-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67105;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"hp-renewal-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:170760;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"hp-renewal-1-1568x1046.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1046;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175307;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596454179\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (249,221,'_wp_attached_file','2021/04/new-products.jpg');
INSERT INTO `wp_postmeta` VALUES (250,221,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:24:\"2021/04/new-products.jpg\";s:8:\"filesize\";i:1360496;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"new-products-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20241;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"new-products-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89516;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"new-products-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13951;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"new-products-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57897;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"new-products-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:173145;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"new-products-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180675;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (251,222,'_wp_attached_file','2021/04/new-products-1.jpg');
INSERT INTO `wp_postmeta` VALUES (252,222,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:26:\"2021/04/new-products-1.jpg\";s:8:\"filesize\";i:1360496;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"new-products-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20241;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"new-products-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89516;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"new-products-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13951;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"new-products-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57897;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"new-products-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:173145;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:28:\"new-products-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180675;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,223,'_wp_attached_file','2021/04/shop.jpg');
INSERT INTO `wp_postmeta` VALUES (254,223,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:16:\"2021/04/shop.jpg\";s:8:\"filesize\";i:1594541;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"shop-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36440;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"shop-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145095;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"shop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26345;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"shop-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97772;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:18:\"shop-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:261171;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:18:\"shop-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:270177;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596450264\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"12\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (255,224,'_wp_attached_file','2021/04/shop-1.jpg');
INSERT INTO `wp_postmeta` VALUES (256,224,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:18:\"2021/04/shop-1.jpg\";s:8:\"filesize\";i:1594541;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"shop-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36440;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"shop-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145095;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"shop-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26345;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"shop-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97772;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"shop-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:261171;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:20:\"shop-1-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:270177;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596450264\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"12\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (257,225,'_wp_attached_file','2021/05/pic_hero-default.jpg');
INSERT INTO `wp_postmeta` VALUES (258,225,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:660;s:4:\"file\";s:28:\"2021/05/pic_hero-default.jpg\";s:8:\"filesize\";i:252259;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14705;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"pic_hero-default-1024x528.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97939;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7188;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"pic_hero-default-768x396.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (259,226,'_wp_attached_file','2021/05/pic_hero-default-1.jpg');
INSERT INTO `wp_postmeta` VALUES (260,226,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:660;s:4:\"file\";s:30:\"2021/05/pic_hero-default-1.jpg\";s:8:\"filesize\";i:252259;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"pic_hero-default-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14705;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"pic_hero-default-1-1024x528.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97939;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"pic_hero-default-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7188;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"pic_hero-default-1-768x396.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (261,2,'_edit_lock','1664997146:1');
INSERT INTO `wp_postmeta` VALUES (262,153,'_edit_lock','1658652752:1');
INSERT INTO `wp_postmeta` VALUES (263,3,'_edit_lock','1658652817:1');
INSERT INTO `wp_postmeta` VALUES (264,229,'_wp_attached_file','2022/10/shop.jpg');
INSERT INTO `wp_postmeta` VALUES (265,229,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:16:\"2022/10/shop.jpg\";s:8:\"filesize\";i:1594541;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"shop-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36440;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"shop-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145095;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"shop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26345;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"shop-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97772;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:18:\"shop-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:261171;}s:13:\"page_eyecatch\";a:5:{s:4:\"file\";s:17:\"shop-1100x610.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151076;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1596450264\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"12\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (266,25,'_thumbnail_id','229');
INSERT INTO `wp_postmeta` VALUES (267,229,'_wp_attachment_image_alt','写真：店舗案内');
INSERT INTO `wp_postmeta` VALUES (269,31,'_thumbnail_id','210');
INSERT INTO `wp_postmeta` VALUES (271,31,'_wp_old_date','2022-07-24');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (2,1,'2022-07-20 16:51:32','2022-07-20 16:51:32','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://kuronekohair.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-07-20 16:51:32','2022-07-20 16:51:32','',0,'http://kuronekohair.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-07-20 16:51:32','2022-07-20 16:51:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://kuronekohair.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-07-20 16:51:32','2022-07-20 16:51:32','',0,'http://kuronekohair.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-07-24 01:57:05','2022-07-23 16:57:05','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyone','','','2022-07-24 01:57:05','2022-07-23 16:57:05','',0,'http://kuronekohair.local/wp-global-styles-twentytwentyone/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-07-24 02:38:03','2022-07-23 17:38:03','<!-- wp:paragraph -->\n<p>いずれも税込表示です。ご予算に不安がございましたら、お気軽にスタッフまでお声がけください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>カット</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>カット</td><td>¥5,022〜</td></tr><tr><td>中学・高校生カット</td><td>¥3,522〜</td></tr><tr><td>幼児・小学生カット</td><td>¥2,022〜</td></tr><tr><td>メンズカット</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>カラー</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>リッチカラー</td><td>¥4,022〜</td></tr><tr><td>ファッションカラー</td><td>¥8,022〜</td></tr><tr><td>グレイカラー</td><td>¥7,022〜</td></tr><tr><td>ブリーチ</td><td>¥6,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>パーマ</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>ポイントパーマ</td><td>¥4,022〜</td></tr><tr><td>パーマ</td><td>¥8,022〜</td></tr><tr><td>ストレート</td><td>¥10,022〜</td></tr><tr><td>縮毛矯正</td><td>¥12,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>ヘアケア</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>ヘッドスパ</td><td>¥5,022〜</td></tr><tr><td>トリートメント</td><td>¥3,022〜</td></tr><tr><td>スペシャルトリートメント</td><td>¥6,022〜</td></tr><tr><td>頭皮ケア</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>カット</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>カット</td><td>¥5,022〜</td></tr><tr><td>中学・高校生カット</td><td>¥3,522〜</td></tr><tr><td>幼児・小学生カット</td><td>¥2,022〜</td></tr><tr><td>メンズカット</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->','メニュー','','publish','closed','closed','','menu','','','2022-07-24 02:38:03','2022-07-23 17:38:03','',0,'http://kuronekohair.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-07-24 02:06:03','2022-07-23 17:06:03','<!-- wp:paragraph -->\n<p>いずれも税込表示です。ご予算に不安がございましたら、お気軽にスタッフまでお声がけください。</p>\n<!-- /wp:paragraph -->','メニュー','','inherit','closed','closed','','22-revision-v1','','','2022-07-24 02:06:03','2022-07-23 17:06:03','',22,'http://kuronekohair.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-07-24 02:35:54','2022-07-23 17:35:54','<!-- wp:paragraph -->\n<p>いずれも税込表示です。ご予算に不安がございましたら、お気軽にスタッフまでお声がけください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>カット</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>カット</td><td>¥5,022〜</td></tr><tr><td>中学・高校生カット</td><td>¥3,522〜</td></tr><tr><td>幼児・小学生カット</td><td>¥2,022〜</td></tr><tr><td>メンズカット</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>カラー</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>リッチカラー</td><td>¥4,022〜</td></tr><tr><td>ファッションカラー</td><td>¥8,022〜</td></tr><tr><td>グレイカラー</td><td>¥7,022〜</td></tr><tr><td>ブリーチ</td><td>¥6,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>パーマ</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>ポイントパーマ</td><td>¥4,022〜</td></tr><tr><td>パーマ</td><td>¥8,022〜</td></tr><tr><td>ストレート</td><td>¥10,022〜</td></tr><tr><td>縮毛矯正</td><td>¥12,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>ヘアケア</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>ヘッドスパ</td><td>¥5,022〜</td></tr><tr><td>トリートメント</td><td>¥3,022〜</td></tr><tr><td>スペシャルトリートメント</td><td>¥6,022〜</td></tr><tr><td>頭皮ケア</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading -->\n<h2>カット</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>カット</td><td>¥5,022〜</td></tr><tr><td>中学・高校生カット</td><td>¥3,522〜</td></tr><tr><td>幼児・小学生カット</td><td>¥2,022〜</td></tr><tr><td>メンズカット</td><td>¥4,022〜</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->','メニュー','','inherit','closed','closed','','22-revision-v1','','','2022-07-24 02:35:54','2022-07-23 17:35:54','',22,'http://kuronekohair.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-07-24 16:50:15','2022-07-24 07:50:15','<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>住所</td><td>〒000-0000 □□県〇〇市△△区☆☆町000</td></tr><tr><td>電話番号</td><td>000-000-0000</td></tr><tr><td>営業時間</td><td>平日 10:00〜19:00 / 土・日 9:00〜19:00<br>※受付：カットは閉店1時間前まで、カラーまたはパーマは2時間前まで</td></tr><tr><td>休業日</td><td>毎週月曜・第2 &amp; 第4火曜日</td></tr><tr><td>スタッフ</td><td>スタイリスト3名／アシスタント2名</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3280.039827139448!2d137.73227565048458!3d34.70417539044434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601ade7760d07ed9%3A0xf0a52daac3b91a51!2z5rWc5p2-!5e0!3m2!1sja!2sjp!4v1619326103946!5m2!1sja!2sjp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','店舗案内','','publish','closed','closed','','shop-info','','','2022-10-05 05:37:21','2022-10-04 20:37:21','',0,'http://kuronekohair.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-07-24 16:50:12','2022-07-24 07:50:12','<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>住所</td><td>〒000-0000 □□県〇〇市△△区☆☆町000</td></tr><tr><td>電話番号</td><td>000-000-0000</td></tr><tr><td>営業時間</td><td>平日 10:00〜19:00 / 土・日 9:00〜19:00<br>※受付：カットは閉店1時間前まで、カラーまたはパーマは2時間前まで</td></tr><tr><td>休業日</td><td>毎週月曜・第2 &amp; 第4火曜日</td></tr><tr><td>スタッフ</td><td>スタイリスト3名／アシスタント2名</td></tr></tbody></table></figure>\n<!-- /wp:table -->','店舗案内','','inherit','closed','closed','','25-revision-v1','','','2022-07-24 16:50:12','2022-07-24 07:50:12','',25,'http://kuronekohair.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-01-10 10:00:00','2020-01-10 01:00:00','<!-- wp:paragraph -->\n<p>Kuroneko Hairのホームページをご覧いただき、誠にありがとうございます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>このたびホームページを全面リニューアルいたしました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>今回のリニューアルでは、皆様にKuroneko Hairの大切にしていることや、スタイル作りなどの技術、スタッフの人柄をよりお伝えできるような作りを目指しています。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>これからもご利用の皆様のお役に立つ情報の発信や、内容の充実に努めてまいりますので、ご愛顧賜りますようお願い申し上げます。</p>\n<!-- /wp:paragraph -->','ホームページリニューアルのお知らせ','','publish','closed','closed','','website-renewal','','','2020-01-10 10:00:00','2020-01-10 01:00:00','',0,'http://wptheme-beginners.com/demo/?p=27',8,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-07-24 16:53:55','2022-07-24 07:53:55','<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>住所</td><td>〒000-0000 □□県〇〇市△△区☆☆町000</td></tr><tr><td>電話番号</td><td>000-000-0000</td></tr><tr><td>営業時間</td><td>平日 10:00〜19:00 / 土・日 9:00〜19:00<br>※受付：カットは閉店1時間前まで、カラーまたはパーマは2時間前まで</td></tr><tr><td>休業日</td><td>毎週月曜・第2 &amp; 第4火曜日</td></tr><tr><td>スタッフ</td><td>スタイリスト3名／アシスタント2名</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3280.039827139448!2d137.73227565048458!3d34.70417539044434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601ade7760d07ed9%3A0xf0a52daac3b91a51!2z5rWc5p2-!5e0!3m2!1sja!2sjp!4v1619326103946!5m2!1sja!2sjp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\n<!-- /wp:html -->','店舗案内','','inherit','closed','closed','','25-revision-v1','','','2022-07-24 16:53:55','2022-07-24 07:53:55','',25,'http://kuronekohair.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-07-24 16:54:22','2022-07-24 07:54:22','<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>住所</td><td>〒000-0000 □□県〇〇市△△区☆☆町000</td></tr><tr><td>電話番号</td><td>000-000-0000</td></tr><tr><td>営業時間</td><td>平日 10:00〜19:00 / 土・日 9:00〜19:00<br>※受付：カットは閉店1時間前まで、カラーまたはパーマは2時間前まで</td></tr><tr><td>休業日</td><td>毎週月曜・第2 &amp; 第4火曜日</td></tr><tr><td>スタッフ</td><td>スタイリスト3名／アシスタント2名</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3280.039827139448!2d137.73227565048458!3d34.70417539044434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601ade7760d07ed9%3A0xf0a52daac3b91a51!2z5rWc5p2-!5e0!3m2!1sja!2sjp!4v1619326103946!5m2!1sja!2sjp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\n<!-- /wp:html -->','店舗案内','','inherit','closed','closed','','25-revision-v1','','','2022-07-24 16:54:22','2022-07-24 07:54:22','',25,'http://kuronekohair.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-09-24 16:59:00','2022-09-24 07:59:00','<!-- wp:paragraph -->\n<p>湿気で髪型も決まらないし、お出かけが億劫になる雨の日。みなさまに少しでも楽しく過ごしていただきたいという思いから、Kuroneko Hairでは雨の日キャンペーンを開催することにいたしました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>当日のご予約でもOKです、ぜひこの機会にご利用ください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>キャンペーン内容</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>対象日</td><td>キャンペーン期間中、ご来店時に雨が降っていたお客様</td></tr><tr><td>期間</td><td>2021年3月14日〜3月31日</td></tr><tr><td>内容</td><td>施術料金のお会計総額から、15％OFF<br>※物販は割引適用外となります。その他の割引・クーポンとの併用は致しかねます。</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">来店ご予約はこちら</a></p>\n<!-- /wp:paragraph -->','雨の日キャンペーン開催','','publish','closed','','','rainy-day','','','2022-10-06 04:50:58','2022-10-05 19:50:58','',0,'http://kuronekohair.local/?p=31',0,'post','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-07-24 16:59:18','2022-07-24 07:59:18','<!-- wp:paragraph -->\n<p>湿気で髪型も決まらないし、お出かけが億劫になる雨の日。みなさまに少しでも楽しく過ごしていただきたいという思いから、Kuroneko Hairでは雨の日キャンペーンを開催することにいたしました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>当日のご予約でもOKです、ぜひこの機会にご利用ください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>キャンペーン内容</h2>\n<!-- /wp:heading -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>対象日</td><td>キャンペーン期間中、ご来店時に雨が降っていたお客様</td></tr><tr><td>期間</td><td>2021年3月14日〜3月31日</td></tr><tr><td>内容</td><td>施術料金のお会計総額から、15％OFF<br>※物販は割引適用外となります。その他の割引・クーポンとの併用は致しかねます。</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">来店ご予約はこちら</a></p>\n<!-- /wp:paragraph -->','雨の日キャンペーン開催','','inherit','closed','closed','','31-revision-v1','','','2022-07-24 16:59:18','2022-07-24 07:59:18','',31,'http://kuronekohair.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2019-11-15 15:05:00','2019-11-15 06:05:00','<!-- wp:paragraph -->\n<p>新作シャンプー・トリートメント「<strong>ミケのお手入れシリーズ</strong>」を入荷しました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>この「ミケのお手入れシリーズ」は、ホイップクリームのような、なめらかな泡立ちと、ずっとさわっていたくなるような指通りが特徴です。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>刺激のつよい原材料を使用せず、低刺激タイプに仕上げていますので、赤ちゃんからシニア層まで、ご家族みなさまでご利用いただけるシャンプー・トリートメントとなっています。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>「しっとりなめらか」タイプと「すっきりさわやか」タイプの2種類をお取り扱いしています。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>サンプルもお渡ししておりますので、ぜひお手に取ってみてください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','新作シャンプー・トリートメント入荷しました','','publish','closed','closed','','mike-series','','','2019-11-15 15:05:00','2019-11-15 06:05:00','',0,'http://wptheme-beginners.com/demo/?p=5',9,'post','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-07-16 15:17:00','2020-07-16 06:17:00','<!-- wp:paragraph -->\n<p>現在発売中の雑誌「LOVE NEKO HAIR 7月号」に、当店スタイリストが担当したページが掲載されています。<br><br>当店でも大人気の「<strong>ミケのお手入れシリーズ</strong>」のヘアオイルを使った、お手軽スタイリングを解説しました。ぜひチェックしてみてください。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>当店へお越しいただいたお客様には、ご希望があればスタイリストからご自身でのスタイリング方法をレクチャー可能です。ご予約お待ちしております。</p>\n<!-- /wp:paragraph -->','雑誌に掲載されました','','publish','closed','closed','','magazine','','','2020-07-16 15:17:00','2020-07-16 06:17:00','',0,'http://wptheme-beginners.com/demo/?p=9',4,'post','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-07-01 13:00:00','2020-07-01 04:00:00','<!-- wp:paragraph -->\n<p>いつもKuroneko Hairをご利用いただき、ありがとうございます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>誠に勝手ながら、社内研修のため下記期間を臨時休業とさせていただきます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>休業期間：7月22日（水）〜23日（木）</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ご不便をおかけいたしますが、何卒ご了承いただきますようお願い申し上げます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>なお休業期間中にいただきましたご予約・お問い合わせにつきましては、24日（金）より順次対応させていただきます。</p>\n<!-- /wp:paragraph -->','臨時休業のお知らせ','','publish','closed','closed','','temporary-closed-2007','','','2020-07-01 13:00:00','2020-07-01 04:00:00','',0,'http://wptheme-beginners.com/demo/?p=12',3,'post','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-03-05 15:24:43','2020-03-05 06:24:43','<!-- wp:paragraph -->\n<p>ヘアカラーブランド「HACHIWARE」から、2020年春夏の新色が入荷しました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>今年のキーワードは「ネイチャー」。<br>すっきりとさわやかな印象と、気取らず自然に自分本来の美しさをふるまうスタイルがテーマになっています。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>お客様お一人おひとりがもともと持っている髪の良さを生かしつつ、なりたい自分へ近づいていくため、ダメージを軽減する処方となっていることも特徴です。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>当店のカラーリストにぜひご相談くださいね。ご予約をお待ちしております。</p>\n<!-- /wp:paragraph -->','春・夏に向けて、ヘアカラーの新色が登場','','publish','closed','closed','','hair-color','','','2020-03-05 15:24:43','2020-03-05 06:24:43','',0,'http://wptheme-beginners.com/demo/?p=14',6,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-04-01 10:00:00','2020-04-01 01:00:00','<!-- wp:paragraph -->\n<p>4月1日より、Kuroneko Hairに新規スタッフが加わりました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>昨年まで、東京都内の美容室でトップスタイリストとして活躍していた清水です。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>特に忙しい世代の短時間でスタイリングが決まる似合わせカットを得意としています。朝が苦手なお客様から「楽になった！」と言われることが嬉しいようです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>今後の活躍に、どうぞご期待ください。</p>\n<!-- /wp:paragraph -->','スタッフが入りました','','publish','closed','closed','','new-face','','','2020-04-01 10:00:00','2020-04-01 01:00:00','',0,'http://wptheme-beginners.com/demo/?p=17',5,'post','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-11-22 16:30:00','2020-11-22 07:30:00','<!-- wp:paragraph -->\n<p>こんにちは、Kuroneko Hair スタッフのサビです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>先日イメージ写真の撮影を行いに行ってきました。場所は〇〇市の△△砂丘です。お天気にも恵まれ、スムーズな撮影ができました。写真もめちゃくちゃ良いものが撮れています(^^)♪</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>撮影した写真は、お店のパンフレットや名刺、ホームページなどに利用していく予定です。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>楽しみにしていてください！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>スタイリスト：サビ<br>ヘアメイク：ハッチー<br>カメラマン：大虎 太郎<br>モデル：Ragdoll</p>\n<!-- /wp:paragraph -->','ロケーション撮影に行きました','','publish','closed','closed','','location-shooting','','','2020-11-22 16:30:00','2020-11-22 07:30:00','',0,'http://wptheme-beginners.com/demo/?p=23',10,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-05-16 16:59:14','2020-05-16 07:59:14','','noimage','','inherit','open','closed','','noimage','','','2020-05-16 16:59:14','2020-05-16 07:59:14','',27,'http://kuronekohair.local/wp-content/uploads/2020/05/noimage.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (42,1,'2019-12-16 17:03:00','2019-12-16 08:03:00','<!-- wp:paragraph -->\n<p>いつもKuroneko Hairをご利用いただき、ありがとうございます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>誠に勝手ながら、当店は下記日程で年末年始休業いたします。皆様には大変ご迷惑をおかけいたしますが、何卒よろしくお願い申し上げます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>休業期間：2019年12月30日（月）〜2020年1月3日（金）</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>※1月4日（土）より、通常営業いたします。</p>\n<!-- /wp:paragraph -->','年末年始休業のお知らせ','','publish','closed','closed','','yearend-holidays','','','2019-12-16 17:03:00','2019-12-16 08:03:00','',0,'http://wptheme-beginners.com/demo/?p=32',7,'post','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-09-16 17:37:01','2020-09-16 08:37:01','<!-- wp:paragraph -->\n<p>こんにちは、Kuroneko Hair スタッフのサビです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>先日、メーカー主催のパーソナルカラーの研修に行ってきました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>身の回りものも・目に見えるものすべてに色ってついていますが、「なぜ色がついて見えるのか」といった概念のおさらいから、「パーソナルカラーとは？」「ブルーベース・イエローベースとは？」といったパーソナルカラーの基本理念を学んできました。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>実演では、ドレープという布を利用して似合う色・似合わない色を講師の方に見ていただいたのですが、本当に変わりますね！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ひとことで「赤」といっても、青みがかった赤・鮮やかな赤・少しくすんだ赤…とある中で、似合う赤を見つけ出していく過程は本当に面白かったです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>引き続き勉強を続けて、お客様を魅力的にしていく知識を身につけたいと思います！</p>\n<!-- /wp:paragraph -->','パーソナルカラーの研修に行ってきました','','publish','closed','closed','','personal-color','','','2020-09-16 17:37:01','2020-09-16 08:37:01','',0,'http://wptheme-beginners.com/demo/?p=34',1,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-07-24 17:53:06','2022-07-24 08:53:06','','ホーム','','publish','closed','closed','','%e3%83%9b%e3%83%bc%e3%83%a0','','','2022-07-24 17:53:06','2022-07-24 08:53:06','',0,'http://kuronekohair.local/%e3%83%9b%e3%83%bc%e3%83%a0/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-07-24 17:53:06','2022-07-24 08:53:06','','ヘアスタイル','','publish','closed','closed','','%e3%83%98%e3%82%a2%e3%82%b9%e3%82%bf%e3%82%a4%e3%83%ab','','','2022-07-24 17:53:06','2022-07-24 08:53:06','',0,'http://kuronekohair.local/%e3%83%98%e3%82%a2%e3%82%b9%e3%82%bf%e3%82%a4%e3%83%ab/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-05-23 17:13:32','2020-05-23 08:13:32','.page-id-36 .wp-block-table tbody tr td:first-of-type{\n        width: 50%;\n    }\n\n.footer-info .logo{\n	margin-bottom:30px;\n}\n.footer-info .description{\n	line-height:1.7;\n}\n.footer-shopinfo{\n	margin-top:15px;\n}\n.footer-shopinfo dt{\n	width:4em;\n}\n.footer-shopinfo dd{\n	margin:-1.5em 0 0.5em 5em;\n}','kuroneko-hair','','publish','closed','closed','','kuroneko-hair','','','2020-05-23 17:13:32','2020-05-23 08:13:32','',0,'https://wptheme-beginners.com/demo/2020/05/23/kuroneko-hair/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-08-01 19:59:00','2020-08-01 10:59:00','<!-- wp:paragraph -->\n<p>いつもKuroneko Hairをご利用いただき、ありがとうございます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>誠に勝手ながら、当店は下記日程で夏季休業をいたします。皆様には大変ご迷惑をおかけいたしますが、何卒よろしくお願い申し上げます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>休業期間：2020年8月11日（火）〜2020年8月14日（金）</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>※8月15日（土）より、通常営業いたします。</p>\n<!-- /wp:paragraph -->','夏季休業のお知らせ','','publish','closed','','','summer-holidays','','','2020-08-01 19:59:00','2020-08-01 10:59:00','',0,'https://wptheme-beginners.com/demo/?p=134',0,'post','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2020-10-23 20:00:00','2020-10-23 11:00:00','<!-- wp:paragraph -->\n<p>いつもKuroneko Hairをご利用いただき、ありがとうございます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>誠に勝手ながら、防火設備点検のため下記期間を臨時休業とさせていただきます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>休業期間：2020年11月3日（火）</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ご不便をおかけいたしますが、何卒ご了承いただきますようお願い申し上げます。</p>\n<!-- /wp:paragraph -->','臨時休業のお知らせ','','publish','closed','closed','','temporary-closed-2010','','','2020-10-23 20:00:00','2020-10-23 11:00:00','',0,'https://wptheme-beginners.com/demo/?p=137',0,'post','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-02-27 20:14:35','2021-02-27 11:14:35','','personal-color','','inherit','','closed','','personal-color-2','','','2021-02-27 20:14:35','2021-02-27 11:14:35','',43,'http://kuronekohair.local/wp-content/uploads/2021/02/personal-color-scaled-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (153,1,'2021-02-27 21:04:02','2021-02-27 12:04:02','<!-- wp:paragraph -->\n<p>Kuroneko Hairは、〇〇市△△区にあるヘアサロンです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>当サロンでは、5名のヘアスタイリストがお客様にもっともヘアスタイルのご提案はもちろんのこと、ヘアケアアドバイスやカラーコーディネートなどもご提案しております。</p>\n<!-- /wp:paragraph -->','コンセプト','','publish','closed','closed','','concept','','','2021-02-27 21:04:02','2021-02-27 12:04:02','',0,'https://wptheme-beginners.com/demo/?page_id=153',0,'page','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2022-07-24 17:53:09','2022-07-24 08:53:09',' ','','','publish','closed','closed','','154','','','2022-07-24 17:53:09','2022-07-24 08:53:09','',0,'http://kuronekohair.local/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2021-03-27 19:34:46','2021-03-27 10:34:46','','hairstyle1','','inherit','','closed','','hairstyle1','','','2021-03-27 19:34:46','2021-03-27 10:34:46','',0,'http://kuronekohair.local/wp-content/uploads/2021/03/hairstyle1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (172,1,'2021-03-27 19:35:46','2021-03-27 10:35:46','','hairstyle2','','inherit','','closed','','hairstyle2','','','2021-03-27 19:35:46','2021-03-27 10:35:46','',0,'http://kuronekohair.local/wp-content/uploads/2021/03/hairstyle2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (173,1,'2021-03-27 19:36:04','2021-03-27 10:36:04','','hairstyle3','','inherit','','closed','','hairstyle3','','','2021-03-27 19:36:04','2021-03-27 10:36:04','',0,'http://kuronekohair.local/wp-content/uploads/2021/03/hairstyle3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (174,1,'2021-03-27 19:36:20','2021-03-27 10:36:20','','hairstyle4','','inherit','','closed','','hairstyle4','','','2021-03-27 19:36:20','2021-03-27 10:36:20','',0,'http://kuronekohair.local/wp-content/uploads/2021/03/hairstyle4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (175,1,'2022-07-24 17:53:16','2022-07-24 08:53:16','','ホーム','','publish','closed','closed','','%e3%83%9b%e3%83%bc%e3%83%a0-2','','','2022-07-24 17:53:16','2022-07-24 08:53:16','',0,'http://kuronekohair.local/%e3%83%9b%e3%83%bc%e3%83%a0-2/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2022-07-24 17:53:16','2022-07-24 08:53:16','','ヘアスタイル','','publish','closed','closed','','%e3%83%98%e3%82%a2%e3%82%b9%e3%82%bf%e3%82%a4%e3%83%ab-2','','','2022-07-24 17:53:16','2022-07-24 08:53:16','',0,'http://kuronekohair.local/%e3%83%98%e3%82%a2%e3%82%b9%e3%82%bf%e3%82%a4%e3%83%ab-2/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2022-07-24 17:53:16','2022-07-24 08:53:16',' ','','','publish','closed','closed','','177','','','2022-07-24 17:53:16','2022-07-24 08:53:16','',0,'http://kuronekohair.local/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2021-03-27 20:32:46','2021-03-27 11:32:46','','concept','','inherit','','closed','','concept-2','','','2021-03-27 20:32:46','2021-03-27 11:32:46','',153,'http://kuronekohair.local/wp-content/uploads/2021/03/concept.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (180,1,'2021-03-27 20:32:46','2021-03-27 11:32:46','','concept','','inherit','','closed','','concept-2-2','','','2021-03-27 20:32:46','2021-03-27 11:32:46','',153,'http://kuronekohair.local/wp-content/uploads/2021/03/concept-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (182,1,'2021-03-28 15:39:33','2021-03-28 06:39:33','','pic_hero-default','','inherit','','closed','','pic_hero-default','','','2021-03-28 15:39:33','2021-03-28 06:39:33','',0,'http://kuronekohair.local/wp-content/uploads/2021/03/pic_hero-default.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (207,1,'2021-04-24 17:32:46','2021-04-24 08:32:46','','sunflower','','inherit','','closed','','sunflower','','','2021-04-24 17:32:46','2021-04-24 08:32:46','',134,'http://kuronekohair.local/wp-content/uploads/2021/04/sunflower.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (208,1,'2021-04-24 17:32:46','2021-04-24 08:32:46','','sunflower','','inherit','','closed','','sunflower-2','','','2021-04-24 17:32:46','2021-04-24 08:32:46','',134,'http://kuronekohair.local/wp-content/uploads/2021/04/sunflower-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (209,1,'2021-04-24 17:34:57','2021-04-24 08:34:57','','rainy-day','','inherit','','closed','','rainy-day-2','','','2021-04-24 17:34:57','2021-04-24 08:34:57','',0,'http://kuronekohair.local/wp-content/uploads/2021/04/rainy-day.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (210,1,'2021-04-24 17:34:57','2021-04-24 08:34:57','','rainy-day','','inherit','','closed','','rainy-day-2-2','','','2021-04-24 17:34:57','2021-04-24 08:34:57','',0,'http://kuronekohair.local/wp-content/uploads/2021/04/rainy-day-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (211,1,'2021-04-24 17:35:24','2021-04-24 08:35:24','','lighthouse','','inherit','','closed','','lighthouse','','','2021-04-24 17:35:24','2021-04-24 08:35:24','',40,'http://kuronekohair.local/wp-content/uploads/2021/04/lighthouse.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (212,1,'2021-04-24 17:35:24','2021-04-24 08:35:24','','lighthouse','','inherit','','closed','','lighthouse-2','','','2021-04-24 17:35:24','2021-04-24 08:35:24','',40,'http://kuronekohair.local/wp-content/uploads/2021/04/lighthouse-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (213,1,'2021-04-24 17:35:52','2021-04-24 08:35:52','','color','','inherit','','closed','','color','','','2021-04-24 17:35:52','2021-04-24 08:35:52','',43,'http://kuronekohair.local/wp-content/uploads/2021/04/color.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (214,1,'2021-04-24 17:35:52','2021-04-24 08:35:52','','color','','inherit','','closed','','color-2','','','2021-04-24 17:35:52','2021-04-24 08:35:52','',43,'http://kuronekohair.local/wp-content/uploads/2021/04/color-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (215,1,'2021-04-24 17:36:22','2021-04-24 08:36:22','','magazine','','inherit','','closed','','magazine-2','','','2021-04-24 17:36:22','2021-04-24 08:36:22','',36,'http://kuronekohair.local/wp-content/uploads/2021/04/magazine.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (216,1,'2021-04-24 17:36:22','2021-04-24 08:36:22','','magazine','','inherit','','closed','','magazine-2-2','','','2021-04-24 17:36:22','2021-04-24 08:36:22','',36,'http://kuronekohair.local/wp-content/uploads/2021/04/magazine-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (217,1,'2021-04-24 17:36:49','2021-04-24 08:36:49','','sakura','','inherit','','closed','','sakura','','','2021-04-24 17:36:49','2021-04-24 08:36:49','',39,'http://kuronekohair.local/wp-content/uploads/2021/04/sakura.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (218,1,'2021-04-24 17:36:49','2021-04-24 08:36:49','','sakura','','inherit','','closed','','sakura-2','','','2021-04-24 17:36:49','2021-04-24 08:36:49','',39,'http://kuronekohair.local/wp-content/uploads/2021/04/sakura-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (219,1,'2021-04-24 17:37:19','2021-04-24 08:37:19','','hp-renewal','','inherit','','closed','','hp-renewal','','','2021-04-24 17:37:19','2021-04-24 08:37:19','',27,'http://kuronekohair.local/wp-content/uploads/2021/04/hp-renewal.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (220,1,'2021-04-24 17:37:19','2021-04-24 08:37:19','','hp-renewal','','inherit','','closed','','hp-renewal-2','','','2021-04-24 17:37:19','2021-04-24 08:37:19','',27,'http://kuronekohair.local/wp-content/uploads/2021/04/hp-renewal-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (221,1,'2021-04-24 17:38:00','2021-04-24 08:38:00','','new-products','','inherit','','closed','','new-products','','','2021-04-24 17:38:00','2021-04-24 08:38:00','',35,'http://kuronekohair.local/wp-content/uploads/2021/04/new-products.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (222,1,'2021-04-24 17:38:00','2021-04-24 08:38:00','','new-products','','inherit','','closed','','new-products-2','','','2021-04-24 17:38:00','2021-04-24 08:38:00','',35,'http://kuronekohair.local/wp-content/uploads/2021/04/new-products-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (223,1,'2021-04-24 17:38:31','2021-04-24 08:38:31','','shop','','inherit','','closed','','shop','','','2021-04-24 17:38:31','2021-04-24 08:38:31','',0,'http://kuronekohair.local/wp-content/uploads/2021/04/shop.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (224,1,'2021-04-24 17:38:31','2021-04-24 08:38:31','','shop','','inherit','','closed','','shop-2','','','2021-04-24 17:38:31','2021-04-24 08:38:31','',0,'http://kuronekohair.local/wp-content/uploads/2021/04/shop-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (225,1,'2021-05-06 20:31:10','2021-05-06 11:31:10','','pic_hero-default','','inherit','','closed','','pic_hero-default-2','','','2021-05-06 20:31:10','2021-05-06 11:31:10','',0,'http://kuronekohair.local/wp-content/uploads/2021/05/pic_hero-default.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (226,1,'2021-05-06 20:31:10','2021-05-06 11:31:10','','pic_hero-default','','inherit','','closed','','pic_hero-default-2-2','','','2021-05-06 20:31:10','2021-05-06 11:31:10','',0,'http://kuronekohair.local/wp-content/uploads/2021/05/pic_hero-default-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (228,1,'2022-10-05 05:01:42','2022-10-04 20:01:42','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-kuroneko-hair','','','2022-10-05 05:01:42','2022-10-04 20:01:42','',0,'http://kuronekohair.local/wp-global-styles-kuroneko-hair/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (229,1,'2022-10-05 05:28:18','2022-10-04 20:28:18','','shop','','inherit','closed','closed','','shop-3','','','2022-10-05 05:34:09','2022-10-04 20:34:09','',25,'http://kuronekohair.local/wp-content/uploads/2022/10/shop.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (230,1,'2022-10-05 05:37:21','2022-10-04 20:37:21','<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>住所</td><td>〒000-0000 □□県〇〇市△△区☆☆町000</td></tr><tr><td>電話番号</td><td>000-000-0000</td></tr><tr><td>営業時間</td><td>平日 10:00〜19:00 / 土・日 9:00〜19:00<br>※受付：カットは閉店1時間前まで、カラーまたはパーマは2時間前まで</td></tr><tr><td>休業日</td><td>毎週月曜・第2 &amp; 第4火曜日</td></tr><tr><td>スタッフ</td><td>スタイリスト3名／アシスタント2名</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3280.039827139448!2d137.73227565048458!3d34.70417539044434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601ade7760d07ed9%3A0xf0a52daac3b91a51!2z5rWc5p2-!5e0!3m2!1sja!2sjp!4v1619326103946!5m2!1sja!2sjp\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','店舗案内','','inherit','closed','closed','','25-revision-v1','','','2022-10-05 05:37:21','2022-10-04 20:37:21','',25,'http://kuronekohair.local/?p=230',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,11,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (31,5,0);
INSERT INTO `wp_term_relationships` VALUES (35,7,0);
INSERT INTO `wp_term_relationships` VALUES (35,8,0);
INSERT INTO `wp_term_relationships` VALUES (35,9,0);
INSERT INTO `wp_term_relationships` VALUES (35,10,0);
INSERT INTO `wp_term_relationships` VALUES (36,11,0);
INSERT INTO `wp_term_relationships` VALUES (36,12,0);
INSERT INTO `wp_term_relationships` VALUES (37,11,0);
INSERT INTO `wp_term_relationships` VALUES (37,13,0);
INSERT INTO `wp_term_relationships` VALUES (38,11,0);
INSERT INTO `wp_term_relationships` VALUES (38,14,0);
INSERT INTO `wp_term_relationships` VALUES (39,11,0);
INSERT INTO `wp_term_relationships` VALUES (39,15,0);
INSERT INTO `wp_term_relationships` VALUES (40,16,0);
INSERT INTO `wp_term_relationships` VALUES (40,17,0);
INSERT INTO `wp_term_relationships` VALUES (40,18,0);
INSERT INTO `wp_term_relationships` VALUES (42,11,0);
INSERT INTO `wp_term_relationships` VALUES (42,13,0);
INSERT INTO `wp_term_relationships` VALUES (43,16,0);
INSERT INTO `wp_term_relationships` VALUES (43,19,0);
INSERT INTO `wp_term_relationships` VALUES (43,20,0);
INSERT INTO `wp_term_relationships` VALUES (44,6,0);
INSERT INTO `wp_term_relationships` VALUES (45,6,0);
INSERT INTO `wp_term_relationships` VALUES (134,11,0);
INSERT INTO `wp_term_relationships` VALUES (134,13,0);
INSERT INTO `wp_term_relationships` VALUES (137,11,0);
INSERT INTO `wp_term_relationships` VALUES (137,13,0);
INSERT INTO `wp_term_relationships` VALUES (154,6,0);
INSERT INTO `wp_term_relationships` VALUES (175,6,0);
INSERT INTO `wp_term_relationships` VALUES (176,6,0);
INSERT INTO `wp_term_relationships` VALUES (177,6,0);
INSERT INTO `wp_term_relationships` VALUES (228,22,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_tag','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyone','twentytwentyone',0);
INSERT INTO `wp_terms` VALUES (3,'キャンペーン','%e3%82%ad%e3%83%a3%e3%83%b3%e3%83%9a%e3%83%bc%e3%83%b3',0);
INSERT INTO `wp_terms` VALUES (4,'ご予約','%e3%81%94%e4%ba%88%e7%b4%84',0);
INSERT INTO `wp_terms` VALUES (5,'雨の日','%e9%9b%a8%e3%81%ae%e6%97%a5',0);
INSERT INTO `wp_terms` VALUES (6,'Global_Nav','global_nav',0);
INSERT INTO `wp_terms` VALUES (7,'アイテム','item',0);
INSERT INTO `wp_terms` VALUES (8,'シャンプー','%e3%82%b7%e3%83%a3%e3%83%b3%e3%83%97%e3%83%bc',0);
INSERT INTO `wp_terms` VALUES (9,'トリートメント','%e3%83%88%e3%83%aa%e3%83%bc%e3%83%88%e3%83%a1%e3%83%b3%e3%83%88',0);
INSERT INTO `wp_terms` VALUES (10,'ホームケア','%e3%83%9b%e3%83%bc%e3%83%a0%e3%82%b1%e3%82%a2',0);
INSERT INTO `wp_terms` VALUES (11,'お知らせ','topics',0);
INSERT INTO `wp_terms` VALUES (12,'雑誌掲載','%e9%9b%91%e8%aa%8c%e6%8e%b2%e8%bc%89',0);
INSERT INTO `wp_terms` VALUES (13,'休業案内','%e4%bc%91%e6%a5%ad%e6%a1%88%e5%86%85',0);
INSERT INTO `wp_terms` VALUES (14,'ヘアカラー','%e3%83%98%e3%82%a2%e3%82%ab%e3%83%a9%e3%83%bc',0);
INSERT INTO `wp_terms` VALUES (15,'スタッフ加入','%e3%82%b9%e3%82%bf%e3%83%83%e3%83%95%e5%8a%a0%e5%85%a5',0);
INSERT INTO `wp_terms` VALUES (16,'ブログ','%e3%83%96%e3%83%ad%e3%82%b0',0);
INSERT INTO `wp_terms` VALUES (17,'プロモーション','%e3%83%97%e3%83%ad%e3%83%a2%e3%83%bc%e3%82%b7%e3%83%a7%e3%83%b3',0);
INSERT INTO `wp_terms` VALUES (18,'撮影','%e6%92%ae%e5%bd%b1',0);
INSERT INTO `wp_terms` VALUES (19,'パーソナルカラー','%e3%83%91%e3%83%bc%e3%82%bd%e3%83%8a%e3%83%ab%e3%82%ab%e3%83%a9%e3%83%bc',0);
INSERT INTO `wp_terms` VALUES (20,'研修報告','%e7%a0%94%e4%bf%ae%e5%a0%b1%e5%91%8a',0);
INSERT INTO `wp_terms` VALUES (21,'未分類','%e6%9c%aa%e5%88%86%e9%a1%9e',0);
INSERT INTO `wp_terms` VALUES (22,'kuroneko-hair','kuroneko-hair',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"2a2af3a78bbad0c06f05dbed4642660318dbef17592707e5e1b246f30d945d08\";a:4:{s:10:\"expiration\";i:1665324899;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1664115299;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','231');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1664915902');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BD9P2WinYhbnqPcWiKlg8qKNFOBPm40','admin','dev-email@flywheel.local','http://kuronekohair.local','2022-07-20 16:51:32','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-24 22:33:45
