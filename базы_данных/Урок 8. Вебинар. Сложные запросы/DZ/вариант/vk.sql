CREATE DATABASE vk;

SHOW DATABASES;

USE vk;


-- Таблица пользователей
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(120) NOT NULL UNIQUE,
	phone VARCHAR(14) NOT NULL UNIQUE,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT NOW()
);
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Cassandra', 'McCullough', 'michel53@example.org', '03081466390', '1970-03-26 17:52:12', '1972-09-28 08:13:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Virginie', 'Fadel', 'qhayes@example.net', '994-078-3326', '1992-06-09 20:02:54', '2014-11-17 20:12:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Gay', 'Lowe', 'mcorwin@example.net', '(255)758-6576', '2007-02-10 15:02:58', '1999-06-02 18:41:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Brandon', 'Rau', 'chanelle73@example.net', '1-773-548-1106', '2000-08-03 02:29:39', '1982-09-18 23:22:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Skyla', 'Marks', 'bonnie.christiansen@example.org', '01323830841', '2013-05-22 07:13:49', '2005-09-25 19:04:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Adell', 'Corwin', 'vonrueden.betsy@example.com', '(939)437-2504', '1996-12-07 10:20:10', '1993-01-06 03:52:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Ubaldo', 'Marquardt', 'wehner.leonard@example.net', '03358984919', '1977-01-08 07:19:16', '2016-05-10 12:31:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Kevin', 'Davis', 'leopold.welch@example.com', '+71(5)19928408', '1987-01-09 08:41:41', '1972-05-09 20:02:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Juana', 'Jacobs', 'aubree.ward@example.com', '006-202-7491', '1999-11-27 18:43:17', '2005-02-03 22:13:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Alejandra', 'Funk', 'hellen64@example.com', '1-187-892-0123', '2004-03-09 09:53:49', '1987-08-25 12:53:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Elsa', 'Schuster', 'akautzer@example.net', '020.183.6873x6', '1985-12-17 04:55:19', '1986-12-31 16:44:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Hershel', 'Daugherty', 'marlee.nicolas@example.org', '189-373-5049', '2010-11-27 21:35:21', '1976-10-30 18:13:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Janiya', 'Ledner', 'barton.sanford@example.net', '364-395-7597', '1971-01-01 21:08:10', '2014-04-03 11:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Mireille', 'Collins', 'skyla.gislason@example.com', '1-875-239-2231', '1974-01-17 12:06:47', '2005-10-02 23:06:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Kayleigh', 'Homenick', 'rolando.mohr@example.com', '03122037300', '1992-09-18 20:01:01', '1976-03-20 06:52:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Paige', 'Reinger', 'iward@example.org', '1-531-083-5621', '1990-05-08 22:04:45', '1980-06-11 07:18:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Roderick', 'Roob', 'aroberts@example.com', '388-232-1048', '1980-10-29 19:11:37', '2007-03-14 22:49:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Hildegard', 'Weber', 'thiel.carolyn@example.net', '043.973.3907', '2009-04-26 01:08:55', '2015-04-26 01:48:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Madelyn', 'Lindgren', 'istrosin@example.com', '(923)052-3067x', '1996-12-15 05:13:35', '1982-05-08 04:31:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Janet', 'Prohaska', 'rau.lora@example.org', '(759)550-6294', '1972-08-10 22:50:44', '1973-10-28 17:23:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Reginald', 'Rohan', 'chase.franecki@example.org', '816.294.7645x2', '1977-11-15 06:29:35', '1976-07-20 15:16:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Lowell', 'Weimann', 'pfannerstill.linnea@example.org', '+03(1)96490686', '1972-07-25 20:04:03', '1974-05-19 04:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Quinton', 'Rice', 'emmerich.agustin@example.org', '(059)308-3277x', '1996-03-01 04:56:24', '1981-03-31 21:18:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Adrienne', 'Rowe', 'dakota91@example.net', '03356189772', '2007-09-14 06:15:22', '1975-04-13 01:16:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Hollie', 'Cruickshank', 'veum.belle@example.com', '649.414.8769x0', '1996-07-27 22:14:26', '1981-11-27 08:37:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Nadia', 'Roberts', 'laurie.bosco@example.com', '1-011-055-8853', '1999-09-25 02:48:49', '1991-08-20 01:53:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Robert', 'Bailey', 'montana.konopelski@example.org', '(188)532-1270x', '2004-07-23 09:05:50', '2016-05-24 16:26:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Eino', 'Durgan', 'cristopher98@example.org', '663-688-0253x3', '1979-10-23 17:08:06', '1998-12-03 12:07:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Joseph', 'Brown', 'nkrajcik@example.net', '1-399-250-6711', '2007-09-11 20:51:26', '1974-03-28 01:14:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Leland', 'Rohan', 'dickens.lucius@example.net', '1-132-279-9864', '1973-09-02 05:50:50', '1998-10-10 11:04:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Grady', 'Zulauf', 'schoen.delia@example.net', '398.155.2955', '1973-03-13 17:58:48', '1975-01-01 15:42:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Eleanora', 'Veum', 'woodrow.rice@example.com', '(719)351-5034', '1978-07-12 04:09:51', '1976-09-27 01:07:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Katherine', 'Jaskolski', 'eudora.yost@example.org', '353-489-0472x2', '2007-08-31 12:48:39', '1975-05-06 21:14:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kaelyn', 'Hilpert', 'lula84@example.net', '969-005-4908', '1995-09-11 16:46:32', '2014-10-05 14:33:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Maxwell', 'Skiles', 'dannie78@example.org', '(643)800-8675', '1989-12-18 03:38:37', '1991-03-04 05:52:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Nico', 'Bergstrom', 'heber73@example.com', '(714)536-2800', '1995-12-06 13:46:53', '1972-05-22 06:54:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Camilla', 'Eichmann', 'gusikowski.drake@example.com', '470.900.1540x6', '1974-02-10 23:30:19', '1982-07-10 12:55:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Rosario', 'Mann', 'katlynn85@example.net', '(726)804-5378x', '1989-06-07 01:33:44', '1978-01-21 06:00:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ulices', 'Lynch', 'dorothy.haley@example.net', '(143)142-7556x', '1984-11-08 05:56:47', '1985-08-01 17:30:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Mireya', 'Hodkiewicz', 'ustoltenberg@example.org', '155.802.9679x8', '1972-07-11 06:26:30', '1971-04-28 09:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Carmen', 'Erdman', 'hintz.alice@example.com', '(426)776-6667x', '1988-02-18 03:15:48', '2017-08-19 05:38:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Anabel', 'Jast', 'alisa69@example.net', '1-911-025-2545', '1973-11-15 22:35:43', '1974-11-20 06:34:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Brennan', 'Roberts', 'wromaguera@example.net', '054.926.4324x1', '1977-03-03 22:49:33', '1993-09-29 02:28:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Frederique', 'Dach', 'thalia.nicolas@example.org', '136.828.8633x9', '1982-10-13 17:45:20', '1997-07-31 02:22:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Laurie', 'Walker', 'steuber.kyle@example.net', '08968234906', '1970-03-03 04:54:06', '2003-10-25 00:59:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Dawn', 'Rau', 'hellen78@example.net', '(410)791-1055x', '2018-02-18 02:41:17', '1997-07-28 00:05:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Nakia', 'Schuppe', 'ryan.name@example.net', '(531)040-0783x', '1997-11-15 09:37:22', '1990-07-15 09:29:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Murray', 'Hauck', 'ronaldo65@example.net', '1-416-731-9988', '2015-01-12 03:24:20', '2005-10-25 07:51:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Guiseppe', 'Bergnaum', 'virgil45@example.org', '581-291-4632x8', '1981-08-11 20:45:40', '2019-03-17 16:23:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Devante', 'Pfannerstill', 'deckow.armando@example.net', '(190)444-2740', '1992-11-10 07:13:55', '2005-01-29 08:35:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Yolanda', 'Sporer', 'jacinthe.koch@example.net', '772.534.6237x9', '1988-08-11 14:09:13', '1977-12-16 16:45:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Zelda', 'King', 'mariam.fisher@example.com', '07363391730', '2015-04-21 08:42:52', '1975-03-01 19:04:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Lucious', 'Weissnat', 'lon77@example.net', '+04(1)49567861', '2019-03-04 10:38:45', '1972-09-27 16:19:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Dorian', 'Windler', 'fwisoky@example.org', '412.860.8705x1', '2016-01-01 18:51:17', '1974-06-29 10:06:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Emmy', 'Nienow', 'dicki.citlalli@example.net', '1-316-295-9448', '2011-02-28 09:21:54', '2018-02-22 08:58:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Jacklyn', 'Renner', 'corwin.bartholome@example.org', '+12(3)11860065', '2007-02-25 17:40:00', '2006-11-15 07:59:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Darrell', 'Boehm', 'eleanore.mitchell@example.org', '+03(7)70838395', '1992-07-12 07:24:18', '1991-02-09 12:04:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Uriel', 'Ryan', 'swift.zackery@example.org', '1-233-546-4315', '1988-02-24 05:09:01', '1996-07-15 22:26:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Coby', 'Langosh', 'tevin85@example.net', '828.743.7730', '1983-04-17 00:43:16', '2001-04-03 13:20:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Karen', 'Schulist', 'jody37@example.com', '1-231-472-0924', '1988-05-11 12:58:02', '1992-11-25 16:05:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Anissa', 'Russel', 'twalsh@example.com', '00865421285', '2003-07-10 19:24:30', '1988-06-23 02:14:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Ramiro', 'Nitzsche', 'gay63@example.org', '1-680-878-9905', '1989-11-23 12:17:00', '1990-02-02 23:02:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Brendan', 'Donnelly', 'yhansen@example.org', '118.267.7946x9', '2009-12-13 20:03:49', '1990-07-12 17:06:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Brendan', 'Hodkiewicz', 'casper.lucy@example.org', '221-936-4924x7', '1997-10-15 00:37:07', '1984-12-22 16:42:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Dino', 'Brekke', 'heloise.raynor@example.com', '00640244499', '2002-10-03 17:28:38', '1979-08-27 05:24:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Cole', 'Walsh', 'jaquelin.roob@example.net', '456.085.3112x2', '1992-03-27 16:53:34', '2000-12-11 11:16:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Lavinia', 'Gutkowski', 'akuhn@example.org', '07979749848', '1983-09-09 08:46:21', '1985-06-23 18:16:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Scarlett', 'Block', 'kreiger.aliya@example.org', '948.512.0549x2', '1982-02-05 19:09:16', '1973-12-19 12:42:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Mose', 'Batz', 'dtremblay@example.net', '08697916817', '1990-12-09 13:39:15', '1973-03-20 09:20:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Wayne', 'Murphy', 'maximillia.wolf@example.net', '148-148-2095', '2005-03-18 05:51:24', '1980-04-19 03:45:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Julia', 'Rice', 'lwalker@example.com', '424-891-0497', '1992-03-09 04:17:01', '2013-04-29 02:43:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Bette', 'Schaefer', 'konopelski.isabel@example.org', '04108779396', '1988-06-19 07:03:52', '1972-09-13 08:40:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Cassidy', 'Price', 'jakob92@example.com', '142-345-6156', '1970-06-24 12:18:04', '1982-04-18 15:19:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Geovanni', 'Reynolds', 'obins@example.net', '323.131.9818', '1972-07-12 23:10:04', '2003-10-25 00:29:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Amalia', 'Collins', 'antonina06@example.net', '(258)056-9399x', '2012-04-08 18:15:29', '2015-12-28 06:34:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Ladarius', 'Ritchie', 'amari.kohler@example.net', '(572)086-2592', '1975-06-24 21:30:08', '1988-10-16 02:11:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Madyson', 'Abbott', 'hoppe.marina@example.com', '162.226.6915', '2013-11-21 06:28:23', '1994-04-11 14:39:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Georgiana', 'Auer', 'cole17@example.com', '650.319.1203x5', '1994-03-26 09:12:45', '1982-11-30 23:39:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Myrtice', 'Luettgen', 'tristian12@example.org', '01260903577', '2012-07-06 11:46:10', '1975-12-22 04:45:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Rachelle', 'Beer', 'jerry.marks@example.net', '190-806-0395x1', '1975-01-18 22:51:31', '2003-02-06 05:51:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Creola', 'Hilpert', 'raynor.webster@example.com', '1-906-870-8355', '1996-11-27 00:56:43', '1980-06-01 22:52:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Orland', 'Lebsack', 'vkoelpin@example.net', '1-964-727-4063', '2015-09-18 13:09:52', '1970-03-05 11:33:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Casey', 'Prosacco', 'brett96@example.net', '(831)766-6674x', '2018-03-31 14:54:01', '2011-02-18 12:55:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Antwon', 'Yundt', 'odare@example.net', '603-894-2383x6', '1997-09-06 17:44:52', '2005-03-10 04:45:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Janelle', 'Streich', 'xwalter@example.net', '+01(3)26810488', '2008-07-03 22:24:56', '2008-06-04 04:50:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Louie', 'Mills', 'iabshire@example.org', '611.897.8810x2', '2007-05-04 09:55:36', '2008-10-26 06:22:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Ashlee', 'Anderson', 'kovacek.owen@example.net', '01643164912', '2013-06-25 22:05:47', '1970-12-04 02:50:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Francesca', 'Ankunding', 'haag.deven@example.net', '299.638.1345x2', '1971-04-02 07:16:53', '1997-07-19 15:08:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Gilbert', 'Gusikowski', 'dbalistreri@example.net', '00974205645', '1989-05-16 01:20:48', '2017-02-13 21:19:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Prince', 'Hayes', 'homenick.lauryn@example.net', '090-690-2082x0', '1987-05-18 04:23:24', '1970-03-28 11:41:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Winston', 'Skiles', 'ebert.harmony@example.com', '03450488116', '1970-10-23 23:50:12', '2004-01-10 11:27:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Lynn', 'Denesik', 'viviane36@example.net', '+63(3)03013082', '1987-04-14 17:16:44', '2006-06-27 05:43:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Janie', 'Veum', 'dominic95@example.net', '(832)497-1168x', '1993-09-14 19:09:58', '1998-11-25 19:07:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Nayeli', 'Prosacco', 'taylor.orn@example.com', '1-630-783-3965', '1996-03-10 12:39:46', '2009-07-08 03:18:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Jaylan', 'Monahan', 'stroman.vance@example.com', '630.964.1154', '1984-10-17 23:32:49', '2000-08-05 19:48:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Adriana', 'Keebler', 'stiedemann.joanny@example.org', '828-269-1935', '1995-08-11 17:37:53', '2005-05-29 12:10:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jules', 'Monahan', 'reynolds.janessa@example.com', '634-093-5784x6', '1992-07-06 13:58:01', '1970-03-22 13:57:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Zita', 'Mraz', 'nina31@example.org', '1-191-589-5402', '2017-08-09 17:39:30', '1970-01-25 01:19:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'German', 'Hettinger', 'heidi.simonis@example.com', '(736)234-7387', '1986-12-16 07:34:27', '2000-09-12 21:48:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Cathrine', 'Ernser', 'jjohns@example.com', '1-190-164-1544', '1988-11-30 10:07:58', '1981-12-27 02:49:48');




-- Таблица профилей
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY,
  sex CHAR(1) NOT NULL,
  birthday DATE,
  hometown VARCHAR(100),
  photo_id INT UNSIGNED NOT NULL
);

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, '', '1980-03-07', 'Glennieborough', 25);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, '', '2013-10-09', 'Lake Alyciaborough', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, '\"', '2005-08-12', 'Port Magnolia', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, '\"', '2010-11-05', 'Spinkaview', 64);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, '', '1972-02-07', 'Carrollfort', 95);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, '', '1984-09-09', 'East Allison', 8);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, '', '1990-12-03', 'Angelport', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, '\"', '1996-02-13', 'West Reyesbury', 26);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, '\"', '2016-01-13', 'Stracketon', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, '', '2013-09-07', 'Predovicmouth', 62);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, '', '2015-02-18', 'New Traceyberg', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, '', '1987-09-06', 'New Dorris', 51);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, '\"', '1978-08-17', 'Janetchester', 48);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, '', '2018-05-29', 'Sengerton', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, '', '2003-02-23', 'Port Briamouth', 11);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, '', '2006-02-09', 'Edmondfort', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, '', '1991-03-21', 'North Jaclyn', 89);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, '\"', '1974-10-16', 'Juliusborough', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, '', '1988-12-14', 'Jaskolskifort', 18);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, '', '1985-11-17', 'Lake Rickiemouth', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, '\"', '1984-05-14', 'Paulmouth', 71);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, '\"', '1988-02-05', 'New Zanechester', 37);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, '\"', '1970-08-14', 'Vernerton', 84);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, '', '1987-01-24', 'Klingville', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, '\"', '1974-09-02', 'Bechtelarport', 89);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, '', '2017-10-12', 'East Cassandra', 34);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, '\"', '2015-07-29', 'Nolaview', 40);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, '\"', '2013-07-13', 'Klockofort', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, '\"', '1982-10-16', 'Joannyshire', 74);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, '', '1993-12-31', 'Lake Bennyfort', 68);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, '\"', '1973-12-27', 'Port Blakeside', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, '', '1987-08-07', 'Armanifort', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, '', '1986-10-23', 'West Autumnburgh', 34);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, '', '2005-05-17', 'Mertzhaven', 72);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, '\"', '2000-06-25', 'Heidenreichmouth', 15);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, '\"', '1976-01-08', 'Fatimashire', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, '', '2019-08-25', 'South Demond', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, '', '1986-06-30', 'New Modestaton', 61);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, '', '2016-07-01', 'North Susannaton', 56);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, '', '1985-11-30', 'Pollichland', 13);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, '', '2010-04-03', 'Hodkiewiczstad', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, '\"', '2004-04-13', 'West Eli', 58);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, '\"', '1998-01-10', 'Hermanburgh', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, '', '1990-04-26', 'Edgardohaven', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, '\"', '1995-08-22', 'Daxshire', 41);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, '\"', '1980-12-18', 'West Aydenborough', 52);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, '', '1974-03-20', 'Lake Travon', 84);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, '', '2014-11-13', 'West Tiana', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, '', '1984-01-20', 'Coltenmouth', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, '\"', '1997-06-24', 'North Myrticemouth', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, '', '2002-09-26', 'Port Leone', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, '', '1994-03-01', 'West Ephraim', 15);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, '\"', '1995-08-13', 'East Asa', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, '\"', '1981-12-23', 'Oralchester', 84);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, '', '1977-10-03', 'East Joeyhaven', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, '', '2005-12-10', 'Cummingsfurt', 74);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, '', '1989-03-03', 'Wymanburgh', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, '', '1979-04-20', 'Port Makennabury', 4);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, '\"', '1984-10-26', 'South Arvillaport', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, '', '2003-11-07', 'Alysaberg', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, '\"', '1984-10-13', 'East Michaela', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, '', '1976-04-17', 'Hellershire', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, '', '1991-07-31', 'Cronafort', 46);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, '\"', '1991-12-31', 'Lake Shanny', 97);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, '', '1982-08-16', 'West Lesleyborough', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, '', '2006-02-10', 'Aliland', 33);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, '', '2013-03-03', 'Donnastad', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, '\"', '2013-03-08', 'Boberg', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, '', '2004-07-07', 'South Wilford', 55);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, '\"', '2003-05-24', 'Hansenchester', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, '', '1970-12-03', 'Framiside', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, '\"', '1990-08-15', 'Mervinland', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, '', '1993-04-25', 'Hermanfort', 65);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, '\"', '1978-12-05', 'Lake Daphneport', 29);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, '', '1991-09-05', 'New Nevachester', 17);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, '', '2007-07-12', 'Krystinafurt', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, '\"', '2009-09-24', 'New Nakia', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, '\"', '1995-12-30', 'Newellfort', 73);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, '\"', '1990-07-27', 'Lake Americaburgh', 33);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, '\"', '2009-01-03', 'Felicityfurt', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, '\"', '2003-03-16', 'Naomifurt', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, '\"', '2015-11-12', 'Gerholdburgh', 68);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, '', '1987-12-10', 'Javiermouth', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, '', '2009-10-30', 'Jakubowskiview', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, '\"', '1997-08-20', 'West Sim', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, '', '2008-07-19', 'Sydneefort', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, '\"', '1982-07-15', 'North Damonland', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, '', '2018-10-20', 'Candelariofort', 60);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, '\"', '1983-09-04', 'Napoleonhaven', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, '', '1983-03-23', 'Keanuland', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, '', '1980-09-17', 'New Shakira', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, '', '2017-08-05', 'Port Orlando', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, '', '2009-02-19', 'Dominiquechester', 69);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, '\"', '2015-08-17', 'East Andrewland', 37);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, '\"', '1989-12-31', 'Grahamside', 72);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, '\"', '2009-04-06', 'West Bryonport', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, '', '2009-04-22', 'West Ruby', 95);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, '', '1988-05-24', 'West Aaronburgh', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, '\"', '1997-05-29', 'Dooleystad', 81);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, '', '1990-09-17', 'Port Kimberlyport', 63);

-- Таблица сообщений
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  from_user_id INT UNSIGNED NOT NULL,
  to_user_id INT UNSIGNED NOT NULL,
  body TEXT NOT NULL,
  is_important BOOLEAN,
  is_delivered BOOLEAN,
  created_at DATETIME DEFAULT NOW()
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 30457, 0, 'Veniam sint quis maiores odio numquam fuga. Qui atque natus esse. Velit consectetur minus molestiae quod laborum modi.', 1, 1, '2010-10-28 05:01:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 760804734, 21, 'Illum fuga ea eius magni non occaecati voluptatem. Voluptas dolorem accusamus distinctio sed voluptas laudantium. Qui ipsam excepturi fugiat et consequatur similique.', 1, 0, '2004-12-28 18:24:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 978389485, 522899, 'Atque soluta officiis magni enim debitis. Consequatur quas dolor laboriosam dolor corrupti optio sed earum. Facilis nulla excepturi est aut.', 0, 0, '2002-11-26 08:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 875490480, 45081429, 'Est assumenda inventore sunt eaque. Fugit et ut sequi et ipsam velit magnam ratione. Omnis rerum in labore est.', 0, 1, '2014-03-07 19:01:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 6, 75230, 'Velit velit earum eum dolore blanditiis saepe quod. Ipsa cumque aliquid nemo debitis doloribus. Deleniti expedita mollitia qui culpa soluta et.', 1, 0, '1972-10-13 02:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 0, 2, 'Nobis laudantium suscipit illum maiores facilis. Deserunt dolorem nihil debitis earum. Vel quos pariatur accusantium impedit officiis temporibus sed corporis. Perspiciatis sed veritatis temporibus eum consequatur dolor.', 1, 0, '1982-09-29 03:58:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 60104, 4211, 'Voluptate omnis placeat doloremque explicabo. Accusantium ut sed at qui.', 0, 1, '2014-12-09 14:28:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 594641, 3, 'In nisi ex praesentium numquam deleniti odit. Optio impedit aperiam saepe voluptas unde molestias asperiores. Omnis et voluptatum hic expedita accusantium ipsum est. Nesciunt quo ipsa saepe ab quisquam.', 0, 1, '1990-08-16 07:44:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 122321, 63, 'Sapiente omnis voluptatem animi corrupti ut ipsam mollitia. Numquam veniam sit omnis. Quas ex hic error quo quidem.', 0, 0, '1996-08-05 05:40:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 290927, 86, 'Aut quo nostrum eveniet explicabo. Voluptatibus rerum quasi quia dolores aut. Accusantium amet qui sunt sapiente doloribus omnis a.', 1, 1, '1993-12-10 22:41:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 770016371, 525423035, 'Consequatur id porro inventore aspernatur qui ea provident. Corporis atque ea voluptatem aperiam qui sed magni nihil. Eum hic dicta error doloribus exercitationem maiores non.', 1, 1, '2002-04-25 12:04:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 39, 1, 'Ipsa iste repudiandae voluptatum quaerat. Temporibus fugiat velit similique ab saepe adipisci. Consequatur consequatur aliquam ut cupiditate ex voluptatem.', 1, 0, '2010-01-25 03:32:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 433102, 15467, 'Labore dignissimos molestiae aut incidunt sed. Et qui quo iusto. Quam incidunt necessitatibus animi eos qui est. Optio recusandae eos sed quasi est et qui commodi. Et ab at explicabo consequatur minus dicta quibusdam.', 1, 0, '2009-09-26 14:26:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 468280369, 77623110, 'Facere omnis quia temporibus laboriosam. Rem ut amet exercitationem eos excepturi sed ut beatae. Expedita veniam nam rerum explicabo.', 0, 1, '1985-09-16 06:35:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 279, 0, 'Deleniti debitis voluptatum magni non quod asperiores aspernatur. Accusantium voluptas sint qui sit architecto qui. Impedit dicta illum consequuntur.', 1, 0, '1999-04-08 08:58:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 396, 998294, 'Molestias ut itaque perferendis amet aperiam suscipit. Facilis expedita velit at eos. Debitis nam dolor eveniet nostrum nesciunt incidunt.', 1, 0, '1977-07-21 22:10:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 31358, 45173, 'Quia illo dolorem qui est in veniam. Ut incidunt porro eius nemo et possimus commodi. Cupiditate magni fugiat est et cumque facere sed. Tempore debitis qui velit rerum odit voluptatem.', 1, 1, '1986-07-13 03:24:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 0, 252022564, 'Delectus doloribus eligendi id ducimus. Reprehenderit autem sunt sunt consequatur aspernatur aliquam similique dolores. Voluptatem cum minima voluptatum odio.', 0, 1, '1979-12-28 13:56:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 63227938, 5619, 'Et rem repellat dolore est praesentium ipsam. Molestiae placeat est cupiditate. Ex error debitis qui aut quia. Nesciunt ab aspernatur dolores.', 1, 0, '2004-01-14 18:00:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 268827427, 510961, 'Praesentium sunt animi rerum aut quo quibusdam facilis. Omnis quia vitae ut veritatis. Voluptatibus occaecati tempora vero. Adipisci et rerum consequatur.', 0, 1, '2005-08-15 02:16:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 6, 72339237, 'Nihil commodi magnam maiores quis cum quibusdam quas. Ea pariatur laborum pariatur fuga nam. Blanditiis odit fugit fugiat et eligendi quo nihil. Magni odio maiores ut sed possimus illo odio.', 0, 0, '2018-01-03 02:36:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 6, 6829, 'Dolorem molestias debitis autem a ex et itaque. Magni quia eos dolor iste dolor. Et qui dolore iste vel tenetur. Omnis harum sed cupiditate nisi. Occaecati accusantium non est a.', 0, 0, '2001-12-15 19:48:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 517005, 7, 'Nisi incidunt culpa qui dolorem quia porro optio aliquam. Ut eveniet dolorem delectus voluptas quis. Molestias laborum omnis veritatis voluptatum molestiae atque ut. Assumenda repudiandae id nesciunt ipsum totam natus harum.', 1, 1, '1995-06-22 03:27:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 678, 86926, 'Enim quo et quos aut ea optio. Ipsum in sit similique voluptates qui. Quo dolores incidunt saepe qui sit libero.', 0, 1, '1997-01-16 13:13:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 4565915, 0, 'Quas et et in dolorem eum deleniti esse. Rem fugit est accusantium labore accusantium aspernatur. Et fugiat accusamus aliquam.', 0, 0, '2012-05-06 05:03:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 7960795, 376798636, 'Ducimus accusantium provident quia nisi aspernatur. Quia ducimus quisquam dolorem. Aut earum temporibus omnis et fugit. Labore sit accusantium repudiandae porro.', 0, 0, '1975-11-24 08:26:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 68, 13453, 'Mollitia asperiores asperiores autem animi vitae velit. Explicabo omnis officia quam voluptate modi. Saepe ut minus enim omnis corporis praesentium. Deleniti ab ipsum quos.', 0, 0, '2009-07-17 13:03:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 0, 6, 'Voluptatibus excepturi ut non voluptatem laborum provident. Quidem omnis quo delectus rerum sed qui. Cum laborum quo eos minus quo. Ex sit est assumenda dolores pariatur suscipit.', 1, 0, '2013-10-15 19:53:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 0, 6513, 'Aut culpa minima rerum eos. Fugiat minus laborum minima est occaecati. Optio sit blanditiis ut inventore non ullam est. Harum itaque fuga ab sint earum.', 0, 0, '1992-04-11 06:55:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 0, 20066356, 'Nemo eaque sed veritatis culpa facere corporis quasi. Autem voluptatem optio illo quia dignissimos voluptas rerum. Voluptate voluptas nesciunt sunt totam laborum.', 1, 0, '1996-10-10 00:07:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 8, 34328, 'Rem impedit dolorem quas nam itaque quae. Explicabo nostrum et ut minima autem qui sapiente qui. Non qui nisi qui quibusdam.', 1, 0, '1981-04-20 03:26:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 365, 61925, 'Et veniam dolorem incidunt. Necessitatibus est eos amet laudantium. Dignissimos voluptatibus ipsum voluptatem iste a fugit. Ut accusantium ipsam veniam.', 1, 0, '1980-02-01 19:28:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 59401293, 60, 'Aspernatur quod ut iste. Maiores maiores voluptatem eveniet magnam odio sit delectus. Dolor omnis ut exercitationem eum dolor. Ratione ut deserunt et dolore ab dolores consequatur.', 0, 0, '2011-03-15 20:36:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 5249, 13, 'Ex possimus cupiditate et unde exercitationem. Eaque quo natus ab. Et odio facilis mollitia et facilis cumque.', 1, 0, '2016-08-07 02:51:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 212916580, 84, 'Est quo excepturi vel molestias totam iste quam. Voluptatem dolore enim sed delectus. Ad suscipit dolorem maxime quos et amet. Eum explicabo et ut modi sit.', 0, 0, '1996-12-24 04:23:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 749196, 205032, 'Voluptate omnis porro nisi nam deserunt est qui. Quo nihil magnam voluptatibus quia rerum. Architecto veritatis consequatur eos doloribus et dolore nihil. Architecto quia vel ad explicabo omnis aut temporibus cupiditate. Quasi at nisi tempora perspiciatis.', 1, 1, '1986-02-26 12:51:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 5, 772497, 'Molestiae sit nobis est quis modi consectetur. Facilis omnis enim doloribus iure sed laudantium. Hic voluptas autem est voluptatibus nulla sint officia numquam. Ut quae fuga dignissimos quasi amet non eius.', 0, 0, '1993-04-04 16:37:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 13, 967639856, 'Nostrum nam molestiae et ullam occaecati. Perferendis iure dolore magni distinctio laboriosam nobis voluptas. Cumque tempora quod eum ipsum sunt deleniti deleniti. Cum nisi dicta vel eaque.', 0, 0, '1973-10-01 17:24:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 72898, 3, 'Aut ipsum voluptatum explicabo aspernatur ipsa omnis repellendus. Ipsa delectus molestiae qui. Dolore eveniet et quisquam et vel non laudantium in. Totam voluptatibus qui excepturi et corporis.', 0, 0, '2016-08-25 14:15:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 0, 98267, 'Fuga illum quia ea quia ratione distinctio. Voluptatibus saepe porro consequuntur aliquid dolore debitis. Nihil porro rem ut ab. A pariatur non earum deserunt laboriosam voluptas laudantium.', 0, 0, '2016-03-09 18:12:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 65114, 308, 'Error quo qui dolores. Qui eum aut asperiores. Aspernatur non sequi repellendus illum aut. Adipisci accusamus vitae qui.', 0, 1, '1985-07-02 01:29:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 688, 80314, 'Eum iste maxime sed sit eveniet. Ducimus eos vel totam provident. Quibusdam ut blanditiis veritatis facilis nam sapiente quisquam. Occaecati magnam officia deserunt.', 1, 0, '1999-04-14 14:33:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 747468, 58522, 'Voluptatibus qui rem vel id dignissimos. Assumenda nisi maxime fugiat qui assumenda nulla.', 1, 0, '2007-11-20 09:38:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 92742745, 84749858, 'Ut sed doloribus eius optio est ut. Culpa earum consequatur maiores consequatur. Quas perspiciatis aperiam debitis aut.', 0, 1, '1991-04-05 10:05:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 588068, 360995096, 'Vel veritatis id delectus eum quis accusantium qui. Eveniet officiis maxime consequatur sit aut tempora fugiat vel. Nihil sint quia facere perspiciatis cupiditate illum. Amet et unde dolor doloribus illo nisi non.', 0, 0, '1986-07-29 00:19:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 4, 2709808, 'Et asperiores sequi enim quibusdam est assumenda. Fugiat molestias quas nemo quos perferendis voluptatum. Ipsa nesciunt aut eaque aut incidunt nemo quod. Laboriosam asperiores ea aut qui consequatur.', 0, 0, '2016-07-16 06:54:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 0, 0, 'Quae repudiandae velit modi iure nihil est eos. Nulla quo sint eos. Velit molestiae incidunt incidunt omnis voluptatum et eos tenetur. Qui in illo aperiam eum eos vitae.', 1, 0, '2012-07-10 00:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 8090, 86862140, 'Facilis est sint fuga consequuntur nisi ab et. Temporibus adipisci aut eos. Odio iste accusamus alias facere.', 0, 1, '1981-07-05 12:21:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 81261583, 291, 'Nemo dolores nesciunt quos totam placeat. Et amet sint est error quis error dolorum.', 0, 0, '1999-07-23 23:30:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 22, 0, 'Numquam omnis necessitatibus odit est sed labore. Nulla sed excepturi nihil ab maiores doloremque. Quod ipsam laborum et sit quia non. Consectetur ut repellat a facere ut sit.', 1, 1, '1983-12-20 13:42:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 2, 863150206, 'Aspernatur nesciunt quasi qui harum sint et. Sunt recusandae accusamus explicabo asperiores quis labore. Est voluptatem delectus magnam dicta rerum rerum et porro. Quam provident odit eveniet reiciendis veritatis quibusdam ut et.', 0, 0, '1991-05-13 09:47:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 329158, 368, 'Et quas modi in quibusdam. Est dolores molestiae consequatur eaque. Sint earum deleniti autem impedit sint aliquam.', 1, 1, '2010-10-23 02:53:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 5, 7116, 'Officia maxime maxime perferendis itaque. Et cum veritatis omnis debitis error. Inventore ut labore maxime omnis aut alias aliquid omnis. Velit inventore ipsa non provident sit et.', 1, 0, '2013-05-24 21:41:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 82719, 7, 'Quos omnis quaerat sit illo labore quia harum. Sit nulla omnis occaecati dolorem necessitatibus facilis. Repellendus eos aliquid possimus esse dolor.', 1, 0, '2007-07-05 05:35:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 5402606, 674535, 'Debitis consequatur voluptatem itaque. Facilis quibusdam nulla quis sed deleniti sequi est. Vel aut totam pariatur ducimus rerum laborum dolor.', 1, 1, '2006-12-02 09:10:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 44233, 43510, 'Rerum aut porro sunt quia iste. Error accusantium voluptatibus officia qui rerum. Non dicta ipsa in. Qui aspernatur saepe impedit at ullam minus minus deserunt.', 1, 0, '1995-09-15 02:09:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 7, 26111, 'Vel veritatis dolorem ex ut beatae architecto. Ut natus doloribus ipsum soluta ratione voluptatem.', 1, 1, '1988-05-19 04:49:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 0, 579, 'Explicabo magni eos voluptates omnis. Voluptate et reprehenderit sapiente molestiae recusandae dicta esse. Eum occaecati omnis eaque libero et reiciendis. Non rerum eum minima voluptatem voluptas molestias dolores. Laboriosam mollitia quae enim ea occaecati asperiores est.', 0, 0, '1995-07-27 00:52:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 606460, 631, 'Ullam dolor pariatur minima voluptatibus molestiae. Odio magni accusamus non perspiciatis. Labore commodi et et perferendis.', 0, 0, '2002-05-05 13:53:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 5, 5766067, 'Veniam impedit corrupti sed minus. Qui quasi explicabo aut esse. Molestias ipsa suscipit dicta numquam. Animi omnis molestiae enim magnam aut.', 1, 1, '2000-06-09 00:41:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 0, 0, 'Corrupti amet deleniti ut ab eveniet est provident harum. Sit reprehenderit similique iste eveniet reprehenderit aperiam asperiores. Neque est modi aspernatur. Nihil doloribus voluptates voluptatem quos autem alias cupiditate dolor.', 1, 0, '1982-03-20 03:04:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 418, 0, 'Sunt est voluptate voluptatem id. Reprehenderit dolorem laborum rerum cumque aut. Cumque maxime vero occaecati nostrum voluptate eum. Autem maiores odit qui quia ipsa.', 0, 1, '2007-10-07 18:51:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 627, 5420, 'Ducimus sed dolores ea adipisci. Suscipit maiores ex soluta fugiat.', 0, 0, '1976-08-14 06:07:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 696, 35, 'Saepe error dolores sunt voluptatum et. Sequi dolores enim possimus. Exercitationem provident voluptatem maxime omnis inventore. Et veniam id voluptatem quis incidunt nam.', 1, 0, '2013-03-11 00:52:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 0, 1592, 'Assumenda itaque natus voluptas. Ex exercitationem dolores ullam blanditiis. Sit sequi necessitatibus fugiat id at voluptas modi eligendi. Voluptatem cupiditate minus nostrum fugit consequatur nemo. Dolor ipsa natus repudiandae.', 0, 1, '2005-11-14 10:14:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 9783800, 901378, 'Quos corrupti animi et temporibus ut et temporibus. Voluptatem cum dolores ad voluptatibus architecto earum sed et. Dolores deserunt nisi eum eos aut inventore.', 0, 1, '1993-07-06 21:03:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 723184, 49, 'Corrupti suscipit porro exercitationem molestiae in. Labore hic et minus et libero. Quo nostrum dolores velit nemo repellendus omnis. Ex est porro sit illo officia expedita.', 1, 1, '1983-07-31 21:01:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 7499, 51201850, 'Nobis nemo sed iste labore et sequi. Sunt eaque est harum fugiat pariatur. Sunt reiciendis a odio perspiciatis hic distinctio.', 1, 1, '1999-03-02 19:47:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 75937698, 2885917, 'Voluptatem iusto consequatur cum nisi et alias porro omnis. Accusamus porro quia sed recusandae totam eos doloremque. Nostrum iure perspiciatis consequatur rerum laboriosam consectetur accusamus consequatur.', 0, 0, '2002-01-30 02:52:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 0, 1, 'Placeat et quisquam molestiae id. Est nam molestiae eligendi quia nihil et. Dolorem rerum accusantium totam asperiores. Sunt consequuntur mollitia reprehenderit quod numquam.', 0, 1, '2007-12-16 21:29:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 4, 0, 'Assumenda similique voluptatem sit autem consequuntur. Sapiente accusamus id molestiae qui. Cupiditate enim incidunt quisquam ut. Nihil consectetur velit repellat eaque sed autem laudantium.', 1, 1, '2017-05-24 23:11:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 572532, 9004, 'Ratione inventore voluptatem natus laboriosam qui. Sed voluptatem aut aut autem aliquam est. Optio corrupti consequuntur impedit debitis. Sapiente asperiores laudantium voluptatem molestiae.', 1, 0, '1984-07-02 13:20:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 406, 90700703, 'Perferendis ab cupiditate et voluptatem. Vel et aut eaque eligendi vero omnis incidunt. Voluptas quae reprehenderit mollitia eaque et eum pariatur. Deserunt at dignissimos numquam pariatur provident.', 0, 1, '1992-06-24 05:30:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 699709235, 358574582, 'Quos quo perferendis at est. Quia et ad occaecati exercitationem. Rem quia ipsam mollitia quae aliquam placeat dolor.', 1, 0, '2010-02-11 10:51:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 324, 0, 'Dignissimos sed velit et commodi distinctio est. Ut quo deleniti qui tempora quia. Atque voluptatum doloribus praesentium repudiandae eos explicabo ad. Qui nobis in quis debitis officiis.', 1, 1, '1988-11-11 04:01:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 7, 6592, 'Ut eaque voluptas animi dolore asperiores eos et. Dolorum vitae odit id error consequatur quos voluptatibus. Ab officiis quasi et voluptatem.', 0, 0, '1996-07-17 10:33:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 933287241, 0, 'Quo ut porro placeat quaerat in eaque. Corporis consequuntur sed natus quis sint et quis. Commodi quia ullam sit laudantium ut unde iste.', 1, 0, '1970-08-02 10:09:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 92, 5109, 'Ex eius et illum temporibus qui. Sit ut corrupti et quaerat quos. Facere aut cumque saepe rem facilis facere eum officiis. Quibusdam eaque temporibus recusandae aut esse exercitationem aperiam.', 0, 1, '1973-09-09 09:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 405520, 151240, 'Vero et quo optio est voluptatibus. Corporis molestias natus repellendus eligendi sed maiores doloremque. Porro rerum sed velit deleniti ut quos. Nobis adipisci et ut repudiandae officiis.', 1, 1, '1997-01-12 05:57:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 2223063, 1856, 'Ad in dicta optio quae quidem rerum blanditiis ut. Velit voluptatem aut tempora fugit molestiae dolorem eius. Saepe qui repellat a itaque.', 0, 0, '1988-12-12 02:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 0, 1, 'Dolorem possimus nobis molestiae dolorem odio non quod illo. Sunt nobis cumque necessitatibus consectetur quis veniam. Est consequatur debitis reiciendis tempore eius soluta. Voluptatem quia ut libero quibusdam nam eos quis.', 0, 1, '2000-12-27 04:58:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 52435, 83, 'Qui reprehenderit est eos ut. Perferendis doloremque ea ab sunt consequatur eligendi. Quia possimus cupiditate distinctio labore eos eveniet non aut. Sit velit sit natus eligendi voluptatem minus.', 1, 0, '2002-11-02 01:35:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 342610, 212, 'Impedit rerum adipisci est blanditiis impedit. Explicabo illum doloribus unde sed. Et veniam ut ullam. Quidem suscipit sequi error maiores eum ut fugit.', 1, 1, '1989-01-18 17:46:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 454729599, 68273471, 'Consequatur nemo repudiandae non voluptatem sed unde. Temporibus magni sint repudiandae dolor. Et veniam aliquid velit placeat temporibus ut. Dolor necessitatibus cupiditate impedit.', 0, 0, '1994-10-05 20:28:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 0, 24163, 'Quisquam ipsum nihil error dolorum eos. Facere voluptatem aut ea veniam tempore tempora. Consectetur omnis laboriosam iusto error excepturi quos aut. Doloremque maiores quo quidem odit quae quia eveniet.', 0, 0, '1975-07-02 16:07:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 421064255, 69, 'Id animi laborum excepturi sint non laudantium. Aspernatur natus aut autem necessitatibus nobis molestias. Saepe fugiat qui ut et et. Dolor tenetur sapiente omnis officia.', 0, 0, '1985-09-20 15:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 96, 625, 'Nobis nisi libero et et non quod officia. Amet magnam voluptatum consequatur. Ipsum ut deleniti repellendus eveniet aperiam dolorem.', 1, 0, '2012-01-10 21:59:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 3737, 2650, 'Et ea molestias ea. Voluptatibus minus veritatis vero error rerum rerum. Minima et ipsum rerum voluptatem est. Molestias aspernatur est commodi sed.', 0, 1, '1982-03-22 06:40:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 0, 824287918, 'Maiores qui sunt rem sint repellat quia quasi vitae. Dicta porro quia non ab voluptatem voluptates. Aut adipisci sit voluptas corrupti sed asperiores. Ipsum maiores fuga iure aut odit reprehenderit.', 1, 0, '1984-01-12 20:06:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 7451, 62618, 'Commodi repudiandae qui voluptatem modi aspernatur deleniti aut. Rerum dolores tempore at debitis. Earum voluptates alias fugit totam ullam exercitationem.', 1, 0, '1989-02-25 06:50:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 557276970, 5686, 'Est inventore omnis exercitationem deleniti magnam est et. Nihil numquam eveniet qui qui. Ratione est optio eaque dolorem nemo.', 1, 1, '1993-12-25 12:30:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 968011998, 87079930, 'Est dolor quae eos nesciunt dignissimos vitae voluptates. Quos sapiente et esse unde dignissimos autem. Libero repellat ut et necessitatibus.', 0, 0, '1978-03-18 14:26:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 2, 8024538, 'Accusamus non optio cumque voluptas nam. Autem aut esse velit quia quidem quibusdam iusto. Mollitia omnis autem cupiditate vitae ducimus voluptas facilis. Quis voluptatum et fuga.', 0, 1, '1985-08-11 01:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 47, 86430250, 'Eum minima et vero. Neque vitae eum ex ea nihil ut ut. Et qui cumque laboriosam qui incidunt. Autem eius quia aut quia nesciunt aliquid.', 0, 0, '1994-09-27 01:49:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 22, 273694, 'Quos aut voluptatem facilis nulla omnis. Veniam officiis expedita vitae autem ut est pariatur. Ut ex atque minima possimus asperiores provident eius.', 1, 0, '1986-12-09 05:49:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 2340, 438578, 'Impedit error sint autem nobis molestias distinctio omnis dolores. Asperiores at ut et fugiat non numquam. Accusamus earum itaque omnis eligendi odio praesentium et.', 1, 1, '1996-04-16 13:28:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 952, 1674, 'Eos et officia voluptate dolorem nihil odit. Exercitationem ad omnis optio hic et. Laborum voluptate et vero quisquam.', 0, 0, '1992-03-13 07:00:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 82, 0, 'Rerum soluta ratione impedit velit ullam nihil. Veniam quae quis id necessitatibus in. Sint adipisci eaque eos autem.', 1, 0, '2018-06-22 14:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 397358390, 92657, 'Placeat error consequatur non ea. Veritatis recusandae ab repellendus enim dolores. Eius voluptatem consectetur ullam nemo deserunt sint. Nesciunt ea quibusdam libero dolores eos molestias vel.', 1, 1, '1985-02-12 04:27:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 423805, 0, 'Ea ullam quia nam sit. Officiis voluptatum voluptas asperiores rerum. In inventore ipsa ratione. Explicabo sed eligendi cum dolorem. Aut veritatis et velit id provident.', 1, 1, '2011-09-25 03:20:57');


-- Таблица дружбы
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL,
  friend_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  requested_at DATETIME DEFAULT NOW(),
  confirmed_at DATETIME,
  PRIMARY KEY (user_id, friend_id)
);

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 66694470, 0, '1973-04-13 21:58:36', '1989-02-18 20:03:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 9840, 896045377, '2013-04-02 03:23:28', '1985-03-09 01:19:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 7884458, 8937635, '1998-11-24 20:54:30', '1973-03-23 06:13:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 0, 5, '1983-04-17 02:43:29', '2012-03-05 21:02:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 71812076, 3553624, '1974-11-30 06:21:44', '1991-07-28 15:38:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 8638, 127807414, '1994-12-16 13:47:54', '1994-02-16 11:06:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 836768, 3, '2019-08-11 05:19:58', '1970-02-09 14:50:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 17613902, 97752, '2016-01-30 07:18:29', '2009-11-02 08:27:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 146678, 381, '2004-01-26 23:23:45', '2012-11-08 23:46:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 517697, 823, '2014-12-11 20:23:58', '1991-03-16 21:32:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 480, 366, '2004-03-09 06:33:29', '1982-07-16 22:23:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 53, 2, '2000-08-23 05:26:30', '2017-07-14 09:03:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 283, 685190922, '1980-04-22 10:15:20', '1996-10-16 23:45:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 744, 271374, '2008-03-08 14:35:40', '1999-10-01 11:09:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 41165518, 348953313, '1996-01-24 14:20:21', '1979-03-10 16:28:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 950636, 37867643, '1978-12-29 22:43:50', '2002-12-31 16:22:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 8190606, 6, '1987-05-30 17:56:51', '2003-12-28 13:27:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 516, 9, '1994-10-21 11:25:25', '1988-03-19 15:49:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 715471168, 350405463, '1997-02-25 00:11:14', '1996-01-25 05:18:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 725, 42614091, '2001-08-05 06:06:45', '1973-02-19 03:19:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 43259376, 202416, '1985-12-19 01:13:58', '2017-04-22 18:27:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 6, 14495623, '2018-08-10 22:37:55', '2014-11-03 21:05:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 7, 631, '1973-07-09 06:03:48', '2018-05-03 21:52:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 729, 906810897, '2013-09-20 00:43:30', '1986-05-22 01:44:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 705393, 9, '1977-02-20 22:36:11', '1975-10-01 00:52:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 79713748, 36, '1973-07-10 03:59:49', '1978-01-06 10:31:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 47874, 268730, '1989-10-28 02:31:41', '1972-09-24 10:28:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 26097980, 134889, '1986-10-06 15:35:43', '2008-02-11 02:27:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 387841643, 211035, '2012-03-04 05:22:36', '1986-10-22 02:14:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 25089, 2, '2002-08-05 16:19:37', '1977-08-09 01:11:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 5735948, 8, '1975-08-15 14:52:29', '2002-09-27 04:24:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 529046, 305243508, '2009-03-20 09:45:50', '1970-09-16 23:30:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 37967504, 0, '1989-12-08 10:17:21', '1995-09-23 06:55:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 2135, 371, '1991-03-27 08:04:20', '1981-05-28 09:03:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 32, 186571651, '1990-09-26 16:06:28', '2007-04-18 06:56:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 4, 982508, '1977-12-23 23:27:22', '2008-01-05 04:21:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 831, 915, '1979-06-22 15:27:27', '1971-10-10 23:11:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 755466384, 37618, '1989-09-06 04:39:58', '1970-01-28 17:15:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 632958211, 160, '2004-06-08 22:59:19', '1970-12-28 15:34:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 11851533, 65, '1981-06-23 23:34:38', '2012-05-09 04:03:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 3140, 7382055, '2000-01-24 08:23:28', '1983-05-24 14:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 36683882, 71999, '1998-12-24 03:26:26', '2018-04-06 02:31:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 90115293, 34281072, '1999-06-20 08:28:43', '1977-07-16 05:17:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 888073867, 824, '1972-08-22 11:51:32', '1981-06-07 09:25:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 3, 9760486, '1987-05-28 01:38:13', '2016-04-11 08:45:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 3858012, 0, '2018-04-08 22:44:53', '1985-02-03 21:25:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 8, 80618, '2014-03-15 10:53:40', '2011-10-19 07:06:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 77336698, 28, '2011-07-30 08:12:42', '1999-10-22 13:54:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 13, 1, '2015-08-13 01:08:18', '1994-09-08 02:17:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 6556651, 3898825, '1990-01-08 11:26:45', '2008-12-07 15:28:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 362830427, 762475316, '2017-05-15 13:46:05', '1991-07-02 00:40:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 9, 81256, '1977-08-14 03:45:06', '1982-03-10 17:51:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 45231723, 96, '2012-12-03 20:18:49', '1983-09-29 05:52:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 77868, 21532, '1977-11-18 02:54:15', '1975-03-22 12:09:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 817, 533750, '1999-10-30 19:27:14', '1980-10-05 12:18:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 307, 7776708, '2005-06-14 22:55:29', '1995-11-14 23:05:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 9858, 77108, '1994-07-08 11:05:15', '1988-12-21 09:22:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 92464755, 81955958, '2006-06-21 06:20:09', '1980-04-05 23:28:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 1702, 30866318, '2018-08-16 16:38:44', '2011-09-29 06:34:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 187, 432113047, '1974-09-06 09:11:59', '1987-04-29 15:38:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 683, 91762664, '1995-06-08 06:03:27', '1997-03-03 15:27:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 583943, 4605, '1997-11-07 00:52:01', '1993-12-26 08:42:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 3719964, 1983, '2003-10-26 21:39:57', '1997-08-02 07:27:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 34, 9607, '1993-06-04 10:16:44', '1977-09-06 22:15:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 1, 934, '1984-01-04 22:51:10', '1974-01-29 01:10:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 54, 474484893, '2012-05-03 00:39:46', '1994-05-01 18:28:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 555908279, 997, '1980-03-27 16:24:20', '1990-07-23 13:24:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 3662169, 297, '1970-12-29 11:10:50', '1999-05-28 02:55:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 456193, 824, '2009-05-26 22:22:32', '1980-09-02 16:10:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 2813, 975077, '2004-01-03 14:27:41', '1992-09-01 05:58:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 12243961, 213788402, '1973-10-26 08:31:52', '1977-06-09 12:21:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 913, 0, '1999-07-19 04:10:27', '1983-02-04 14:10:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 788905146, 77, '1980-10-16 08:20:02', '2001-07-07 11:48:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 24364795, 0, '1985-08-28 16:54:14', '1981-11-09 06:59:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 8644, 9227, '2010-12-14 00:38:30', '1971-06-24 11:10:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 64345984, 0, '2018-12-22 02:04:00', '1981-01-11 11:06:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 46, 836035349, '2010-08-09 05:00:43', '1970-07-22 12:17:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 64444276, 0, '2014-11-11 22:59:22', '1990-12-16 06:47:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 9425893, 13, '1991-04-12 09:20:35', '2013-11-16 02:11:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 57477381, 30999, '2009-04-04 07:56:07', '1973-04-20 15:11:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 93349745, 0, '1987-02-06 01:07:18', '1989-01-05 21:34:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 84, 2367893, '1980-08-07 23:58:25', '2014-12-20 19:14:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 35, 822364, '2019-04-23 21:22:55', '1998-06-28 22:20:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 6816059, 27, '1973-04-16 09:41:23', '1990-07-07 22:25:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 58924, 28737, '2016-12-10 19:05:48', '1999-05-27 11:50:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 2414529, 80066, '2008-04-18 04:57:10', '1992-12-15 13:14:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 738, 0, '2003-04-03 05:40:20', '2000-07-11 00:45:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 42, 642386, '1997-07-07 16:27:14', '2018-10-27 02:55:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 19, 6674244, '1993-06-10 01:47:56', '2008-01-23 19:40:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 445113, 837618, '2012-06-14 00:05:14', '1992-07-11 17:39:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 801, 23, '1993-02-03 14:05:44', '1983-09-14 16:38:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 246712211, 77, '1973-05-28 00:47:08', '2013-01-10 07:11:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 746367, 0, '2016-06-16 08:36:31', '1976-04-23 07:14:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 714, 63, '1998-06-16 19:21:22', '1974-08-28 01:25:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 847, 216111078, '1979-12-19 17:54:12', '2012-08-21 07:14:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 724253, 40, '2005-02-23 19:39:54', '2017-06-04 13:27:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 9059, 2219, '1992-12-08 12:28:17', '2000-08-03 07:54:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 9735498, 180573, '1992-05-05 05:49:36', '2008-12-31 21:30:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 9202830, 83609, '1990-07-30 09:18:52', '1991-05-16 23:24:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 465426958, 396173, '1981-06-16 21:04:13', '1991-12-07 02:19:14');


-- Таблица статусов дружеских отношений
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
);

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (102, 'Dr.');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (103, 'Miss');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (127, 'Mr.');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (129, 'Mrs.');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (105, 'Ms.');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (101, 'Prof.');


-- Таблица групп
CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
);
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'a');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'ad');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'animi');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'aperiam');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'architecto');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'asperiores');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'aspernatur');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'atque');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'blanditiis');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'corrupti');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'cum');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'cupiditate');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'doloribus');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'eius');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'est');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'eveniet');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'excepturi');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'facere');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'id');
INSERT INTO `communities` (`id`, `name`) VALUES (86, 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'in');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'incidunt');
INSERT INTO `communities` (`id`, `name`) VALUES (94, 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'ipsum');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'itaque');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'laboriosam');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'laborum');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'laudantium');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'magni');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'maiores');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'minima');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'necessitatibus');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'non');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'numquam');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'occaecati');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'officiis');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'praesentium');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'quaerat');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'quibusdam');
INSERT INTO `communities` (`id`, `name`) VALUES (48, 'quidem');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'recusandae');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'repellendus');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'reprehenderit');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'saepe');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'similique');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'temporibus');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'totam');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'veniam');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'voluptas');

-- Таблица связи пользователей и групп
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (community_id, user_id)
);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (0, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 3502634);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 62415524);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 374);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 393029);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 389902);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 9936);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 573);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 73340);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 7863);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 516718);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (253, 420920);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (271, 915);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (332, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (365, 687);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (473, 3459);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (509, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (556, 385811);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (714, 51594);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (748, 2523);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (842, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (974, 569589832);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1650, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1746, 437963);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1838, 36451);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1919, 8583);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2033, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3142, 1088);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5670, 432134390);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5839, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5968, 201263165);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6300, 10646);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6759, 54455329);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7986, 2288);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8057, 623558);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9245, 307309);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11085, 11800);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16184, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23145, 28257036);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28122, 753612);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29542, 286927);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48495, 65605065);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54503, 821516033);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61933, 9711);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62142, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (113053, 3903323);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (133336, 883);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (169739, 921);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (278201, 186324942);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (287975, 494175034);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (501474, 88789);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (582814, 648);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (593291, 45418);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (594903, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (671713, 607838930);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (687611, 236809271);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (842275, 799);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (899306, 400635);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (953767, 675301);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (981834, 266852976);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1606559, 62920026);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2103275, 224);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3156722, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3486662, 656499);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3547059, 728418738);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3655398, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3656431, 609621719);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4714210, 57569);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4959801, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5551167, 1710145);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5861005, 198);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6446194, 35936846);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7228131, 184901366);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7763891, 2998);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14142449, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17811629, 6226290);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39547677, 490789);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41061534, 509453450);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41854906, 2401);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48088821, 48787);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53195903, 507504312);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71322455, 7722215);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84906826, 6698363);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99985719, 3899);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (141692748, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (173293691, 45257);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (185679624, 5574188);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (205799065, 371);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (386299923, 70832);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (425099243, 217);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (501554595, 846859228);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (579434547, 491428816);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (744481237, 191365);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (762306019, 8274653);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (854197527, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (921528939, 435439267);


-- Таблица медиафайлов
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  media_type_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  filename VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  metadata JSON,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'sit', 0, NULL, '2001-02-14 22:11:13', '2016-08-14 05:56:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'voluptas', 359780, NULL, '1998-04-05 12:54:43', '2007-03-22 18:17:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'beatae', 66875, NULL, '1972-09-02 23:12:59', '1995-10-17 10:22:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'asperiores', 8017, NULL, '2007-08-18 18:41:23', '2005-04-24 13:08:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'et', 85743529, NULL, '1977-11-03 23:07:42', '1983-05-04 14:06:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'distinctio', 13749008, NULL, '2007-06-07 20:27:21', '2009-09-18 20:24:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'explicabo', 232968, NULL, '1996-07-10 10:25:50', '1980-06-12 01:52:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'aliquid', 48555540, NULL, '1988-12-04 05:59:01', '2004-02-22 22:10:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'nobis', 7214712, NULL, '1988-04-11 15:19:01', '1998-11-24 09:19:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'sequi', 2742, NULL, '1973-06-14 00:17:04', '1986-09-14 08:17:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'natus', 974448, NULL, '1974-12-15 18:47:47', '2001-03-09 09:48:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'eos', 321225, NULL, '1981-03-25 09:27:14', '1986-09-30 16:05:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'quaerat', 1423, NULL, '1984-02-03 23:20:22', '1981-06-30 12:56:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'alias', 0, NULL, '2016-08-13 11:29:07', '1973-06-26 00:55:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'sunt', 0, NULL, '2010-11-07 19:40:54', '2014-10-01 11:43:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'alias', 82171, NULL, '2014-06-08 09:40:01', '2015-04-05 12:28:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'consequatur', 0, NULL, '1979-07-31 00:38:23', '1984-04-25 03:48:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'harum', 232299163, NULL, '1972-12-31 14:34:29', '2006-09-19 20:51:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'minima', 0, NULL, '1983-06-06 09:01:54', '1973-11-06 11:57:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'voluptates', 903936, NULL, '1993-08-08 11:19:00', '1998-06-20 10:40:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'atque', 65, NULL, '2015-03-21 21:17:12', '2006-10-25 05:28:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'minima', 36, NULL, '1994-09-19 11:52:43', '1970-09-24 21:29:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'alias', 33847, NULL, '2003-11-23 23:02:46', '1991-05-06 19:19:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'eos', 93422, NULL, '1995-07-01 07:25:30', '2011-07-30 11:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'cupiditate', 43027, NULL, '1990-04-29 14:01:10', '1981-12-01 03:38:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'voluptatem', 113, NULL, '1994-06-06 02:31:26', '1975-09-16 16:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'voluptatum', 89482130, NULL, '2018-03-17 06:54:43', '1975-08-19 03:40:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'adipisci', 692248, NULL, '1975-12-24 18:53:42', '1985-12-02 20:19:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'fugit', 4, NULL, '1974-02-07 15:51:06', '1984-11-02 04:16:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'earum', 45085355, NULL, '1981-01-19 20:17:40', '1974-09-12 10:56:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'consequatur', 9, NULL, '2014-01-01 18:24:26', '2013-01-25 23:21:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'et', 165341, NULL, '2002-06-08 01:45:32', '2018-07-15 17:54:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'nesciunt', 3, NULL, '1980-11-02 00:11:07', '1995-06-02 11:17:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'perspiciatis', 26666951, NULL, '1972-04-14 19:37:52', '1978-01-22 00:10:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'fugiat', 652171, NULL, '2005-12-25 07:33:57', '2015-03-01 10:02:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'repellat', 0, NULL, '1974-04-17 23:57:49', '1994-10-16 15:48:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'et', 3739694, NULL, '1996-12-13 17:56:18', '1996-04-12 09:20:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'vero', 0, NULL, '1988-09-19 03:45:55', '1998-04-07 00:34:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'doloribus', 7, NULL, '1994-04-27 10:11:28', '1985-01-07 08:58:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'voluptatem', 3894, NULL, '1990-06-23 01:37:25', '1999-05-06 12:08:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'saepe', 822214857, NULL, '2013-09-16 09:17:27', '2010-01-01 03:30:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'ea', 9, NULL, '2009-12-06 21:22:48', '1988-05-27 14:14:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'ea', 481, NULL, '1971-04-11 09:23:03', '2004-07-20 14:06:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'repellendus', 3978, NULL, '1999-08-29 11:33:00', '1991-01-16 00:52:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'eius', 94735769, NULL, '2015-04-21 21:50:29', '1977-03-23 02:35:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'non', 60367, NULL, '1973-08-12 23:46:43', '1984-10-06 01:10:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'quas', 822921, NULL, '1976-01-18 08:10:00', '1980-07-26 12:31:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'ad', 75821483, NULL, '1979-04-12 14:28:20', '1970-10-16 02:49:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'id', 5028, NULL, '1972-09-20 03:51:44', '1996-01-23 11:57:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'nam', 874, NULL, '1989-03-05 04:46:03', '1974-08-19 15:46:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'consequatur', 76, NULL, '1995-12-15 02:52:45', '2014-09-13 21:41:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'veniam', 0, NULL, '1971-07-09 05:50:10', '1998-12-28 13:09:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'tempora', 4, NULL, '2009-04-23 02:47:45', '1973-01-10 03:05:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'quia', 3663, NULL, '1987-06-06 04:32:29', '2000-02-16 07:38:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'hic', 136, NULL, '1981-06-06 12:58:33', '1989-01-20 19:16:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'fuga', 6010, NULL, '2002-09-15 16:18:28', '1976-06-30 18:18:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'deserunt', 75, NULL, '2005-08-29 08:54:43', '1989-07-28 08:17:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'qui', 0, NULL, '1983-03-20 19:44:49', '1982-11-09 00:03:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'dolorem', 187338326, NULL, '2013-08-31 04:26:06', '1978-11-18 23:44:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'quisquam', 91738652, NULL, '1996-05-22 23:43:55', '2004-05-08 15:34:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'esse', 4881, NULL, '2015-04-30 06:29:00', '2000-06-12 07:39:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'optio', 474, NULL, '1973-01-01 19:22:16', '2000-03-11 07:14:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'quaerat', 71241788, NULL, '2011-03-31 22:31:43', '1982-08-02 17:21:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'numquam', 96852, NULL, '2005-09-13 22:22:37', '1970-01-22 17:50:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'quo', 493, NULL, '2002-10-06 03:05:19', '2000-06-16 10:03:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'vero', 21506, NULL, '2008-02-06 17:37:56', '2016-06-30 16:15:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'quam', 0, NULL, '2002-04-22 17:22:50', '2005-09-10 14:43:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'qui', 31, NULL, '1987-04-16 00:22:46', '1974-06-17 11:42:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'dolor', 444750968, NULL, '2007-07-31 05:38:02', '2001-11-05 10:48:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'ipsa', 6, NULL, '1972-06-05 22:31:09', '2001-03-17 16:45:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'nihil', 70964, NULL, '1989-06-13 06:44:51', '1976-01-15 16:35:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'quis', 772, NULL, '1978-07-08 09:12:15', '1989-04-19 16:24:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'nobis', 78701, NULL, '2012-03-29 04:31:14', '1971-06-20 05:30:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'rerum', 24018172, NULL, '2012-08-16 03:27:07', '2008-12-25 14:22:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'magni', 900159, NULL, '2018-10-19 13:35:23', '1997-04-04 09:36:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'qui', 3, NULL, '1980-05-06 08:12:58', '2011-12-20 20:42:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'qui', 85, NULL, '1990-07-21 12:10:27', '1989-12-27 06:32:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'dolores', 575538, NULL, '2013-01-19 09:42:23', '2004-08-14 02:03:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'ut', 1, NULL, '1995-03-14 19:50:24', '2001-06-14 13:13:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'eius', 0, NULL, '1970-04-06 21:37:42', '2008-09-25 11:12:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'aut', 846, NULL, '2018-12-11 15:23:56', '1991-02-22 06:27:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'cum', 21370208, NULL, '2008-02-29 13:00:33', '1971-07-02 00:40:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'sit', 368, NULL, '1994-06-14 19:00:51', '1973-04-11 03:55:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'magnam', 8, NULL, '2018-01-01 20:32:04', '1999-08-25 18:17:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'totam', 24, NULL, '1980-08-11 17:52:01', '1984-04-26 18:00:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'qui', 83, NULL, '2014-07-14 01:51:45', '1977-06-08 10:24:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'cum', 7, NULL, '1985-06-23 08:32:05', '2004-05-20 21:13:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'occaecati', 4, NULL, '2001-05-01 06:07:35', '1985-12-27 11:11:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'quidem', 52897661, NULL, '2009-12-22 09:27:35', '1973-12-06 19:27:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'dolore', 73182, NULL, '1992-08-25 12:33:54', '1974-11-02 21:31:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'aut', 0, NULL, '1975-03-08 15:55:25', '1982-08-14 09:02:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'maiores', 9087, NULL, '1977-03-12 05:45:29', '1999-06-09 04:53:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'minus', 0, NULL, '1972-02-13 11:32:18', '1999-01-20 09:01:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'laboriosam', 0, NULL, '2013-01-03 06:15:41', '2002-11-16 23:44:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'officiis', 83323, NULL, '2018-01-23 08:48:21', '2005-05-28 04:49:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'ut', 0, NULL, '1992-05-31 12:05:47', '1998-07-06 22:01:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'nostrum', 438496507, NULL, '1970-03-15 12:20:37', '1990-03-02 20:48:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'facilis', 4675, NULL, '1979-02-03 21:36:20', '1978-12-31 16:35:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'laborum', 190541, NULL, '1999-06-17 18:51:05', '1978-12-27 06:55:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'suscipit', 84, NULL, '1994-12-16 22:31:43', '1990-06-27 08:45:34');


-- Таблица типов медиафайлов
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'ab');
INSERT INTO `media_types` (`id`, `name`) VALUES (11, 'alias');
INSERT INTO `media_types` (`id`, `name`) VALUES (88, 'amet');
INSERT INTO `media_types` (`id`, `name`) VALUES (65, 'animi');
INSERT INTO `media_types` (`id`, `name`) VALUES (25, 'architecto');
INSERT INTO `media_types` (`id`, `name`) VALUES (33, 'aspernatur');
INSERT INTO `media_types` (`id`, `name`) VALUES (63, 'assumenda');
INSERT INTO `media_types` (`id`, `name`) VALUES (89, 'at');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'atque');
INSERT INTO `media_types` (`id`, `name`) VALUES (12, 'aut');
INSERT INTO `media_types` (`id`, `name`) VALUES (99, 'commodi');
INSERT INTO `media_types` (`id`, `name`) VALUES (46, 'consectetur');
INSERT INTO `media_types` (`id`, `name`) VALUES (67, 'consequatur');
INSERT INTO `media_types` (`id`, `name`) VALUES (90, 'consequuntur');
INSERT INTO `media_types` (`id`, `name`) VALUES (26, 'corporis');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'corrupti');
INSERT INTO `media_types` (`id`, `name`) VALUES (100, 'cumque');
INSERT INTO `media_types` (`id`, `name`) VALUES (74, 'debitis');
INSERT INTO `media_types` (`id`, `name`) VALUES (28, 'deleniti');
INSERT INTO `media_types` (`id`, `name`) VALUES (66, 'deserunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (68, 'dignissimos');
INSERT INTO `media_types` (`id`, `name`) VALUES (95, 'distinctio');
INSERT INTO `media_types` (`id`, `name`) VALUES (87, 'dolor');
INSERT INTO `media_types` (`id`, `name`) VALUES (52, 'dolore');
INSERT INTO `media_types` (`id`, `name`) VALUES (56, 'dolorem');
INSERT INTO `media_types` (`id`, `name`) VALUES (27, 'doloremque');
INSERT INTO `media_types` (`id`, `name`) VALUES (92, 'dolores');
INSERT INTO `media_types` (`id`, `name`) VALUES (22, 'ducimus');
INSERT INTO `media_types` (`id`, `name`) VALUES (77, 'eaque');
INSERT INTO `media_types` (`id`, `name`) VALUES (82, 'enim');
INSERT INTO `media_types` (`id`, `name`) VALUES (57, 'est');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'et');
INSERT INTO `media_types` (`id`, `name`) VALUES (61, 'exercitationem');
INSERT INTO `media_types` (`id`, `name`) VALUES (72, 'expedita');
INSERT INTO `media_types` (`id`, `name`) VALUES (91, 'explicabo');
INSERT INTO `media_types` (`id`, `name`) VALUES (64, 'facilis');
INSERT INTO `media_types` (`id`, `name`) VALUES (97, 'fuga');
INSERT INTO `media_types` (`id`, `name`) VALUES (70, 'fugiat');
INSERT INTO `media_types` (`id`, `name`) VALUES (23, 'fugit');
INSERT INTO `media_types` (`id`, `name`) VALUES (60, 'impedit');
INSERT INTO `media_types` (`id`, `name`) VALUES (30, 'in');
INSERT INTO `media_types` (`id`, `name`) VALUES (69, 'incidunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (40, 'ipsum');
INSERT INTO `media_types` (`id`, `name`) VALUES (8, 'iste');
INSERT INTO `media_types` (`id`, `name`) VALUES (85, 'iusto');
INSERT INTO `media_types` (`id`, `name`) VALUES (59, 'laborum');
INSERT INTO `media_types` (`id`, `name`) VALUES (94, 'magnam');
INSERT INTO `media_types` (`id`, `name`) VALUES (55, 'molestiae');
INSERT INTO `media_types` (`id`, `name`) VALUES (53, 'molestias');
INSERT INTO `media_types` (`id`, `name`) VALUES (44, 'nam');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'necessitatibus');
INSERT INTO `media_types` (`id`, `name`) VALUES (84, 'nemo');
INSERT INTO `media_types` (`id`, `name`) VALUES (76, 'nesciunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (78, 'nihil');
INSERT INTO `media_types` (`id`, `name`) VALUES (71, 'non');
INSERT INTO `media_types` (`id`, `name`) VALUES (96, 'odio');
INSERT INTO `media_types` (`id`, `name`) VALUES (15, 'officia');
INSERT INTO `media_types` (`id`, `name`) VALUES (29, 'officiis');
INSERT INTO `media_types` (`id`, `name`) VALUES (79, 'omnis');
INSERT INTO `media_types` (`id`, `name`) VALUES (58, 'perferendis');
INSERT INTO `media_types` (`id`, `name`) VALUES (86, 'perspiciatis');
INSERT INTO `media_types` (`id`, `name`) VALUES (42, 'placeat');
INSERT INTO `media_types` (`id`, `name`) VALUES (98, 'porro');
INSERT INTO `media_types` (`id`, `name`) VALUES (16, 'provident');
INSERT INTO `media_types` (`id`, `name`) VALUES (41, 'quam');
INSERT INTO `media_types` (`id`, `name`) VALUES (9, 'qui');
INSERT INTO `media_types` (`id`, `name`) VALUES (7, 'quia');
INSERT INTO `media_types` (`id`, `name`) VALUES (45, 'quidem');
INSERT INTO `media_types` (`id`, `name`) VALUES (38, 'quis');
INSERT INTO `media_types` (`id`, `name`) VALUES (18, 'quo');
INSERT INTO `media_types` (`id`, `name`) VALUES (21, 'quod');
INSERT INTO `media_types` (`id`, `name`) VALUES (34, 'quos');
INSERT INTO `media_types` (`id`, `name`) VALUES (20, 'ratione');
INSERT INTO `media_types` (`id`, `name`) VALUES (17, 'recusandae');
INSERT INTO `media_types` (`id`, `name`) VALUES (32, 'reiciendis');
INSERT INTO `media_types` (`id`, `name`) VALUES (81, 'rem');
INSERT INTO `media_types` (`id`, `name`) VALUES (83, 'repellendus');
INSERT INTO `media_types` (`id`, `name`) VALUES (47, 'repudiandae');
INSERT INTO `media_types` (`id`, `name`) VALUES (14, 'rerum');
INSERT INTO `media_types` (`id`, `name`) VALUES (51, 'sapiente');
INSERT INTO `media_types` (`id`, `name`) VALUES (13, 'sed');
INSERT INTO `media_types` (`id`, `name`) VALUES (93, 'similique');
INSERT INTO `media_types` (`id`, `name`) VALUES (43, 'sint');
INSERT INTO `media_types` (`id`, `name`) VALUES (62, 'sit');
INSERT INTO `media_types` (`id`, `name`) VALUES (19, 'soluta');
INSERT INTO `media_types` (`id`, `name`) VALUES (39, 'sunt');
INSERT INTO `media_types` (`id`, `name`) VALUES (48, 'suscipit');
INSERT INTO `media_types` (`id`, `name`) VALUES (49, 'tempora');
INSERT INTO `media_types` (`id`, `name`) VALUES (50, 'tenetur');
INSERT INTO `media_types` (`id`, `name`) VALUES (35, 'totam');
INSERT INTO `media_types` (`id`, `name`) VALUES (24, 'unde');
INSERT INTO `media_types` (`id`, `name`) VALUES (54, 'ut');
INSERT INTO `media_types` (`id`, `name`) VALUES (37, 'velit');
INSERT INTO `media_types` (`id`, `name`) VALUES (36, 'veniam');
INSERT INTO `media_types` (`id`, `name`) VALUES (75, 'veritatis');
INSERT INTO `media_types` (`id`, `name`) VALUES (10, 'vitae');
INSERT INTO `media_types` (`id`, `name`) VALUES (6, 'voluptas');
INSERT INTO `media_types` (`id`, `name`) VALUES (73, 'voluptate');
INSERT INTO `media_types` (`id`, `name`) VALUES (31, 'voluptatem');
INSERT INTO `media_types` (`id`, `name`) VALUES (80, 'voluptatum');



DESC profiles;

ALTER TABLE profiles
	ADD CONSTRAINT profles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT profles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET NULL;
            
            
ALTER TABLE profiles DROP FOREIGN KEY profles_user_id_fk;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

DESC profiles;
DESC media;

SHOW CREATE TABLE profiles;
 DESC messages;

ALTER TABLE messges
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id);
