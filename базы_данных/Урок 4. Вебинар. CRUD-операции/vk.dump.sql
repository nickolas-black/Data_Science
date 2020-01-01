USE vk;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (48, 'a');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'ab');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'accusantium');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'aliquam');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'architecto');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'asperiores');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'aspernatur');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'beatae');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'blanditiis');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'consectetur');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'culpa');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'doloremque');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'est');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'eveniet');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'excepturi');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'facere');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'facilis');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'fugit');
INSERT INTO `communities` (`id`, `name`) VALUES (94, 'harum');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'id');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'illum');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'impedit');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'ipsa');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'iusto');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'laboriosam');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'magni');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'modi');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'mollitia');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'necessitatibus');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'nemo');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'neque');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'non');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'numquam');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'occaecati');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES (86, 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'praesentium');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'provident');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'quae');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'quidem');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'quisquam');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'quod');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'quos');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'recusandae');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'rem');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'repellendus');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'reprehenderit');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'suscipit');
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'tenetur');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'veniam');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'veritatis');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'vitae');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'voluptatum');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (31, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (36, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (38, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (43, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (49, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (50, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (52, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (56, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (59, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (66, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (69, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (78, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (79, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (82, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (83, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (86, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (88, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (90, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (94, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (97, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 1, 2, '1989-11-12 14:31:08', '1995-09-12 13:30:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 2, 4, '1986-02-03 06:33:53', '1988-07-20 09:09:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 3, 1, '1984-01-01 23:33:03', '1992-03-07 16:11:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 4, 1, '2000-08-21 16:32:20', '2008-05-08 03:34:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 5, 1, '1985-12-29 05:52:48', '1983-02-17 20:59:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 6, 2, '1984-03-05 22:11:56', '2001-04-09 05:57:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 7, 3, '1987-06-02 10:09:59', '1998-06-17 02:55:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 8, 3, '1974-08-02 23:27:09', '1991-06-22 22:46:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 9, 4, '1981-09-26 12:51:04', '1995-11-02 02:44:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 10, 3, '2007-10-27 15:23:05', '1996-05-31 10:42:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 11, 1, '1990-10-18 21:35:46', '2011-03-29 15:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 12, 1, '1990-06-23 11:59:50', '1977-08-13 16:47:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 13, 4, '1976-01-13 01:05:26', '2008-12-24 01:08:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 14, 1, '2004-09-25 00:17:59', '2003-08-06 02:35:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 15, 1, '1994-07-23 18:44:33', '1990-05-12 12:44:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 16, 4, '1975-03-01 11:17:42', '2012-11-16 20:14:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 17, 3, '1989-12-23 02:37:28', '1982-01-21 14:07:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 18, 4, '2002-12-21 04:11:46', '1992-03-07 07:22:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 19, 3, '2012-02-09 09:53:19', '2011-03-16 01:32:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 20, 1, '1986-12-30 15:15:15', '1975-03-24 02:24:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 21, 2, '1982-05-03 04:56:32', '1971-04-03 20:04:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 22, 2, '1980-10-09 07:10:36', '1971-12-26 09:21:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 23, 1, '2006-01-03 15:15:40', '2013-04-24 19:04:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 24, 3, '2015-12-13 22:30:26', '2015-08-30 13:59:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 25, 1, '1990-05-19 16:17:43', '2008-01-25 18:16:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 26, 3, '1984-02-19 21:48:20', '2001-12-27 00:00:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 27, 2, '1992-06-14 23:07:33', '2007-05-19 04:18:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 28, 1, '1994-11-28 18:44:30', '2018-03-29 08:25:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 29, 4, '1970-01-13 01:45:06', '2017-10-30 18:41:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 30, 4, '1986-02-21 22:33:29', '1997-10-12 06:41:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 31, 1, '2012-02-20 19:46:04', '2013-03-24 20:36:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 32, 3, '1998-09-08 09:35:23', '2016-06-02 06:06:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 33, 4, '1975-06-08 13:26:16', '1990-04-28 17:08:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 34, 3, '2004-07-02 00:12:22', '2012-03-23 14:18:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 35, 2, '1979-07-20 18:57:41', '2009-10-29 05:32:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 36, 2, '2005-05-21 01:53:31', '2011-04-20 04:45:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 37, 3, '1973-05-26 21:06:34', '2009-03-26 11:08:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 38, 4, '2019-03-25 11:01:03', '1978-12-10 10:27:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 39, 4, '1990-08-06 16:04:16', '2019-02-25 09:12:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 40, 2, '2015-03-03 18:51:11', '2011-09-10 01:06:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 41, 2, '1983-12-03 20:36:52', '1974-08-05 00:34:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 42, 3, '1987-11-14 02:32:21', '2001-08-09 20:16:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 43, 4, '1979-08-22 11:57:23', '1984-06-11 16:18:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 44, 1, '2009-10-21 00:46:30', '1988-06-09 07:14:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 45, 3, '1983-10-15 13:12:15', '2000-03-26 04:44:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 46, 3, '1978-11-15 00:18:06', '2012-08-05 16:59:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 47, 3, '2002-10-22 02:24:18', '2011-02-02 11:47:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 48, 4, '1974-12-28 05:40:59', '2008-12-17 12:41:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 49, 2, '1974-02-23 21:07:56', '1973-08-25 08:20:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 50, 2, '2012-04-20 11:32:49', '1970-08-15 04:55:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 51, 2, '2015-09-30 15:50:08', '1988-02-21 22:37:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 52, 2, '2010-12-17 13:45:22', '1987-08-20 03:54:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 53, 3, '1981-12-03 15:50:53', '1991-07-03 06:26:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 54, 3, '1987-12-29 17:35:14', '2005-08-09 16:45:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 55, 4, '2015-09-22 02:21:44', '2018-09-01 18:53:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 56, 1, '2010-06-17 22:48:28', '1980-12-25 01:58:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 57, 4, '2011-10-29 18:45:06', '1989-10-03 20:22:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 58, 3, '1987-02-19 04:04:55', '1986-11-10 18:54:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 59, 4, '1997-02-11 21:12:30', '2014-09-07 09:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 60, 3, '2001-09-14 07:26:53', '1980-10-26 02:30:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 61, 3, '2010-01-05 21:17:00', '1977-07-10 06:47:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 62, 4, '1982-01-30 19:20:20', '1987-11-07 22:22:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 63, 1, '1986-03-18 15:13:46', '1998-04-03 21:53:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 64, 1, '1982-03-21 09:31:18', '1970-08-23 14:10:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 65, 4, '2010-03-14 20:22:26', '1981-01-18 12:37:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 66, 4, '2009-10-11 13:52:38', '1991-11-21 16:23:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 67, 3, '1996-06-14 05:02:42', '1980-04-17 11:56:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 68, 4, '2019-04-03 23:28:06', '1973-07-01 22:42:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 69, 4, '1976-02-11 21:04:31', '1993-04-05 02:22:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 70, 3, '2017-01-01 06:48:06', '1988-02-07 06:45:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 71, 3, '1972-03-03 19:49:30', '1975-09-09 14:52:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 72, 1, '2018-07-14 22:04:41', '2010-08-17 21:50:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 73, 4, '1987-09-17 01:56:09', '1976-09-30 23:32:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 74, 4, '2010-02-13 17:20:56', '2008-08-04 07:47:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 75, 4, '2001-12-31 04:10:18', '2019-04-30 21:29:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 76, 3, '2001-01-29 13:26:00', '1995-01-14 12:38:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 77, 2, '2008-08-02 20:38:53', '1991-01-01 07:39:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 78, 4, '1981-12-26 13:12:45', '2008-02-22 18:54:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 79, 3, '1999-06-21 11:50:37', '1970-06-29 21:25:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 80, 2, '1994-07-14 02:30:53', '1998-09-10 19:40:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 81, 4, '1990-05-04 07:09:49', '2018-11-06 20:01:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 82, 4, '1986-10-04 00:07:29', '1994-12-05 12:47:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 83, 3, '1992-03-11 06:35:31', '2006-06-02 03:17:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 84, 2, '1981-08-16 00:01:05', '1989-10-08 09:27:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 85, 3, '1970-02-09 06:00:21', '2013-04-25 16:32:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 86, 2, '1985-01-02 04:33:48', '1987-04-27 13:10:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 87, 1, '2001-11-09 18:16:19', '1986-07-27 01:33:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 88, 3, '2002-05-13 05:38:52', '1978-10-09 01:27:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 89, 1, '1993-07-15 10:53:12', '2006-01-22 04:15:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 90, 2, '1998-09-26 23:42:20', '2016-11-13 11:20:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 91, 2, '2019-03-21 15:31:26', '1972-01-31 08:47:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 92, 1, '1978-05-08 05:47:35', '1977-08-22 05:58:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 93, 4, '1993-04-28 02:09:26', '1993-01-07 15:05:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 94, 4, '1989-11-17 21:52:37', '1990-10-11 11:20:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 95, 1, '2004-11-05 19:26:43', '2001-07-15 00:37:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 96, 4, '1974-08-11 17:35:10', '1979-10-16 14:17:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 97, 1, '1973-12-23 02:11:22', '1977-08-05 12:38:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 98, 4, '2003-03-13 18:02:50', '1970-05-09 13:22:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 99, 4, '2008-01-31 13:32:29', '1971-03-21 20:52:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 100, 2, '1982-01-07 00:35:52', '2018-06-07 05:35:54');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'facilis');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'molestias');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'odio');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'velit');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'natus', 431680, '4', '2002-06-15 16:02:40', '1971-01-29 13:44:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'non', 978, '2', '1988-03-12 23:42:10', '1980-07-17 01:05:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'beatae', 808, '2', '2019-08-20 20:37:25', '1972-02-28 09:00:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'consequatur', 9, '4', '1981-10-14 19:38:19', '2015-07-28 02:15:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'asperiores', 634215, '4', '2001-09-18 13:39:53', '2009-09-18 20:04:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 6, 'nam', 0, '2', '1979-01-06 18:08:20', '1988-02-13 09:56:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 7, 'nemo', 58364, '4', '1995-06-14 23:59:57', '1973-06-27 14:05:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 3, 8, 'expedita', 445613, '4', '2012-03-22 00:44:12', '1971-11-18 10:51:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 4, 9, 'voluptatem', 941538230, '2', '2001-10-28 14:16:59', '2007-07-20 14:00:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 5, 10, 'laborum', 0, '3', '1998-09-14 11:26:59', '2013-06-05 06:33:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 11, 'odit', 76, '3', '1983-02-10 18:00:42', '2015-07-28 02:04:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 12, 'et', 953, '2', '1999-05-24 19:11:53', '1998-12-22 12:35:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 13, 'quo', 263848, '4', '1971-07-27 19:31:37', '1976-03-30 04:10:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 4, 14, 'quibusdam', 7, '5', '2014-02-12 16:40:41', '2013-03-22 04:47:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 5, 15, 'consectetur', 7011846, '1', '1989-07-29 10:42:17', '2018-10-22 17:52:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 16, 'ab', 1136998, '1', '1995-08-26 22:36:58', '1971-01-06 16:59:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, 'repellat', 7, '5', '1990-08-19 00:38:38', '1988-10-21 15:26:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 18, 'magni', 633, '5', '1983-07-25 23:37:12', '1973-07-19 02:38:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 4, 19, 'laudantium', 232095, '5', '2008-01-04 07:36:23', '1975-07-28 14:06:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 5, 20, 'sed', 1, '5', '1982-07-12 17:39:44', '2011-10-09 07:14:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, 'unde', 8322226, '1', '1995-01-23 14:40:52', '1973-09-16 02:19:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 22, 'et', 0, '2', '1997-06-26 21:57:28', '1997-06-30 14:54:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 23, 'dicta', 0, '3', '2008-08-25 00:40:33', '1973-11-26 07:01:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 24, 'consequuntur', 207586, '1', '1996-10-23 03:13:55', '2000-08-06 01:04:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 5, 25, 'consectetur', 0, '1', '2005-05-26 16:22:50', '2004-03-09 13:35:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 26, 'et', 507559, '4', '2005-05-29 01:50:09', '1984-12-08 19:17:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 27, 'alias', 7, '1', '2013-01-04 09:17:09', '1985-11-27 18:19:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 28, 'numquam', 0, '2', '2016-10-12 10:49:43', '1998-07-04 05:15:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 4, 29, 'deserunt', 56, '4', '1972-09-25 07:01:10', '1983-07-19 06:27:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 5, 30, 'consectetur', 0, '3', '1992-03-26 06:24:00', '2014-04-18 02:46:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, 'praesentium', 5005151, '1', '1986-02-10 22:54:27', '2014-05-25 18:50:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, 'beatae', 766, '2', '1989-06-03 22:27:11', '2009-04-12 03:14:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 33, 'aperiam', 5143438, '3', '1995-11-23 10:00:44', '2005-02-06 08:16:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 4, 34, 'quis', 1552280, '4', '1977-06-20 12:37:34', '2016-11-20 12:53:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 5, 35, 'consequatur', 0, '1', '1985-02-04 19:25:40', '1988-07-12 01:16:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 36, 'non', 29, '4', '2015-09-15 08:23:25', '1984-05-29 19:12:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 2, 37, 'delectus', 32925888, '5', '1994-08-03 13:24:01', '2013-03-20 10:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 38, 'saepe', 404951198, '2', '1994-11-02 22:27:53', '2017-02-12 20:12:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 4, 39, 'ex', 0, '1', '1970-08-12 10:15:56', '1994-04-22 14:31:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 5, 40, 'aut', 58, '1', '1985-04-24 05:54:26', '2000-06-09 11:54:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 41, 'eos', 72, '1', '2003-08-24 15:38:49', '1993-03-12 01:44:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 2, 42, 'sed', 688837, '2', '1975-05-09 13:30:30', '1976-03-22 20:24:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 43, 'blanditiis', 4, '5', '2011-12-01 05:47:35', '2012-10-17 14:22:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 4, 44, 'ducimus', 9503, '1', '2003-05-31 10:09:22', '2000-03-08 08:41:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 5, 45, 'rerum', 0, '5', '1994-02-17 13:24:28', '1991-12-07 09:46:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 46, 'quibusdam', 2693, '5', '1997-08-22 14:29:40', '2009-07-23 08:35:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, 'et', 906492, '1', '1993-07-07 12:50:43', '2005-09-10 01:11:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, 'magnam', 3, '4', '1990-03-12 07:13:29', '1980-01-16 00:21:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 4, 49, 'voluptas', 81149204, '1', '2007-12-25 06:06:11', '1975-10-20 00:58:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 5, 50, 'labore', 0, '1', '2006-07-28 07:29:41', '2001-12-05 03:03:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 51, 'a', 0, '1', '2015-08-05 23:06:24', '1978-08-07 19:10:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 2, 52, 'maiores', 212140, '4', '1986-08-06 03:38:44', '1972-05-01 12:36:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 3, 53, 'fugiat', 951938, '5', '1990-02-11 15:06:08', '1983-08-13 21:28:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 4, 54, 'debitis', 165807532, '4', '2004-06-28 11:23:01', '1992-01-14 10:19:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 5, 55, 'qui', 6585, '2', '2000-02-10 03:10:05', '1985-10-05 07:02:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 56, 'esse', 4, '4', '2016-02-11 10:48:52', '1999-05-27 19:44:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 57, 'cum', 5, '2', '1976-04-25 17:56:17', '1979-01-24 05:55:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 3, 58, 'est', 92221, '5', '1978-02-01 14:57:36', '1981-11-13 22:01:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 4, 59, 'rem', 0, '3', '2001-11-19 02:39:05', '2018-07-14 00:13:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 5, 60, 'sequi', 268871476, '5', '2008-12-27 10:48:31', '2006-09-17 18:58:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'perspiciatis', 3848695, '5', '2015-06-13 18:01:53', '1972-01-13 16:32:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, 'iste', 15531, '2', '1980-09-09 04:07:39', '1974-01-22 22:21:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, 'suscipit', 23288, '5', '1982-11-19 20:05:26', '1996-11-30 02:31:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 4, 64, 'veritatis', 501, '2', '1986-08-08 14:26:07', '1994-11-30 05:27:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 5, 65, 'consequuntur', 70, '2', '2004-06-20 04:17:29', '1984-01-29 21:28:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 66, 'nihil', 712526, '5', '1979-01-31 15:20:02', '1976-02-11 23:33:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 67, 'aliquam', 0, '5', '2004-11-03 16:45:08', '2001-08-04 20:50:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 68, 'voluptatem', 4, '3', '2014-06-11 13:47:53', '2002-11-25 20:46:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 4, 69, 'velit', 800330, '3', '1974-03-04 20:41:45', '1980-05-13 10:25:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 5, 70, 'id', 2860979, '2', '2017-07-26 05:23:51', '1994-03-29 22:31:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 71, 'occaecati', 255, '3', '2019-04-25 07:44:59', '2005-07-09 17:31:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 72, 'et', 44, '2', '1990-12-15 21:07:00', '1998-07-13 11:22:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 73, 'cum', 40291, '3', '1979-12-23 14:02:49', '1973-07-25 07:06:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 4, 74, 'officiis', 8280, '5', '2003-12-16 01:09:55', '1989-12-17 19:24:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 5, 75, 'nulla', 34, '3', '2008-01-18 02:11:46', '2018-08-31 23:01:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 76, 'sit', 2, '5', '1972-02-10 15:40:12', '2012-04-12 11:48:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, 'fugit', 3568205, '4', '1972-12-29 16:11:07', '1989-08-01 07:10:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 78, 'deleniti', 7283, '3', '1980-09-07 09:23:42', '2009-02-10 08:01:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 4, 79, 'minima', 395872375, '3', '1986-02-21 02:14:02', '1979-09-01 19:52:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 5, 80, 'est', 3356446, '3', '1987-10-31 11:48:22', '1981-02-16 07:35:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 1, 81, 'ut', 25185, '3', '1987-06-02 15:09:14', '2016-10-31 21:26:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, 'inventore', 71905, '1', '1986-06-12 20:57:10', '1970-08-08 12:20:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 3, 83, 'quaerat', 801350763, '3', '2007-07-29 22:20:02', '2008-04-13 02:59:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 4, 84, 'minima', 0, '5', '2014-05-24 04:19:22', '1987-06-25 19:37:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 85, 'explicabo', 839, '3', '1972-12-07 18:33:31', '1998-08-04 16:42:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 86, 'aut', 1353816, '5', '2013-12-12 20:08:48', '2006-06-23 23:23:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 87, 'nisi', 85, '1', '1994-08-31 22:14:05', '2011-08-23 11:59:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 88, 'exercitationem', 1, '5', '2002-09-07 18:03:20', '1990-12-14 06:05:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 4, 89, 'sed', 28790, '2', '1987-08-17 12:55:18', '2003-01-24 20:14:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 5, 90, 'rerum', 0, '4', '2018-03-07 21:52:56', '1983-07-19 16:41:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, 'aperiam', 848000, '1', '1982-05-30 21:11:51', '1984-02-16 17:00:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 92, 'repellendus', 20737, '4', '1977-11-05 21:57:01', '2008-12-06 08:10:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 93, 'molestiae', 280, '3', '1972-06-09 14:02:19', '2002-05-08 01:58:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 4, 94, 'quo', 672578507, '2', '1984-05-14 16:00:37', '1986-08-24 13:53:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 5, 95, 'est', 8697, '1', '1974-02-25 21:39:16', '1971-10-10 00:28:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 96, 'saepe', 673743, '5', '1972-03-12 15:30:07', '1976-02-17 20:28:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 97, 'culpa', 495, '4', '1975-10-27 14:59:17', '1976-03-30 12:37:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 3, 98, 'omnis', 9084, '4', '1977-12-28 20:56:22', '1990-04-27 00:30:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 4, 99, 'ratione', 8, '3', '1980-01-26 15:14:20', '1982-10-12 14:39:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 5, 100, 'dolores', 985, '2', '1975-02-16 04:36:07', '2019-07-17 13:18:18');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'doloribus');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'et');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'excepturi');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'nihil');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'quaerat');


#
# TABLE STRUCTURE FOR: messages
#

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

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Dolor eaque illo qui impedit sunt. Esse laboriosam mollitia recusandae et. Animi consequuntur aut voluptatum ut nisi.', 0, 1, '1986-04-07 21:31:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Voluptatem aut molestiae cum temporibus eum. Qui aut vel eaque ratione hic est. In velit fugit hic et sed aperiam.', 0, 0, '1980-09-26 22:11:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Et culpa similique qui culpa cum iure. Autem delectus magnam quis quo. Qui rerum et et consectetur. Autem dolores dignissimos dolores fuga sint tempora similique.', 1, 0, '1997-07-24 22:55:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Veritatis aperiam debitis consectetur laboriosam itaque. Laborum dolore ut temporibus aut fuga voluptas modi. Eligendi commodi quae nihil ut.', 0, 0, '1996-04-02 15:17:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Laboriosam deserunt consequuntur officia impedit dolores omnis voluptatem. Eos voluptate reiciendis officia odio sapiente non odit. Beatae sequi cum natus iure suscipit architecto inventore.', 1, 0, '1988-07-11 12:07:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Iure adipisci optio dolorem rem. Explicabo provident rerum voluptatem veritatis asperiores est impedit. Distinctio non dolor dolore vero omnis. Quis dolorum sunt maiores labore. Qui iste tempora omnis consectetur cupiditate sed.', 1, 0, '2010-01-09 08:32:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Odio modi laboriosam voluptas dolores. Tenetur excepturi dolorem et consequatur. Itaque qui nihil quas quia est animi eum.', 1, 1, '1983-09-08 10:11:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Qui aliquid et molestias est officia voluptatibus nesciunt. Quam provident at sit culpa deleniti tenetur et. Aut hic ad quos quidem repellat tempore est. Necessitatibus et quos mollitia modi eaque eum.', 1, 0, '2015-12-12 21:20:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Sed quis consequuntur modi quod quam nemo magnam. Et nesciunt eveniet tempora. Facilis eos non qui aut delectus odio illum soluta. Laboriosam quo molestiae esse repellendus.', 1, 1, '1970-05-26 04:18:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Facere neque hic iusto assumenda inventore. Cumque porro quo mollitia voluptate ut quam. Sapiente voluptate ullam unde magnam placeat omnis exercitationem porro. Consequatur consequatur incidunt laboriosam qui ducimus nihil.', 0, 0, '2019-01-26 12:12:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Iusto libero est tempora ut. Ullam sit provident aut provident corrupti vel magnam. Ad possimus totam fugit facilis qui. Officia eum rerum sint velit inventore quis rerum.', 1, 0, '1989-09-25 02:20:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Et nemo aut voluptatem id vel occaecati nesciunt aut. Et nihil officia aspernatur ad itaque aut sit. Tenetur eum aut est accusantium fugit et nam.', 1, 1, '1990-08-10 13:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Aut nihil dolorem et et. Reiciendis voluptas est aperiam consequuntur consectetur commodi ratione. Blanditiis quis omnis reiciendis.', 1, 1, '2014-10-16 10:42:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Mollitia doloribus nulla doloribus et nobis. Est neque quas in id vel. Eveniet eum nemo autem eveniet labore aut. Minus earum ad culpa facere.', 0, 0, '1998-02-24 19:24:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Magni illo doloremque qui. Error doloribus et aut illo aut. Quod eligendi eveniet ea aut fugit saepe. Et et officia quibusdam dolorem fuga.', 0, 1, '2007-06-26 21:10:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Libero natus autem consequatur suscipit ipsam reiciendis. Qui consectetur et itaque aperiam. Molestiae id mollitia aperiam perspiciatis deserunt debitis velit. Quam sint quia quaerat ea.', 1, 0, '1971-01-31 21:43:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Aut ipsum est rerum eum optio quibusdam nihil. Et ducimus assumenda est aut assumenda debitis id. Quam mollitia necessitatibus unde sed totam in accusamus.', 0, 1, '1995-12-19 02:41:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Dolores reprehenderit incidunt distinctio repellat consectetur dolores. Eum expedita esse nulla sed placeat nobis cumque ea.', 0, 1, '2014-01-04 21:37:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Voluptatem vel autem occaecati at non. Quae praesentium voluptatibus odit harum et inventore. Provident aut asperiores voluptatem quas minima. Ea est modi minima consequatur inventore qui odio. Aut non sint amet illo necessitatibus consectetur necessitatibus.', 1, 0, '1978-07-21 08:28:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Accusantium iusto veniam vel voluptatibus assumenda quia et alias. Qui a eius dolore veniam. Facilis voluptates molestias laborum eveniet placeat ex. Ut expedita qui aspernatur mollitia ut.', 1, 1, '1997-06-04 16:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Est possimus explicabo quis quibusdam voluptatem. Amet sint similique sit et. Voluptatem dolorem iste ullam quo.', 1, 0, '2013-02-27 13:34:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Aliquam sed itaque quis mollitia vel. Nam nam enim aspernatur repellendus. Perferendis sint dolores velit dolor vel rerum. Aut doloremque esse vel.', 0, 0, '2003-07-14 05:42:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Aut optio suscipit doloribus qui doloribus qui reprehenderit. Possimus quis alias dolores cumque. Est nemo voluptatum est et.', 1, 1, '1997-02-04 15:14:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Et nemo adipisci eum. Vel autem corrupti laborum enim voluptas fugit quis. Aut repellendus pariatur explicabo quos sint iure. Inventore commodi vero iste cum.', 0, 0, '1977-09-27 04:47:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Repellendus ut et laborum enim exercitationem. Rerum et repudiandae consequatur perferendis nostrum illum. Quo perferendis dolores architecto rerum quaerat error incidunt. Necessitatibus quaerat sint est veritatis.', 0, 1, '2011-12-20 20:20:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Dolores ipsa qui libero molestiae. Quo enim ut quis. Corporis laboriosam et similique dolores facere. Tenetur veritatis ipsa accusantium est.', 0, 1, '2002-04-24 15:26:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Cupiditate voluptatem atque ut quia. Quaerat asperiores consectetur dolorum enim quia ut. Asperiores quasi sunt officia consequatur. Quisquam unde ut aut nihil.', 0, 1, '1989-10-09 21:28:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Corrupti velit dolorem sed necessitatibus asperiores illum. Omnis incidunt assumenda nihil error exercitationem sit. Est debitis laboriosam ut dolor consequuntur minima quisquam. Dolores assumenda ab qui et rerum ea cupiditate.', 1, 0, '1980-12-03 19:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Distinctio est quasi optio optio natus provident. Odio repudiandae qui et aut non totam commodi. Est saepe illum aspernatur labore nobis nemo sed. Voluptate sunt dolorem libero eum debitis architecto sed quaerat.', 1, 0, '1984-05-21 01:40:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Voluptatum veniam iusto maiores reprehenderit. Repudiandae nam ullam illum numquam eos eum soluta. Natus asperiores repellat corporis iusto. Ut occaecati ut quis assumenda eum doloribus.', 0, 0, '2007-01-28 13:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Modi nemo laborum magnam et. Nemo sunt mollitia aut qui temporibus unde. Illo voluptas sunt alias velit eos qui inventore. Sit itaque dolorem id omnis adipisci. Facere omnis ratione ad fuga sunt quibusdam aut.', 1, 1, '1991-01-22 11:58:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Placeat perspiciatis recusandae eum eveniet. Nihil quo earum iusto adipisci est qui. Beatae modi rerum veritatis dolorum adipisci. Rerum deleniti rem architecto officia voluptatem et corrupti.', 0, 0, '1976-02-16 02:43:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Harum eligendi omnis impedit. Autem accusantium corporis ab non illo recusandae. Aut dolor id autem fugiat.', 1, 0, '1985-01-16 16:49:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Velit aut autem ducimus eaque. Quibusdam tempora et et. Ea sunt quisquam eum modi aut. Et quidem quia minus.', 1, 0, '1979-12-03 13:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Et consequatur ut placeat est. Consequatur perspiciatis architecto veritatis.', 0, 0, '1974-12-27 22:37:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Ducimus a eaque sed dolorem quia. Nihil aut voluptatem deleniti deserunt saepe. Unde asperiores voluptatem itaque molestiae quisquam cum sed.', 1, 0, '2012-02-18 22:37:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Cupiditate at vel quidem assumenda eum aut repellendus rerum. Est labore nostrum laboriosam assumenda iusto. A ratione sint dolorum itaque dolor non.', 1, 0, '1990-09-11 14:36:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Voluptas architecto ea molestiae iusto in. Sapiente facilis maiores cum libero provident similique. Impedit eum enim totam possimus sint.', 0, 1, '1999-06-17 20:35:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Laborum voluptate quia et vel magnam dolorem ut. Quia provident delectus aperiam sed illum earum ducimus quia. Quos autem facere enim placeat aliquid. Magni et reiciendis expedita enim minus. Rerum perferendis labore et aut provident cum enim.', 0, 0, '1975-07-04 04:53:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Eos illo dolorem porro aut qui qui. Ullam voluptas nam omnis ipsum eius facere. Quibusdam amet nihil voluptatibus quo optio nulla et laudantium. Eos unde praesentium dignissimos tempore voluptas laborum. Architecto velit cupiditate distinctio minus placeat.', 0, 1, '1984-06-13 15:08:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Voluptatem quod cumque praesentium possimus numquam occaecati eum nihil. Natus illo voluptatibus doloribus suscipit sit. Est aut magnam pariatur esse qui. Blanditiis laborum impedit voluptates eos fugiat.', 1, 1, '2018-12-24 09:45:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Dolorem molestiae velit nesciunt quas. Reiciendis nihil nesciunt rerum.', 0, 0, '1981-03-23 02:55:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Veritatis error asperiores libero non aut aut rerum. Voluptatum facilis expedita vitae voluptas dignissimos id laudantium. Nostrum est voluptatem corporis explicabo et. Eaque sunt deleniti quo quidem ab doloribus sint.', 1, 0, '2017-05-22 02:15:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Sit ea voluptates velit qui fugiat. Omnis sunt hic repellendus aut omnis. Repellat sint esse dolores ratione repellendus ad totam. Rerum sint dolor qui aut explicabo quam labore sapiente. Vitae praesentium esse voluptas quaerat autem vitae.', 0, 0, '1974-09-03 01:40:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Corrupti autem dignissimos alias est. Maiores vel est dolores. Id et sint aut et fuga est enim. Totam quo nihil voluptatem iusto unde voluptate.', 0, 0, '2002-08-22 19:12:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Et nihil assumenda eum enim quia vel consequuntur. Quia aut beatae ut dolor enim. Omnis est odio quod qui.', 1, 0, '1979-08-28 10:57:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Eius qui molestiae officia provident maiores. Quis velit ratione odit sint. Saepe reiciendis et dolores doloremque molestias. Aspernatur quis corrupti et totam sed.', 1, 0, '1973-11-02 22:03:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Adipisci tempora facilis aut et. At quo quo atque architecto explicabo. Totam cupiditate amet hic labore. Deserunt libero delectus est unde quasi.', 0, 0, '2012-11-08 22:58:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'In illum velit dolor occaecati. Sed modi sequi molestiae voluptatem hic. Rerum similique perspiciatis et quia repudiandae cum.', 1, 0, '2010-11-10 07:53:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Commodi et voluptatibus aut dignissimos libero. Quo blanditiis et sit harum qui. Corporis architecto voluptatem id et rerum repellat voluptas.', 0, 1, '1988-09-12 13:59:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Inventore ut et facilis eum deleniti ut occaecati eligendi. Consequuntur sunt accusamus et id. Et quos rerum corrupti fugit et magni quod.', 0, 1, '2011-07-29 16:33:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Fugit autem ut optio rerum eum. Voluptatibus nesciunt quis consequuntur natus qui.', 0, 0, '1990-01-07 19:05:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Eum cumque quod modi dolores cum numquam. Eius rem aut qui dolores aliquid dolores culpa. Ea et modi illo velit et non placeat. Vero ea porro ut vitae ut inventore sed.', 0, 1, '2010-05-13 05:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Minima illum dignissimos illo distinctio magni aut incidunt molestias. Facere nulla sit molestias. Ut eos hic necessitatibus impedit cupiditate magni nemo. Commodi accusantium voluptatem rem et aut reiciendis est consequatur.', 0, 0, '2016-02-25 14:31:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Nulla a et quis non id. Minus placeat non corporis temporibus non. Molestiae perspiciatis aliquam eum autem.', 0, 1, '1991-07-06 03:19:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Eius est et aperiam facilis inventore natus. Sit nihil accusamus sed eaque et illo.', 0, 1, '1973-10-31 12:38:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Non excepturi officia delectus totam. Ab nobis consequatur eaque velit molestiae consequuntur. Molestiae quod et maxime.', 0, 0, '1980-02-10 12:47:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Repudiandae et beatae ut ut iure consequatur facere. Reiciendis laborum nostrum ipsa explicabo voluptatum ut laudantium. Molestias quaerat sit ea et. Illo quod placeat ratione nostrum velit ducimus eveniet.', 0, 1, '1980-05-31 20:56:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Dolor sit et quisquam porro dolorum et illum qui. Assumenda harum delectus aut odio labore odio distinctio velit. A a quasi tempore officiis quidem natus est vero. Optio porro doloribus nemo ex.', 0, 0, '1998-10-31 00:19:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Dolorem quisquam ullam tempora expedita sunt numquam. Eos et iusto explicabo illum. Magni at omnis aut enim delectus odit accusantium.', 0, 0, '1984-05-07 14:07:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Aut voluptate id exercitationem voluptatem. Expedita maxime qui minus sapiente.', 0, 1, '2016-05-14 23:25:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Error veritatis qui sed atque sit. Voluptatem voluptatem placeat at necessitatibus vero ipsam. Eius ut rerum maxime voluptas.', 1, 0, '1981-02-13 11:42:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Et omnis debitis soluta voluptas dolorem. Quisquam hic quis at non. Rerum qui necessitatibus error impedit. Itaque atque inventore distinctio sunt. Voluptates aperiam rerum dolor in error cupiditate.', 1, 1, '1988-07-06 08:49:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Eum omnis maxime aliquam dolores vero libero inventore. Corrupti inventore facilis aspernatur non occaecati debitis adipisci. Delectus in soluta consequatur tempora et temporibus porro. Corporis qui beatae aliquid nisi accusantium.', 0, 0, '2004-12-01 19:04:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Distinctio natus aliquid molestiae ut. Eligendi consequuntur et repellat vitae ipsum. Eos est quasi officia ut voluptatem impedit corrupti. Vel dicta eum veritatis nobis.', 1, 0, '2007-08-13 20:28:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Consequatur nihil aspernatur amet deleniti pariatur. Qui deleniti qui et quia et adipisci occaecati. Nesciunt debitis ut deleniti quisquam voluptatem. Quam laboriosam nam minus.', 1, 1, '2019-09-06 02:53:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Exercitationem nulla est et aut adipisci. Consequatur perferendis commodi iste ut tenetur illum eaque. Ratione laboriosam nemo labore ipsam. Culpa temporibus dolor accusantium et placeat omnis.', 0, 0, '1994-08-03 04:33:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Quidem odio cumque tempore eveniet ut. Recusandae illum aut quia voluptatem ipsum et. Sint aut dolores rerum asperiores eius at sit. Alias dolore suscipit aut nemo.', 1, 0, '1982-05-31 18:43:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Consectetur occaecati itaque repudiandae quos. Tempora voluptate non et ipsam iste. Rerum non animi quod et reiciendis. Saepe eos sunt explicabo voluptas et vero.', 0, 1, '2010-09-14 21:47:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Laudantium dolores consectetur unde repellat. Quas amet voluptatibus ut consequatur sint sapiente repudiandae.', 1, 1, '2011-08-07 08:06:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Illum optio dolorem voluptate perspiciatis eos praesentium. Ullam consequatur ad neque omnis molestias ea velit. Consequatur sint sint veniam dolorem illum nihil. Et omnis possimus porro sunt molestias. Iure nisi aut quis qui qui.', 0, 0, '1997-02-18 07:40:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Laudantium quia et ut omnis quam. Et dicta iure et ex sint nesciunt. Ipsam ea quia eos doloribus. Aliquid ut eveniet sint recusandae et ut iste. Autem dolor distinctio eum alias rerum.', 0, 1, '2019-01-16 15:27:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Rerum praesentium dolorem at temporibus iure. Recusandae asperiores dolores quis odit sequi veniam. Voluptatem animi officia voluptatibus illo architecto quis non delectus.', 1, 1, '2007-11-04 22:48:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Harum aut optio quisquam commodi qui. Est recusandae accusantium ea earum aspernatur qui est. Ducimus distinctio omnis nesciunt itaque qui.', 1, 0, '2013-05-14 19:54:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Rerum cumque quia deleniti. Odio quaerat explicabo et vel minus earum incidunt. Et facere molestiae voluptas.', 1, 1, '2014-06-16 16:34:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Quis blanditiis nulla dignissimos molestiae assumenda. Quaerat qui quis a ut recusandae harum quia repudiandae. Suscipit sit voluptas molestiae cupiditate ut dolorem aut excepturi. Velit reiciendis hic nostrum libero voluptatem.', 0, 1, '1974-04-05 16:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Id dolorem similique atque earum molestias. Nihil vitae facilis consectetur ea.', 0, 0, '2000-10-24 01:47:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Consequatur temporibus qui molestiae. Velit neque dicta quae dolores qui et. Vero voluptas numquam excepturi neque dolor officiis maxime. Modi maiores aliquid eos. Quod labore eaque nulla eveniet provident sit similique.', 0, 0, '1999-05-08 06:17:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Accusantium id est nam velit qui voluptatibus et. Nam nihil eum voluptatem magnam. Totam earum veniam autem amet. Accusamus nemo est eum repellat. Doloremque eos corrupti aut consequuntur.', 1, 0, '1973-04-14 02:01:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Occaecati rerum autem qui sit ipsam nulla. Et omnis architecto libero voluptatem dolor nulla voluptatem. Necessitatibus nesciunt similique magni repellendus.', 1, 0, '2003-05-21 18:28:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Quo consectetur delectus similique amet. Ut ea in earum doloremque. Quam eaque dolores ullam maxime consequuntur quo similique. Iure hic molestias iure.', 1, 0, '2006-03-06 03:51:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Quia aut et quis. Accusantium optio quos officiis. Eius quod sunt iusto dolorem in. Alias fugiat sunt qui dolore. Ut et animi voluptatem accusantium.', 1, 0, '2003-08-10 18:54:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Voluptatem incidunt sed aut commodi animi. Doloremque ducimus et aut. Modi quia minima debitis sit explicabo eius natus. Est et nobis blanditiis ea id in.', 0, 1, '2011-10-10 03:22:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Recusandae sunt accusantium cumque voluptatem repudiandae. Adipisci optio repellat odit. Ut beatae doloremque ea laborum eius vel.', 1, 0, '2016-08-05 01:16:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Quae fugiat ea laudantium dolorem. Temporibus enim incidunt deleniti ipsa corporis necessitatibus perferendis debitis. Maxime voluptates voluptas placeat officia laborum praesentium ut. In totam repellat exercitationem autem. Aut iste praesentium culpa aut ipsam dolorum voluptatem.', 1, 0, '1987-08-17 08:08:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Quisquam et fugit voluptates. Reprehenderit expedita alias numquam dicta deleniti nulla eum. Molestias pariatur voluptas enim nam nostrum sunt a. Explicabo quisquam accusantium eum amet magnam perspiciatis. Autem nulla odio assumenda quia assumenda.', 0, 0, '1975-07-21 01:16:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Enim asperiores optio magni harum quo et. Quia totam et doloribus porro nulla. Consequatur deleniti magnam voluptates fugit sint provident.', 1, 1, '2010-11-15 08:41:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Nostrum vero placeat rem tempora quia ea occaecati voluptas. Qui cum aut at quia eaque ut aperiam. Eligendi ratione aut corporis illo omnis ex rerum. Impedit quo et labore dolores quis temporibus nemo. Minus illo aspernatur amet doloremque corporis alias nisi.', 0, 1, '1980-07-17 06:26:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Numquam in commodi odio et sed eius. Quo id enim molestiae doloremque possimus. Quos cumque quia eaque itaque voluptatem.', 0, 0, '1990-07-23 17:06:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Laboriosam incidunt sequi odit nihil molestias aperiam temporibus. Sed sint ipsa sit voluptatem. Voluptate dolores sunt enim voluptatem qui animi dignissimos.', 0, 1, '1977-03-24 09:45:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Iusto sit non consequuntur ut quisquam sunt ipsum ratione. Corporis autem nulla fuga rem rerum. Mollitia aut libero incidunt fugiat cum.', 1, 1, '2007-01-14 09:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Debitis facilis consequuntur et corporis impedit dignissimos culpa. Consequuntur laborum natus et. Quae amet beatae rerum necessitatibus.', 0, 1, '1980-05-31 10:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Reiciendis mollitia minus a ullam. Dolores eos dolorum doloremque rerum excepturi animi. Soluta optio magni eum inventore consequatur voluptas beatae possimus. Et assumenda quis hic quia qui.', 1, 1, '1993-02-28 18:02:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Deserunt possimus assumenda consectetur corporis placeat delectus. Nobis in cupiditate iusto. A ut unde nulla voluptatem aliquid reprehenderit fuga.', 0, 1, '1996-02-09 05:26:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Quia harum optio sunt recusandae vero sit. Vel libero ad fugiat nulla. Nesciunt qui ut consequuntur laborum. Et perferendis excepturi ea sint et non dolore.', 0, 1, '1972-07-30 19:05:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Voluptatem expedita sapiente ipsa voluptas. Architecto maiores officia culpa cumque autem. Qui ratione ab natus dolores nobis rem occaecati earum.', 1, 0, '1999-06-12 23:21:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Iure aut qui perferendis doloremque dolores voluptas quos. Dolorem corporis sint harum eius reiciendis temporibus cumque. Neque sint quasi perferendis. Qui non cumque veniam beatae voluptas consectetur.', 1, 0, '2014-02-11 13:28:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Sequi nostrum vel quidem molestiae eum quisquam illo. Cumque et molestias sint sunt quidem voluptatibus ad. Ut blanditiis reprehenderit veritatis voluptatem itaque quia quia rerum.', 0, 1, '2000-08-29 02:35:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Consequatur soluta sit fugit sint quaerat accusamus. Nisi cupiditate illum beatae laborum nostrum. Eum sint quod delectus ut id. Neque officia provident aut est repellendus unde.', 0, 0, '1971-08-28 09:32:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Consequuntur eligendi perferendis eum voluptatem aut. Molestiae nam et aut pariatur quo qui dolores. Magnam laudantium maxime quidem.', 1, 0, '2015-11-06 15:35:13');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, '\"', '2011-05-03', 'Erichside', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, '\"', '2009-03-26', 'Brooksfort', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, '\"', '2007-12-19', 'Westchester', 47);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, '\"', '1991-12-02', 'Port Clementinestad', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, '\"', '2002-09-21', 'Wittingstad', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, '\"', '1985-12-30', 'North Kyleehaven', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, '\"', '2008-07-28', 'Frankieview', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, '\"', '2000-10-08', 'Colliermouth', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, '\"', '1988-07-13', 'Port Daronmouth', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, '\"', '1975-10-28', 'O\'Kontown', 30);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, '\"', '1971-02-12', 'Port Jordanland', 51);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, '\"', '1992-02-22', 'Nellafort', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, '\"', '1999-02-18', 'South Kaneland', 8);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, '\"', '1988-10-10', 'Shanelleland', 65);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, '\"', '1997-09-02', 'Schmidtview', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, '\"', '1980-02-01', 'Port Emmieland', 61);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, '\"', '1984-07-05', 'South Bret', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, '\"', '2019-03-07', 'Spencerland', 87);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, '\"', '1982-06-16', 'Lake Nikkiland', 77);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, '\"', '2003-11-17', 'South Ethylshire', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, '\"', '2003-04-30', 'Tomaschester', 46);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, '\"', '1989-08-06', 'Leefurt', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, '\"', '1979-04-12', 'Raulhaven', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, '\"', '2019-11-09', 'New Elijah', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, '\"', '1978-10-25', 'Walterburgh', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, '\"', '2006-08-27', 'McClureview', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, '\"', '1987-07-24', 'Xzaviershire', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, '\"', '1974-09-27', 'New Benjamin', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, '\"', '2011-08-13', 'Christystad', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, '\"', '2019-01-15', 'New Erickland', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, '\"', '1992-04-24', 'Lake Bradleyside', 31);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, '\"', '2018-04-25', 'Lake Mosechester', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, '\"', '2009-11-19', 'South Nataliestad', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, '\"', '1998-12-01', 'Caroleville', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, '\"', '1994-10-05', 'Lake Annabel', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, '\"', '2010-08-16', 'Jastton', 89);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, '\"', '1997-07-19', 'Bryonview', 74);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, '\"', '2013-12-24', 'North Golda', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, '\"', '2019-03-08', 'New Martin', 93);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, '\"', '2019-07-04', 'East Estell', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, '\"', '1987-08-04', 'Savionfurt', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, '\"', '2017-07-08', 'New Shaylee', 65);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, '\"', '1975-05-24', 'Paucekhaven', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, '\"', '2015-11-12', 'Olsonmouth', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, '\"', '1997-11-17', 'Goyettechester', 49);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, '\"', '1984-01-05', 'Streichland', 34);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, '\"', '1994-09-12', 'Sammymouth', 77);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, '\"', '1993-01-01', 'East Kattiechester', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, '\"', '2017-04-17', 'Dejaberg', 55);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, '\"', '1994-08-22', 'South Ray', 94);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, '\"', '1996-11-13', 'Parkerview', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, '\"', '2015-12-10', 'North Dellstad', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, '\"', '2006-01-28', 'Treutelchester', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, '\"', '1980-07-21', 'East Rosie', 68);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, '\"', '1992-10-28', 'Heathcotehaven', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, '\"', '1991-04-01', 'Beierton', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, '\"', '1977-12-05', 'New Marystad', 3);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, '\"', '2003-11-25', 'Pricebury', 81);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, '\"', '2001-12-28', 'East Erich', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, '\"', '1996-06-02', 'Adolfochester', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, '\"', '2004-12-29', 'West Nanniemouth', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, '\"', '1996-04-09', 'West Deonte', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, '\"', '2007-05-09', 'West Amos', 18);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, '\"', '1978-08-04', 'Volkmanchester', 37);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, '\"', '2002-09-12', 'North Viviane', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, '\"', '1979-08-31', 'East Ivory', 72);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, '\"', '1985-08-22', 'Zemlakborough', 28);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, '\"', '1981-07-16', 'Laurinefort', 17);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, '\"', '2010-04-07', 'Haleystad', 49);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, '\"', '1980-04-24', 'Providenciton', 81);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, '\"', '1976-09-10', 'Cummingsshire', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, '\"', '1976-10-24', 'Wavaside', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, '\"', '2013-03-24', 'Lake Samantha', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, '\"', '2015-02-18', 'Daxmouth', 28);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, '\"', '1971-04-16', 'Lake Melanystad', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, '\"', '2001-02-15', 'Joanland', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, '\"', '1984-07-19', 'New Myrtlemouth', 17);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, '\"', '2004-03-28', 'Adolfoville', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, '\"', '1989-01-05', 'East Omarifurt', 71);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, '\"', '1987-09-26', 'New Claudia', 3);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, '\"', '1976-11-19', 'Balistreriview', 6);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, '\"', '1975-01-18', 'West Leathaside', 76);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, '\"', '2008-05-30', 'Willowton', 4);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, '\"', '1987-09-19', 'Jacobsonchester', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, '\"', '1985-12-07', 'Reillyborough', 15);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, '\"', '2006-09-20', 'Lake Orville', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, '\"', '1988-10-24', 'Boehmmouth', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, '\"', '1977-03-08', 'South Hettie', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, '\"', '1981-11-26', 'Vitomouth', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, '\"', '2014-06-16', 'South Shaniafurt', 61);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, '\"', '2005-12-15', 'Daytonport', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, '\"', '1991-12-25', 'Lake Marietta', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, '\"', '1970-07-04', 'Kuphalborough', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, '\"', '2004-07-28', 'Johnsonville', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, '\"', '1976-06-03', 'Port Morganshire', 25);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, '\"', '1979-08-16', 'West Shaynaville', 79);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, '\"', '1983-02-06', 'Veronaport', 6);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, '\"', '2000-12-24', 'Elizabethfort', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, '\"', '1978-02-20', 'West Lelandmouth', 87);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, '\"', '2000-05-21', 'West Lamberttown', 20);
#
# TABLE STRUCTURE FOR: users
#
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Saige', 'Green', 'elouise.rath@example.org', '(403)332-8159', '1987-10-15 04:24:50', '1974-06-11 15:11:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Lila', 'Kilback', 'floyd71@example.com', '(243)787-9932x24500', '1979-05-27 02:26:08', '1991-09-04 01:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Missouri', 'Brakus', 'jewel36@example.org', '616.139.3715', '2001-11-01 13:29:49', '1970-11-04 00:01:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Eudora', 'Gerlach', 'bkoelpin@example.com', '521-805-0767x27565', '2005-07-04 05:27:27', '1990-10-13 22:04:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Amya', 'Conn', 'ucrooks@example.com', '314-356-9849x8864', '2008-09-08 08:30:24', '1991-07-23 08:40:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Lucie', 'Gottlieb', 'mertz.mason@example.net', '+48(4)2887410360', '1995-05-20 00:03:52', '1993-10-03 00:04:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Reta', 'Marks', 'ernser.erwin@example.org', '(603)260-8771', '2005-09-13 04:29:35', '1972-01-16 23:15:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Jackson', 'Glover', 'jwitting@example.net', '876.875.7433', '2008-07-06 05:07:54', '1974-06-07 16:49:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Deshaun', 'Bednar', 'juliana.hahn@example.net', '1-388-375-9591x81393', '1983-08-12 17:16:17', '1980-03-06 04:36:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Keon', 'Heathcote', 'fo\'conner@example.com', '851-303-5204', '1997-10-12 21:01:55', '1997-06-28 06:52:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Evan', 'Ondricka', 'russel.thurman@example.net', '1-439-312-4748x7193', '1977-09-15 22:41:52', '1980-05-17 15:47:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Enrico', 'Rempel', 'mayer.doug@example.com', '+03(7)3205262644', '1992-11-05 13:10:18', '1985-11-12 08:32:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Eino', 'Bergnaum', 'sierra.stark@example.com', '(732)082-0764', '1971-01-25 03:32:31', '2016-07-28 23:17:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Dandre', 'Kuvalis', 'dgleason@example.net', '(215)884-6949', '2016-07-13 23:23:03', '2000-10-15 20:15:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Briana', 'Jast', 'daniella.crist@example.net', '08512374195', '2011-08-25 06:52:50', '1971-11-18 08:45:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Ova', 'Williamson', 'gleichner.doug@example.net', '1-027-379-0144x937', '1988-11-22 17:27:23', '1995-01-15 18:06:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Mauricio', 'Hartmann', 'vallie25@example.org', '080.398.1896x6586', '1989-06-16 13:18:54', '1971-06-16 07:43:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'German', 'Dach', 'lolita.bogisich@example.net', '115-458-7872x1388', '2012-04-25 16:47:22', '1974-01-12 22:10:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Marlin', 'Simonis', 'jaskolski.daniella@example.net', '+84(7)5546512599', '2009-12-14 05:54:10', '1985-12-01 05:44:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Jerod', 'Wuckert', 'maude.effertz@example.com', '(749)058-9116', '1984-10-01 09:27:59', '2016-12-26 14:54:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Blaise', 'Lynch', 'zakary59@example.net', '06709249905', '1977-10-16 23:39:12', '1993-07-02 19:42:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Onie', 'Kunde', 'dcorwin@example.org', '+91(9)4071979104', '2018-11-02 16:42:50', '2001-10-06 00:56:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Madisen', 'Rogahn', 'o\'connell.chanelle@example.org', '+28(0)6400504218', '1975-10-02 06:46:25', '1978-09-18 19:57:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Freeman', 'Wunsch', 'cheyanne.streich@example.net', '104-143-3558x95176', '2010-01-12 10:43:20', '2009-03-26 12:02:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Zena', 'Farrell', 'kirstin09@example.net', '(345)609-4654x64550', '1993-06-01 10:58:12', '1988-11-08 20:39:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Jessica', 'Windler', 'wiza.craig@example.org', '+15(8)3186963508', '1989-12-26 22:17:34', '2016-11-19 14:57:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Brown', 'Powlowski', 'schimmel.carolina@example.net', '(950)381-7347x45019', '1985-02-16 05:03:55', '2008-02-24 11:10:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Terrell', 'Ankunding', 'kory.bins@example.org', '1-470-615-2128', '2016-09-04 01:53:16', '1980-01-04 13:59:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Rafaela', 'Will', 'emma.emard@example.com', '+23(7)6592902367', '2010-11-14 06:20:20', '1970-06-09 21:45:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Felicita', 'Wintheiser', 'jaren.emmerich@example.org', '037.359.4781', '1978-01-23 05:39:27', '1972-09-28 05:18:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Dana', 'Wolf', 'hahn.geraldine@example.com', '+51(2)7186278415', '1970-07-22 11:03:03', '2001-06-08 20:52:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Zachariah', 'Yundt', 'trantow.antonio@example.net', '567-438-1756x11605', '1998-05-21 03:53:05', '1972-04-17 11:57:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Aylin', 'Marvin', 'myra.grimes@example.org', '(672)097-9402x58956', '2019-10-30 07:45:13', '1984-05-10 04:12:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Coleman', 'Reilly', 'julio.price@example.com', '387.365.1349', '1996-04-21 07:01:25', '1999-12-27 21:20:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Linda', 'Homenick', 'xrowe@example.com', '852.573.8761x931', '2007-08-07 03:19:47', '2000-05-24 08:02:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Felipe', 'Mills', 'chris.o\'hara@example.net', '806.928.2990x4427', '2012-10-31 21:36:25', '2017-09-27 19:54:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Bonnie', 'Huel', 'rowland.schuster@example.org', '267-835-6344', '1984-07-04 05:29:34', '1984-02-11 16:05:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Irwin', 'Hackett', 'jayme42@example.net', '1-516-368-1072', '1984-03-15 12:21:01', '1974-01-05 15:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Jermaine', 'Funk', 'domenica07@example.com', '1-600-753-4253x911', '2007-08-07 08:41:36', '1998-08-25 14:40:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kendrick', 'Grimes', 'delia47@example.org', '07263445349', '1996-08-28 14:46:21', '1996-05-11 01:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Gia', 'Prosacco', 'camylle07@example.net', '370-792-9440x3433', '2007-07-15 15:24:07', '1992-10-31 12:13:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Phoebe', 'Jerde', 'breana.reinger@example.com', '+17(9)6457073201', '1970-01-20 04:03:39', '1984-10-12 17:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Vella', 'Hoeger', 'harris.jude@example.com', '394.678.6297', '1999-01-25 19:15:35', '1974-03-21 19:19:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Tianna', 'Strosin', 'kkrajcik@example.org', '(414)831-4958x9251', '2013-07-08 04:23:25', '1991-03-27 15:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Kavon', 'Greenholt', 'lina.ernser@example.com', '(787)064-0676x1737', '2007-05-19 09:02:58', '1998-12-05 19:03:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Aric', 'Goldner', 'etha64@example.com', '446-228-6199', '2001-12-31 22:33:44', '1978-10-12 10:22:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Amalia', 'D\'Amore', 'reichel.cordia@example.net', '(176)227-0265x58092', '1978-12-06 22:50:52', '1978-07-12 11:08:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Jalon', 'Turcotte', 'nolan73@example.net', '+38(9)0663658268', '2016-12-03 04:30:00', '1987-03-14 13:28:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jarrod', 'Kuhic', 'annamarie01@example.com', '158-626-6259x40636', '1978-03-21 10:28:50', '2007-04-07 11:59:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Gladyce', 'Stark', 'lewis.dach@example.org', '508.741.6481x212', '1975-10-19 03:56:50', '1989-01-28 18:09:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Rosalyn', 'Walker', 'maximillia.funk@example.net', '1-839-553-5999', '1977-11-26 21:47:17', '2013-03-10 03:25:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Marvin', 'Jast', 'klegros@example.com', '636.807.8511x332', '2005-05-26 21:00:47', '2016-01-24 04:27:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Mac', 'Runte', 'mathias43@example.com', '1-827-985-5119', '2009-06-23 20:48:21', '2005-02-07 22:56:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Thora', 'Hoeger', 'pfritsch@example.org', '714-875-9994x887', '2008-07-16 09:08:35', '1994-12-23 22:16:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Tabitha', 'Mosciski', 'afton09@example.org', '396-630-0122x81012', '2008-03-03 11:39:10', '1999-01-24 19:38:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Vallie', 'Hammes', 'stella70@example.net', '472-753-1449x38989', '2014-04-24 03:02:31', '1993-01-01 14:06:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Daren', 'Fay', 'nader.darwin@example.org', '(327)799-3642', '2019-07-05 11:54:02', '2012-12-26 20:37:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Isabella', 'McLaughlin', 'hunter20@example.org', '356.931.5155x798', '2000-03-18 18:45:55', '2010-06-24 17:10:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Candido', 'Stokes', 'agustin.cummerata@example.com', '05053362546', '2012-12-02 11:05:25', '2014-07-18 20:24:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Curt', 'Wiza', 'donnie37@example.net', '(418)159-4993x708', '1981-09-05 01:59:59', '1994-11-11 08:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Brandon', 'Hettinger', 'aherzog@example.net', '(176)364-3848', '1977-02-09 08:06:57', '2006-07-27 05:48:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Drew', 'Roberts', 'lance.kemmer@example.org', '(047)144-8097', '1971-01-01 09:30:22', '1984-07-30 06:12:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Brando', 'Hansen', 'maiya.mccullough@example.org', '190.030.1970x3445', '2005-10-20 18:51:59', '2009-10-10 18:15:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Lilla', 'Harber', 'hessel.tyrel@example.org', '1-996-577-4672x3258', '1986-10-28 22:59:51', '1977-11-11 10:03:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Brian', 'Hoeger', 'mack.auer@example.net', '1-901-645-2845x02970', '1973-07-13 01:48:53', '1985-02-26 08:50:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Adalberto', 'Dibbert', 'monserrat.breitenberg@example.com', '644-164-8524x2020', '2016-04-10 12:40:29', '2000-04-18 23:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Riley', 'Dickinson', 'tyrell49@example.com', '(630)199-2340x20289', '2014-04-18 06:02:53', '1973-02-18 02:12:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Glenna', 'Erdman', 'ctillman@example.com', '+90(6)6999315275', '2002-04-09 22:36:52', '1994-05-21 18:18:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Valentin', 'Tremblay', 'williamson.mya@example.com', '+32(4)0149514752', '2013-06-19 19:30:44', '2002-02-16 04:23:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Conor', 'Rogahn', 'percy43@example.net', '(416)705-4519', '2007-08-31 15:29:09', '1985-02-26 16:36:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Retha', 'Rath', 'schmeler.zula@example.net', '(933)411-0528x2382', '2009-02-12 11:47:23', '2015-06-27 05:21:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Hallie', 'Cremin', 'heidenreich.rubye@example.net', '1-130-139-7397x7682', '1994-12-23 20:21:59', '2003-04-30 14:34:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Gussie', 'Koch', 'ksporer@example.net', '+74(2)8801234128', '2015-04-01 13:54:25', '1973-12-18 06:58:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Hassie', 'Huel', 'mlakin@example.net', '1-038-585-8121', '1975-10-12 14:37:10', '2007-07-01 03:22:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Marlene', 'Balistreri', 'rolfson.dereck@example.com', '(902)392-7835', '1987-02-19 04:16:55', '1995-10-20 14:34:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Annamae', 'McGlynn', 'anderson.clemmie@example.net', '410.077.7239x486', '1991-04-06 13:43:01', '2007-09-28 04:46:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Daisy', 'Padberg', 'ayana42@example.com', '1-192-153-0224', '1981-11-22 23:29:36', '2001-02-12 14:28:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Ellis', 'Predovic', 'vcummerata@example.org', '1-601-809-9195x0085', '1980-12-02 06:38:08', '2006-06-16 02:00:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Dimitri', 'Schultz', 'astrid48@example.org', '492.120.2418x09968', '1991-06-22 22:47:32', '1994-07-28 23:51:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Avery', 'Bauch', 'ellen61@example.net', '1-053-454-7700x5140', '1979-09-08 19:49:59', '2010-05-03 18:07:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Kendra', 'Pfeffer', 'minerva32@example.net', '527.895.0575x03397', '1982-02-05 06:31:54', '1982-07-21 10:50:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Hadley', 'Little', 'harvey.kiera@example.com', '1-221-651-0557x34550', '1983-02-09 21:14:11', '1993-01-19 21:06:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Caden', 'Dietrich', 'lexi87@example.net', '1-733-693-1192', '1986-01-25 14:21:08', '1985-01-10 00:06:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Isac', 'Greenfelder', 'joel84@example.com', '703.014.3912', '1995-05-03 21:32:22', '2007-10-09 01:17:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'June', 'Daniel', 'henri43@example.net', '076-424-6301x01140', '1984-06-07 18:55:38', '1977-12-10 06:33:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Orlando', 'Kohler', 'ostokes@example.org', '00192750366', '1984-11-07 03:08:00', '2002-11-14 08:33:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Emerson', 'Zemlak', 'thelma30@example.org', '937.798.4639', '1981-02-18 03:33:44', '1980-07-10 11:12:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Manley', 'Leuschke', 'jordi19@example.org', '1-909-008-1040x9860', '2008-08-15 05:43:52', '2010-02-26 12:13:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Aurelio', 'Dicki', 'o\'reilly.amira@example.net', '567-581-7118', '1973-01-14 18:20:03', '1992-05-28 21:43:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Leonel', 'Balistreri', 'ystreich@example.org', '01957830608', '1995-03-23 16:49:29', '1981-11-02 12:48:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Russell', 'Sanford', 'nikita.schroeder@example.net', '736.795.7688', '1973-10-13 09:26:35', '2012-03-05 11:16:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Georgette', 'Kris', 'allie24@example.org', '629.326.0015x3915', '1990-11-03 13:11:04', '1975-03-13 19:11:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Evan', 'Beatty', 'betsy.hessel@example.com', '100.955.9473x446', '2019-05-06 14:57:44', '1979-03-17 16:38:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Avis', 'Toy', 'schultz.stewart@example.org', '(278)188-5647', '2012-08-30 20:28:44', '1984-02-25 23:45:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Benjamin', 'Feil', 'magnus.haag@example.net', '852.518.9699x2704', '2008-10-26 22:37:14', '2005-05-17 03:43:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Kellen', 'Dickinson', 'reynold74@example.org', '1-809-429-0605x24482', '2008-01-11 21:05:26', '1979-12-21 02:22:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Marie', 'Russel', 'lgrimes@example.org', '788-954-0463', '2000-10-23 07:30:55', '2018-06-05 12:58:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Jaqueline', 'Bailey', 'camren.dibbert@example.org', '(966)430-2064x04767', '1979-05-13 19:20:21', '2011-01-28 20:17:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Aiyana', 'O\'Keefe', 'harber.urban@example.org', '(681)956-8864x9940', '1975-02-22 10:04:21', '2011-06-21 16:19:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Carlos', 'Nader', 'stefanie.collins@example.com', '(653)513-6140x4183', '2007-11-03 12:06:16', '1982-12-27 05:48:10');
