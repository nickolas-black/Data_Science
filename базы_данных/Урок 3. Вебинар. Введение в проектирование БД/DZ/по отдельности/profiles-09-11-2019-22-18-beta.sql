-- Generation time: Sat, 09 Nov 2019 22:18:53 +0000
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

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` VALUES ('1','','1980-03-07','Glennieborough','25'),
('2','','2013-10-09','Lake Alyciaborough','9'),
('3','\"','2005-08-12','Port Magnolia','44'),
('4','\"','2010-11-05','Spinkaview','64'),
('5','','1972-02-07','Carrollfort','95'),
('6','','1984-09-09','East Allison','8'),
('7','','1990-12-03','Angelport','22'),
('8','\"','1996-02-13','West Reyesbury','26'),
('9','\"','2016-01-13','Stracketon','7'),
('10','','2013-09-07','Predovicmouth','62'),
('11','','2015-02-18','New Traceyberg','44'),
('12','','1987-09-06','New Dorris','51'),
('13','\"','1978-08-17','Janetchester','48'),
('14','','2018-05-29','Sengerton','24'),
('15','','2003-02-23','Port Briamouth','11'),
('16','','2006-02-09','Edmondfort','99'),
('17','','1991-03-21','North Jaclyn','89'),
('18','\"','1974-10-16','Juliusborough','7'),
('19','','1988-12-14','Jaskolskifort','18'),
('20','','1985-11-17','Lake Rickiemouth','42'),
('21','\"','1984-05-14','Paulmouth','71'),
('22','\"','1988-02-05','New Zanechester','37'),
('23','\"','1970-08-14','Vernerton','84'),
('24','','1987-01-24','Klingville','75'),
('25','\"','1974-09-02','Bechtelarport','89'),
('26','','2017-10-12','East Cassandra','34'),
('27','\"','2015-07-29','Nolaview','40'),
('28','\"','2013-07-13','Klockofort','38'),
('29','\"','1982-10-16','Joannyshire','74'),
('30','','1993-12-31','Lake Bennyfort','68'),
('31','\"','1973-12-27','Port Blakeside','80'),
('32','','1987-08-07','Armanifort','20'),
('33','','1986-10-23','West Autumnburgh','34'),
('34','','2005-05-17','Mertzhaven','72'),
('35','\"','2000-06-25','Heidenreichmouth','15'),
('36','\"','1976-01-08','Fatimashire','14'),
('37','','2019-08-25','South Demond','99'),
('38','','1986-06-30','New Modestaton','61'),
('39','','2016-07-01','North Susannaton','56'),
('40','','1985-11-30','Pollichland','13'),
('41','','2010-04-03','Hodkiewiczstad','43'),
('42','\"','2004-04-13','West Eli','58'),
('43','\"','1998-01-10','Hermanburgh','53'),
('44','','1990-04-26','Edgardohaven','1'),
('45','\"','1995-08-22','Daxshire','41'),
('46','\"','1980-12-18','West Aydenborough','52'),
('47','','1974-03-20','Lake Travon','84'),
('48','','2014-11-13','West Tiana','9'),
('49','','1984-01-20','Coltenmouth','70'),
('50','\"','1997-06-24','North Myrticemouth','27'),
('51','','2002-09-26','Port Leone','82'),
('52','','1994-03-01','West Ephraim','15'),
('53','\"','1995-08-13','East Asa','16'),
('54','\"','1981-12-23','Oralchester','84'),
('55','','1977-10-03','East Joeyhaven','86'),
('56','','2005-12-10','Cummingsfurt','74'),
('57','','1989-03-03','Wymanburgh','12'),
('58','','1979-04-20','Port Makennabury','4'),
('59','\"','1984-10-26','South Arvillaport','50'),
('60','','2003-11-07','Alysaberg','99'),
('61','\"','1984-10-13','East Michaela','78'),
('62','','1976-04-17','Hellershire','35'),
('63','','1991-07-31','Cronafort','46'),
('64','\"','1991-12-31','Lake Shanny','97'),
('65','','1982-08-16','West Lesleyborough','92'),
('66','','2006-02-10','Aliland','33'),
('67','','2013-03-03','Donnastad','80'),
('68','\"','2013-03-08','Boberg','88'),
('69','','2004-07-07','South Wilford','55'),
('70','\"','2003-05-24','Hansenchester','12'),
('71','','1970-12-03','Framiside','24'),
('72','\"','1990-08-15','Mervinland','80'),
('73','','1993-04-25','Hermanfort','65'),
('74','\"','1978-12-05','Lake Daphneport','29'),
('75','','1991-09-05','New Nevachester','17'),
('76','','2007-07-12','Krystinafurt','90'),
('77','\"','2009-09-24','New Nakia','14'),
('78','\"','1995-12-30','Newellfort','73'),
('79','\"','1990-07-27','Lake Americaburgh','33'),
('80','\"','2009-01-03','Felicityfurt','91'),
('81','\"','2003-03-16','Naomifurt','7'),
('82','\"','2015-11-12','Gerholdburgh','68'),
('83','','1987-12-10','Javiermouth','42'),
('84','','2009-10-30','Jakubowskiview','92'),
('85','\"','1997-08-20','West Sim','85'),
('86','','2008-07-19','Sydneefort','70'),
('87','\"','1982-07-15','North Damonland','35'),
('88','','2018-10-20','Candelariofort','60'),
('89','\"','1983-09-04','Napoleonhaven','86'),
('90','','1983-03-23','Keanuland','32'),
('91','','1980-09-17','New Shakira','14'),
('92','','2017-08-05','Port Orlando','38'),
('93','','2009-02-19','Dominiquechester','69'),
('94','\"','2015-08-17','East Andrewland','37'),
('95','\"','1989-12-31','Grahamside','72'),
('96','\"','2009-04-06','West Bryonport','59'),
('97','','2009-04-22','West Ruby','95'),
('98','','1988-05-24','West Aaronburgh','20'),
('99','\"','1997-05-29','Dooleystad','81'),
('100','','1990-09-17','Port Kimberlyport','63'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

