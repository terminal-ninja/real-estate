# WordPress MySQL database migration
#
# Generated: Wednesday 11. January 2017 13:51 UTC
# Hostname: sql34.jnb1.host-h.net
# Database: `real_estate`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_cf_form_entries`
#

DROP TABLE IF EXISTS `wp_cf_form_entries`;


#
# Table structure of table `wp_cf_form_entries`
#

CREATE TABLE `wp_cf_form_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `user_id` (`user_id`),
  KEY `date_time` (`datestamp`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_cf_form_entries`
#

#
# End of data contents of table `wp_cf_form_entries`
# --------------------------------------------------------



#
# Delete any existing table `wp_cf_form_entry_meta`
#

DROP TABLE IF EXISTS `wp_cf_form_entry_meta`;


#
# Table structure of table `wp_cf_form_entry_meta`
#

CREATE TABLE `wp_cf_form_entry_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_cf_form_entry_meta`
#

#
# End of data contents of table `wp_cf_form_entry_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_cf_form_entry_values`
#

DROP TABLE IF EXISTS `wp_cf_form_entry_values`;


#
# Table structure of table `wp_cf_form_entry_values`
#

CREATE TABLE `wp_cf_form_entry_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_cf_form_entry_values`
#

#
# End of data contents of table `wp_cf_form_entry_values`
# --------------------------------------------------------



#
# Delete any existing table `wp_cf_tracking`
#

DROP TABLE IF EXISTS `wp_cf_tracking`;


#
# Table structure of table `wp_cf_tracking`
#

CREATE TABLE `wp_cf_tracking` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_cf_tracking`
#

#
# End of data contents of table `wp_cf_tracking`
# --------------------------------------------------------



#
# Delete any existing table `wp_cf_tracking_meta`
#

DROP TABLE IF EXISTS `wp_cf_tracking_meta`;


#
# Table structure of table `wp_cf_tracking_meta`
#

CREATE TABLE `wp_cf_tracking_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_cf_tracking_meta`
#

#
# End of data contents of table `wp_cf_tracking_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-01-11 12:51:36', '2017-01-11 12:51:36', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/real-estate', 'yes'),
(2, 'home', 'http://localhost/real-estate', 'yes'),
(3, 'blogname', 'Real Estate', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:133:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:25:"^cf-api/([^/]*)/([^/]*)/?";s:49:"index.php?cf_api=$matches[1]&cf_entry=$matches[2]";s:17:"^cf-api/([^/]*)/?";s:28:"index.php?cf_api=$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"index.php/popup/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"index.php/popup/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"index.php/popup/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/popup/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"index.php/popup/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"index.php/popup/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"index.php/popup/([^/]+)/embed/?$";s:53:"index.php?post_type=popup&name=$matches[1]&embed=true";s:36:"index.php/popup/([^/]+)/trackback/?$";s:47:"index.php?post_type=popup&name=$matches[1]&tb=1";s:44:"index.php/popup/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?post_type=popup&name=$matches[1]&paged=$matches[2]";s:51:"index.php/popup/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?post_type=popup&name=$matches[1]&cpage=$matches[2]";s:40:"index.php/popup/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?post_type=popup&name=$matches[1]&page=$matches[2]";s:32:"index.php/popup/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"index.php/popup/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"index.php/popup/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"index.php/popup/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"index.php/popup/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"index.php/popup/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:49:"index.php/popup_theme/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:59:"index.php/popup_theme/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"index.php/popup_theme/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/popup_theme/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/popup_theme/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"index.php/popup_theme/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"index.php/popup_theme/([^/]+)/embed/?$";s:59:"index.php?post_type=popup_theme&name=$matches[1]&embed=true";s:42:"index.php/popup_theme/([^/]+)/trackback/?$";s:53:"index.php?post_type=popup_theme&name=$matches[1]&tb=1";s:50:"index.php/popup_theme/([^/]+)/page/?([0-9]{1,})/?$";s:66:"index.php?post_type=popup_theme&name=$matches[1]&paged=$matches[2]";s:57:"index.php/popup_theme/([^/]+)/comment-page-([0-9]{1,})/?$";s:66:"index.php?post_type=popup_theme&name=$matches[1]&cpage=$matches[2]";s:46:"index.php/popup_theme/([^/]+)(?:/([0-9]+))?/?$";s:65:"index.php?post_type=popup_theme&name=$matches[1]&page=$matches[2]";s:38:"index.php/popup_theme/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"index.php/popup_theme/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"index.php/popup_theme/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/popup_theme/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/popup_theme/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"index.php/popup_theme/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:65:"index.php/popup_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?popup_category=$matches[1]&feed=$matches[2]";s:60:"index.php/popup_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?popup_category=$matches[1]&feed=$matches[2]";s:41:"index.php/popup_category/([^/]+)/embed/?$";s:47:"index.php?popup_category=$matches[1]&embed=true";s:53:"index.php/popup_category/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?popup_category=$matches[1]&paged=$matches[2]";s:35:"index.php/popup_category/([^/]+)/?$";s:36:"index.php?popup_category=$matches[1]";s:60:"index.php/popup_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?popup_tag=$matches[1]&feed=$matches[2]";s:55:"index.php/popup_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?popup_tag=$matches[1]&feed=$matches[2]";s:36:"index.php/popup_tag/([^/]+)/embed/?$";s:42:"index.php?popup_tag=$matches[1]&embed=true";s:48:"index.php/popup_tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?popup_tag=$matches[1]&paged=$matches[2]";s:30:"index.php/popup_tag/([^/]+)/?$";s:31:"index.php?popup_tag=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:27:"popup-maker/popup-maker.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:30:"caldera-forms/caldera-core.php";i:3;s:25:"fakerpress/fakerpress.php";i:4;s:33:"fancy-admin-ui/fancy-admin-ui.php";i:5;s:49:"mammoth-docx-converter/mammoth-docx-converter.php";i:6;s:29:"pdf-embedder/pdf_embedder.php";i:7;s:32:"white-label-cms/wlcms-plugin.php";i:8;s:41:"wordpress-importer/wordpress-importer.php";i:9;s:32:"wp-sync-db-master/wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'real-estate', 'yes'),
(41, 'stylesheet', 'real-estate', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"popup-maker/popup-maker.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:8:{i:1484146306;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1484182296;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1484225516;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1484225558;a:1:{s:32:"caldera_forms_tracking_send_rows";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1484225728;a:1:{s:30:"popmake_daily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1484225736;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1484744128;a:1:{s:31:"popmake_weekly_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(115, 'can_compress_scripts', '0', 'no'),
(133, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484139119;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(134, 'current_theme', '', 'yes'),
(135, 'theme_mods_real-estate', 'a:1:{i:0;b:0;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(138, '_calderaforms_lastupdate', '1.4.3.1', 'yes'),
(139, 'CF_DB', '4', 'yes'),
(140, 'pdfemb_poweredby', '1', 'no'),
(141, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:34:"popup-maker/includes/libs/freemius";O:8:"stdClass":3:{s:7:"version";s:5:"1.1.9";s:9:"timestamp";i:1484139158;s:11:"plugin_path";s:27:"popup-maker/popup-maker.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:27:"popup-maker/popup-maker.php";s:8:"sdk_path";s:34:"popup-maker/includes/libs/freemius";s:7:"version";s:5:"1.1.9";s:13:"in_activation";b:0;s:9:"timestamp";i:1484139158;}}', 'yes'),
(142, 'fs_debug_mode', '', 'yes'),
(143, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:11:"popup-maker";a:13:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:72:"/var/www/html/real-estate/wp-content/plugins/popup-maker/popup-maker.php";}s:17:"install_timestamp";i:1484139158;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"1.1.9";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"1.4.15";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:19:"techsolutions.ninja";s:9:"server_ip";s:14:"196.211.61.171";s:9:"is_active";b:1;s:9:"timestamp";i:1484139158;s:7:"version";s:6:"1.4.15";}s:17:"was_plugin_loaded";b:1;}}s:13:"file_slug_map";a:1:{s:27:"popup-maker/popup-maker.php";s:11:"popup-maker";}s:7:"plugins";a:1:{s:11:"popup-maker";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:11:"Popup Maker";s:4:"slug";s:11:"popup-maker";s:4:"file";s:27:"popup-maker/popup-maker.php";s:7:"version";s:6:"1.4.15";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_0a02cbd99443e0ab7211b19222fe3";s:10:"secret_key";N;s:2:"id";s:3:"147";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:1;}}s:9:"unique_id";s:32:"274c0a47eb3858e90ca5927569b05a9e";}', 'yes'),
(144, 'popmake_settings', 'a:1:{s:26:"disable_popup_category_tag";i:1;}', 'yes'),
(145, 'pum_ver', '1.4.15', 'yes'),
(146, 'fs_api_cache', 'a:0:{}', 'yes'),
(150, 'popmake_default_theme', '4', 'yes'),
(151, '_pum_installed_themes', 'a:5:{i:0;s:8:"lightbox";i:1;s:15:"enterprise-blue";i:2;s:9:"hello-box";i:3;s:12:"cutting-edge";i:4;s:13:"framed-border";}', 'yes'),
(152, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"r3PWH+egrV9csHsYNvQq2zLy6OAtIl50";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(153, 'widget_caldera_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'acf_version', '5.3.8.1', 'yes'),
(156, 'wlcms_o_hide_wp_adminbar', '0', 'yes'),
(157, 'wlcms_o_adminbar_custom_logo', '', 'yes'),
(158, 'wlcms_o_header_custom_logo', '', 'yes'),
(159, 'wlcms_o_dashboard_override', 'Dashboard', 'yes'),
(160, 'wlcms_o_footer_custom_logo', '', 'yes'),
(161, 'wlcms_o_developer_url', '', 'yes'),
(162, 'wlcms_o_developer_name', '', 'yes'),
(163, 'wlcms_o_hide_wpversion', '0', 'yes'),
(164, 'wlcms_o_loginbg_white', '0', 'yes'),
(165, 'wlcms_o_login_custom_logo', '', 'yes'),
(166, 'wlcms_o_login_bg_css', '', 'yes'),
(167, 'wlcms_o_admin_page_title', '', 'yes'),
(168, 'wlcms_o_dashboard_remove_right_now', '0', 'yes'),
(169, 'wlcms_o_dashboard_remove_activity_panel', '0', 'yes'),
(170, 'wlcms_o_dashboard_remove_recent_comments', '1', 'yes'),
(171, 'wlcms_o_dashboard_others', '1', 'yes'),
(172, 'wlcms_o_dashboard_admin', '1', 'yes'),
(173, 'wlcms_o_dashboard_border', '1', 'yes'),
(174, 'wlcms_o_show_welcome', '0', 'yes'),
(175, 'wlcms_o_welcome_visible_to', 'editor', 'yes'),
(176, 'wlcms_o_welcome_title', 'Welcome To Your New Website', 'yes'),
(177, 'wlcms_o_welcome_text', '', 'yes'),
(178, 'wlcms_o_welcome_visible_to1', '', 'yes'),
(179, 'wlcms_o_welcome_title1', '', 'yes'),
(180, 'wlcms_o_welcome_text1', '', 'yes'),
(181, 'wlcms_o_show_rss_widget', '0', 'yes'),
(182, 'wlcms_o_rss_title', '', 'yes'),
(183, 'wlcms_o_rss_logo', '', 'yes'),
(184, 'wlcms_o_rss_value', '', 'yes'),
(185, 'wlcms_o_rss_num_items', '2', 'yes'),
(186, 'wlcms_o_rss_show_intro', 'yes', 'yes'),
(187, 'wlcms_o_rss_intro_html', '', 'yes'),
(188, 'wlcms_o_enable_login_redirect', '1', 'yes'),
(189, 'wlcms_o_dashboard_remove_nag_update', '1', 'yes'),
(190, 'wlcms_o_dashboard_remove_help_box', '0', 'yes'),
(191, 'wlcms_o_dashboard_remove_screen_options', '0', 'yes'),
(192, 'wlcms_o_post_meta_box_excerpt', '0', 'yes'),
(193, 'wlcms_o_post_meta_box_slug', '0', 'yes'),
(194, 'wlcms_o_post_meta_box_tags', '0', 'yes'),
(195, 'wlcms_o_post_meta_box_author', '0', 'yes'),
(196, 'wlcms_o_post_meta_box_comments', '0', 'yes'),
(197, 'wlcms_o_post_meta_box_revisions', '0', 'yes'),
(198, 'wlcms_o_post_meta_box_discussions', '0', 'yes'),
(199, 'wlcms_o_post_meta_box_categories', '0', 'yes'),
(200, 'wlcms_o_post_meta_box_custom', '0', 'yes'),
(201, 'wlcms_o_post_meta_box_send', '0', 'yes'),
(202, 'wlcms_o_page_meta_box_custom', '0', 'yes'),
(203, 'wlcms_o_page_meta_box_author', '0', 'yes'),
(204, 'wlcms_o_page_meta_box_discussions', '0', 'yes'),
(205, 'wlcms_o_page_meta_box_revisions', '0', 'yes'),
(206, 'wlcms_o_page_meta_box_page', '0', 'yes'),
(207, 'wlcms_o_page_meta_box_slug', '0', 'yes'),
(208, 'wlcms_o_custom_css', '', 'yes'),
(209, 'wlcms_o_welcome_stylesheet', '', 'yes'),
(210, 'wlcms_o_cms_profile', '1', 'yes'),
(211, 'wlcms_o_hide_posts', '0', 'yes'),
(212, 'wlcms_o_hide_media', '0', 'yes'),
(213, 'wlcms_o_hide_links', '0', 'yes'),
(214, 'wlcms_o_hide_pages', '0', 'yes'),
(215, 'wlcms_o_hide_comments', '0', 'yes'),
(216, 'wlcms_o_hide_profile', '0', 'yes'),
(217, 'wlcms_o_hide_tools', '0', 'yes'),
(218, 'wlcms_o_editor_template_access', '0', 'yes'),
(219, 'wlcms_o_subtemplate_hide_5', '1', 'yes'),
(220, 'wlcms_o_subtemplate_hide_6', '1', 'yes'),
(221, 'wlcms_o_subtemplate_hide_7', '1', 'yes'),
(222, 'wlcms_o_subtemplate_hide_10', '1', 'yes'),
(223, 'wlcms_o_subtemplate_hide_11', '1', 'yes'),
(224, 'pum_db_ver', '6', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_pum_built_in', 'default-theme'),
(3, 4, '_pum_default_theme', '1'),
(4, 4, 'popup_theme_overlay_background_color', '#ffffff'),
(5, 4, 'popup_theme_overlay_background_opacity', '100'),
(6, 4, 'popup_theme_container_padding', '18'),
(7, 4, 'popup_theme_container_background_color', '#f9f9f9'),
(8, 4, 'popup_theme_container_background_opacity', '100'),
(9, 4, 'popup_theme_container_border_style', 'none'),
(10, 4, 'popup_theme_container_border_color', '#000000'),
(11, 4, 'popup_theme_container_border_width', '1'),
(12, 4, 'popup_theme_container_border_radius', '0'),
(13, 4, 'popup_theme_container_boxshadow_inset', 'no'),
(14, 4, 'popup_theme_container_boxshadow_horizontal', '1'),
(15, 4, 'popup_theme_container_boxshadow_vertical', '1'),
(16, 4, 'popup_theme_container_boxshadow_blur', '3'),
(17, 4, 'popup_theme_container_boxshadow_spread', '0'),
(18, 4, 'popup_theme_container_boxshadow_color', '#020202'),
(19, 4, 'popup_theme_container_boxshadow_opacity', '23'),
(20, 4, 'popup_theme_title_font_color', '#000000'),
(21, 4, 'popup_theme_title_line_height', '36'),
(22, 4, 'popup_theme_title_font_size', '32'),
(23, 4, 'popup_theme_title_font_family', 'inherit'),
(24, 4, 'popup_theme_title_font_weight', 'inherit'),
(25, 4, 'popup_theme_title_font_style', 'normal'),
(26, 4, 'popup_theme_title_text_align', 'left'),
(27, 4, 'popup_theme_title_textshadow_horizontal', '0'),
(28, 4, 'popup_theme_title_textshadow_vertical', '0'),
(29, 4, 'popup_theme_title_textshadow_blur', '0'),
(30, 4, 'popup_theme_title_textshadow_color', '#020202'),
(31, 4, 'popup_theme_title_textshadow_opacity', '23'),
(32, 4, 'popup_theme_content_font_color', '#8c8c8c'),
(33, 4, 'popup_theme_content_font_family', 'inherit'),
(34, 4, 'popup_theme_content_font_weight', 'inherit'),
(35, 4, 'popup_theme_content_font_style', 'normal'),
(36, 4, 'popup_theme_close_text', 'CLOSE'),
(37, 4, 'popup_theme_close_location', 'topright'),
(38, 4, 'popup_theme_close_position_top', '0'),
(39, 4, 'popup_theme_close_position_left', '0'),
(40, 4, 'popup_theme_close_position_bottom', '0'),
(41, 4, 'popup_theme_close_position_right', '0'),
(42, 4, 'popup_theme_close_padding', '8'),
(43, 4, 'popup_theme_close_height', '0'),
(44, 4, 'popup_theme_close_width', '0'),
(45, 4, 'popup_theme_close_background_color', '#00b7cd'),
(46, 4, 'popup_theme_close_background_opacity', '100'),
(47, 4, 'popup_theme_close_font_color', '#ffffff'),
(48, 4, 'popup_theme_close_line_height', '14'),
(49, 4, 'popup_theme_close_font_size', '12'),
(50, 4, 'popup_theme_close_font_family', 'inherit'),
(51, 4, 'popup_theme_close_font_weight', 'inherit'),
(52, 4, 'popup_theme_close_font_style', 'normal'),
(53, 4, 'popup_theme_close_border_style', 'none'),
(54, 4, 'popup_theme_close_border_color', '#ffffff'),
(55, 4, 'popup_theme_close_border_width', '1'),
(56, 4, 'popup_theme_close_border_radius', '0'),
(57, 4, 'popup_theme_close_boxshadow_inset', 'no'),
(58, 4, 'popup_theme_close_boxshadow_horizontal', '0'),
(59, 4, 'popup_theme_close_boxshadow_vertical', '0'),
(60, 4, 'popup_theme_close_boxshadow_blur', '0'),
(61, 4, 'popup_theme_close_boxshadow_spread', '0'),
(62, 4, 'popup_theme_close_boxshadow_color', '#020202'),
(63, 4, 'popup_theme_close_boxshadow_opacity', '23'),
(64, 4, 'popup_theme_close_textshadow_horizontal', '0'),
(65, 4, 'popup_theme_close_textshadow_vertical', '0'),
(66, 4, 'popup_theme_close_textshadow_blur', '0'),
(67, 4, 'popup_theme_close_textshadow_color', '#000000'),
(68, 4, 'popup_theme_close_textshadow_opacity', '23'),
(69, 5, 'popup_theme_overlay', 'a:2:{s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:2:"60";}'),
(70, 5, 'popup_theme_container', 'a:14:{s:16:"background_color";s:7:"#ffffff";s:7:"padding";s:2:"18";s:18:"background_opacity";s:3:"100";s:13:"border_radius";s:1:"3";s:12:"border_color";s:7:"#000000";s:12:"border_style";s:5:"solid";s:12:"border_width";s:1:"8";s:15:"boxshadow_inset";s:2:"no";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:15:"boxshadow_color";s:7:"#020202";s:14:"boxshadow_blur";s:2:"30";s:17:"boxshadow_opacity";s:3:"100";s:16:"boxshadow_spread";s:1:"0";}'),
(71, 5, 'popup_theme_title', 'a:12:{s:11:"line_height";s:2:"36";s:9:"font_size";s:2:"32";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";s:10:"text_align";s:4:"left";s:21:"textshadow_horizontal";s:1:"0";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:18:"textshadow_opacity";s:2:"23";s:10:"font_color";s:7:"#000000";s:16:"textshadow_color";s:7:"#020202";}'),
(72, 5, 'popup_theme_content', 'a:4:{s:10:"font_color";s:7:"#000000";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";}'),
(73, 5, 'popup_theme_close', 'a:33:{s:4:"text";s:2:"×";s:15:"position_bottom";s:1:"0";s:14:"position_right";s:3:"-24";s:11:"line_height";s:2:"26";s:13:"position_left";s:1:"0";s:12:"position_top";s:3:"-24";s:7:"padding";s:1:"0";s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:9:"font_size";s:2:"24";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:13:"border_radius";s:2:"30";s:10:"font_style";s:0:"";s:12:"border_color";s:7:"#ffffff";s:8:"location";s:8:"topright";s:12:"border_style";s:5:"solid";s:21:"textshadow_horizontal";s:1:"0";s:12:"border_width";s:1:"2";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:15:"boxshadow_inset";s:2:"no";s:10:"font_color";s:7:"#ffffff";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:14:"boxshadow_blur";s:2:"15";s:16:"boxshadow_spread";s:1:"1";s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:3:"100";s:15:"boxshadow_color";s:7:"#020202";s:17:"boxshadow_opacity";s:2:"75";s:16:"textshadow_color";s:7:"#000000";s:18:"textshadow_opacity";s:2:"23";}'),
(74, 5, '_pum_built_in', 'lightbox'),
(75, 6, 'popup_theme_overlay', 'a:2:{s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:2:"70";}'),
(76, 6, 'popup_theme_container', 'a:14:{s:16:"background_color";s:7:"#ffffff";s:7:"padding";s:2:"28";s:18:"background_opacity";s:3:"100";s:13:"border_radius";s:1:"5";s:12:"border_color";s:7:"#000000";s:12:"border_style";s:4:"none";s:12:"border_width";s:1:"1";s:15:"boxshadow_inset";s:2:"no";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:2:"10";s:15:"boxshadow_color";s:7:"#020202";s:14:"boxshadow_blur";s:2:"25";s:17:"boxshadow_opacity";s:2:"50";s:16:"boxshadow_spread";s:1:"4";}'),
(77, 6, 'popup_theme_title', 'a:12:{s:11:"line_height";s:2:"36";s:9:"font_size";s:2:"34";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";s:10:"text_align";s:4:"left";s:21:"textshadow_horizontal";s:1:"0";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:18:"textshadow_opacity";s:2:"23";s:10:"font_color";s:7:"#315b7c";s:16:"textshadow_color";s:7:"#020202";}'),
(78, 6, 'popup_theme_content', 'a:4:{s:10:"font_color";s:7:"#2d2d2d";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";}'),
(79, 6, 'popup_theme_close', 'a:33:{s:4:"text";s:2:"×";s:15:"position_bottom";s:1:"0";s:14:"position_right";s:1:"8";s:11:"line_height";s:2:"20";s:13:"position_left";s:1:"0";s:12:"position_top";s:1:"8";s:7:"padding";s:1:"4";s:6:"height";s:2:"28";s:5:"width";s:2:"28";s:9:"font_size";s:2:"20";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:13:"border_radius";s:2:"42";s:10:"font_style";s:0:"";s:12:"border_color";s:7:"#ffffff";s:8:"location";s:8:"topright";s:12:"border_style";s:4:"none";s:21:"textshadow_horizontal";s:1:"0";s:12:"border_width";s:1:"1";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:15:"boxshadow_inset";s:2:"no";s:10:"font_color";s:7:"#ffffff";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:14:"boxshadow_blur";s:1:"0";s:16:"boxshadow_spread";s:1:"0";s:16:"background_color";s:7:"#315b7c";s:18:"background_opacity";s:3:"100";s:15:"boxshadow_color";s:7:"#020202";s:17:"boxshadow_opacity";s:2:"23";s:16:"textshadow_color";s:7:"#000000";s:18:"textshadow_opacity";s:2:"23";}'),
(80, 6, '_pum_built_in', 'enterprise-blue'),
(81, 7, 'popup_theme_overlay', 'a:2:{s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:2:"75";}'),
(82, 7, 'popup_theme_container', 'a:14:{s:16:"background_color";s:7:"#ffffff";s:7:"padding";s:2:"30";s:18:"background_opacity";s:3:"100";s:13:"border_radius";s:2:"80";s:12:"border_color";s:7:"#81d742";s:12:"border_style";s:5:"solid";s:12:"border_width";s:2:"14";s:15:"boxshadow_inset";s:2:"no";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:15:"boxshadow_color";s:7:"#020202";s:14:"boxshadow_blur";s:1:"0";s:17:"boxshadow_opacity";s:1:"0";s:16:"boxshadow_spread";s:1:"0";}'),
(83, 7, 'popup_theme_title', 'a:12:{s:11:"line_height";s:2:"36";s:9:"font_size";s:2:"32";s:11:"font_family";s:10:"Montserrat";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";s:10:"text_align";s:4:"left";s:21:"textshadow_horizontal";s:1:"0";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:18:"textshadow_opacity";s:2:"23";s:10:"font_color";s:7:"#2d2d2d";s:16:"textshadow_color";s:7:"#020202";}'),
(84, 7, 'popup_theme_content', 'a:4:{s:10:"font_color";s:7:"#2d2d2d";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";}'),
(85, 7, 'popup_theme_close', 'a:33:{s:4:"text";s:2:"×";s:15:"position_bottom";s:1:"0";s:14:"position_right";s:3:"-30";s:11:"line_height";s:2:"28";s:13:"position_left";s:3:"-30";s:12:"position_top";s:3:"-30";s:7:"padding";s:1:"0";s:6:"height";s:1:"0";s:5:"width";s:1:"0";s:9:"font_size";s:2:"32";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:13:"border_radius";s:2:"28";s:10:"font_style";s:0:"";s:12:"border_color";s:7:"#ffffff";s:8:"location";s:8:"topright";s:12:"border_style";s:4:"none";s:21:"textshadow_horizontal";s:1:"0";s:12:"border_width";s:1:"1";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:15:"boxshadow_inset";s:2:"no";s:10:"font_color";s:7:"#2d2d2d";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:14:"boxshadow_blur";s:1:"0";s:16:"boxshadow_spread";s:1:"0";s:16:"background_color";s:7:"#ffffff";s:18:"background_opacity";s:3:"100";s:15:"boxshadow_color";s:7:"#020202";s:17:"boxshadow_opacity";s:2:"23";s:16:"textshadow_color";s:7:"#000000";s:18:"textshadow_opacity";s:2:"23";}'),
(86, 7, '_pum_built_in', 'hello-box'),
(87, 8, 'popup_theme_overlay', 'a:2:{s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:2:"50";}'),
(88, 8, 'popup_theme_container', 'a:14:{s:16:"background_color";s:7:"#1e73be";s:7:"padding";s:2:"18";s:18:"background_opacity";s:3:"100";s:13:"border_radius";s:1:"0";s:12:"border_color";s:7:"#000000";s:12:"border_style";s:4:"none";s:12:"border_width";s:1:"1";s:15:"boxshadow_inset";s:2:"no";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:2:"10";s:15:"boxshadow_color";s:7:"#020202";s:14:"boxshadow_blur";s:2:"25";s:17:"boxshadow_opacity";s:2:"50";s:16:"boxshadow_spread";s:1:"0";}'),
(89, 8, 'popup_theme_title', 'a:12:{s:11:"line_height";s:2:"28";s:9:"font_size";s:2:"26";s:11:"font_family";s:10:"Sans-Serif";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";s:10:"text_align";s:4:"left";s:21:"textshadow_horizontal";s:1:"0";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:18:"textshadow_opacity";s:2:"23";s:10:"font_color";s:7:"#ffffff";s:16:"textshadow_color";s:7:"#020202";}'),
(90, 8, 'popup_theme_content', 'a:4:{s:10:"font_color";s:7:"#ffffff";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";}'),
(91, 8, 'popup_theme_close', 'a:33:{s:4:"text";s:2:"×";s:15:"position_bottom";s:1:"0";s:14:"position_right";s:1:"0";s:11:"line_height";s:2:"24";s:13:"position_left";s:1:"0";s:12:"position_top";s:1:"0";s:7:"padding";s:1:"0";s:6:"height";s:2:"24";s:5:"width";s:2:"24";s:9:"font_size";s:2:"32";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:13:"border_radius";s:1:"0";s:10:"font_style";s:0:"";s:12:"border_color";s:7:"#ffffff";s:8:"location";s:8:"topright";s:12:"border_style";s:4:"none";s:21:"textshadow_horizontal";s:2:"-1";s:12:"border_width";s:1:"1";s:19:"textshadow_vertical";s:1:"1";s:15:"textshadow_blur";s:1:"1";s:15:"boxshadow_inset";s:2:"no";s:10:"font_color";s:7:"#1e73be";s:20:"boxshadow_horizontal";s:2:"-1";s:18:"boxshadow_vertical";s:1:"1";s:14:"boxshadow_blur";s:1:"1";s:16:"boxshadow_spread";s:1:"0";s:16:"background_color";s:7:"#eeee22";s:18:"background_opacity";s:3:"100";s:15:"boxshadow_color";s:7:"#020202";s:17:"boxshadow_opacity";s:2:"10";s:16:"textshadow_color";s:7:"#000000";s:18:"textshadow_opacity";s:2:"10";}'),
(92, 8, '_pum_built_in', 'cutting-edge'),
(93, 9, 'popup_theme_overlay', 'a:2:{s:16:"background_color";s:7:"#ffffff";s:18:"background_opacity";s:2:"50";}'),
(94, 9, 'popup_theme_container', 'a:14:{s:16:"background_color";s:7:"#fffbef";s:7:"padding";s:2:"18";s:18:"background_opacity";s:3:"100";s:13:"border_radius";s:1:"0";s:12:"border_color";s:7:"#dd3333";s:12:"border_style";s:6:"outset";s:12:"border_width";s:2:"20";s:15:"boxshadow_inset";s:3:"yes";s:20:"boxshadow_horizontal";s:1:"1";s:18:"boxshadow_vertical";s:1:"1";s:15:"boxshadow_color";s:7:"#020202";s:14:"boxshadow_blur";s:1:"3";s:17:"boxshadow_opacity";s:2:"97";s:16:"boxshadow_spread";s:1:"0";}'),
(95, 9, 'popup_theme_title', 'a:12:{s:11:"line_height";s:2:"36";s:9:"font_size";s:2:"32";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";s:10:"text_align";s:4:"left";s:21:"textshadow_horizontal";s:1:"0";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:18:"textshadow_opacity";s:2:"23";s:10:"font_color";s:7:"#000000";s:16:"textshadow_color";s:7:"#020202";}'),
(96, 9, 'popup_theme_content', 'a:4:{s:10:"font_color";s:7:"#2d2d2d";s:11:"font_family";s:7:"inherit";s:11:"font_weight";s:0:"";s:10:"font_style";s:0:"";}'),
(97, 9, 'popup_theme_close', 'a:33:{s:4:"text";s:2:"×";s:15:"position_bottom";s:1:"0";s:14:"position_right";s:3:"-20";s:11:"line_height";s:2:"20";s:13:"position_left";s:3:"-20";s:12:"position_top";s:3:"-20";s:7:"padding";s:1:"0";s:6:"height";s:2:"20";s:5:"width";s:2:"20";s:9:"font_size";s:2:"20";s:11:"font_family";s:4:"Acme";s:11:"font_weight";s:0:"";s:13:"border_radius";s:1:"0";s:10:"font_style";s:0:"";s:12:"border_color";s:7:"#ffffff";s:8:"location";s:8:"topright";s:12:"border_style";s:4:"none";s:21:"textshadow_horizontal";s:1:"0";s:12:"border_width";s:1:"1";s:19:"textshadow_vertical";s:1:"0";s:15:"textshadow_blur";s:1:"0";s:15:"boxshadow_inset";s:2:"no";s:10:"font_color";s:7:"#ffffff";s:20:"boxshadow_horizontal";s:1:"0";s:18:"boxshadow_vertical";s:1:"0";s:14:"boxshadow_blur";s:1:"0";s:16:"boxshadow_spread";s:1:"0";s:16:"background_color";s:7:"#000000";s:18:"background_opacity";s:2:"55";s:15:"boxshadow_color";s:7:"#020202";s:17:"boxshadow_opacity";s:2:"23";s:16:"textshadow_color";s:7:"#000000";s:18:"textshadow_opacity";s:2:"23";}'),
(98, 9, '_pum_built_in', 'framed-border'),
(99, 2, '_wp_trash_meta_status', 'publish'),
(100, 2, '_wp_trash_meta_time', '1484139333') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(101, 2, '_wp_desired_post_slug', 'sample-page'),
(102, 11, '_edit_last', '1'),
(103, 11, '_edit_lock', '1484142352:1'),
(104, 11, '_wp_page_template', 'template-home.php') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-01-11 12:51:36', '2017-01-11 12:51:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-01-11 12:51:36', '2017-01-11 12:51:36', '', 0, 'http://localhost/real-estate/?p=1', 0, 'post', '', 1),
(2, 1, '2017-01-11 12:51:36', '2017-01-11 12:51:36', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/real-estate/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-01-11 12:55:33', '2017-01-11 12:55:33', '', 0, 'http://localhost/real-estate/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-01-11 12:51:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-11 12:51:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/real-estate/?p=3', 0, 'post', '', 0),
(4, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Default Theme', '', 'publish', 'closed', 'closed', '', 'default-theme', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/default-theme/', 0, 'popup_theme', '', 0),
(5, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Light Box', '', 'publish', 'closed', 'closed', '', 'lightbox', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/lightbox/', 0, 'popup_theme', '', 0),
(6, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Enterprise Blue', '', 'publish', 'closed', 'closed', '', 'enterprise-blue', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/enterprise-blue/', 0, 'popup_theme', '', 0),
(7, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Hello Box', '', 'publish', 'closed', 'closed', '', 'hello-box', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/hello-box/', 0, 'popup_theme', '', 0),
(8, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Cutting Edge', '', 'publish', 'closed', 'closed', '', 'cutting-edge', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/cutting-edge/', 0, 'popup_theme', '', 0),
(9, 1, '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 'Framed Border', '', 'publish', 'closed', 'closed', '', 'framed-border', '', '', '2017-01-11 12:52:39', '2017-01-11 12:52:39', '', 0, 'http://localhost/real-estate/index.php/popup_theme/framed-border/', 0, 'popup_theme', '', 0),
(10, 1, '2017-01-11 12:55:33', '2017-01-11 12:55:33', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/real-estate/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-01-11 12:55:33', '2017-01-11 12:55:33', '', 2, 'http://localhost/real-estate/index.php/2017/01/11/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-01-11 12:55:53', '2017-01-11 12:55:53', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-01-11 12:55:53', '2017-01-11 12:55:53', '', 0, 'http://localhost/real-estate/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-01-11 12:55:53', '2017-01-11 12:55:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-01-11 12:55:53', '2017-01-11 12:55:53', '', 11, 'http://localhost/real-estate/index.php/2017/01/11/11-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ninja'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"b8e4141ba00d91f8c835c918a63d807434eec729cd72613a3af167b24660d098";a:4:{s:10:"expiration";i:1484311908;s:2:"ip";s:14:"196.211.61.171";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.90 Safari/537.36";s:5:"login";i:1484139108;}s:64:"41f6aecb6102e002ea3e6a6032e51dda9df98f2b768da7af08cc90420e6b08f4";a:4:{s:10:"expiration";d:2905290130;s:2:"ip";s:14:"196.211.61.171";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.90 Safari/537.36";s:5:"login";i:1484139315;}s:64:"99f6124bbdc183b12d9b6ab30a650bc8ae1791ffdbd00a9aad730a0ce7ffcac4";a:4:{s:10:"expiration";d:2905293362;s:2:"ip";s:14:"196.211.61.171";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.90 Safari/537.36";s:5:"login";i:1484142547;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ninja', '$P$BLpUUfbCSFaMcLS0f3MF.VcuB1LwRy0', 'ninja', 'admin@admin.com', '', '2017-01-11 12:51:36', '', 0, 'ninja') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

