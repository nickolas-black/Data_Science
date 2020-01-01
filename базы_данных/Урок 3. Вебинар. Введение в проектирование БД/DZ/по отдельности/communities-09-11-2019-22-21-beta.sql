-- Generation time: Sat, 09 Nov 2019 22:21:06 +0000
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

DROP TABLE IF EXISTS `communities`;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` VALUES ('73','a'),
('84','accusamus'),
('81','ad'),
('7','adipisci'),
('5','aliquid'),
('19','animi'),
('26','aperiam'),
('43','architecto'),
('59','asperiores'),
('34','aspernatur'),
('90','atque'),
('54','aut'),
('40','blanditiis'),
('72','consequatur'),
('77','corrupti'),
('44','cum'),
('45','cumque'),
('2','cupiditate'),
('93','debitis'),
('61','delectus'),
('79','deleniti'),
('14','dignissimos'),
('92','distinctio'),
('22','dolor'),
('13','dolorem'),
('63','dolores'),
('55','doloribus'),
('47','ea'),
('67','eius'),
('17','enim'),
('15','est'),
('8','et'),
('30','eveniet'),
('57','excepturi'),
('37','explicabo'),
('89','facere'),
('28','hic'),
('6','id'),
('86','illo'),
('31','in'),
('27','incidunt'),
('94','ipsam'),
('39','ipsum'),
('46','iste'),
('78','itaque'),
('50','laboriosam'),
('36','laborum'),
('10','laudantium'),
('33','libero'),
('51','magni'),
('53','maiores'),
('85','maxime'),
('1','minima'),
('62','minus'),
('24','molestiae'),
('42','nam'),
('41','natus'),
('82','necessitatibus'),
('32','nihil'),
('23','non'),
('21','nulla'),
('11','numquam'),
('9','occaecati'),
('96','officia'),
('49','officiis'),
('4','omnis'),
('35','pariatur'),
('100','perferendis'),
('70','perspiciatis'),
('29','porro'),
('20','praesentium'),
('64','quaerat'),
('68','quam'),
('18','qui'),
('80','quia'),
('95','quibusdam'),
('48','quidem'),
('98','quis'),
('75','recusandae'),
('74','repellat'),
('91','repellendus'),
('65','reprehenderit'),
('58','repudiandae'),
('99','rerum'),
('87','saepe'),
('3','sed'),
('88','similique'),
('25','sint'),
('76','sit'),
('69','soluta'),
('52','sunt'),
('83','tempore'),
('71','temporibus'),
('60','totam'),
('56','unde'),
('38','ut'),
('97','velit'),
('66','veniam'),
('16','vero'),
('12','voluptas'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

