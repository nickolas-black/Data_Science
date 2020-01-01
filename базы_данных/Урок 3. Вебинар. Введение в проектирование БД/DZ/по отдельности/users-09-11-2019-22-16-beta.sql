-- Generation time: Sat, 09 Nov 2019 22:16:31 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` VALUES ('1','Cassandra','McCullough','michel53@example.org','03081466390','1970-03-26 17:52:12','1972-09-28 08:13:51'),
('2','Virginie','Fadel','qhayes@example.net','994-078-3326','1992-06-09 20:02:54','2014-11-17 20:12:58'),
('3','Gay','Lowe','mcorwin@example.net','(255)758-6576','2007-02-10 15:02:58','1999-06-02 18:41:32'),
('4','Brandon','Rau','chanelle73@example.net','1-773-548-1106','2000-08-03 02:29:39','1982-09-18 23:22:42'),
('5','Skyla','Marks','bonnie.christiansen@example.org','01323830841','2013-05-22 07:13:49','2005-09-25 19:04:16'),
('6','Adell','Corwin','vonrueden.betsy@example.com','(939)437-2504','1996-12-07 10:20:10','1993-01-06 03:52:31'),
('7','Ubaldo','Marquardt','wehner.leonard@example.net','03358984919','1977-01-08 07:19:16','2016-05-10 12:31:17'),
('8','Kevin','Davis','leopold.welch@example.com','+71(5)19928408','1987-01-09 08:41:41','1972-05-09 20:02:06'),
('9','Juana','Jacobs','aubree.ward@example.com','006-202-7491','1999-11-27 18:43:17','2005-02-03 22:13:03'),
('10','Alejandra','Funk','hellen64@example.com','1-187-892-0123','2004-03-09 09:53:49','1987-08-25 12:53:55'),
('11','Elsa','Schuster','akautzer@example.net','020.183.6873x6','1985-12-17 04:55:19','1986-12-31 16:44:27'),
('12','Hershel','Daugherty','marlee.nicolas@example.org','189-373-5049','2010-11-27 21:35:21','1976-10-30 18:13:09'),
('13','Janiya','Ledner','barton.sanford@example.net','364-395-7597','1971-01-01 21:08:10','2014-04-03 11:55:05'),
('14','Mireille','Collins','skyla.gislason@example.com','1-875-239-2231','1974-01-17 12:06:47','2005-10-02 23:06:37'),
('15','Kayleigh','Homenick','rolando.mohr@example.com','03122037300','1992-09-18 20:01:01','1976-03-20 06:52:01'),
('16','Paige','Reinger','iward@example.org','1-531-083-5621','1990-05-08 22:04:45','1980-06-11 07:18:05'),
('17','Roderick','Roob','aroberts@example.com','388-232-1048','1980-10-29 19:11:37','2007-03-14 22:49:59'),
('18','Hildegard','Weber','thiel.carolyn@example.net','043.973.3907','2009-04-26 01:08:55','2015-04-26 01:48:27'),
('19','Madelyn','Lindgren','istrosin@example.com','(923)052-3067x','1996-12-15 05:13:35','1982-05-08 04:31:00'),
('20','Janet','Prohaska','rau.lora@example.org','(759)550-6294','1972-08-10 22:50:44','1973-10-28 17:23:59'),
('21','Reginald','Rohan','chase.franecki@example.org','816.294.7645x2','1977-11-15 06:29:35','1976-07-20 15:16:02'),
('22','Lowell','Weimann','pfannerstill.linnea@example.org','+03(1)96490686','1972-07-25 20:04:03','1974-05-19 04:02:34'),
('23','Quinton','Rice','emmerich.agustin@example.org','(059)308-3277x','1996-03-01 04:56:24','1981-03-31 21:18:33'),
('24','Adrienne','Rowe','dakota91@example.net','03356189772','2007-09-14 06:15:22','1975-04-13 01:16:52'),
('25','Hollie','Cruickshank','veum.belle@example.com','649.414.8769x0','1996-07-27 22:14:26','1981-11-27 08:37:49'),
('26','Nadia','Roberts','laurie.bosco@example.com','1-011-055-8853','1999-09-25 02:48:49','1991-08-20 01:53:37'),
('27','Robert','Bailey','montana.konopelski@example.org','(188)532-1270x','2004-07-23 09:05:50','2016-05-24 16:26:50'),
('28','Eino','Durgan','cristopher98@example.org','663-688-0253x3','1979-10-23 17:08:06','1998-12-03 12:07:44'),
('29','Joseph','Brown','nkrajcik@example.net','1-399-250-6711','2007-09-11 20:51:26','1974-03-28 01:14:42'),
('30','Leland','Rohan','dickens.lucius@example.net','1-132-279-9864','1973-09-02 05:50:50','1998-10-10 11:04:56'),
('31','Grady','Zulauf','schoen.delia@example.net','398.155.2955','1973-03-13 17:58:48','1975-01-01 15:42:31'),
('32','Eleanora','Veum','woodrow.rice@example.com','(719)351-5034','1978-07-12 04:09:51','1976-09-27 01:07:47'),
('33','Katherine','Jaskolski','eudora.yost@example.org','353-489-0472x2','2007-08-31 12:48:39','1975-05-06 21:14:17'),
('34','Kaelyn','Hilpert','lula84@example.net','969-005-4908','1995-09-11 16:46:32','2014-10-05 14:33:51'),
('35','Maxwell','Skiles','dannie78@example.org','(643)800-8675','1989-12-18 03:38:37','1991-03-04 05:52:23'),
('36','Nico','Bergstrom','heber73@example.com','(714)536-2800','1995-12-06 13:46:53','1972-05-22 06:54:56'),
('37','Camilla','Eichmann','gusikowski.drake@example.com','470.900.1540x6','1974-02-10 23:30:19','1982-07-10 12:55:13'),
('38','Rosario','Mann','katlynn85@example.net','(726)804-5378x','1989-06-07 01:33:44','1978-01-21 06:00:59'),
('39','Ulices','Lynch','dorothy.haley@example.net','(143)142-7556x','1984-11-08 05:56:47','1985-08-01 17:30:25'),
('40','Mireya','Hodkiewicz','ustoltenberg@example.org','155.802.9679x8','1972-07-11 06:26:30','1971-04-28 09:21:46'),
('41','Carmen','Erdman','hintz.alice@example.com','(426)776-6667x','1988-02-18 03:15:48','2017-08-19 05:38:00'),
('42','Anabel','Jast','alisa69@example.net','1-911-025-2545','1973-11-15 22:35:43','1974-11-20 06:34:23'),
('43','Brennan','Roberts','wromaguera@example.net','054.926.4324x1','1977-03-03 22:49:33','1993-09-29 02:28:53'),
('44','Frederique','Dach','thalia.nicolas@example.org','136.828.8633x9','1982-10-13 17:45:20','1997-07-31 02:22:12'),
('45','Laurie','Walker','steuber.kyle@example.net','08968234906','1970-03-03 04:54:06','2003-10-25 00:59:44'),
('46','Dawn','Rau','hellen78@example.net','(410)791-1055x','2018-02-18 02:41:17','1997-07-28 00:05:49'),
('47','Nakia','Schuppe','ryan.name@example.net','(531)040-0783x','1997-11-15 09:37:22','1990-07-15 09:29:24'),
('48','Murray','Hauck','ronaldo65@example.net','1-416-731-9988','2015-01-12 03:24:20','2005-10-25 07:51:07'),
('49','Guiseppe','Bergnaum','virgil45@example.org','581-291-4632x8','1981-08-11 20:45:40','2019-03-17 16:23:45'),
('50','Devante','Pfannerstill','deckow.armando@example.net','(190)444-2740','1992-11-10 07:13:55','2005-01-29 08:35:04'),
('51','Yolanda','Sporer','jacinthe.koch@example.net','772.534.6237x9','1988-08-11 14:09:13','1977-12-16 16:45:19'),
('52','Zelda','King','mariam.fisher@example.com','07363391730','2015-04-21 08:42:52','1975-03-01 19:04:03'),
('53','Lucious','Weissnat','lon77@example.net','+04(1)49567861','2019-03-04 10:38:45','1972-09-27 16:19:39'),
('54','Dorian','Windler','fwisoky@example.org','412.860.8705x1','2016-01-01 18:51:17','1974-06-29 10:06:50'),
('55','Emmy','Nienow','dicki.citlalli@example.net','1-316-295-9448','2011-02-28 09:21:54','2018-02-22 08:58:31'),
('56','Jacklyn','Renner','corwin.bartholome@example.org','+12(3)11860065','2007-02-25 17:40:00','2006-11-15 07:59:45'),
('57','Darrell','Boehm','eleanore.mitchell@example.org','+03(7)70838395','1992-07-12 07:24:18','1991-02-09 12:04:21'),
('58','Uriel','Ryan','swift.zackery@example.org','1-233-546-4315','1988-02-24 05:09:01','1996-07-15 22:26:21'),
('59','Coby','Langosh','tevin85@example.net','828.743.7730','1983-04-17 00:43:16','2001-04-03 13:20:56'),
('60','Karen','Schulist','jody37@example.com','1-231-472-0924','1988-05-11 12:58:02','1992-11-25 16:05:24'),
('61','Anissa','Russel','twalsh@example.com','00865421285','2003-07-10 19:24:30','1988-06-23 02:14:48'),
('62','Ramiro','Nitzsche','gay63@example.org','1-680-878-9905','1989-11-23 12:17:00','1990-02-02 23:02:38'),
('63','Brendan','Donnelly','yhansen@example.org','118.267.7946x9','2009-12-13 20:03:49','1990-07-12 17:06:17'),
('64','Brendan','Hodkiewicz','casper.lucy@example.org','221-936-4924x7','1997-10-15 00:37:07','1984-12-22 16:42:57'),
('65','Dino','Brekke','heloise.raynor@example.com','00640244499','2002-10-03 17:28:38','1979-08-27 05:24:47'),
('66','Cole','Walsh','jaquelin.roob@example.net','456.085.3112x2','1992-03-27 16:53:34','2000-12-11 11:16:54'),
('67','Lavinia','Gutkowski','akuhn@example.org','07979749848','1983-09-09 08:46:21','1985-06-23 18:16:02'),
('68','Scarlett','Block','kreiger.aliya@example.org','948.512.0549x2','1982-02-05 19:09:16','1973-12-19 12:42:44'),
('69','Mose','Batz','dtremblay@example.net','08697916817','1990-12-09 13:39:15','1973-03-20 09:20:18'),
('70','Wayne','Murphy','maximillia.wolf@example.net','148-148-2095','2005-03-18 05:51:24','1980-04-19 03:45:46'),
('71','Julia','Rice','lwalker@example.com','424-891-0497','1992-03-09 04:17:01','2013-04-29 02:43:10'),
('72','Bette','Schaefer','konopelski.isabel@example.org','04108779396','1988-06-19 07:03:52','1972-09-13 08:40:41'),
('73','Cassidy','Price','jakob92@example.com','142-345-6156','1970-06-24 12:18:04','1982-04-18 15:19:21'),
('74','Geovanni','Reynolds','obins@example.net','323.131.9818','1972-07-12 23:10:04','2003-10-25 00:29:15'),
('75','Amalia','Collins','antonina06@example.net','(258)056-9399x','2012-04-08 18:15:29','2015-12-28 06:34:57'),
('76','Ladarius','Ritchie','amari.kohler@example.net','(572)086-2592','1975-06-24 21:30:08','1988-10-16 02:11:28'),
('77','Madyson','Abbott','hoppe.marina@example.com','162.226.6915','2013-11-21 06:28:23','1994-04-11 14:39:11'),
('78','Georgiana','Auer','cole17@example.com','650.319.1203x5','1994-03-26 09:12:45','1982-11-30 23:39:24'),
('79','Myrtice','Luettgen','tristian12@example.org','01260903577','2012-07-06 11:46:10','1975-12-22 04:45:17'),
('80','Rachelle','Beer','jerry.marks@example.net','190-806-0395x1','1975-01-18 22:51:31','2003-02-06 05:51:52'),
('81','Creola','Hilpert','raynor.webster@example.com','1-906-870-8355','1996-11-27 00:56:43','1980-06-01 22:52:37'),
('82','Orland','Lebsack','vkoelpin@example.net','1-964-727-4063','2015-09-18 13:09:52','1970-03-05 11:33:42'),
('83','Casey','Prosacco','brett96@example.net','(831)766-6674x','2018-03-31 14:54:01','2011-02-18 12:55:57'),
('84','Antwon','Yundt','odare@example.net','603-894-2383x6','1997-09-06 17:44:52','2005-03-10 04:45:37'),
('85','Janelle','Streich','xwalter@example.net','+01(3)26810488','2008-07-03 22:24:56','2008-06-04 04:50:39'),
('86','Louie','Mills','iabshire@example.org','611.897.8810x2','2007-05-04 09:55:36','2008-10-26 06:22:27'),
('87','Ashlee','Anderson','kovacek.owen@example.net','01643164912','2013-06-25 22:05:47','1970-12-04 02:50:28'),
('88','Francesca','Ankunding','haag.deven@example.net','299.638.1345x2','1971-04-02 07:16:53','1997-07-19 15:08:50'),
('89','Gilbert','Gusikowski','dbalistreri@example.net','00974205645','1989-05-16 01:20:48','2017-02-13 21:19:07'),
('90','Prince','Hayes','homenick.lauryn@example.net','090-690-2082x0','1987-05-18 04:23:24','1970-03-28 11:41:41'),
('91','Winston','Skiles','ebert.harmony@example.com','03450488116','1970-10-23 23:50:12','2004-01-10 11:27:38'),
('92','Lynn','Denesik','viviane36@example.net','+63(3)03013082','1987-04-14 17:16:44','2006-06-27 05:43:36'),
('93','Janie','Veum','dominic95@example.net','(832)497-1168x','1993-09-14 19:09:58','1998-11-25 19:07:11'),
('94','Nayeli','Prosacco','taylor.orn@example.com','1-630-783-3965','1996-03-10 12:39:46','2009-07-08 03:18:04'),
('95','Jaylan','Monahan','stroman.vance@example.com','630.964.1154','1984-10-17 23:32:49','2000-08-05 19:48:09'),
('96','Adriana','Keebler','stiedemann.joanny@example.org','828-269-1935','1995-08-11 17:37:53','2005-05-29 12:10:32'),
('97','Jules','Monahan','reynolds.janessa@example.com','634-093-5784x6','1992-07-06 13:58:01','1970-03-22 13:57:44'),
('98','Zita','Mraz','nina31@example.org','1-191-589-5402','2017-08-09 17:39:30','1970-01-25 01:19:04'),
('99','German','Hettinger','heidi.simonis@example.com','(736)234-7387','1986-12-16 07:34:27','2000-09-12 21:48:12'),
('100','Cathrine','Ernser','jjohns@example.com','1-190-164-1544','1988-11-30 10:07:58','1981-12-27 02:49:48'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

