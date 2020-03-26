-- -------------------------------------------------------------
-- TablePlus 3.1.2(296)
--
-- https://tableplus.com/
--
-- Database: vueexpress
-- Generation Time: 2020-03-26 01:48:10.8870
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `post` text,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_admin` int(11) DEFAULT '2',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `name`, `slug`, `createdAt`, `updatedAt`) VALUES
('1', 'Teste', 'teste', '2020-03-24 14:59:06', '2020-03-24 14:59:06'),
('2', 'Sports', 'sports', '2020-03-24 16:05:18', '2020-03-24 16:05:18'),
('3', 'Home', 'home', '2020-03-24 16:05:21', '2020-03-24 16:05:21'),
('4', 'Beauty', 'beauty', '2020-03-24 16:05:23', '2020-03-24 16:05:23'),
('5', 'Books', 'books', '2020-03-24 16:05:26', '2020-03-24 16:05:26'),
('6', 'Computers', 'computers', '2020-03-24 16:05:28', '2020-03-24 16:05:28'),
('7', 'Games', 'games', '2020-03-24 16:05:37', '2020-03-24 16:05:37'),
('8', 'Sports', 'sports', '2020-03-24 16:05:39', '2020-03-24 16:05:39'),
('9', 'Baby', 'baby', '2020-03-24 16:05:42', '2020-03-24 16:05:42');

INSERT INTO `posts` (`id`, `title`, `slug`, `userId`, `categoryId`, `post`, `image`, `createdAt`, `updatedAt`) VALUES
('1', 'Dynamic Infrastructure Engineer', 'dynamic-infrastructure-engineer-updated', '1', '1', 'Rerum at non omnis. Totam adipisci quod qui animi sed mollitia ut vitae. Suscipit in quo. Dolore laboriosam officia quod amet ut. Est nesciunt ut. Error fugit eaque architecto illum unde et.', NULL, '2020-03-24 16:05:51', '2020-03-25 13:52:29'),
('2', 'Direct Web Facilitator', 'direct-web-facilitator', '5', '3', 'Dolorem iste totam similique error sit adipisci veniam aut corporis. Suscipit sint sint. Voluptate quis quasi aut excepturi voluptatem. Ducimus ut et nostrum ea omnis ea. Aut nulla aut iusto ut occaecati qui veritatis assumenda earum. Et at tempore est delectus illum.', NULL, '2020-03-24 16:06:49', '2020-03-24 16:06:49'),
('3', 'Customer Integration Executive', 'customer-integration-executive', '5', '2', 'In ea blanditiis necessitatibus non aliquam at. Vitae recusandae similique saepe nostrum facere dolor alias sit soluta. Sed illum voluptatem.', NULL, '2020-03-24 16:07:01', '2020-03-24 16:07:01'),
('4', 'Forward Research Specialist', 'forward-research-specialist', '3', '4', 'Placeat omnis quis quisquam rerum quaerat quisquam iusto. Rerum molestiae distinctio deserunt. Iste quis sint non exercitationem laboriosam labore neque quam qui. Dolores quam et rem.', NULL, '2020-03-24 16:07:03', '2020-03-24 16:07:03'),
('5', 'Chief Response Producer', 'chief-response-producer', '1', '2', 'Sed at esse et praesentium qui dicta ab dolor voluptas. Laboriosam alias dignissimos est cum unde consequuntur incidunt enim. Fugit aut impedit id illum.', NULL, '2020-03-24 16:07:05', '2020-03-24 16:07:05'),
('6', 'Regional Division Designer', 'regional-division-designer', '4', '1', 'Natus voluptas occaecati quisquam nihil dicta ut. Quia quia quibusdam et tempore excepturi id ducimus.', NULL, '2020-03-24 16:07:08', '2020-03-24 16:07:08'),
('7', 'Global Metrics Associate', 'global-metrics-associate', '1', '2', 'Magnam est praesentium ab ratione eaque harum. Minus odit aut. Debitis corrupti cumque. Assumenda fugiat consequuntur nesciunt quis ipsa. Iure praesentium soluta et nam non similique impedit quisquam. Accusantium quia consequatur fuga pariatur autem aspernatur nulla aut molestiae.', NULL, '2020-03-24 16:07:10', '2020-03-24 16:09:59'),
('8', 'Senior Interactions Consultant', 'senior-interactions-consultant', '2', '3', 'Accusamus saepe minima id iusto voluptatem officia. Sint est deserunt voluptate quae molestiae repellendus libero.', NULL, '2020-03-24 16:07:12', '2020-03-24 16:07:12'),
('9', 'Global Identity Administrator', 'global-identity-administrator', '3', '1', 'Et in blanditiis dolor quam magni dolores expedita. Assumenda nemo et facere tempora eveniet minima numquam earum. Perferendis dolor nulla et illum tempora molestias perferendis. Harum aliquam qui et. Inventore facere natus ut quam accusantium delectus voluptatum eveniet.', NULL, '2020-03-24 16:07:15', '2020-03-24 16:07:15'),
('10', 'International Identity Executive', 'international-identity-executive', '5', '5', 'Pariatur asperiores fugit. Similique possimus nemo sit. A praesentium quo nulla consequatur et omnis ipsum dolor.', NULL, '2020-03-25 17:36:14', '2020-03-25 17:36:14'),
('40', 'Investor Solutions Coordinator', 'investor-solutions-coordinator', '4', '4', 'Assumenda autem aperiam. Ut nihil modi nihil. Corrupti provident velit optio omnis sint doloremque dolor labore delectus. Accusantium enim eum. Dolorum est eum quis neque cumque voluptas aut optio.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('41', 'Global Group Liaison', 'global-group-liaison', '3', '3', 'Voluptas necessitatibus natus. Id quia inventore dolorem in.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:42:00'),
('42', 'Direct Security Officer', 'direct-security-officer', '4', '5', 'Asperiores sit modi animi ut rem voluptatem saepe amet. Voluptatem placeat sint numquam vel quia a nobis. Inventore ea eius nemo aut labore. Vero quam eveniet ut.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('43', 'Global Functionality Facilitator', 'global-functionality-facilitator', '3', '3', 'Quae delectus ea. Ut beatae voluptatibus sed reiciendis. Vel facere officiis aut. Provident sed rerum consequuntur qui pariatur est a.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('44', 'Dynamic Applications Facilitator', 'dynamic-applications-facilitator', '1', '5', 'Maiores consequatur eos sunt dolore aut eius ea. Dolores architecto quod sit nesciunt. Dicta sit quos sit deleniti.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('45', 'Global Quality Analyst', 'global-quality-analyst', '4', '5', 'Ad rem ipsa dolor velit hic non architecto. Iusto excepturi repudiandae ex dolores. Sit deserunt consectetur beatae veniam quos. Expedita id dolorum qui sunt.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:42:10'),
('46', 'Direct Interactions Assistant', 'direct-interactions-assistant', '4', '2', 'Non consequatur quod est optio unde pariatur quae eaque reiciendis. Enim a veritatis laborum eaque. Quasi soluta molestiae accusantium vitae et voluptatum optio odit. Rem repellendus repellendus omnis quam praesentium magnam tempore animi.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('47', 'District Response Representative', 'district-response-representative', '1', '4', 'Non in iusto sunt esse optio. Vitae qui voluptate ipsum dolor qui itaque qui aliquam dolorem. Voluptates ullam tempora totam distinctio velit omnis rerum nulla eligendi. Sed velit ut perferendis in.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('48', 'Internal Group Officer', 'internal-group-officer', '5', '2', 'Fugit eaque error. Eos reiciendis modi sint qui odit vel dicta adipisci. Sequi libero suscipit tempore illum rerum in. Alias rerum error modi blanditiis consectetur ipsa impedit dolorem error. Temporibus sit saepe eum reprehenderit atque.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('49', 'Lead Creative Technician', 'lead-creative-technician', '2', '2', 'Laudantium numquam dignissimos fuga illum rerum consequatur explicabo voluptatum mollitia. Omnis blanditiis odio voluptates minus aut sed sit consequuntur.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('50', 'Dynamic Brand Facilitator', 'dynamic-brand-facilitator', '2', '4', 'Ut quos eos cupiditate quod ratione consequatur voluptatibus reiciendis laborum. Beatae omnis quidem. Consequatur est qui illum blanditiis dolorem laboriosam culpa adipisci nostrum.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('51', 'Future Paradigm Manager', 'future-paradigm-manager', '2', '5', 'Animi nisi qui. Minima aperiam officiis est a numquam sed.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:43:09'),
('52', 'Internal Division Designer', 'internal-division-designer', '2', '1', 'Vel ut nisi quaerat quia. Aut in ut laborum ipsa aut.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('53', 'National Solutions Executive', 'national-solutions-executive', '2', '3', 'Et porro maiores quos sapiente velit aut minima. At esse voluptatibus dicta sit.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('54', 'Senior Tactics Assistant', 'senior-tactics-assistant', '1', '3', 'Aut error sunt. Sit ut vitae eius nihil a quia officiis.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:39:31'),
('55', 'Senior Program Associate', 'senior-program-associate', '2', '2', 'Possimus ratione incidunt perspiciatis. Et magni consequatur. Quos corporis voluptatem maxime laboriosam ipsam error officiis nihil.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('56', 'Customer Creative Facilitator', 'customer-creative-facilitator', '1', '2', 'Eius provident aspernatur. Quia cumque odio quasi recusandae voluptas reprehenderit sunt. Non est commodi maiores harum qui voluptatem eum vero accusamus. Voluptate ut quaerat iure beatae voluptas minus et fuga mollitia. Nesciunt deleniti repellat voluptas excepturi ut tenetur occaecati aperiam.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('57', 'Forward Security Associate', 'forward-security-associate', '3', '5', 'Architecto et nihil quis et dolorem dolorem. Eum minima sint voluptas architecto qui. Aspernatur mollitia provident nisi quis et impedit vel.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('58', 'Future Division Orchestrator', 'future-division-orchestrator', '2', '1', 'Sit laborum iste temporibus optio accusamus consequuntur. Voluptatum autem reiciendis cumque sed. Fuga est sed quidem molestiae ullam velit dolores.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:41:35'),
('59', 'Lead Optimization Associate', 'lead-optimization-associate', '5', '3', 'Consectetur qui autem a earum possimus nisi veniam. Provident adipisci quasi reiciendis et atque quo.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('60', 'Investor Implementation Designer', 'investor-implementation-designer', '1', '5', 'Distinctio necessitatibus et non. Sed qui alias velit porro. Minima quod iste molestias earum veritatis aut fugiat beatae deserunt. Distinctio quidem quia. Omnis tempora excepturi suscipit atque iusto est asperiores. Qui labore accusamus sunt.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('61', 'Product Functionality Associate', 'product-functionality-associate', '2', '4', 'Velit nostrum cupiditate necessitatibus delectus ut rerum velit reprehenderit. Tenetur deleniti eveniet enim similique sunt repellat. Impedit et quidem non impedit quia voluptatibus molestiae dolores.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('62', 'Investor Accounts Associate', 'investor-accounts-associate', '3', '1', 'Rerum laborum et incidunt aliquam labore qui sit quidem non. Et est ipsam quis nobis aspernatur occaecati quo molestiae. Et non rerum et non dolorem numquam. Omnis consequuntur sunt consequatur doloremque quia.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('63', 'Legacy Paradigm Strategist', 'legacy-paradigm-strategist', '2', '1', 'Fugiat incidunt non. Quia quod eaque occaecati at quia et esse sunt. Nobis sunt id magni repudiandae qui iste excepturi ut rerum. Quo incidunt aperiam accusamus. Voluptates veritatis optio. A exercitationem sit.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('64', 'Principal Interactions Supervisor', 'principal-interactions-supervisor', '3', '4', 'Atque ipsam repellat impedit eos blanditiis et reprehenderit accusantium. Iste consequatur maiores et sed dolores ut nisi est pariatur. Non perferendis facere.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('65', 'Human Solutions Executive', 'human-solutions-executive', '3', '1', 'Animi voluptatem eligendi consequatur ipsa sapiente optio ratione quo. Ipsum quibusdam reiciendis omnis. Consequuntur voluptas qui perspiciatis qui maiores.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('66', 'Legacy Implementation Designer', 'legacy-implementation-designer', '3', '3', 'Explicabo deserunt aut voluptatum quae sunt. Dolor voluptatibus facilis. Ut libero sunt explicabo aut non non consectetur omnis a. Voluptates non quae rerum natus libero aspernatur molestias consequuntur. Aut sed non sit qui non. Quis natus eligendi nisi.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('67', 'Dynamic Data Executive', 'dynamic-data-executive', '1', '3', 'Magni nisi dolores est. Ut voluptatem unde culpa culpa at sit veniam dignissimos. Voluptate eligendi et.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('68', 'Future Program Designer', 'future-program-designer', '1', '4', 'Reiciendis sit autem eveniet accusantium itaque culpa. Repellat aut in officiis voluptatum a enim labore consequatur quo.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46'),
('69', 'Global Quality Developer', 'global-quality-developer', '1', '3', 'Quae dolorum eligendi veniam veritatis dolor corporis. Error qui deserunt nisi aut commodi. Et ex qui qui consequatur. Vel dignissimos neque.', NULL, '2020-03-25 17:36:46', '2020-03-25 17:36:46');

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20200301234719-create-user.js'),
('20200324174456-create-category.js'),
('20200324174500-create-post.js');

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `is_admin`, `createdAt`, `updatedAt`) VALUES
('1', 'Cornell', 'Mohr', 'Dora77@hotmail.com', '$2b$10$/9N/xeqh0bdhy4n35/cN8uWk6EJIL43GFpqeRjkBVjk.Ein2pIskm', '1', '2020-03-01 21:02:08', '2020-03-21 14:06:02'),
('2', 'Lizzie', 'Crona', 'Gregorio42@hotmail.com', '$2b$10$2P6pputnS5/C3vRuAcfyO.9GRvJ/AZ/yh6mqFpfCZ/r86MP667lFq', '2', '2020-03-01 21:02:11', '2020-03-20 01:12:03'),
('3', 'Tania', 'Doyle', 'Alexandra43@gmail.com', '$2b$10$7/PbHAa516lfDjHIIxxW8.sMjIclofOWHKyPm.j7.2uLbZT77y8li', '2', '2020-03-24 16:06:21', '2020-03-24 16:06:21'),
('4', 'Gerson', 'Kuhn', 'Tobin62@yahoo.com', '$2b$10$UAha1GJFCKXURAFeEQJalOrsxopHOC876FfHs7lT98HStPXX4GzBK', '2', '2020-03-24 16:06:24', '2020-03-24 16:06:24'),
('5', 'Imogene', 'O\'Connell', 'Gavin.Champlin18@gmail.com', '$2b$10$mh/3wo70k0vYyDVIjtvYVOZfkp1Um2N1nByZgP3xNLX/Y0sQIH9ri', '2', '2020-03-24 16:06:26', '2020-03-24 16:06:26'),
('6', 'Dane', 'Welch', 'Isabella_Jaskolski48@hotmail.com', '$2b$10$dooWjkMrTJkfk4vBG.J/X.ypL52cGzom1fuQighjIn1KXKSXtoTu.', '2', '2020-03-24 16:06:28', '2020-03-24 16:06:28'),
('7', 'Jermain', 'Satterfield', 'Bessie.Smith63@hotmail.com', '$2b$10$.ZpjY5Wdeqqu3rMpvAGxiesW/CUULYfwl41cNwOqnSuFm7aYT5u4q', '2', '2020-03-24 16:06:31', '2020-03-24 16:06:31'),
('8', 'Sidney', 'Rolfson', 'Susan.Hane@yahoo.com', '$2b$10$cOPsl/xTVdUeIbhKW0NwIe2UmNeSbUI5DqVg6tVUMG6WvUJ1GlQf6', '2', '2020-03-25 17:25:06', '2020-03-25 17:25:06'),
('9', 'Mose', 'Gutmann', 'Jermain49@gmail.com', '$2b$10$0ltLct6WueGzPO6YtDfXXuj9XMuhq69H/yuDhxiVV/.EsSBhhUvmi', '2', '2020-03-25 17:25:09', '2020-03-25 17:25:09'),
('10', 'Audie', 'Spinka', 'Addison65@gmail.com', '$2b$10$1H4R5FTsPWoeIKDb.uG3fuU8lP.FwEBtajDOuyWtsvpXHNoW1OoEu', '2', '2020-03-25 17:25:12', '2020-03-25 17:25:12'),
('11', 'Baby', 'Jacobi', 'Maxine33@hotmail.com', '$2b$10$v3yonuJEcyZZl21FMFuVxeXRQDCZ/cpcvQNY.q21UX7/VfHopEcd6', '2', '2020-03-25 17:25:15', '2020-03-25 17:25:15'),
('12', 'Jackeline', 'Bednar', 'Tyrel.Erdman61@gmail.com', '$2b$10$rowX4Rxav/4VyBxgncHtuO3iUMsrLkp.JChKpLMOfCY6yLGqEx.LC', '2', '2020-03-25 17:25:18', '2020-03-25 17:25:18'),
('13', 'Ardith', 'Zieme', 'Cornell.Wisozk0@hotmail.com', '$2b$10$3Fjn.CtELufRvNh43nn6mOsXCVrokOT74beE9sP/JFvwSNAUrCEUK', '2', '2020-03-25 17:25:47', '2020-03-25 17:25:47'),
('14', 'Leda', 'Jaskolski', 'Julie.Graham@yahoo.com', '$2b$10$BH/YPJfblg1LoT2.IxglWOFIZ4KJnijVCcUHkMY01GfR76bDXwReG', '2', '2020-03-25 17:25:50', '2020-03-25 17:25:50'),
('15', 'Demond', 'Romaguera', 'Concepcion27@gmail.com', '$2b$10$PprBQHduBalFvlgpiiyPnuiGAxGY7l0ZIZAF3gtWeSpYynKM5GXyS', '2', '2020-03-25 17:25:52', '2020-03-25 17:25:52'),
('16', 'Alisa', 'Lynch', 'Kobe74@hotmail.com', '$2b$10$VVkwu63UPFXAt2Q.nOLPveDgnuYqGqEbvbEf5Tn.8dicXIZ.gVfUW', '2', '2020-03-25 17:26:00', '2020-03-25 17:26:00'),
('17', 'Garnet', 'Senger', 'Lolita_VonRueden@hotmail.com', '$2b$10$qvUvAwwBgJIbcDc6bgshVukFWQ7qf8zPIpw9aBsiCjQD.hQ5jejL2', '2', '2020-03-25 17:26:02', '2020-03-25 17:26:02'),
('18', 'Sylvan', 'Mante', 'Christy_Powlowski@hotmail.com', '$2b$10$2xX2xkQGsekQidodabQrFe8IKY7CFf159kOSNFT6XQLaMhCYX4J1G', '2', '2020-03-25 17:26:04', '2020-03-25 17:26:04'),
('19', 'Lonzo', 'Lind', 'Susana_Gutmann@gmail.com', '$2b$10$Cn6679vaga.Zjse46yLgqeXF/uTTmv3LA6oj76owAjJAkd6xBDt5i', '2', '2020-03-25 17:26:10', '2020-03-25 17:26:10'),
('20', 'Lonny', 'Collins', 'Fern_White@yahoo.com', '$2b$10$aJVhy8gIz.fVcmcpLi0pQOXH1KCVU1mqTspHPRLVJ6DQMIX7XVKKu', '2', '2020-03-25 17:26:12', '2020-03-25 17:26:12'),
('21', 'Cynthia', 'Homenick', 'Shanna80@yahoo.com', '$2b$10$TzlUIRv/ya6SwF/fHfuw/euzXbYS9OzFHfSWHGyyEEmEILlGJrqKW', '2', '2020-03-25 17:26:15', '2020-03-25 17:26:15'),
('22', 'Bette', 'Lakin', 'Hunter.Greenfelder@hotmail.com', '$2b$10$iLlMVoykN7REkH/u9tjSx.SnggYdVpvQzFyhRehKXIOMx2DE3NG4a', '2', '2020-03-25 17:26:17', '2020-03-25 17:26:17');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;