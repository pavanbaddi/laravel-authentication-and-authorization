-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2021 at 06:29 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin one', 'adminone@gmail.com', NULL, '$2y$10$GQRkSwGv2XZuKA.YMdWmOOnxZBTkjddKJFQFVgOphAkif6XGD09Rq', 'qnrB9Ko8AQx28TebcOVrxgsynQxxZB7tw41bUAM4DHudb38RaQOkbeMUlcbW', NULL, NULL),
(2, 'admin two', 'admintwo@gmail.com', NULL, '$2y$10$GQRkSwGv2XZuKA.YMdWmOOnxZBTkjddKJFQFVgOphAkif6XGD09Rq', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_care_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_care_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`id`, `company_name`, `customer_care_no`, `customer_care_email`, `company_address`, `created_at`, `updated_at`) VALUES
(1, 'Sample company', '6161', 'abc@gmal.com', '31d3as1dsa1d3\r\ndas\r\nd\r\nsa\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_28_140610_create_post_table', 2),
(5, '2020_10_28_140801_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur quia nam.', 'consequatur-quia-nam-', 'Maxime alias eveniet et dolorem commodi nemo dolore architecto quae est et expedita ut perferendis enim enim molestiae asperiores voluptatem sed accusamus qui rem ut vitae necessitatibus architecto quia rerum consequatur voluptas sit consequatur voluptate adipisci voluptatem repellendus impedit qui harum et temporibus voluptatibus modi ipsa asperiores qui necessitatibus sed consequatur veritatis velit veritatis qui reprehenderit explicabo aut qui animi ex laudantium.', '2007-03-30 16:48:39', '2020-12-24 11:55:21'),
(2, 'Dicta iste.', 'dicta-iste-', 'Amet occaecati tenetur sunt voluptatem fugit facere numquam libero voluptatum recusandae et atque dolores perspiciatis ducimus vitae magnam quia molestiae enim modi et deserunt dolor dignissimos minima natus voluptatum dolorem est amet et ipsa numquam aut.', '1970-08-31 18:57:23', '2020-12-24 11:55:22'),
(3, 'Aut reprehenderit animi.', 'aut-reprehenderit-animi.', 'Magnam reprehenderit explicabo dolor molestias omnis velit qui id repellendus consequatur enim animi eius vitae est nobis consectetur non et ut nobis aspernatur non provident incidunt vero accusantium vel aspernatur ab exercitationem sequi quidem est et ut omnis sed.', '2008-05-31 16:37:03', '2020-12-24 11:55:22'),
(4, 'Voluptas sint.', 'voluptas-sint.', 'Molestiae non qui soluta blanditiis aliquid consectetur quae dolore accusamus perferendis rerum eligendi eligendi et repellendus reiciendis officia omnis ad ipsam optio voluptas porro earum hic molestias reprehenderit fugiat quos modi ullam nam quis praesentium laborum esse qui accusantium.', '1993-04-06 16:50:50', '2020-12-24 11:55:22'),
(5, 'Quod fuga.', 'quod-fuga.', 'Et voluptas eius quidem quia reprehenderit beatae suscipit quidem consequuntur quis voluptatibus cumque iure voluptatibus commodi corporis est nobis doloribus quibusdam veniam occaecati aut quis tempore aut quam necessitatibus qui libero soluta nam velit eligendi dolor aut delectus ipsa assumenda incidunt explicabo quae architecto voluptatibus quisquam officiis.', '1979-06-25 16:52:30', '2020-12-24 11:55:22'),
(6, 'Eligendi nam et.', 'eligendi-nam-et.', 'Animi sit dolores ipsum doloribus quidem qui est rerum et nostrum occaecati ipsum itaque est omnis esse dolorem praesentium repellendus facere dolorum qui corrupti id et non delectus rerum saepe quasi odit velit distinctio error voluptas rerum illum qui et ipsum quisquam qui pariatur enim animi aspernatur odio est vitae qui sunt iste esse consequatur aut distinctio nostrum aliquam soluta nihil temporibus numquam quos voluptates quis enim magnam sunt.', '1990-09-30 04:05:24', '2020-12-24 11:55:22'),
(7, 'Dolore expedita delectus.', 'dolore-expedita-delectus.', 'Vitae ducimus dolores omnis odit deleniti aut id eaque consequatur tenetur eveniet reiciendis eveniet rem nobis provident aut aut labore ut illum temporibus expedita facilis aut enim error rerum eum repellendus consequatur consequatur fuga consequatur atque id tenetur in quaerat numquam.', '1983-02-16 20:30:19', '2020-12-24 11:55:22'),
(8, 'Enim quia quidem.', 'enim-quia-quidem.', 'Ut eum corrupti illo voluptatibus deleniti et consequuntur cumque aut aut et nihil ut ipsum suscipit corporis tempore facilis dolores officia neque ducimus provident aspernatur eum rem voluptas quibusdam ut voluptatem doloremque in temporibus et perferendis aut fuga voluptatem culpa beatae quia quisquam sit quia est nulla reprehenderit occaecati eos eum laboriosam in voluptatem unde perspiciatis reiciendis laudantium sunt consequuntur dolor magni rerum soluta sit et fugit voluptatem.', '1996-08-17 15:23:34', '2020-12-24 11:55:22'),
(9, 'Tempore atque quo.', 'tempore-atque-quo.', 'Repellendus provident non quidem quibusdam quidem ipsum necessitatibus et et fugit voluptate ratione et neque blanditiis nostrum consequuntur atque odit sed nesciunt qui suscipit deserunt tenetur earum delectus sint est dolor magnam et odit quisquam rerum doloribus aut qui ea doloremque voluptate similique a corrupti eveniet ad a et rerum quis laudantium et velit officia sequi quo autem sit sequi in sunt.', '2007-01-06 01:19:14', '2020-12-24 11:55:22'),
(10, 'Laboriosam et.', 'laboriosam-et.', 'Quaerat blanditiis quis tempora omnis vel voluptas sunt quidem quia eum eius cupiditate esse minima quidem ipsa aliquid enim provident rerum porro qui et inventore accusamus omnis sunt et aliquam quas qui quia incidunt aliquam sint sint sit corporis aut qui hic error neque distinctio labore aperiam fugit excepturi tempora quas sint adipisci itaque facere ex voluptatibus atque iure qui.', '1995-07-20 04:12:31', '2020-12-24 11:55:22'),
(11, 'Et error autem.', 'et-error-autem.', 'Quas optio soluta ipsum possimus voluptas recusandae laborum reprehenderit molestiae necessitatibus reiciendis veniam consequatur sapiente velit velit eaque nulla hic qui et ipsum fugiat pariatur temporibus nesciunt ut quibusdam delectus ea saepe quis aut vero dolores veniam tenetur nobis ducimus repellendus rerum corporis aut corporis sapiente eos et eaque voluptate tempore adipisci laudantium ea quam veritatis quam est sit consectetur maiores perferendis accusantium ipsum adipisci.', '1990-10-16 22:58:40', '2020-12-24 11:55:22'),
(12, 'Consequatur nam maiores.', 'consequatur-nam-maiores.', 'Ut dolores deleniti voluptatem ullam ut quaerat rerum consectetur praesentium inventore aut optio soluta dignissimos provident perspiciatis dignissimos explicabo eos libero alias ratione illum iste enim nostrum libero dignissimos quo ea voluptas dolore suscipit maxime voluptas ullam ut non natus voluptates ea ratione cum rerum soluta autem rerum nisi aut veritatis provident consectetur rerum necessitatibus tenetur ut explicabo alias non omnis.', '1973-06-28 00:31:51', '2020-12-24 11:55:22'),
(13, 'Est et ut.', 'est-et-ut.', 'Id omnis dolor assumenda rem sed quam eius occaecati et dolor porro blanditiis doloremque delectus nam ut autem commodi ea facilis qui quidem unde doloremque aliquid occaecati beatae fugit aperiam sint consequuntur sint voluptates perferendis placeat quia illo molestias itaque ut et molestias in est tempora quo voluptatem ipsam ut veritatis eos et corporis consequatur facilis.', '1970-03-31 09:10:02', '2020-12-24 11:55:22'),
(14, 'Odit dolorem.', 'odit-dolorem.', 'Quo culpa laborum dolore non voluptas quis rerum provident animi quisquam ipsum et tempore rem nisi quis provident deserunt animi est quaerat asperiores aperiam laudantium aliquam dolores dolorem quia at libero voluptatem quia quasi ea iste aut commodi sed vero et dolores tempora consequatur laudantium quasi est velit modi.', '1995-02-18 13:22:02', '2020-12-24 11:55:22'),
(15, 'Fugiat a rerum.', 'fugiat-a-rerum.', 'Sapiente delectus iste et ea perspiciatis ipsum eos sapiente aut ad corrupti eius et expedita qui voluptate dolores praesentium harum repellendus magnam cumque quod alias est saepe asperiores nostrum quos et voluptas perspiciatis ipsam et veritatis est qui aliquam ut est accusamus deleniti et libero laudantium quis alias eligendi sed nobis odio odio eos velit exercitationem amet nulla molestiae qui sit sapiente qui autem iusto et aut.', '1988-01-06 11:22:22', '2020-12-24 11:55:22'),
(16, 'Ut quibusdam velit.', 'ut-quibusdam-velit.', 'Dignissimos nostrum voluptate iusto eos vel sunt saepe alias deleniti sit dolor vitae et minima fugit culpa beatae hic natus ut ut sapiente facilis nemo sit architecto qui repellat excepturi libero earum aut dignissimos similique tempore illum consequatur quia ut autem veniam velit libero ullam occaecati ea consectetur quod et voluptatum aperiam omnis debitis fuga perspiciatis rerum hic dolorem earum.', '1994-02-13 02:24:55', '2020-12-24 11:55:22'),
(17, 'Ea totam at.', 'ea-totam-at.', 'Incidunt hic quos et ut occaecati odit veritatis dignissimos iste nobis sed itaque amet possimus consequatur provident unde sed quidem cum provident ut laboriosam et consequuntur omnis repellat hic modi officiis asperiores beatae aut vel aspernatur vel nisi.', '1972-02-23 01:40:58', '2020-12-24 11:55:22'),
(18, 'Neque praesentium ipsa.', 'neque-praesentium-ipsa.', 'Est nihil dolores rerum error quo quisquam sint corrupti perspiciatis iusto id necessitatibus dolore ratione qui sequi adipisci architecto modi harum qui ipsam iste id recusandae ut impedit assumenda necessitatibus nobis corporis ut reprehenderit laboriosam animi eaque ipsam itaque dolores et voluptatem eveniet natus rerum dolorum eum corrupti similique facilis omnis et molestias aut ex cumque assumenda aut.', '1975-08-31 16:34:26', '2020-12-24 11:55:22'),
(19, 'Nam excepturi.', 'nam-excepturi.', 'Ipsa sunt qui non soluta consectetur adipisci aut rerum ut autem nisi eos ut labore quo officia earum et consectetur tempora deleniti nostrum et eos totam eum placeat eum autem dolor dolor amet optio inventore consectetur quasi rerum praesentium vel quasi molestiae debitis optio et illum ipsum asperiores repudiandae rerum voluptatum aliquam consectetur recusandae pariatur.', '1977-12-30 15:27:10', '2020-12-24 11:55:22'),
(20, 'Nesciunt eos deserunt.', 'nesciunt-eos-deserunt.', 'Necessitatibus neque omnis ducimus distinctio voluptas facilis omnis iusto aperiam eum sint placeat aut excepturi eos aut consequatur ad eius voluptate omnis et tenetur beatae voluptas consectetur vitae laboriosam qui alias magni sint fugiat dolores a amet ut labore et dolorum nisi tempore id exercitationem autem ut voluptas qui dolore laborum eum et vero cum fugit itaque ut praesentium aut.', '1994-07-29 01:39:05', '2020-12-24 11:55:22'),
(21, 'Eligendi eius consequatur.', 'eligendi-eius-consequatur.', 'Ab molestiae suscipit et velit rerum id et rem animi beatae est sit qui nulla animi eum laborum tempora corporis odit consequatur sapiente dolor et aut incidunt eveniet dolorum atque repudiandae nihil nihil minima reiciendis maiores autem placeat rerum aut totam ad nihil non perferendis dolorum dolor aut culpa molestiae qui voluptas doloremque earum vel iusto quas alias error dolor qui animi enim aut ut.', '1971-07-08 15:21:49', '2020-12-24 11:55:22'),
(22, 'A sint.', 'a-sint.', 'Culpa quis asperiores corporis magnam voluptatem odit et animi quam voluptates in et exercitationem sint omnis minima tempora tempora voluptatum id officiis quos quia accusamus eos facere sit cum possimus quia ut vero perspiciatis sed cum incidunt corrupti et.', '1977-05-25 03:04:39', '2020-12-24 11:55:22'),
(23, 'Quo est modi.', 'quo-est-modi.', 'Id quia accusamus ex dolor sed sunt occaecati fugiat adipisci quasi ducimus quibusdam vitae ratione est cupiditate incidunt voluptas eius deleniti dolorem laudantium quia adipisci vel aut provident laboriosam cupiditate odit doloremque aut eum accusamus repellendus quam consequatur a aut eaque sunt velit enim eos qui incidunt nemo doloremque eum.', '1997-05-21 19:39:54', '2020-12-24 11:55:23'),
(24, 'Quia enim tempore.', 'quia-enim-tempore.', 'Nihil et laborum nam aliquid reprehenderit ex debitis fuga quae nihil aut et in saepe blanditiis aut repellat id modi est mollitia iste porro sequi nemo architecto error quia aliquam est porro nemo et aut praesentium qui saepe magnam quaerat dolorem aut quibusdam a.', '1979-06-05 13:35:44', '2020-12-24 11:55:23'),
(25, 'Dolor in molestias.', 'dolor-in-molestias.', 'Dolor velit qui voluptate est repellat fuga ipsam repellendus veritatis eligendi molestiae rerum pariatur aperiam consequuntur a ut perferendis ad rem dolor in nisi non impedit quos repellendus eum quidem fugiat saepe autem impedit nulla quis id deserunt odio vel quisquam nesciunt iste qui aliquam ut deleniti quod cum quod tempora natus ad expedita quia adipisci consequatur tempore maiores eveniet error pariatur placeat harum nemo voluptate ducimus.', '1993-02-08 08:04:29', '2020-12-24 11:55:23'),
(26, 'Et vel.', 'et-vel.', 'Quo dolor praesentium rerum velit assumenda molestias sit sunt debitis maxime et rerum ut aut doloribus minus nihil qui ut ut sint ipsa culpa ipsam explicabo non eum unde ex eveniet placeat occaecati omnis voluptatem est dolores consectetur sunt recusandae sed corporis deserunt voluptas doloremque.', '1974-08-17 00:02:08', '2020-12-24 11:55:23'),
(27, 'Ipsam nemo.', 'ipsam-nemo.', 'Minima ipsa sunt velit aut cupiditate non quibusdam fugit quia soluta ipsa animi at distinctio animi iure non et architecto quibusdam impedit accusantium reprehenderit facilis ullam tenetur est nostrum rerum non praesentium voluptas doloribus rem deleniti voluptates inventore error ut et molestias voluptas blanditiis ea.', '2003-12-06 15:22:36', '2020-12-24 11:55:23'),
(28, 'Quis in est.', 'quis-in-est.', 'Soluta delectus impedit rerum illum laudantium ex numquam vitae minus necessitatibus enim dolor mollitia voluptatem totam aliquam aut neque voluptatibus sit laborum reiciendis doloremque corporis omnis ut iusto deleniti fuga repellendus distinctio repellendus est architecto totam quo sapiente aspernatur est molestias sed aut itaque debitis voluptatem dolores et asperiores omnis ab consequatur ad ut quia tempora itaque qui eos rerum corporis ipsam cum facilis hic autem exercitationem vel.', '2008-08-13 14:17:12', '2020-12-24 11:55:23'),
(29, 'Saepe voluptates.', 'saepe-voluptates.', 'Mollitia laborum ad magnam ducimus iste neque qui vel libero eveniet deleniti itaque omnis voluptatem aut aliquid et nam molestiae sequi quisquam iste voluptate temporibus accusamus excepturi dolorem eligendi et quia est harum molestias id et eum sit et aliquid eum quis sunt perspiciatis est molestiae hic nostrum et accusamus saepe molestiae sed.', '1982-11-25 15:01:43', '2020-12-24 11:55:23'),
(30, 'Omnis officiis.', 'omnis-officiis.', 'Modi assumenda et qui et suscipit delectus dolores consequatur laboriosam voluptatem eos alias modi quo consequatur temporibus sed est provident provident autem sit est voluptatem non nobis rerum quo aut quod tempore quia error.', '1993-05-24 03:38:25', '2020-12-24 11:55:23'),
(31, 'Est et ut.', 'est-et-ut.', 'Officiis autem ratione aut minus reiciendis voluptates qui libero et harum exercitationem molestias voluptas minima aut qui nobis aspernatur hic sit autem corrupti amet ab assumenda aut optio tempore fuga dolorum deserunt eum illo odio dolore qui consequuntur eum repudiandae labore sint rerum pariatur et possimus quam debitis quisquam veritatis architecto similique sit quaerat atque magnam in omnis quia sit et ut nobis commodi inventore sit soluta beatae aspernatur.', '2004-01-01 22:55:59', '2020-12-24 11:55:23'),
(32, 'Eius consectetur.', 'eius-consectetur.', 'Quis voluptas assumenda nesciunt consequatur quis non earum vel quod ipsum accusamus neque provident commodi est in at suscipit repudiandae accusamus sed ducimus rerum neque eveniet velit ad et itaque placeat.', '1980-05-31 18:21:45', '2020-12-24 11:55:23'),
(33, 'Libero aperiam.', 'libero-aperiam.', 'Ut sed aut dolor excepturi amet et libero dolore sequi aut dolor est magnam quia maiores molestiae est porro quasi ut laboriosam at esse pariatur ea quia facere rerum sunt id ut voluptate dolor sunt excepturi porro consectetur ut magnam et perspiciatis eos placeat eligendi aspernatur aut.', '1982-01-05 20:52:21', '2020-12-24 11:55:23'),
(34, 'Ipsa cumque rem.', 'ipsa-cumque-rem.', 'Molestiae labore fugit dolores et qui soluta excepturi voluptatem ipsa quod maxime tempore at cum quia voluptatem odit quidem optio voluptate commodi repudiandae expedita error pariatur modi maxime qui distinctio aut et in et cumque qui aut in facilis ut.', '2006-12-19 02:34:53', '2020-12-24 11:55:23'),
(35, 'Sit veritatis.', 'sit-veritatis.', 'Non rerum consequatur quis ratione itaque quisquam repellendus excepturi libero quos explicabo ducimus sunt labore illo eos repellat dolores qui rerum amet molestiae ut quia labore ea aspernatur quasi repellendus ea expedita dolor aut explicabo atque quia et unde ad illum labore voluptas nemo.', '1980-12-14 22:32:22', '2020-12-24 11:55:23'),
(36, 'Consequatur aut.', 'consequatur-aut.', 'Et id cupiditate atque alias nobis et eaque voluptates voluptatem veritatis labore eveniet et ut dolor omnis vel tempore nemo ab eos eum iure quis atque iusto quisquam aut sapiente dolores quisquam ab odit qui laboriosam.', '1987-07-29 19:57:54', '2020-12-24 11:55:23'),
(37, 'Exercitationem et.', 'exercitationem-et.', 'Deleniti architecto vero accusamus qui eius ut nesciunt eos et repudiandae enim omnis dolorum quia ratione facilis qui dolorem illum cum consequatur deserunt possimus ipsa in quis omnis aut assumenda qui occaecati est necessitatibus quia rerum in facere.', '1993-12-14 22:16:07', '2020-12-24 11:55:23'),
(38, 'Odio eius.', 'odio-eius.', 'Cumque sed cumque expedita tenetur hic voluptas quia dolores et sit quod reiciendis unde sed fugit repellat quam aut qui fugit nostrum est laudantium ad non alias deserunt harum ea dignissimos aut.', '2008-06-28 05:44:18', '2020-12-24 11:55:23'),
(39, 'Quos sunt corrupti.', 'quos-sunt-corrupti.', 'Est qui cupiditate est sequi autem quasi ut soluta expedita sapiente nulla eum quisquam reiciendis et quo similique recusandae quis quis eaque ea consequatur voluptatem ullam quo aspernatur deleniti culpa ratione possimus omnis iure laboriosam nihil asperiores voluptas qui id saepe vitae iure labore illo.', '1974-09-08 03:24:15', '2020-12-24 11:55:23'),
(40, 'Sint ex adipisci.', 'sint-ex-adipisci.', 'Earum cumque cupiditate qui voluptatem quia occaecati distinctio excepturi et fugit voluptatem aliquid harum nulla odio unde alias quod suscipit consequuntur tenetur aut optio asperiores modi ut fugit itaque et aspernatur quod cumque sit dolorum nihil sunt quam aut aut eum adipisci est iste autem eligendi sed similique maxime quibusdam et vitae.', '1990-10-17 03:42:01', '2020-12-24 11:55:23'),
(41, 'Ipsum fugiat nam.', 'ipsum-fugiat-nam.', 'Commodi inventore illum tenetur labore eius quo ea ut omnis ipsam earum esse dolorem eius dolor dolorem ex maxime et qui earum magni ut dolor cupiditate est odio aperiam et totam.', '2007-07-06 06:16:49', '2020-12-24 11:55:23'),
(42, 'Eaque dolor voluptatem.', 'eaque-dolor-voluptatem.', 'Est dignissimos fuga beatae molestiae explicabo fugiat quam quam ut temporibus eos enim sint vel reprehenderit quas voluptatem molestiae dignissimos ut dolores rerum repellendus ut laboriosam aperiam maiores sed ea similique porro quidem odit dolore nulla et error necessitatibus.', '1971-07-20 04:40:48', '2020-12-24 11:55:23'),
(43, 'Mollitia natus.', 'mollitia-natus.', 'Ipsa officiis maiores ab provident dolorem voluptas deserunt doloribus quisquam officia ab optio qui quae minus dolor est aliquam alias ut id est soluta nesciunt minus dolores incidunt voluptate iusto ipsa non quisquam et explicabo labore facere quasi nemo officiis illum voluptates et incidunt eos fugiat dolorem itaque illo expedita qui alias laudantium eos et omnis ratione fugiat voluptas.', '1993-12-19 06:03:52', '2020-12-24 11:55:23'),
(44, 'Blanditiis quod vero.', 'blanditiis-quod-vero.', 'Ea perferendis iste est ipsa occaecati dolor quas ducimus ipsum repellat quia sed animi hic rerum dolor consequatur explicabo a cupiditate alias eius hic animi iusto quia unde quia cum sint et beatae doloremque nobis et necessitatibus cumque non aut error fugiat atque non voluptas culpa consectetur perspiciatis doloremque nemo nobis vitae non aut dolorem facere consequatur exercitationem doloremque rem odio voluptate in optio.', '2008-05-28 13:11:13', '2020-12-24 11:55:23'),
(45, 'Maiores est.', 'maiores-est.', 'Fugit ratione totam vitae corporis qui voluptatem enim saepe nemo tenetur reprehenderit id ex non quia et et nihil labore ut hic voluptatibus voluptas ipsum et iusto delectus perferendis voluptas sit sapiente cum dolores id voluptates soluta odio odio est earum non quod libero voluptatibus porro fuga tempora.', '1991-02-17 04:22:29', '2020-12-24 11:55:23'),
(46, 'Quidem velit porro.', 'quidem-velit-porro.', 'Ut temporibus non occaecati blanditiis aliquid a ea ducimus consequatur ut vel ab et consectetur aliquam temporibus alias deserunt sit magni laudantium quia possimus voluptate impedit omnis facere ex dolores quo sed voluptatum quibusdam sint numquam qui aut quisquam molestiae ea est reprehenderit ut ut ea perspiciatis eius voluptas atque qui quis dolores et quibusdam sint non inventore quae.', '1979-02-22 01:13:52', '2020-12-24 11:55:24'),
(47, 'Consequatur qui.', 'consequatur-qui.', 'Sunt molestiae consequatur quia sunt et suscipit et culpa tempore illum distinctio quis quibusdam facilis aut temporibus sed et iusto laboriosam vero delectus accusantium dicta aut eum ipsam voluptas autem dolores esse mollitia.', '2004-09-25 16:06:57', '2020-12-24 11:55:24'),
(48, 'Officiis et non.', 'officiis-et-non.', 'Eligendi accusantium sunt quia deleniti enim perspiciatis iste esse est voluptatem quia dolorem voluptatem voluptas ut iusto quis totam suscipit eius nihil et esse harum numquam perspiciatis recusandae suscipit repellat eum sapiente et quo minus corrupti ratione repudiandae voluptatem sint fuga qui molestias tenetur et dignissimos aut sint aut inventore commodi eligendi et quasi labore ut laborum dolorum doloremque neque molestiae voluptas.', '1995-05-09 11:10:50', '2020-12-24 11:55:24'),
(49, 'Ex nisi vel.', 'ex-nisi-vel.', 'Ut quia laborum non quis maiores quos saepe nulla sed quisquam quae nihil doloremque facilis sequi quia minima sit doloremque doloribus cumque non cumque itaque aut ad voluptatibus dolorem numquam aut in nesciunt nisi corrupti adipisci ut est molestias enim ut et optio consequuntur ullam culpa sequi atque laboriosam itaque aut eum assumenda ipsum.', '1975-01-26 17:54:44', '2020-12-24 11:55:24'),
(50, 'Repudiandae laborum enim.', 'repudiandae-laborum-enim.', 'Error ullam nihil voluptatibus quasi sed harum aut porro enim voluptatem odit unde dolorem molestiae dolore blanditiis fugit aspernatur voluptas deserunt assumenda saepe non dolor quo et vel natus voluptatem voluptas mollitia illo iste aut quis vel suscipit quaerat beatae quis unde molestias illo facilis nesciunt est quam minus aspernatur et ipsam id quasi reiciendis voluptatum rerum magni aut natus.', '1995-07-30 21:59:39', '2020-12-24 11:55:24'),
(51, 'Est voluptates.', 'est-voluptates.', 'Voluptate qui molestias deserunt quia sequi et ullam unde consequatur ipsa voluptatibus incidunt qui repellendus expedita reiciendis consequatur eos et voluptate assumenda quaerat inventore sed qui quibusdam sit temporibus aut asperiores dolores sint optio necessitatibus molestiae natus sapiente non quasi sed voluptas eos architecto quibusdam et odio molestiae qui voluptatum quia ipsam error illo voluptatum tempore fugiat in et et laudantium labore sed rerum adipisci earum tenetur.', '2006-07-24 19:53:34', '2020-12-24 11:55:24'),
(52, 'Non eius.', 'non-eius.', 'Occaecati voluptatum eveniet non enim porro ea est eum rem enim nam magni non nobis quia esse molestias nostrum ipsam aut illum maxime ipsa nesciunt ab fuga totam nihil qui rerum totam sapiente expedita ea temporibus laboriosam ad velit quasi aliquid consequatur rerum praesentium temporibus officiis qui quo nostrum voluptas neque qui et sed atque a consequatur.', '1972-07-25 18:13:59', '2020-12-24 11:55:24'),
(53, 'Et excepturi reprehenderit.', 'et-excepturi-reprehenderit.', 'Beatae ex dolor eius sapiente mollitia sit accusamus quidem saepe eum ut ipsam aut sint voluptas quia numquam quia cum et fuga rerum cupiditate soluta quia nihil repellat repellendus non velit veniam nostrum est ut voluptas.', '1997-12-03 07:45:34', '2020-12-24 11:55:24'),
(54, 'Veniam voluptate earum.', 'veniam-voluptate-earum.', 'Esse soluta aut rerum sequi qui corrupti vitae necessitatibus ut reiciendis consequatur dignissimos rerum consequatur aut id dolore dicta quis alias iste repellendus alias soluta voluptatibus ipsam consequuntur totam ut ducimus suscipit accusantium et voluptatem sequi rem sapiente deleniti et nesciunt tenetur dolore consectetur nam quo sunt perferendis odio.', '1990-08-24 15:28:17', '2020-12-24 11:55:24'),
(55, 'In rerum reiciendis.', 'in-rerum-reiciendis.', 'Alias velit nam cum accusantium vel unde in quos maxime quo est qui quo soluta vero dolores quis ex velit suscipit et ut exercitationem voluptate omnis dicta distinctio aut odio quidem praesentium nobis quas dolor voluptatem in sint ea et esse eius natus rerum vel explicabo voluptatem nostrum ut incidunt repellat consequatur adipisci sed inventore commodi deserunt et.', '1979-08-27 23:31:44', '2020-12-24 11:55:24'),
(56, 'Eum sed placeat.', 'eum-sed-placeat.', 'Nemo et et ut eum itaque maxime voluptatum numquam quo eius consequatur hic sint neque aliquid reiciendis molestiae aut voluptatem animi aut aliquam eveniet recusandae aut ex veritatis dolores eveniet aspernatur quibusdam expedita voluptatem voluptatibus tenetur qui qui eligendi cumque dolorem odio ex non cum et doloribus sed ad sit aut rerum officia repudiandae molestiae molestias consequatur.', '1980-02-17 07:03:46', '2020-12-24 11:55:24'),
(57, 'Natus dolorum sunt.', 'natus-dolorum-sunt.', 'Beatae voluptatem itaque molestias velit blanditiis id corporis in eum ipsam sit ea ullam tempore veritatis ad aperiam optio suscipit qui reiciendis quos omnis numquam totam et quos minima illo consequatur sint sunt nihil temporibus sit vero debitis architecto blanditiis quae fugiat facilis qui cumque repellat facilis in eius asperiores similique autem facere eos sunt laudantium modi reprehenderit in culpa vitae vero vero dolorum quos sit.', '2008-08-24 04:37:58', '2020-12-24 11:55:24'),
(58, 'Quod ad.', 'quod-ad.', 'Enim enim repellat accusantium doloribus nemo velit est tempore dolorem ut earum maiores ea libero consectetur eos exercitationem et enim ducimus repellat suscipit accusantium sed quasi eaque dolorum incidunt quo occaecati quia similique et nisi fugit maiores provident optio facere nemo corrupti quaerat inventore sit quis cum voluptatem harum.', '1974-10-20 06:24:07', '2020-12-24 11:55:24'),
(59, 'Ut nihil.', 'ut-nihil.', 'Recusandae aut facere qui consectetur ut non error saepe neque accusamus amet temporibus consequatur porro quisquam et dicta sint dolor officia atque atque quo repellendus autem ab ut aspernatur quidem quia et et et sint laboriosam rerum quasi placeat et veniam omnis nemo quam nulla qui porro hic accusamus eaque dolorum dignissimos sapiente saepe enim non eveniet et ipsum rem et neque esse quam earum nihil repellat reprehenderit voluptates.', '1986-09-28 07:46:59', '2020-12-24 11:55:24'),
(60, 'Fugiat hic.', 'fugiat-hic.', 'Non et quod corporis aliquam perferendis et est ab est quis maiores voluptas et soluta ut quisquam officia debitis aliquid doloremque eum inventore quos facere voluptatibus blanditiis libero iste sed ratione aspernatur atque saepe possimus dolores non minus alias exercitationem qui itaque saepe ut est placeat laudantium alias accusantium non autem id.', '1997-06-24 13:29:21', '2020-12-24 11:55:24'),
(61, 'In rem laudantium.', 'in-rem-laudantium.', 'Voluptas ut nisi rerum qui qui in culpa suscipit culpa magnam ut rerum voluptatem sint nesciunt mollitia ea numquam voluptas beatae ullam occaecati aut atque architecto qui animi a reiciendis qui dignissimos aut qui qui illo quas illum voluptas dolorem necessitatibus tempora odit dicta est ratione optio vel fuga maxime voluptas voluptatem magnam quis cupiditate qui dolor sunt omnis est iure animi exercitationem assumenda officiis iste quia repellendus delectus.', '1971-10-02 12:42:26', '2020-12-24 11:55:24'),
(62, 'Omnis ipsa.', 'omnis-ipsa.', 'Doloribus quis molestiae laborum quidem sit dolorem vel ut optio delectus et perspiciatis reiciendis cumque quas ea numquam enim quibusdam quasi expedita sed dolore magnam accusantium aliquid a sunt nulla rerum pariatur et doloremque necessitatibus omnis iusto sunt.', '1985-07-07 14:16:02', '2020-12-24 11:55:24'),
(63, 'Necessitatibus temporibus.', 'necessitatibus-temporibus.', 'Nemo eos quia sapiente deserunt blanditiis perspiciatis iste pariatur qui voluptatem et quis voluptatum rerum nisi dolor nam qui a in rerum dolor molestiae mollitia et dolorem rerum veritatis qui sed.', '1995-05-10 22:30:57', '2020-12-24 11:55:24'),
(64, 'Aut ipsam.', 'aut-ipsam.', 'Aliquid est consequuntur consequatur error voluptates rerum occaecati similique autem pariatur sapiente accusamus consequuntur repellat ipsum commodi eum voluptas praesentium molestias est voluptatibus error et impedit rerum dolorem repudiandae et laborum corporis a repellendus magni aspernatur sed architecto rerum velit reiciendis sapiente autem aut aut in et expedita totam sit tempore doloremque impedit quidem tempore id et nisi eaque modi fugit maxime aliquam.', '2006-03-17 05:27:43', '2020-12-24 11:55:24'),
(65, 'Consequuntur labore pariatur.', 'consequuntur-labore-pariatur.', 'Veritatis ut aut aliquam et voluptatem molestias dolores quibusdam officia animi qui similique voluptas vero veniam vitae voluptatem vel ducimus consequatur cumque molestias velit eaque veniam et voluptatem rerum sit ut sint at saepe eum qui voluptas enim dolorem non enim labore rerum qui atque quaerat architecto et impedit iusto.', '1981-04-12 03:22:28', '2020-12-24 11:55:24'),
(66, 'Unde ipsa autem.', 'unde-ipsa-autem.', 'Amet harum dolorem porro temporibus iusto debitis accusamus iure nostrum voluptatem debitis facere quibusdam ea fugiat dolore quos illum excepturi perferendis vitae itaque veniam quisquam aut qui consequatur et dignissimos quam est quo quas iusto voluptatum sed nesciunt delectus architecto in aliquam cupiditate omnis explicabo eveniet nostrum exercitationem ut veniam omnis officiis quam est nostrum ipsam iure inventore qui quaerat consequatur qui esse odit.', '1999-01-28 00:56:34', '2020-12-24 11:55:24'),
(67, 'Est repellendus.', 'est-repellendus.', 'Voluptas accusamus quis itaque ut et quia dolor at deleniti eum possimus harum cupiditate culpa delectus quasi magni veritatis iste assumenda hic dolore sequi adipisci quis aut nulla id ratione recusandae ipsum est vel rerum veniam excepturi facilis debitis minima et hic sed sit delectus optio est.', '1991-06-08 15:45:56', '2020-12-24 11:55:24'),
(68, 'Est rerum.', 'est-rerum.', 'Distinctio in deleniti omnis non voluptatem eum dolor iste dicta quos repellat earum veritatis similique ut iusto sint eos blanditiis voluptas ut error nihil reiciendis earum veniam laborum delectus sit porro aut maiores asperiores ut minima nisi quia ducimus quis quas omnis quas dolores autem repellat ea omnis rerum maxime id enim aut.', '2000-09-05 22:59:03', '2020-12-24 11:55:24'),
(69, 'Consequatur numquam.', 'consequatur-numquam.', 'Maiores est nisi natus accusamus officia harum quam cum ea accusantium est omnis quis ut consequatur ut et ut illo laboriosam est libero quia reprehenderit ipsum in minima aut omnis vitae.', '2002-01-25 04:44:15', '2020-12-24 11:55:24'),
(70, 'Omnis aperiam.', 'omnis-aperiam.', 'Ut ut et illum asperiores iure et autem ut eveniet vel fuga hic excepturi qui culpa repellendus et pariatur velit possimus voluptatibus in accusamus natus sed ducimus tempora iure esse quidem expedita cum vitae iste ut fugiat debitis non qui optio itaque dolores aut magni sunt expedita repellat et alias est qui dolor adipisci blanditiis delectus vel inventore itaque necessitatibus.', '1982-01-31 11:12:48', '2020-12-24 11:55:25'),
(71, 'Sit quis.', 'sit-quis.', 'Architecto doloremque vitae voluptatibus accusantium dicta beatae tenetur doloribus et ut earum molestiae sunt non eligendi non rem officiis modi vel doloribus aliquam eos cumque omnis qui iste ducimus aut voluptatibus vitae dignissimos ullam minus officiis id quaerat minima quae quae dolor impedit sapiente.', '2006-10-25 03:55:03', '2020-12-24 11:55:25'),
(72, 'Architecto voluptas sit.', 'architecto-voluptas-sit.', 'Cum magni ut nihil est corrupti dolores non sapiente sint cum sit fuga voluptatem et atque cupiditate et et quos tempore nihil nemo deleniti sit fugit atque numquam nam consequatur ut voluptate voluptas molestiae reprehenderit veniam recusandae delectus a assumenda tempore repellendus ea alias soluta vel reiciendis est ut vitae debitis veritatis iste molestias corrupti deserunt ut quia corrupti reiciendis maiores modi eum inventore totam dolorem aut dicta et tempora.', '1990-07-03 13:24:48', '2020-12-24 11:55:25'),
(73, 'Cumque consequatur.', 'cumque-consequatur.', 'Quia id qui possimus perspiciatis fugit tempore aliquam beatae sit nesciunt voluptatum iste quo sunt voluptas et nobis possimus voluptatem dolorem autem quo in dignissimos sunt suscipit ipsam rerum minima modi et et dignissimos dignissimos et dignissimos maxime incidunt repudiandae ipsa quis placeat a nostrum harum sapiente est occaecati expedita rerum ipsam dolorum porro.', '1989-01-17 09:07:19', '2020-12-24 11:55:25'),
(74, 'Voluptatem tempore.', 'voluptatem-tempore.', 'Eveniet officiis nesciunt doloribus nobis cum facere ut numquam possimus eum voluptatem eos nulla velit voluptas impedit magnam sit eaque qui architecto illum natus pariatur neque consectetur odit nemo reiciendis tempora similique iste qui nobis laudantium qui vero soluta aut non laboriosam ipsa animi tenetur quis quibusdam accusantium qui rerum hic suscipit incidunt eum impedit id quia repudiandae debitis quia perspiciatis optio adipisci totam.', '1974-08-08 15:58:39', '2020-12-24 11:55:25'),
(75, 'Voluptates minus nulla.', 'voluptates-minus-nulla.', 'In sit facilis eum tempora debitis dolorum eum est velit sunt dolor corrupti quasi optio nisi est aut incidunt voluptatibus recusandae fugiat eligendi facilis eos quia nulla vitae expedita velit voluptates aut iste non autem eius facere voluptate ipsam sed sed repudiandae cupiditate voluptate quod incidunt et ullam velit.', '1971-05-07 20:33:48', '2020-12-24 11:55:25'),
(76, 'Occaecati neque odio.', 'occaecati-neque-odio.', 'Velit dignissimos excepturi ipsum odio non ea ea vel voluptas non deserunt et animi excepturi autem architecto voluptatem repellat eveniet quia quam eum animi id doloribus possimus sed autem quia et dolorem aut eaque asperiores quas tenetur dolores sunt alias aut omnis minus dignissimos est voluptatem assumenda alias quaerat consequatur minus non voluptatem explicabo qui temporibus omnis occaecati saepe rem quia minus delectus dolores esse quae ducimus.', '1998-11-01 03:24:02', '2020-12-24 11:55:25'),
(77, 'Recusandae commodi.', 'recusandae-commodi.', 'Nihil qui occaecati ea quidem harum debitis ea mollitia sint eligendi eligendi architecto rerum molestias fugit reprehenderit esse magni aliquam velit et quia veniam inventore quis quos sapiente impedit maiores ab.', '1987-05-23 12:30:48', '2020-12-24 11:55:25'),
(78, 'Delectus debitis.', 'delectus-debitis.', 'Est eius incidunt quo aut consequuntur molestiae et rerum qui laboriosam quisquam illum adipisci eum assumenda excepturi voluptatem sapiente est fugiat dolores enim magni debitis dolor repudiandae dicta et sed sequi velit aliquam possimus sint eum aut dolorem incidunt autem quas quisquam dolorem fugit officia possimus eaque repudiandae dolor sint qui aut laudantium impedit nihil dolore nisi sit assumenda atque.', '1980-03-14 13:00:34', '2020-12-24 11:55:25'),
(79, 'Et et corporis.', 'et-et-corporis.', 'Dolorem sunt dignissimos repellat quidem unde est omnis molestiae blanditiis qui eos accusantium ipsam at nesciunt placeat vel fuga facilis debitis repellat aut et eius nisi laudantium autem repellendus saepe libero quo molestiae quos qui assumenda consequatur quibusdam illum eveniet ut ratione autem ab aut enim saepe neque ut itaque vero eos provident nemo vel aut qui ad accusamus eveniet fuga soluta sed amet similique nulla qui odit optio ullam sit.', '1985-05-19 09:18:43', '2020-12-24 11:55:25'),
(80, 'Quae eum voluptatibus.', 'quae-eum-voluptatibus.', 'Maxime voluptatem aut quia recusandae est quibusdam provident eum tempore aut corporis beatae veniam earum omnis laborum in esse iure est reiciendis architecto quo omnis ut nostrum nam minus ut in accusamus et inventore error magnam qui qui aperiam veritatis vel dolorum deleniti harum facilis recusandae sapiente est voluptas dolorem commodi enim asperiores vitae culpa illum ratione reiciendis iusto blanditiis odio nostrum.', '1984-12-29 06:09:57', '2020-12-24 11:55:25'),
(81, 'Non consequatur quis.', 'non-consequatur-quis.', 'Expedita sit provident hic sunt explicabo voluptate excepturi minus voluptate nihil accusamus ut recusandae consectetur nemo est aperiam doloribus aliquam nisi molestias iusto aut ea rerum maxime blanditiis dolore consectetur aut veniam voluptatem incidunt quod est quod quos iure rerum commodi numquam molestias aperiam ab eaque velit deserunt est et incidunt autem consequuntur quidem eum eos ut non voluptas cum accusantium dolor ex qui officiis recusandae.', '1994-01-20 16:23:48', '2020-12-24 11:55:25'),
(82, 'Quisquam est eos.', 'quisquam-est-eos.', 'Neque eaque consectetur ex eaque voluptatem quos necessitatibus cupiditate et voluptatem sed culpa aut rerum quis labore dolore neque reiciendis error quia magni officia ratione saepe ut non officiis ut provident delectus sit sed perspiciatis sapiente provident tempore labore aut doloremque reprehenderit fugit illum dolore qui delectus consequatur assumenda repudiandae est quasi dolore ut magni et assumenda.', '1977-10-16 09:34:19', '2020-12-24 11:55:25'),
(83, 'Sunt sed quis.', 'sunt-sed-quis.', 'Est molestiae eligendi fuga corporis sapiente dicta maxime ipsa odio neque rem laudantium quas eveniet nobis soluta voluptates alias perspiciatis soluta deserunt ab cupiditate adipisci eveniet et deserunt est veritatis eveniet odit earum consequatur quia quis iste ut eos iure cupiditate quod eos.', '2005-03-26 22:38:08', '2020-12-24 11:55:25'),
(84, 'Et sit.', 'et-sit.', 'Nisi est accusantium possimus at soluta dicta est ea porro rem voluptatem est at qui mollitia eligendi totam ipsum et in vitae voluptas iusto dicta quaerat libero velit earum tenetur velit iusto error et ex maiores iure suscipit sed iure repudiandae inventore quia et molestiae et expedita nam sed.', '2008-09-12 00:44:58', '2020-12-24 11:55:25'),
(85, 'Quis sint.', 'quis-sint.', 'Unde non voluptatem eius eveniet officiis quas et consequatur aut voluptas sint quam qui quia incidunt error laborum laborum veniam magnam possimus ab pariatur repellat molestiae et quo deleniti et amet eos veniam enim aspernatur totam.', '1985-08-07 18:24:31', '2020-12-24 11:55:25'),
(86, 'Tenetur vel.', 'tenetur-vel.', 'Quis veniam dolorem laboriosam quaerat ex et nam sapiente dolores labore aut nihil ipsa temporibus est itaque amet quia ullam consequatur dolorem molestiae aliquid nesciunt et perferendis velit non nostrum harum quibusdam facere sapiente ut odit facere architecto error accusantium nemo omnis quia perspiciatis autem omnis dolorem eum aliquid voluptas et laborum sit expedita quibusdam voluptas quo saepe aliquam consequatur laborum quod itaque repudiandae explicabo eum excepturi cum repellendus.', '2000-06-30 21:38:04', '2020-12-24 11:55:25'),
(87, 'Dolores qui.', 'dolores-qui.', 'Est accusantium reiciendis quidem sed facilis quam est ut dolore atque impedit velit aliquid eligendi hic distinctio quas deserunt quas reprehenderit sapiente suscipit fugiat et libero vel iste voluptatem voluptatem vitae unde perspiciatis vitae soluta nisi.', '1992-12-31 13:09:00', '2020-12-24 11:55:25'),
(88, 'Natus qui.', 'natus-qui.', 'Ut ea nihil suscipit asperiores voluptatem dolores vel sed qui laudantium explicabo consequatur ipsum maiores rerum dolor impedit rerum aspernatur nulla sequi sed cumque ut ut sit enim eveniet ducimus et aperiam sed mollitia.', '1985-11-29 23:36:43', '2020-12-24 11:55:25'),
(89, 'Incidunt quia.', 'incidunt-quia.', 'Sit officiis iste non velit vel pariatur neque eveniet magni occaecati quas sint rerum soluta nobis magnam natus modi et rerum nihil voluptas dolores ducimus dolor sed est reprehenderit numquam omnis dolorem nisi odit alias aut quis minus corrupti earum tenetur fuga enim.', '2005-05-07 22:45:12', '2020-12-24 11:55:25'),
(90, 'Rem nulla iste.', 'rem-nulla-iste.', 'Quia veniam ea est id debitis facere nemo aut labore nihil non mollitia quis et reiciendis natus reiciendis ducimus fuga vel repellendus laudantium ducimus quaerat nihil corporis ut impedit sit eos aut laborum voluptatibus ex ea beatae modi voluptas voluptas.', '2001-07-20 09:32:24', '2020-12-24 11:55:25'),
(91, 'Quo amet.', 'quo-amet.', 'Perferendis quos iusto molestiae nostrum nemo consectetur esse autem dolorem voluptatem nam accusantium debitis recusandae quo facere ex sapiente similique aut veniam accusantium doloribus animi qui quos laborum voluptatibus aperiam rerum sint harum et vel voluptatem nihil optio pariatur voluptatem quis alias vel corrupti reprehenderit perferendis voluptas ducimus voluptatem.', '1999-02-25 00:53:43', '2020-12-24 11:55:25'),
(92, 'Vitae amet.', 'vitae-amet.', 'Numquam autem nostrum est sunt doloremque qui eligendi animi recusandae dolorem eum ullam voluptas sapiente beatae qui omnis qui aspernatur rerum debitis et nulla dolor maiores consequuntur qui aut et nihil quia ut sit earum earum sed blanditiis facilis itaque et neque dolor odit illum dicta in sint et soluta qui minus distinctio ut autem minima sed asperiores et sunt quam excepturi eum fugit aliquid.', '1991-07-04 01:34:48', '2020-12-24 11:55:25'),
(93, 'Voluptatum id ut.', 'voluptatum-id-ut.', 'Quia dolores et pariatur aut molestias dolorem aut et saepe illo ipsa molestiae distinctio qui tempora omnis et et occaecati et aliquam commodi error quibusdam quis facilis ducimus animi sunt rerum quis vel ratione sint facere minus ipsam voluptatem mollitia officia qui perferendis optio veritatis laudantium molestias eius ex aut voluptates laboriosam ab dolor et qui quia doloremque velit.', '1992-07-19 23:26:58', '2020-12-24 11:55:25'),
(94, 'Exercitationem placeat.', 'exercitationem-placeat.', 'Ducimus vitae impedit inventore animi eos rerum quod eum laborum dignissimos illum quaerat dolores cum repellendus similique praesentium omnis qui et in voluptate voluptate dolores harum vero adipisci ut est perferendis quas a adipisci doloremque animi aut esse praesentium non voluptates sunt doloribus vel perferendis saepe tenetur aperiam ea nesciunt qui et ab quas iste eaque nulla quo molestias soluta earum repellat eos dignissimos sunt molestiae eius.', '1978-08-25 21:14:05', '2020-12-24 11:55:25'),
(95, 'Et voluptatem.', 'et-voluptatem.', 'Enim perferendis sint et natus aut voluptas quia quam aspernatur id autem maxime voluptates qui voluptatem accusantium voluptas nostrum voluptates aut veritatis non dolorem consectetur aliquam nostrum reiciendis sit iure aliquid praesentium et non repellendus sed cumque unde corrupti occaecati numquam vel pariatur minima voluptatum.', '1977-02-23 14:44:27', '2020-12-24 11:55:25'),
(96, 'Eius non.', 'eius-non.', 'Ut nisi et blanditiis ab molestias recusandae labore doloremque sunt est iusto vel distinctio fugiat iusto id amet cum labore molestiae tempora iure hic qui provident voluptas fugiat architecto omnis aut.', '1997-12-17 09:50:48', '2020-12-24 11:55:26'),
(97, 'Corporis rerum sint.', 'corporis-rerum-sint.', 'Iusto ipsa odio autem dolorem nihil qui iure quaerat quod molestiae quia aut omnis quasi blanditiis quas quia porro excepturi iure fuga atque laborum qui necessitatibus laudantium soluta recusandae officiis ut ratione soluta ipsa aspernatur amet maxime dolor dolor molestiae numquam sint at ut nobis amet sit aut perspiciatis.', '1971-01-27 05:30:17', '2020-12-24 11:55:26'),
(98, 'Quas sed.', 'quas-sed.', 'Nemo eum vel aperiam ex ut aliquid ipsa quibusdam ex in illum odit velit totam quidem sed nihil labore et excepturi et facere dicta repudiandae aut libero eos praesentium non et assumenda est dicta et quia porro vel laborum quasi asperiores totam harum quo quae accusamus at aut eos ad dolorem qui necessitatibus esse qui atque dolorem et autem in exercitationem necessitatibus cum.', '1983-03-31 20:54:47', '2020-12-24 11:55:26'),
(99, 'Quia accusantium culpa.', 'quia-accusantium-culpa.', 'Hic vero quia velit dolores expedita id eos modi laboriosam ut ut amet saepe neque perspiciatis quia incidunt omnis inventore accusantium et distinctio occaecati sed molestias praesentium omnis voluptate illo saepe minima qui et molestiae quaerat quasi rerum dolorum.', '1973-11-05 16:28:43', '2020-12-24 11:55:26'),
(100, 'Tempora nesciunt voluptatem.', 'tempora-nesciunt-voluptatem.', 'Architecto illum doloremque consequatur repellendus sapiente tempora impedit maxime sed nam aut perferendis doloribus necessitatibus cupiditate vero quia consectetur qui consequatur blanditiis est sed necessitatibus delectus rerum qui perspiciatis ut quidem culpa illum dolores adipisci ratione ullam quia quidem omnis dolorem quaerat et quibusdam voluptatem vero libero delectus laborum at omnis molestiae voluptas.', '1992-03-10 02:08:07', '2020-12-24 11:55:26'),
(101, 'Nihil velit.', 'nihil-velit.', 'Aut est et magni molestias nihil corporis voluptas fugiat voluptatum sint dignissimos est aut sunt sint est veniam quidem velit suscipit quis impedit occaecati sunt id cumque iste est aut exercitationem laudantium libero molestias occaecati eaque molestiae.', '1986-08-18 22:53:51', '2020-12-24 11:55:26'),
(102, 'Rerum reprehenderit.', 'rerum-reprehenderit.', 'Laudantium sequi fugit exercitationem in adipisci rerum sequi voluptate id vero optio placeat cum est vel neque hic fugiat dicta saepe officiis sunt rem excepturi velit et dolores sed harum deserunt error ea ut ipsa iste autem sint cum cum et corporis esse et qui perferendis itaque quia temporibus et enim praesentium sequi ut eos et qui sint nemo esse porro libero.', '2008-12-15 10:03:21', '2020-12-24 11:55:26'),
(103, 'Laborum nostrum recusandae.', 'laborum-nostrum-recusandae.', 'Voluptate sed tenetur sequi tenetur magnam assumenda consequatur iusto nihil laboriosam voluptas harum ut ex voluptatem quis voluptatibus natus sunt velit ut aut enim consequatur et debitis non veniam sit voluptatibus sit reprehenderit nulla sint quia quos atque ab dolor molestiae doloribus ut dolore non ad aperiam in eos tempora pariatur temporibus sed quia aperiam soluta sapiente et quia aspernatur quo reiciendis.', '1986-06-27 19:00:49', '2020-12-24 11:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Robin', 'abc@gmail.com', NULL, '$2y$10$GQRkSwGv2XZuKA.YMdWmOOnxZBTkjddKJFQFVgOphAkif6XGD09Rq', 'Oqeg7c6Hu8hgdG8NVzRc16ViStXXCSZhGE6ESY9XlseFEnuiCuVukYVJysn4', NULL, NULL),
(2, 'Kunal', 'abc1@gmail.com', NULL, '$2y$10$GQRkSwGv2XZuKA.YMdWmOOnxZBTkjddKJFQFVgOphAkif6XGD09Rq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_information`
--
ALTER TABLE `company_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
