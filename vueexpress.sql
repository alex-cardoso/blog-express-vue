-- -------------------------------------------------------------
-- TablePlus 3.1.2(296)
--
-- https://tableplus.com/
--
-- Database: vueexpress
-- Generation Time: 2020-03-24 22:33:55.1310
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
('1', 'Dynamic Infrastructure Engineer', 'dynamic-infrastructure-engineer', '1', '1', 'Rerum at non omnis. Totam adipisci quod qui animi sed mollitia ut vitae. Suscipit in quo. Dolore laboriosam officia quod amet ut. Est nesciunt ut. Error fugit eaque architecto illum unde et.', NULL, '2020-03-24 16:05:51', '2020-03-24 16:06:38'),
('2', 'Direct Web Facilitator', 'direct-web-facilitator', '5', '3', 'Dolorem iste totam similique error sit adipisci veniam aut corporis. Suscipit sint sint. Voluptate quis quasi aut excepturi voluptatem. Ducimus ut et nostrum ea omnis ea. Aut nulla aut iusto ut occaecati qui veritatis assumenda earum. Et at tempore est delectus illum.', NULL, '2020-03-24 16:06:49', '2020-03-24 16:06:49'),
('3', 'Customer Integration Executive', 'customer-integration-executive', '5', '2', 'In ea blanditiis necessitatibus non aliquam at. Vitae recusandae similique saepe nostrum facere dolor alias sit soluta. Sed illum voluptatem.', NULL, '2020-03-24 16:07:01', '2020-03-24 16:07:01'),
('4', 'Forward Research Specialist', 'forward-research-specialist', '3', '4', 'Placeat omnis quis quisquam rerum quaerat quisquam iusto. Rerum molestiae distinctio deserunt. Iste quis sint non exercitationem laboriosam labore neque quam qui. Dolores quam et rem.', NULL, '2020-03-24 16:07:03', '2020-03-24 16:07:03'),
('5', 'Chief Response Producer', 'chief-response-producer', '1', '2', 'Sed at esse et praesentium qui dicta ab dolor voluptas. Laboriosam alias dignissimos est cum unde consequuntur incidunt enim. Fugit aut impedit id illum.', NULL, '2020-03-24 16:07:05', '2020-03-24 16:07:05'),
('6', 'Regional Division Designer', 'regional-division-designer', '4', '1', 'Natus voluptas occaecati quisquam nihil dicta ut. Quia quia quibusdam et tempore excepturi id ducimus.', NULL, '2020-03-24 16:07:08', '2020-03-24 16:07:08'),
('7', 'Global Metrics Associate', 'global-metrics-associate', '1', '2', 'Magnam est praesentium ab ratione eaque harum. Minus odit aut. Debitis corrupti cumque. Assumenda fugiat consequuntur nesciunt quis ipsa. Iure praesentium soluta et nam non similique impedit quisquam. Accusantium quia consequatur fuga pariatur autem aspernatur nulla aut molestiae.', NULL, '2020-03-24 16:07:10', '2020-03-24 16:09:59'),
('8', 'Senior Interactions Consultant', 'senior-interactions-consultant', '2', '3', 'Accusamus saepe minima id iusto voluptatem officia. Sint est deserunt voluptate quae molestiae repellendus libero.', NULL, '2020-03-24 16:07:12', '2020-03-24 16:07:12'),
('9', 'Global Identity Administrator', 'global-identity-administrator', '3', '1', 'Et in blanditiis dolor quam magni dolores expedita. Assumenda nemo et facere tempora eveniet minima numquam earum. Perferendis dolor nulla et illum tempora molestias perferendis. Harum aliquam qui et. Inventore facere natus ut quam accusantium delectus voluptatum eveniet.', NULL, '2020-03-24 16:07:15', '2020-03-24 16:07:15');

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
('7', 'Jermain', 'Satterfield', 'Bessie.Smith63@hotmail.com', '$2b$10$.ZpjY5Wdeqqu3rMpvAGxiesW/CUULYfwl41cNwOqnSuFm7aYT5u4q', '2', '2020-03-24 16:06:31', '2020-03-24 16:06:31');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;