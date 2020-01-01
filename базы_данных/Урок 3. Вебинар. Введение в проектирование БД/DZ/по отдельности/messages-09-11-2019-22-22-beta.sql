-- Generation time: Sat, 09 Nov 2019 22:22:56 +0000
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

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` VALUES ('1','30457','0','Veniam sint quis maiores odio numquam fuga. Qui atque natus esse. Velit consectetur minus molestiae quod laborum modi.','1','1','2010-10-28 05:01:55'),
('2','760804734','21','Illum fuga ea eius magni non occaecati voluptatem. Voluptas dolorem accusamus distinctio sed voluptas laudantium. Qui ipsam excepturi fugiat et consequatur similique.','1','0','2004-12-28 18:24:44'),
('3','978389485','522899','Atque soluta officiis magni enim debitis. Consequatur quas dolor laboriosam dolor corrupti optio sed earum. Facilis nulla excepturi est aut.','0','0','2002-11-26 08:59:52'),
('4','875490480','45081429','Est assumenda inventore sunt eaque. Fugit et ut sequi et ipsam velit magnam ratione. Omnis rerum in labore est.','0','1','2014-03-07 19:01:39'),
('5','6','75230','Velit velit earum eum dolore blanditiis saepe quod. Ipsa cumque aliquid nemo debitis doloribus. Deleniti expedita mollitia qui culpa soluta et.','1','0','1972-10-13 02:07:43'),
('6','0','2','Nobis laudantium suscipit illum maiores facilis. Deserunt dolorem nihil debitis earum. Vel quos pariatur accusantium impedit officiis temporibus sed corporis. Perspiciatis sed veritatis temporibus eum consequatur dolor.','1','0','1982-09-29 03:58:51'),
('7','60104','4211','Voluptate omnis placeat doloremque explicabo. Accusantium ut sed at qui.','0','1','2014-12-09 14:28:46'),
('8','594641','3','In nisi ex praesentium numquam deleniti odit. Optio impedit aperiam saepe voluptas unde molestias asperiores. Omnis et voluptatum hic expedita accusantium ipsum est. Nesciunt quo ipsa saepe ab quisquam.','0','1','1990-08-16 07:44:16'),
('9','122321','63','Sapiente omnis voluptatem animi corrupti ut ipsam mollitia. Numquam veniam sit omnis. Quas ex hic error quo quidem.','0','0','1996-08-05 05:40:07'),
('10','290927','86','Aut quo nostrum eveniet explicabo. Voluptatibus rerum quasi quia dolores aut. Accusantium amet qui sunt sapiente doloribus omnis a.','1','1','1993-12-10 22:41:03'),
('11','770016371','525423035','Consequatur id porro inventore aspernatur qui ea provident. Corporis atque ea voluptatem aperiam qui sed magni nihil. Eum hic dicta error doloribus exercitationem maiores non.','1','1','2002-04-25 12:04:52'),
('12','39','1','Ipsa iste repudiandae voluptatum quaerat. Temporibus fugiat velit similique ab saepe adipisci. Consequatur consequatur aliquam ut cupiditate ex voluptatem.','1','0','2010-01-25 03:32:55'),
('13','433102','15467','Labore dignissimos molestiae aut incidunt sed. Et qui quo iusto. Quam incidunt necessitatibus animi eos qui est. Optio recusandae eos sed quasi est et qui commodi. Et ab at explicabo consequatur minus dicta quibusdam.','1','0','2009-09-26 14:26:18'),
('14','468280369','77623110','Facere omnis quia temporibus laboriosam. Rem ut amet exercitationem eos excepturi sed ut beatae. Expedita veniam nam rerum explicabo.','0','1','1985-09-16 06:35:56'),
('15','279','0','Deleniti debitis voluptatum magni non quod asperiores aspernatur. Accusantium voluptas sint qui sit architecto qui. Impedit dicta illum consequuntur.','1','0','1999-04-08 08:58:05'),
('16','396','998294','Molestias ut itaque perferendis amet aperiam suscipit. Facilis expedita velit at eos. Debitis nam dolor eveniet nostrum nesciunt incidunt.','1','0','1977-07-21 22:10:06'),
('17','31358','45173','Quia illo dolorem qui est in veniam. Ut incidunt porro eius nemo et possimus commodi. Cupiditate magni fugiat est et cumque facere sed. Tempore debitis qui velit rerum odit voluptatem.','1','1','1986-07-13 03:24:12'),
('18','0','252022564','Delectus doloribus eligendi id ducimus. Reprehenderit autem sunt sunt consequatur aspernatur aliquam similique dolores. Voluptatem cum minima voluptatum odio.','0','1','1979-12-28 13:56:13'),
('19','63227938','5619','Et rem repellat dolore est praesentium ipsam. Molestiae placeat est cupiditate. Ex error debitis qui aut quia. Nesciunt ab aspernatur dolores.','1','0','2004-01-14 18:00:47'),
('20','268827427','510961','Praesentium sunt animi rerum aut quo quibusdam facilis. Omnis quia vitae ut veritatis. Voluptatibus occaecati tempora vero. Adipisci et rerum consequatur.','0','1','2005-08-15 02:16:09'),
('21','6','72339237','Nihil commodi magnam maiores quis cum quibusdam quas. Ea pariatur laborum pariatur fuga nam. Blanditiis odit fugit fugiat et eligendi quo nihil. Magni odio maiores ut sed possimus illo odio.','0','0','2018-01-03 02:36:00'),
('22','6','6829','Dolorem molestias debitis autem a ex et itaque. Magni quia eos dolor iste dolor. Et qui dolore iste vel tenetur. Omnis harum sed cupiditate nisi. Occaecati accusantium non est a.','0','0','2001-12-15 19:48:06'),
('23','517005','7','Nisi incidunt culpa qui dolorem quia porro optio aliquam. Ut eveniet dolorem delectus voluptas quis. Molestias laborum omnis veritatis voluptatum molestiae atque ut. Assumenda repudiandae id nesciunt ipsum totam natus harum.','1','1','1995-06-22 03:27:51'),
('24','678','86926','Enim quo et quos aut ea optio. Ipsum in sit similique voluptates qui. Quo dolores incidunt saepe qui sit libero.','0','1','1997-01-16 13:13:41'),
('25','4565915','0','Quas et et in dolorem eum deleniti esse. Rem fugit est accusantium labore accusantium aspernatur. Et fugiat accusamus aliquam.','0','0','2012-05-06 05:03:58'),
('26','7960795','376798636','Ducimus accusantium provident quia nisi aspernatur. Quia ducimus quisquam dolorem. Aut earum temporibus omnis et fugit. Labore sit accusantium repudiandae porro.','0','0','1975-11-24 08:26:04'),
('27','68','13453','Mollitia asperiores asperiores autem animi vitae velit. Explicabo omnis officia quam voluptate modi. Saepe ut minus enim omnis corporis praesentium. Deleniti ab ipsum quos.','0','0','2009-07-17 13:03:28'),
('28','0','6','Voluptatibus excepturi ut non voluptatem laborum provident. Quidem omnis quo delectus rerum sed qui. Cum laborum quo eos minus quo. Ex sit est assumenda dolores pariatur suscipit.','1','0','2013-10-15 19:53:35'),
('29','0','6513','Aut culpa minima rerum eos. Fugiat minus laborum minima est occaecati. Optio sit blanditiis ut inventore non ullam est. Harum itaque fuga ab sint earum.','0','0','1992-04-11 06:55:35'),
('30','0','20066356','Nemo eaque sed veritatis culpa facere corporis quasi. Autem voluptatem optio illo quia dignissimos voluptas rerum. Voluptate voluptas nesciunt sunt totam laborum.','1','0','1996-10-10 00:07:56'),
('31','8','34328','Rem impedit dolorem quas nam itaque quae. Explicabo nostrum et ut minima autem qui sapiente qui. Non qui nisi qui quibusdam.','1','0','1981-04-20 03:26:14'),
('32','365','61925','Et veniam dolorem incidunt. Necessitatibus est eos amet laudantium. Dignissimos voluptatibus ipsum voluptatem iste a fugit. Ut accusantium ipsam veniam.','1','0','1980-02-01 19:28:43'),
('33','59401293','60','Aspernatur quod ut iste. Maiores maiores voluptatem eveniet magnam odio sit delectus. Dolor omnis ut exercitationem eum dolor. Ratione ut deserunt et dolore ab dolores consequatur.','0','0','2011-03-15 20:36:28'),
('34','5249','13','Ex possimus cupiditate et unde exercitationem. Eaque quo natus ab. Et odio facilis mollitia et facilis cumque.','1','0','2016-08-07 02:51:07'),
('35','212916580','84','Est quo excepturi vel molestias totam iste quam. Voluptatem dolore enim sed delectus. Ad suscipit dolorem maxime quos et amet. Eum explicabo et ut modi sit.','0','0','1996-12-24 04:23:39'),
('36','749196','205032','Voluptate omnis porro nisi nam deserunt est qui. Quo nihil magnam voluptatibus quia rerum. Architecto veritatis consequatur eos doloribus et dolore nihil. Architecto quia vel ad explicabo omnis aut temporibus cupiditate. Quasi at nisi tempora perspiciatis.','1','1','1986-02-26 12:51:58'),
('37','5','772497','Molestiae sit nobis est quis modi consectetur. Facilis omnis enim doloribus iure sed laudantium. Hic voluptas autem est voluptatibus nulla sint officia numquam. Ut quae fuga dignissimos quasi amet non eius.','0','0','1993-04-04 16:37:35'),
('38','13','967639856','Nostrum nam molestiae et ullam occaecati. Perferendis iure dolore magni distinctio laboriosam nobis voluptas. Cumque tempora quod eum ipsum sunt deleniti deleniti. Cum nisi dicta vel eaque.','0','0','1973-10-01 17:24:25'),
('39','72898','3','Aut ipsum voluptatum explicabo aspernatur ipsa omnis repellendus. Ipsa delectus molestiae qui. Dolore eveniet et quisquam et vel non laudantium in. Totam voluptatibus qui excepturi et corporis.','0','0','2016-08-25 14:15:30'),
('40','0','98267','Fuga illum quia ea quia ratione distinctio. Voluptatibus saepe porro consequuntur aliquid dolore debitis. Nihil porro rem ut ab. A pariatur non earum deserunt laboriosam voluptas laudantium.','0','0','2016-03-09 18:12:42'),
('41','65114','308','Error quo qui dolores. Qui eum aut asperiores. Aspernatur non sequi repellendus illum aut. Adipisci accusamus vitae qui.','0','1','1985-07-02 01:29:58'),
('42','688','80314','Eum iste maxime sed sit eveniet. Ducimus eos vel totam provident. Quibusdam ut blanditiis veritatis facilis nam sapiente quisquam. Occaecati magnam officia deserunt.','1','0','1999-04-14 14:33:42'),
('43','747468','58522','Voluptatibus qui rem vel id dignissimos. Assumenda nisi maxime fugiat qui assumenda nulla.','1','0','2007-11-20 09:38:58'),
('44','92742745','84749858','Ut sed doloribus eius optio est ut. Culpa earum consequatur maiores consequatur. Quas perspiciatis aperiam debitis aut.','0','1','1991-04-05 10:05:08'),
('45','588068','360995096','Vel veritatis id delectus eum quis accusantium qui. Eveniet officiis maxime consequatur sit aut tempora fugiat vel. Nihil sint quia facere perspiciatis cupiditate illum. Amet et unde dolor doloribus illo nisi non.','0','0','1986-07-29 00:19:13'),
('46','4','2709808','Et asperiores sequi enim quibusdam est assumenda. Fugiat molestias quas nemo quos perferendis voluptatum. Ipsa nesciunt aut eaque aut incidunt nemo quod. Laboriosam asperiores ea aut qui consequatur.','0','0','2016-07-16 06:54:05'),
('47','0','0','Quae repudiandae velit modi iure nihil est eos. Nulla quo sint eos. Velit molestiae incidunt incidunt omnis voluptatum et eos tenetur. Qui in illo aperiam eum eos vitae.','1','0','2012-07-10 00:16:31'),
('48','8090','86862140','Facilis est sint fuga consequuntur nisi ab et. Temporibus adipisci aut eos. Odio iste accusamus alias facere.','0','1','1981-07-05 12:21:52'),
('49','81261583','291','Nemo dolores nesciunt quos totam placeat. Et amet sint est error quis error dolorum.','0','0','1999-07-23 23:30:33'),
('50','22','0','Numquam omnis necessitatibus odit est sed labore. Nulla sed excepturi nihil ab maiores doloremque. Quod ipsam laborum et sit quia non. Consectetur ut repellat a facere ut sit.','1','1','1983-12-20 13:42:49'),
('51','2','863150206','Aspernatur nesciunt quasi qui harum sint et. Sunt recusandae accusamus explicabo asperiores quis labore. Est voluptatem delectus magnam dicta rerum rerum et porro. Quam provident odit eveniet reiciendis veritatis quibusdam ut et.','0','0','1991-05-13 09:47:54'),
('52','329158','368','Et quas modi in quibusdam. Est dolores molestiae consequatur eaque. Sint earum deleniti autem impedit sint aliquam.','1','1','2010-10-23 02:53:06'),
('53','5','7116','Officia maxime maxime perferendis itaque. Et cum veritatis omnis debitis error. Inventore ut labore maxime omnis aut alias aliquid omnis. Velit inventore ipsa non provident sit et.','1','0','2013-05-24 21:41:54'),
('54','82719','7','Quos omnis quaerat sit illo labore quia harum. Sit nulla omnis occaecati dolorem necessitatibus facilis. Repellendus eos aliquid possimus esse dolor.','1','0','2007-07-05 05:35:41'),
('55','5402606','674535','Debitis consequatur voluptatem itaque. Facilis quibusdam nulla quis sed deleniti sequi est. Vel aut totam pariatur ducimus rerum laborum dolor.','1','1','2006-12-02 09:10:06'),
('56','44233','43510','Rerum aut porro sunt quia iste. Error accusantium voluptatibus officia qui rerum. Non dicta ipsa in. Qui aspernatur saepe impedit at ullam minus minus deserunt.','1','0','1995-09-15 02:09:11'),
('57','7','26111','Vel veritatis dolorem ex ut beatae architecto. Ut natus doloribus ipsum soluta ratione voluptatem.','1','1','1988-05-19 04:49:31'),
('58','0','579','Explicabo magni eos voluptates omnis. Voluptate et reprehenderit sapiente molestiae recusandae dicta esse. Eum occaecati omnis eaque libero et reiciendis. Non rerum eum minima voluptatem voluptas molestias dolores. Laboriosam mollitia quae enim ea occaecati asperiores est.','0','0','1995-07-27 00:52:03'),
('59','606460','631','Ullam dolor pariatur minima voluptatibus molestiae. Odio magni accusamus non perspiciatis. Labore commodi et et perferendis.','0','0','2002-05-05 13:53:26'),
('60','5','5766067','Veniam impedit corrupti sed minus. Qui quasi explicabo aut esse. Molestias ipsa suscipit dicta numquam. Animi omnis molestiae enim magnam aut.','1','1','2000-06-09 00:41:27'),
('61','0','0','Corrupti amet deleniti ut ab eveniet est provident harum. Sit reprehenderit similique iste eveniet reprehenderit aperiam asperiores. Neque est modi aspernatur. Nihil doloribus voluptates voluptatem quos autem alias cupiditate dolor.','1','0','1982-03-20 03:04:39'),
('62','418','0','Sunt est voluptate voluptatem id. Reprehenderit dolorem laborum rerum cumque aut. Cumque maxime vero occaecati nostrum voluptate eum. Autem maiores odit qui quia ipsa.','0','1','2007-10-07 18:51:32'),
('63','627','5420','Ducimus sed dolores ea adipisci. Suscipit maiores ex soluta fugiat.','0','0','1976-08-14 06:07:03'),
('64','696','35','Saepe error dolores sunt voluptatum et. Sequi dolores enim possimus. Exercitationem provident voluptatem maxime omnis inventore. Et veniam id voluptatem quis incidunt nam.','1','0','2013-03-11 00:52:12'),
('65','0','1592','Assumenda itaque natus voluptas. Ex exercitationem dolores ullam blanditiis. Sit sequi necessitatibus fugiat id at voluptas modi eligendi. Voluptatem cupiditate minus nostrum fugit consequatur nemo. Dolor ipsa natus repudiandae.','0','1','2005-11-14 10:14:21'),
('66','9783800','901378','Quos corrupti animi et temporibus ut et temporibus. Voluptatem cum dolores ad voluptatibus architecto earum sed et. Dolores deserunt nisi eum eos aut inventore.','0','1','1993-07-06 21:03:31'),
('67','723184','49','Corrupti suscipit porro exercitationem molestiae in. Labore hic et minus et libero. Quo nostrum dolores velit nemo repellendus omnis. Ex est porro sit illo officia expedita.','1','1','1983-07-31 21:01:26'),
('68','7499','51201850','Nobis nemo sed iste labore et sequi. Sunt eaque est harum fugiat pariatur. Sunt reiciendis a odio perspiciatis hic distinctio.','1','1','1999-03-02 19:47:48'),
('69','75937698','2885917','Voluptatem iusto consequatur cum nisi et alias porro omnis. Accusamus porro quia sed recusandae totam eos doloremque. Nostrum iure perspiciatis consequatur rerum laboriosam consectetur accusamus consequatur.','0','0','2002-01-30 02:52:34'),
('70','0','1','Placeat et quisquam molestiae id. Est nam molestiae eligendi quia nihil et. Dolorem rerum accusantium totam asperiores. Sunt consequuntur mollitia reprehenderit quod numquam.','0','1','2007-12-16 21:29:31'),
('71','4','0','Assumenda similique voluptatem sit autem consequuntur. Sapiente accusamus id molestiae qui. Cupiditate enim incidunt quisquam ut. Nihil consectetur velit repellat eaque sed autem laudantium.','1','1','2017-05-24 23:11:15'),
('72','572532','9004','Ratione inventore voluptatem natus laboriosam qui. Sed voluptatem aut aut autem aliquam est. Optio corrupti consequuntur impedit debitis. Sapiente asperiores laudantium voluptatem molestiae.','1','0','1984-07-02 13:20:14'),
('73','406','90700703','Perferendis ab cupiditate et voluptatem. Vel et aut eaque eligendi vero omnis incidunt. Voluptas quae reprehenderit mollitia eaque et eum pariatur. Deserunt at dignissimos numquam pariatur provident.','0','1','1992-06-24 05:30:32'),
('74','699709235','358574582','Quos quo perferendis at est. Quia et ad occaecati exercitationem. Rem quia ipsam mollitia quae aliquam placeat dolor.','1','0','2010-02-11 10:51:48'),
('75','324','0','Dignissimos sed velit et commodi distinctio est. Ut quo deleniti qui tempora quia. Atque voluptatum doloribus praesentium repudiandae eos explicabo ad. Qui nobis in quis debitis officiis.','1','1','1988-11-11 04:01:43'),
('76','7','6592','Ut eaque voluptas animi dolore asperiores eos et. Dolorum vitae odit id error consequatur quos voluptatibus. Ab officiis quasi et voluptatem.','0','0','1996-07-17 10:33:06'),
('77','933287241','0','Quo ut porro placeat quaerat in eaque. Corporis consequuntur sed natus quis sint et quis. Commodi quia ullam sit laudantium ut unde iste.','1','0','1970-08-02 10:09:27'),
('78','92','5109','Ex eius et illum temporibus qui. Sit ut corrupti et quaerat quos. Facere aut cumque saepe rem facilis facere eum officiis. Quibusdam eaque temporibus recusandae aut esse exercitationem aperiam.','0','1','1973-09-09 09:48:46'),
('79','405520','151240','Vero et quo optio est voluptatibus. Corporis molestias natus repellendus eligendi sed maiores doloremque. Porro rerum sed velit deleniti ut quos. Nobis adipisci et ut repudiandae officiis.','1','1','1997-01-12 05:57:34'),
('80','2223063','1856','Ad in dicta optio quae quidem rerum blanditiis ut. Velit voluptatem aut tempora fugit molestiae dolorem eius. Saepe qui repellat a itaque.','0','0','1988-12-12 02:38:48'),
('81','0','1','Dolorem possimus nobis molestiae dolorem odio non quod illo. Sunt nobis cumque necessitatibus consectetur quis veniam. Est consequatur debitis reiciendis tempore eius soluta. Voluptatem quia ut libero quibusdam nam eos quis.','0','1','2000-12-27 04:58:11'),
('82','52435','83','Qui reprehenderit est eos ut. Perferendis doloremque ea ab sunt consequatur eligendi. Quia possimus cupiditate distinctio labore eos eveniet non aut. Sit velit sit natus eligendi voluptatem minus.','1','0','2002-11-02 01:35:59'),
('83','342610','212','Impedit rerum adipisci est blanditiis impedit. Explicabo illum doloribus unde sed. Et veniam ut ullam. Quidem suscipit sequi error maiores eum ut fugit.','1','1','1989-01-18 17:46:18'),
('84','454729599','68273471','Consequatur nemo repudiandae non voluptatem sed unde. Temporibus magni sint repudiandae dolor. Et veniam aliquid velit placeat temporibus ut. Dolor necessitatibus cupiditate impedit.','0','0','1994-10-05 20:28:25'),
('85','0','24163','Quisquam ipsum nihil error dolorum eos. Facere voluptatem aut ea veniam tempore tempora. Consectetur omnis laboriosam iusto error excepturi quos aut. Doloremque maiores quo quidem odit quae quia eveniet.','0','0','1975-07-02 16:07:32'),
('86','421064255','69','Id animi laborum excepturi sint non laudantium. Aspernatur natus aut autem necessitatibus nobis molestias. Saepe fugiat qui ut et et. Dolor tenetur sapiente omnis officia.','0','0','1985-09-20 15:12:12'),
('87','96','625','Nobis nisi libero et et non quod officia. Amet magnam voluptatum consequatur. Ipsum ut deleniti repellendus eveniet aperiam dolorem.','1','0','2012-01-10 21:59:13'),
('88','3737','2650','Et ea molestias ea. Voluptatibus minus veritatis vero error rerum rerum. Minima et ipsum rerum voluptatem est. Molestias aspernatur est commodi sed.','0','1','1982-03-22 06:40:46'),
('89','0','824287918','Maiores qui sunt rem sint repellat quia quasi vitae. Dicta porro quia non ab voluptatem voluptates. Aut adipisci sit voluptas corrupti sed asperiores. Ipsum maiores fuga iure aut odit reprehenderit.','1','0','1984-01-12 20:06:59'),
('90','7451','62618','Commodi repudiandae qui voluptatem modi aspernatur deleniti aut. Rerum dolores tempore at debitis. Earum voluptates alias fugit totam ullam exercitationem.','1','0','1989-02-25 06:50:14'),
('91','557276970','5686','Est inventore omnis exercitationem deleniti magnam est et. Nihil numquam eveniet qui qui. Ratione est optio eaque dolorem nemo.','1','1','1993-12-25 12:30:22'),
('92','968011998','87079930','Est dolor quae eos nesciunt dignissimos vitae voluptates. Quos sapiente et esse unde dignissimos autem. Libero repellat ut et necessitatibus.','0','0','1978-03-18 14:26:50'),
('93','2','8024538','Accusamus non optio cumque voluptas nam. Autem aut esse velit quia quidem quibusdam iusto. Mollitia omnis autem cupiditate vitae ducimus voluptas facilis. Quis voluptatum et fuga.','0','1','1985-08-11 01:03:26'),
('94','47','86430250','Eum minima et vero. Neque vitae eum ex ea nihil ut ut. Et qui cumque laboriosam qui incidunt. Autem eius quia aut quia nesciunt aliquid.','0','0','1994-09-27 01:49:47'),
('95','22','273694','Quos aut voluptatem facilis nulla omnis. Veniam officiis expedita vitae autem ut est pariatur. Ut ex atque minima possimus asperiores provident eius.','1','0','1986-12-09 05:49:01'),
('96','2340','438578','Impedit error sint autem nobis molestias distinctio omnis dolores. Asperiores at ut et fugiat non numquam. Accusamus earum itaque omnis eligendi odio praesentium et.','1','1','1996-04-16 13:28:04'),
('97','952','1674','Eos et officia voluptate dolorem nihil odit. Exercitationem ad omnis optio hic et. Laborum voluptate et vero quisquam.','0','0','1992-03-13 07:00:40'),
('98','82','0','Rerum soluta ratione impedit velit ullam nihil. Veniam quae quis id necessitatibus in. Sint adipisci eaque eos autem.','1','0','2018-06-22 14:40:15'),
('99','397358390','92657','Placeat error consequatur non ea. Veritatis recusandae ab repellendus enim dolores. Eius voluptatem consectetur ullam nemo deserunt sint. Nesciunt ea quibusdam libero dolores eos molestias vel.','1','1','1985-02-12 04:27:28'),
('100','423805','0','Ea ullam quia nam sit. Officiis voluptatum voluptas asperiores rerum. In inventore ipsa ratione. Explicabo sed eligendi cum dolorem. Aut veritatis et velit id provident.','1','1','2011-09-25 03:20:57'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

