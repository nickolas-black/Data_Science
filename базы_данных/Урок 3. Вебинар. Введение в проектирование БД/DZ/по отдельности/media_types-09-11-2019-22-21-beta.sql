-- Generation time: Sat, 09 Nov 2019 22:21:51 +0000
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

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` VALUES ('1','ab'),
('11','alias'),
('88','amet'),
('65','animi'),
('25','architecto'),
('33','aspernatur'),
('63','assumenda'),
('89','at'),
('2','atque'),
('12','aut'),
('99','commodi'),
('46','consectetur'),
('67','consequatur'),
('90','consequuntur'),
('26','corporis'),
('3','corrupti'),
('100','cumque'),
('74','debitis'),
('28','deleniti'),
('66','deserunt'),
('68','dignissimos'),
('95','distinctio'),
('87','dolor'),
('52','dolore'),
('56','dolorem'),
('27','doloremque'),
('92','dolores'),
('22','ducimus'),
('77','eaque'),
('82','enim'),
('57','est'),
('5','et'),
('61','exercitationem'),
('72','expedita'),
('91','explicabo'),
('64','facilis'),
('97','fuga'),
('70','fugiat'),
('23','fugit'),
('60','impedit'),
('30','in'),
('69','incidunt'),
('40','ipsum'),
('8','iste'),
('85','iusto'),
('59','laborum'),
('94','magnam'),
('55','molestiae'),
('53','molestias'),
('44','nam'),
('4','necessitatibus'),
('84','nemo'),
('76','nesciunt'),
('78','nihil'),
('71','non'),
('96','odio'),
('15','officia'),
('29','officiis'),
('79','omnis'),
('58','perferendis'),
('86','perspiciatis'),
('42','placeat'),
('98','porro'),
('16','provident'),
('41','quam'),
('9','qui'),
('7','quia'),
('45','quidem'),
('38','quis'),
('18','quo'),
('21','quod'),
('34','quos'),
('20','ratione'),
('17','recusandae'),
('32','reiciendis'),
('81','rem'),
('83','repellendus'),
('47','repudiandae'),
('14','rerum'),
('51','sapiente'),
('13','sed'),
('93','similique'),
('43','sint'),
('62','sit'),
('19','soluta'),
('39','sunt'),
('48','suscipit'),
('49','tempora'),
('50','tenetur'),
('35','totam'),
('24','unde'),
('54','ut'),
('37','velit'),
('36','veniam'),
('75','veritatis'),
('10','vitae'),
('6','voluptas'),
('73','voluptate'),
('31','voluptatem'),
('80','voluptatum'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

