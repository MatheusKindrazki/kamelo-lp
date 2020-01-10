-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/01/2020 às 00:05
-- Versão do servidor: 8.0.18
-- Versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kamelo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_draft_submissions`
--

CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_entry`
--

CREATE TABLE `wp_gf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_gf_entry`
--

INSERT INTO `wp_gf_entry` (`id`, `form_id`, `post_id`, `date_created`, `date_updated`, `is_starred`, `is_read`, `ip`, `source_url`, `user_agent`, `currency`, `payment_status`, `payment_date`, `payment_amount`, `payment_method`, `transaction_id`, `is_fulfilled`, `created_by`, `transaction_type`, `status`) VALUES
(1, 1, NULL, '2020-01-09 00:26:09', NULL, 0, 0, '::1', 'http://localhost/Wordpress/kamelo/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(2, 1, NULL, '2020-01-09 00:27:06', NULL, 0, 0, '::1', 'http://localhost/Wordpress/kamelo/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(3, 1, NULL, '2020-01-09 00:27:34', NULL, 0, 0, '::1', 'http://localhost/Wordpress/kamelo/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_entry_meta`
--

CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_gf_entry_meta`
--

INSERT INTO `wp_gf_entry_meta` (`id`, `form_id`, `entry_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 1, '1', 'Eduardo'),
(2, 1, 1, '2', 'eduardo@mentores.com.br'),
(3, 1, 1, '3', '000000000'),
(4, 1, 1, '5', '0000000000'),
(5, 1, 1, '6', 'Teste'),
(6, 1, 1, '7', 'Teste'),
(7, 1, 1, '8', 'Teste'),
(8, 1, 2, '1', 'Eduardo'),
(9, 1, 2, '2', 'eduardo@mentores.com.br'),
(10, 1, 2, '3', '000000000'),
(11, 1, 2, '5', '0000000000'),
(12, 1, 2, '6', 'Teste'),
(13, 1, 2, '7', 'Teste'),
(14, 1, 2, '8', 'Teste'),
(15, 1, 3, '1', 'Eduardo'),
(16, 1, 3, '2', 'eduardo@mentores.com.br'),
(17, 1, 3, '3', '000000000'),
(18, 1, 3, '5', '0000000000'),
(19, 1, 3, '6', 'Teste'),
(20, 1, 3, '7', 'Teste'),
(21, 1, 3, '8', 'Teste');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_entry_notes`
--

CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_form`
--

CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_gf_form`
--

INSERT INTO `wp_gf_form` (`id`, `title`, `date_created`, `date_updated`, `is_active`, `is_trash`) VALUES
(1, 'Cadastro', '2020-01-08 23:44:43', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_form_meta`
--

CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_gf_form_meta`
--

INSERT INTO `wp_gf_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{\"title\":\"Cadastro\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Cadastre-se\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"text\",\"id\":1,\"label\":\"Nome completo\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Nome completo\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"email\",\"id\":2,\"label\":\"E-mail\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"E-mail\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":3,\"label\":\"CPF\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":true,\"inputMaskValue\":\"999.999.999-99\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"CPF\",\"cssClass\":\"small-input\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"number\",\"id\":5,\"label\":\"RG\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"numberFormat\":\"decimal_dot\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"RG\",\"cssClass\":\"small-input\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"enableCalculation\":false,\"rangeMin\":\"\",\"rangeMax\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":6,\"label\":\"Endere\\u00e7o\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Endere\\u00e7o\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":7,\"label\":\"Cidade\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Cidade\",\"cssClass\":\"small-input\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":8,\"label\":\"Estado\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Estado\",\"cssClass\":\"small-input\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"}],\"version\":\"2.3.3.10\",\"id\":1,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null,\"subLabelPlacement\":\"below\",\"cssClass\":\"\",\"enableHoneypot\":false,\"enableAnimation\":false,\"save\":{\"enabled\":false,\"button\":{\"type\":\"link\",\"text\":\"Save and Continue Later\"}},\"limitEntries\":false,\"limitEntriesCount\":\"\",\"limitEntriesPeriod\":\"\",\"limitEntriesMessage\":\"\",\"scheduleForm\":false,\"scheduleStart\":\"\",\"scheduleStartHour\":\"\",\"scheduleStartMinute\":\"\",\"scheduleStartAmpm\":\"\",\"scheduleEnd\":\"\",\"scheduleEndHour\":\"\",\"scheduleEndMinute\":\"\",\"scheduleEndAmpm\":\"\",\"schedulePendingMessage\":\"\",\"scheduleMessage\":\"\",\"requireLogin\":false,\"requireLoginMessage\":\"\"}', NULL, '{\"5e16696bd462d\":{\"id\":\"5e16696bd462d\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"5e16696bd260b\":{\"id\":\"5e16696bd260b\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_gf_form_view`
--

CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_gf_form_view`
--

INSERT INTO `wp_gf_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2020-01-09 12:22:38', '', 24);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Wordpress/kamelo', 'yes'),
(2, 'home', 'http://localhost/Wordpress/kamelo', 'yes'),
(3, 'blogname', 'Kamelo', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'eduardo.mfonseca@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=26&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wordpress', 'yes'),
(41, 'stylesheet', 'wordpress', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '26', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594072039', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1578617241;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1578649641;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578692840;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578692841;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578692849;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578692850;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(121, 'gform_version_info', 'a:6:{s:12:\"is_valid_key\";s:1:\"0\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}s:9:\"timestamp\";i:1578607440;}', 'yes'),
(128, 'gf_db_version', '2.3.3.10', 'yes'),
(129, 'rg_form_version', '2.3.3.10', 'yes'),
(130, 'gform_enable_background_updates', '1', 'yes'),
(131, 'gform_pending_installation', '', 'yes'),
(132, 'acf_version', '5.7.6', 'yes'),
(133, '_site_transient_timeout_browser_68416c817f1ebbe9c36782207d6910df', '1579124849', 'no'),
(134, '_site_transient_browser_68416c817f1ebbe9c36782207d6910df', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_a4e7a3af7060c530d791075f6e3eb5fa', '1579124850', 'no'),
(136, '_site_transient_php_check_a4e7a3af7060c530d791075f6e3eb5fa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(151, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578520140;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(152, 'current_theme', 'Wordpress Theme Framework', 'yes'),
(153, 'theme_mods_wordpress', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:6:\"footer\";i:0;s:6:\"mobile\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'options_logotipo', '12', 'no'),
(165, '_options_logotipo', 'field_5e165adedfed6', 'no'),
(166, 'options_favicon', '13', 'no'),
(167, '_options_favicon', 'field_5e165af0dfed7', 'no'),
(177, 'options_logotipo_secundaria', '15', 'no'),
(178, '_options_logotipo_secundaria', 'field_5e165c6fe4dce', 'no'),
(187, 'category_children', 'a:0:{}', 'yes'),
(192, '_transient_timeout_plugin_slugs', '1578612168', 'no'),
(193, '_transient_plugin_slugs', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'no'),
(194, 'recently_activated', 'a:0:{}', 'yes'),
(210, 'rg_gforms_enable_akismet', '1', 'yes'),
(211, 'rg_gforms_currency', '', 'yes'),
(212, 'gform_enable_toolbar_menu', '1', 'yes'),
(242, 'gform_email_count', '3', 'yes'),
(259, 'options_twitter', 'https://twitter.com/', 'no'),
(260, '_options_twitter', 'field_5e16755e4887b', 'no'),
(261, 'options_facebook', 'https://facebook.com/', 'no'),
(262, '_options_facebook', 'field_5e16756a4887c', 'no'),
(263, 'options_instagram', 'https://instagram.com/', 'no'),
(264, '_options_instagram', 'field_5e1675734887d', 'no'),
(283, '_site_transient_timeout_theme_roots', '1578609241', 'no'),
(284, '_site_transient_theme_roots', 'a:1:{s:9:\"wordpress\";s:7:\"/themes\";}', 'no'),
(285, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1578607444;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(286, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1578607445;s:7:\"checked\";a:1:{s:9:\"wordpress\";s:1:\"1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(287, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1578607446;s:7:\"checked\";a:1:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-06-16 00:08:47\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(288, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1578657575', 'no'),
(289, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:30:\"54º Meetup WordPress Curitiba\";s:3:\"url\";s:51:\"https://www.meetup.com/wpcuritiba/events/267135167/\";s:6:\"meetup\";s:29:\"Comunidade WordPress Curitiba\";s:10:\"meetup_url\";s:34:\"https://www.meetup.com/wpcuritiba/\";s:4:\"date\";s:19:\"2020-01-22 19:00:00\";s:8:\"end_date\";s:19:\"2020-01-22 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Curitiba, Brazil\";s:7:\"country\";s:2:\"br\";s:8:\"latitude\";d:-25.438842773438001;s:9:\"longitude\";d:-49.272659301757997;}}}}', 'no'),
(292, '_transient_timeout_GFCache_464c0de119f4e10dd21c1ee6ee782582', '1578614410', 'no'),
(293, '_transient_GFCache_464c0de119f4e10dd21c1ee6ee782582', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:11:\"entry_count\";s:1:\"3\";}}', 'no'),
(294, '_transient_timeout_GFCache_ff87958c893ccda20fc0a4dcd5b77c61', '1578614410', 'no'),
(295, '_transient_GFCache_ff87958c893ccda20fc0a4dcd5b77c61', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:10:\"view_count\";s:2:\"24\";}}', 'no'),
(296, 'options_endereco', 'Nosso endereço, Curitiba Paraná', 'no'),
(297, '_options_endereco', 'field_5e17be7df8993', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', '#quem-somos'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#nosso-objetivo'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#cadastre-se'),
(30, 8, '_edit_last', '1'),
(31, 8, '_edit_lock', '1578614265:1'),
(32, 12, '_wp_attached_file', '2020/01/logo.png'),
(33, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:15;s:4:\"file\";s:16:\"2020/01/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 13, '_wp_attached_file', '2020/01/wordpress.png'),
(35, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2020/01/wordpress.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"wordpress-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"wordpress-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 16, '_edit_last', '1'),
(39, 16, '_edit_lock', '1578529985:1'),
(50, 25, '_edit_lock', '1578525604:1'),
(51, 26, '_edit_last', '1'),
(52, 26, '_wp_page_template', 'default'),
(53, 26, '_edit_lock', '1578530568:1'),
(54, 28, '_wp_attached_file', '2020/01/ob-1.png'),
(55, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:252;s:4:\"file\";s:16:\"2020/01/ob-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ob-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 29, '_wp_attached_file', '2020/01/ob-2.png'),
(57, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:252;s:4:\"file\";s:16:\"2020/01/ob-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ob-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 30, '_wp_attached_file', '2020/01/ob-3.png'),
(59, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:252;s:4:\"file\";s:16:\"2020/01/ob-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ob-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 26, 'objetivos_0_imagem', '28'),
(61, 26, '_objetivos_0_imagem', 'field_5e1663e1075c5'),
(62, 26, 'objetivos_0_titulo', 'Lorem'),
(63, 26, '_objetivos_0_titulo', 'field_5e1663ed075c6'),
(64, 26, 'objetivos_0_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(65, 26, '_objetivos_0_descricao', 'field_5e1663f4075c7'),
(66, 26, 'objetivos_1_imagem', '29'),
(67, 26, '_objetivos_1_imagem', 'field_5e1663e1075c5'),
(68, 26, 'objetivos_1_titulo', 'Ipsum'),
(69, 26, '_objetivos_1_titulo', 'field_5e1663ed075c6'),
(70, 26, 'objetivos_1_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(71, 26, '_objetivos_1_descricao', 'field_5e1663f4075c7'),
(72, 26, 'objetivos_2_imagem', '30'),
(73, 26, '_objetivos_2_imagem', 'field_5e1663e1075c5'),
(74, 26, 'objetivos_2_titulo', 'Dolor'),
(75, 26, '_objetivos_2_titulo', 'field_5e1663ed075c6'),
(76, 26, 'objetivos_2_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(77, 26, '_objetivos_2_descricao', 'field_5e1663f4075c7'),
(78, 26, 'objetivos', '3'),
(79, 26, '_objetivos', 'field_5e1663d5075c4'),
(80, 31, 'objetivos_0_imagem', '28'),
(81, 31, '_objetivos_0_imagem', 'field_5e1663e1075c5'),
(82, 31, 'objetivos_0_titulo', 'Lorem'),
(83, 31, '_objetivos_0_titulo', 'field_5e1663ed075c6'),
(84, 31, 'objetivos_0_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(85, 31, '_objetivos_0_descricao', 'field_5e1663f4075c7'),
(86, 31, 'objetivos_1_imagem', '29'),
(87, 31, '_objetivos_1_imagem', 'field_5e1663e1075c5'),
(88, 31, 'objetivos_1_titulo', 'Ipsum'),
(89, 31, '_objetivos_1_titulo', 'field_5e1663ed075c6'),
(90, 31, 'objetivos_1_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(91, 31, '_objetivos_1_descricao', 'field_5e1663f4075c7'),
(92, 31, 'objetivos_2_imagem', '30'),
(93, 31, '_objetivos_2_imagem', 'field_5e1663e1075c5'),
(94, 31, 'objetivos_2_titulo', 'Dolor'),
(95, 31, '_objetivos_2_titulo', 'field_5e1663ed075c6'),
(96, 31, 'objetivos_2_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(97, 31, '_objetivos_2_descricao', 'field_5e1663f4075c7'),
(98, 31, 'objetivos', '3'),
(99, 31, '_objetivos', 'field_5e1663d5075c4'),
(100, 48, '_wp_attached_file', '2020/01/banner.png'),
(101, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:855;s:6:\"height\";i:910;s:4:\"file\";s:18:\"2020/01/banner.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-282x300.png\";s:5:\"width\";i:282;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x817.png\";s:5:\"width\";i:768;s:6:\"height\";i:817;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 26, 'titulo_banner', 'App Kamelo'),
(103, 26, '_titulo_banner', 'field_5e1674988a929'),
(104, 26, 'descricao_banner', 'Check out our latest case study around virtual reality. We discuss its abilities, limitations and risks. This is a vital read for all out fans.'),
(105, 26, '_descricao_banner', 'field_5e1674a18a92a'),
(106, 26, 'imagem_banner', '48'),
(107, 26, '_imagem_banner', 'field_5e1674fa29bf8'),
(108, 26, 'titulo_sobre', 'Loren ipsum dolor Kamelo Whithout app.'),
(109, 26, '_titulo_sobre', 'field_5e1674d229bf5'),
(110, 26, 'descricao_sobre', 'Chat app messaging and powerful than any other \r\napplication. you can enjoy free call and free chat\r\nanytime and forever'),
(111, 26, '_descricao_sobre', 'field_5e1674de29bf6'),
(112, 26, 'imagem_sobre', '50'),
(113, 26, '_imagem_sobre', 'field_5e1674ec29bf7'),
(114, 26, 'titulo_1_cadastro', 'LOREM'),
(115, 26, '_titulo_1_cadastro', 'field_5e16752929bfa'),
(116, 26, 'titulo_2_cadastro', 'DOLOR'),
(117, 26, '_titulo_2_cadastro', 'field_5e16753029bfb'),
(118, 26, 'descricao_cadastro', 'Chat app messaging and powerfulany other application. you can enjoy free call and free chat anytime and forever'),
(119, 26, '_descricao_cadastro', 'field_5e16753629bfc'),
(120, 49, 'objetivos_0_imagem', '28'),
(121, 49, '_objetivos_0_imagem', 'field_5e1663e1075c5'),
(122, 49, 'objetivos_0_titulo', 'Lorem'),
(123, 49, '_objetivos_0_titulo', 'field_5e1663ed075c6'),
(124, 49, 'objetivos_0_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(125, 49, '_objetivos_0_descricao', 'field_5e1663f4075c7'),
(126, 49, 'objetivos_1_imagem', '29'),
(127, 49, '_objetivos_1_imagem', 'field_5e1663e1075c5'),
(128, 49, 'objetivos_1_titulo', 'Ipsum'),
(129, 49, '_objetivos_1_titulo', 'field_5e1663ed075c6'),
(130, 49, 'objetivos_1_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(131, 49, '_objetivos_1_descricao', 'field_5e1663f4075c7'),
(132, 49, 'objetivos_2_imagem', '30'),
(133, 49, '_objetivos_2_imagem', 'field_5e1663e1075c5'),
(134, 49, 'objetivos_2_titulo', 'Dolor'),
(135, 49, '_objetivos_2_titulo', 'field_5e1663ed075c6'),
(136, 49, 'objetivos_2_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(137, 49, '_objetivos_2_descricao', 'field_5e1663f4075c7'),
(138, 49, 'objetivos', '3'),
(139, 49, '_objetivos', 'field_5e1663d5075c4'),
(140, 49, 'titulo_banner', 'App Kamelo'),
(141, 49, '_titulo_banner', 'field_5e1674988a929'),
(142, 49, 'descricao_banner', 'Check out our latest case study around virtual reality. We discuss its abilities, limitations and risks. This is a vital read for all out fans.'),
(143, 49, '_descricao_banner', 'field_5e1674a18a92a'),
(144, 49, 'imagem_banner', '48'),
(145, 49, '_imagem_banner', 'field_5e1674fa29bf8'),
(146, 49, 'titulo_sobre', ''),
(147, 49, '_titulo_sobre', 'field_5e1674d229bf5'),
(148, 49, 'descricao_sobre', ''),
(149, 49, '_descricao_sobre', 'field_5e1674de29bf6'),
(150, 49, 'imagem_sobre', ''),
(151, 49, '_imagem_sobre', 'field_5e1674ec29bf7'),
(152, 49, 'titulo_1_cadastro', ''),
(153, 49, '_titulo_1_cadastro', 'field_5e16752929bfa'),
(154, 49, 'titulo_2_cadastro', ''),
(155, 49, '_titulo_2_cadastro', 'field_5e16753029bfb'),
(156, 49, 'descricao_cadastro', ''),
(157, 49, '_descricao_cadastro', 'field_5e16753629bfc'),
(158, 50, '_wp_attached_file', '2020/01/iphone-sobre.png'),
(159, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:509;s:6:\"height\";i:520;s:4:\"file\";s:24:\"2020/01/iphone-sobre.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"iphone-sobre-294x300.png\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"iphone-sobre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 51, 'objetivos_0_imagem', '28'),
(161, 51, '_objetivos_0_imagem', 'field_5e1663e1075c5'),
(162, 51, 'objetivos_0_titulo', 'Lorem'),
(163, 51, '_objetivos_0_titulo', 'field_5e1663ed075c6'),
(164, 51, 'objetivos_0_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(165, 51, '_objetivos_0_descricao', 'field_5e1663f4075c7'),
(166, 51, 'objetivos_1_imagem', '29'),
(167, 51, '_objetivos_1_imagem', 'field_5e1663e1075c5'),
(168, 51, 'objetivos_1_titulo', 'Ipsum'),
(169, 51, '_objetivos_1_titulo', 'field_5e1663ed075c6'),
(170, 51, 'objetivos_1_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(171, 51, '_objetivos_1_descricao', 'field_5e1663f4075c7'),
(172, 51, 'objetivos_2_imagem', '30'),
(173, 51, '_objetivos_2_imagem', 'field_5e1663e1075c5'),
(174, 51, 'objetivos_2_titulo', 'Dolor'),
(175, 51, '_objetivos_2_titulo', 'field_5e1663ed075c6'),
(176, 51, 'objetivos_2_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(177, 51, '_objetivos_2_descricao', 'field_5e1663f4075c7'),
(178, 51, 'objetivos', '3'),
(179, 51, '_objetivos', 'field_5e1663d5075c4'),
(180, 51, 'titulo_banner', 'App Kamelo'),
(181, 51, '_titulo_banner', 'field_5e1674988a929'),
(182, 51, 'descricao_banner', 'Check out our latest case study around virtual reality. We discuss its abilities, limitations and risks. This is a vital read for all out fans.'),
(183, 51, '_descricao_banner', 'field_5e1674a18a92a'),
(184, 51, 'imagem_banner', '48'),
(185, 51, '_imagem_banner', 'field_5e1674fa29bf8'),
(186, 51, 'titulo_sobre', 'Loren ipsum dolor Kamelo Whithout app.'),
(187, 51, '_titulo_sobre', 'field_5e1674d229bf5'),
(188, 51, 'descricao_sobre', 'Chat app messaging and powerful than any other \r\napplication. you can enjoy free call and free chat\r\nanytime and forever'),
(189, 51, '_descricao_sobre', 'field_5e1674de29bf6'),
(190, 51, 'imagem_sobre', '50'),
(191, 51, '_imagem_sobre', 'field_5e1674ec29bf7'),
(192, 51, 'titulo_1_cadastro', ''),
(193, 51, '_titulo_1_cadastro', 'field_5e16752929bfa'),
(194, 51, 'titulo_2_cadastro', ''),
(195, 51, '_titulo_2_cadastro', 'field_5e16753029bfb'),
(196, 51, 'descricao_cadastro', ''),
(197, 51, '_descricao_cadastro', 'field_5e16753629bfc'),
(198, 52, 'objetivos_0_imagem', '28'),
(199, 52, '_objetivos_0_imagem', 'field_5e1663e1075c5'),
(200, 52, 'objetivos_0_titulo', 'Lorem'),
(201, 52, '_objetivos_0_titulo', 'field_5e1663ed075c6'),
(202, 52, 'objetivos_0_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(203, 52, '_objetivos_0_descricao', 'field_5e1663f4075c7'),
(204, 52, 'objetivos_1_imagem', '29'),
(205, 52, '_objetivos_1_imagem', 'field_5e1663e1075c5'),
(206, 52, 'objetivos_1_titulo', 'Ipsum'),
(207, 52, '_objetivos_1_titulo', 'field_5e1663ed075c6'),
(208, 52, 'objetivos_1_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(209, 52, '_objetivos_1_descricao', 'field_5e1663f4075c7'),
(210, 52, 'objetivos_2_imagem', '30'),
(211, 52, '_objetivos_2_imagem', 'field_5e1663e1075c5'),
(212, 52, 'objetivos_2_titulo', 'Dolor'),
(213, 52, '_objetivos_2_titulo', 'field_5e1663ed075c6'),
(214, 52, 'objetivos_2_descricao', 'Lorem Ipsum is simply dummy  text of the printing and typesetting  industry.'),
(215, 52, '_objetivos_2_descricao', 'field_5e1663f4075c7'),
(216, 52, 'objetivos', '3'),
(217, 52, '_objetivos', 'field_5e1663d5075c4'),
(218, 52, 'titulo_banner', 'App Kamelo'),
(219, 52, '_titulo_banner', 'field_5e1674988a929'),
(220, 52, 'descricao_banner', 'Check out our latest case study around virtual reality. We discuss its abilities, limitations and risks. This is a vital read for all out fans.'),
(221, 52, '_descricao_banner', 'field_5e1674a18a92a'),
(222, 52, 'imagem_banner', '48'),
(223, 52, '_imagem_banner', 'field_5e1674fa29bf8'),
(224, 52, 'titulo_sobre', 'Loren ipsum dolor Kamelo Whithout app.'),
(225, 52, '_titulo_sobre', 'field_5e1674d229bf5'),
(226, 52, 'descricao_sobre', 'Chat app messaging and powerful than any other \r\napplication. you can enjoy free call and free chat\r\nanytime and forever'),
(227, 52, '_descricao_sobre', 'field_5e1674de29bf6'),
(228, 52, 'imagem_sobre', '50'),
(229, 52, '_imagem_sobre', 'field_5e1674ec29bf7'),
(230, 52, 'titulo_1_cadastro', 'LOREM'),
(231, 52, '_titulo_1_cadastro', 'field_5e16752929bfa'),
(232, 52, 'titulo_2_cadastro', 'DOLOR'),
(233, 52, '_titulo_2_cadastro', 'field_5e16753029bfb'),
(234, 52, 'descricao_cadastro', 'Chat app messaging and powerfulany other application. you can enjoy free call and free chat anytime and forever'),
(235, 52, '_descricao_cadastro', 'field_5e16753629bfc');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2020-01-08 18:47:30', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-08 18:47:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wordpress/kamelo/?p=4', 0, 'post', '', 0),
(5, 1, '2020-01-08 19:39:57', '2020-01-08 22:39:57', '', 'Quem somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2020-01-09 19:38:47', '2020-01-09 22:38:47', '', 0, 'http://localhost/Wordpress/kamelo/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-01-08 19:39:57', '2020-01-08 22:39:57', '', 'Nosso Objetivo', '', 'publish', 'closed', 'closed', '', 'nosso-objetivo', '', '', '2020-01-09 19:38:47', '2020-01-09 22:38:47', '', 0, 'http://localhost/Wordpress/kamelo/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2020-01-08 19:39:57', '2020-01-08 22:39:57', '', 'Cadastre-se', '', 'publish', 'closed', 'closed', '', 'cadastre-se', '', '', '2020-01-09 19:38:47', '2020-01-09 22:38:47', '', 0, 'http://localhost/Wordpress/kamelo/?p=7', 3, 'nav_menu_item', '', 0),
(8, 1, '2020-01-08 19:42:19', '2020-01-08 22:42:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Opções', 'opcoes', 'publish', 'closed', 'closed', '', 'group_5e165ac17205c', '', '', '2020-01-09 21:00:07', '2020-01-10 00:00:07', '', 0, 'http://localhost/Wordpress/kamelo/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2020-01-08 19:43:10', '2020-01-08 22:43:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Geral', 'geral', 'publish', 'closed', 'closed', '', 'field_5e165ad0dfed5', '', '', '2020-01-08 19:43:10', '2020-01-08 22:43:10', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2020-01-08 19:43:10', '2020-01-08 22:43:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logotipo', 'logotipo', 'publish', 'closed', 'closed', '', 'field_5e165adedfed6', '', '', '2020-01-08 20:13:37', '2020-01-08 23:13:37', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&#038;p=10', 1, 'acf-field', '', 0),
(11, 1, '2020-01-08 19:43:10', '2020-01-08 22:43:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Favicon', 'favicon', 'publish', 'closed', 'closed', '', 'field_5e165af0dfed7', '', '', '2020-01-08 20:13:37', '2020-01-08 23:13:37', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&#038;p=11', 2, 'acf-field', '', 0),
(12, 1, '2020-01-08 19:43:28', '2020-01-08 22:43:28', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-01-08 19:43:28', '2020-01-08 22:43:28', '', 0, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-01-08 19:48:29', '2020-01-08 22:48:29', '', 'wordpress', '', 'inherit', 'open', 'closed', '', 'wordpress', '', '', '2020-01-08 19:48:29', '2020-01-08 22:48:29', '', 0, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/wordpress.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5e1663d319d70', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 0, 'http://localhost/Wordpress/kamelo/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Sessão Objetivos', 'objetivos', 'publish', 'closed', 'closed', '', 'field_5e1663fb075c8', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&#038;p=17', 8, 'acf-field', '', 0),
(18, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Objetivos', 'objetivos', 'publish', 'closed', 'closed', '', 'field_5e1663d5075c4', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&#038;p=18', 9, 'acf-field', '', 0),
(19, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5e1663e1075c5', '', '', '2020-01-08 20:22:01', '2020-01-08 23:22:01', '', 18, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5e1663ed075c6', '', '', '2020-01-08 20:22:01', '2020-01-08 23:22:01', '', 18, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2020-01-08 20:22:01', '2020-01-08 23:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Descricao', 'descricao', 'publish', 'closed', 'closed', '', 'field_5e1663f4075c7', '', '', '2020-01-08 20:22:01', '2020-01-08 23:22:01', '', 18, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(25, 1, '2020-01-08 20:22:25', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-08 20:22:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wordpress/kamelo/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-01-08 20:22:56', '2020-01-08 23:22:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-01-08 21:38:14', '2020-01-09 00:38:14', '', 0, 'http://localhost/Wordpress/kamelo/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-01-08 20:22:56', '2020-01-08 23:22:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-08 20:22:56', '2020-01-08 23:22:56', '', 26, 'http://localhost/Wordpress/kamelo/2020/01/08/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-01-08 20:24:38', '2020-01-08 23:24:38', '', 'ob-1', '', 'inherit', 'open', 'closed', '', 'ob-1', '', '', '2020-01-08 20:24:38', '2020-01-08 23:24:38', '', 26, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/ob-1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-01-08 20:24:38', '2020-01-08 23:24:38', '', 'ob-2', '', 'inherit', 'open', 'closed', '', 'ob-2', '', '', '2020-01-08 20:24:38', '2020-01-08 23:24:38', '', 26, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/ob-2.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-01-08 20:24:39', '2020-01-08 23:24:39', '', 'ob-3', '', 'inherit', 'open', 'closed', '', 'ob-3', '', '', '2020-01-08 20:24:39', '2020-01-08 23:24:39', '', 26, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/ob-3.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-01-08 20:24:42', '2020-01-08 23:24:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-08 20:24:42', '2020-01-08 23:24:42', '', 26, 'http://localhost/Wordpress/kamelo/2020/01/08/26-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-01-08 21:33:07', '2020-01-09 00:33:07', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5e1674908a928', '', '', '2020-01-08 21:33:07', '2020-01-09 00:33:07', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2020-01-08 21:33:07', '2020-01-09 00:33:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo Banner', 'titulo_banner', 'publish', 'closed', 'closed', '', 'field_5e1674988a929', '', '', '2020-01-08 21:33:07', '2020-01-09 00:33:07', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2020-01-08 21:33:07', '2020-01-09 00:33:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descricao Banner', 'descricao_banner', 'publish', 'closed', 'closed', '', 'field_5e1674a18a92a', '', '', '2020-01-08 21:33:07', '2020-01-09 00:33:07', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=34', 2, 'acf-field', '', 0),
(35, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Banner', 'imagem_banner', 'publish', 'closed', 'closed', '', 'field_5e1674fa29bf8', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=35', 3, 'acf-field', '', 0),
(36, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'field_5e1674ca29bf4', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=36', 4, 'acf-field', '', 0),
(37, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo Sobre', 'titulo_sobre', 'publish', 'closed', 'closed', '', 'field_5e1674d229bf5', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=37', 5, 'acf-field', '', 0),
(38, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descricao Sobre', 'descricao_sobre', 'publish', 'closed', 'closed', '', 'field_5e1674de29bf6', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=38', 6, 'acf-field', '', 0),
(39, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Sobre', 'imagem_sobre', 'publish', 'closed', 'closed', '', 'field_5e1674ec29bf7', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=39', 7, 'acf-field', '', 0),
(40, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Cadastro', 'cadastro', 'publish', 'closed', 'closed', '', 'field_5e16751929bf9', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=40', 10, 'acf-field', '', 0),
(41, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo 1 Cadastro', 'titulo_1_cadastro', 'publish', 'closed', 'closed', '', 'field_5e16752929bfa', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=41', 11, 'acf-field', '', 0),
(42, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo 2 Cadastro', 'titulo_2_cadastro', 'publish', 'closed', 'closed', '', 'field_5e16753029bfb', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=42', 12, 'acf-field', '', 0),
(43, 1, '2020-01-08 21:35:17', '2020-01-09 00:35:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Descricao Cadastro', 'descricao_cadastro', 'publish', 'closed', 'closed', '', 'field_5e16753629bfc', '', '', '2020-01-08 21:35:17', '2020-01-09 00:35:17', '', 16, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=43', 13, 'acf-field', '', 0),
(44, 1, '2020-01-08 21:36:14', '2020-01-09 00:36:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Redes', 'redes', 'publish', 'closed', 'closed', '', 'field_5e1675554887a', '', '', '2020-01-08 21:36:14', '2020-01-09 00:36:14', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=44', 3, 'acf-field', '', 0),
(45, 1, '2020-01-08 21:36:14', '2020-01-09 00:36:14', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5e16755e4887b', '', '', '2020-01-08 21:36:14', '2020-01-09 00:36:14', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=45', 4, 'acf-field', '', 0),
(46, 1, '2020-01-08 21:36:14', '2020-01-09 00:36:14', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5e16756a4887c', '', '', '2020-01-08 21:36:14', '2020-01-09 00:36:14', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=46', 5, 'acf-field', '', 0),
(47, 1, '2020-01-08 21:36:14', '2020-01-09 00:36:14', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5e1675734887d', '', '', '2020-01-08 21:36:30', '2020-01-09 00:36:30', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&#038;p=47', 6, 'acf-field', '', 0),
(48, 1, '2020-01-08 21:37:20', '2020-01-09 00:37:20', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2020-01-08 21:37:20', '2020-01-09 00:37:20', '', 26, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/banner.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-01-08 21:37:27', '2020-01-09 00:37:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-08 21:37:27', '2020-01-09 00:37:27', '', 26, 'http://localhost/Wordpress/kamelo/2020/01/08/26-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-01-08 21:37:49', '2020-01-09 00:37:49', '', 'iphone-sobre', '', 'inherit', 'open', 'closed', '', 'iphone-sobre', '', '', '2020-01-08 21:37:49', '2020-01-09 00:37:49', '', 26, 'http://localhost/Wordpress/kamelo/wp-content/uploads/2020/01/iphone-sobre.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2020-01-08 21:37:52', '2020-01-09 00:37:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-08 21:37:52', '2020-01-09 00:37:52', '', 26, 'http://localhost/Wordpress/kamelo/2020/01/08/26-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-01-08 21:38:14', '2020-01-09 00:38:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-08 21:38:14', '2020-01-09 00:38:14', '', 26, 'http://localhost/Wordpress/kamelo/2020/01/08/26-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-01-09 21:00:07', '2020-01-10 00:00:07', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5e17be6ef8992', '', '', '2020-01-09 21:00:07', '2020-01-10 00:00:07', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=53', 7, 'acf-field', '', 0),
(54, 1, '2020-01-09 21:00:07', '2020-01-10 00:00:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5e17be7df8993', '', '', '2020-01-09 21:00:07', '2020-01-10 00:00:07', '', 8, 'http://localhost/Wordpress/kamelo/?post_type=acf-field&p=54', 8, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(5, 2, 0),
(6, 2, 0),
(7, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"11c303646b3e0e460a047c311b4d01a4a0156cd8379790de45b18e451585e0b1\";a:4:{s:10:\"expiration\";i:1578692848;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578520048;}s:64:\"ca91d135bd4f085f0e2a807524a0d7b80dd51e2e22657625f5977ecdfb22b873\";a:4:{s:10:\"expiration\";i:1578781169;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578608369;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"rg_forms_dashboard\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";i:4;s:18:\"dashboard_activity\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,rg_forms_dashboard\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:18:\"dashboard_activity\";s:7:\"column4\";s:0:\"\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1578523409'),
(26, 1, 'gform_recent_forms', 'a:1:{i:0;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BHm2tIFov.aPm27DDYbMHU60Nlhy2F1', 'admin', 'eduardo.mfonseca@hotmail.com', '', '2020-01-08 21:47:19', '', 0, 'admin');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_gf_draft_submissions`
--
ALTER TABLE `wp_gf_draft_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices de tabela `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Índices de tabela `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Índices de tabela `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Índices de tabela `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_gf_form_meta`
--
ALTER TABLE `wp_gf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Índices de tabela `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
