#
# TABLE STRUCTURE FOR: community
#

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_community_profile1_idx` (`admin_id`),
  CONSTRAINT `fk_community_profile1` FOREIGN KEY (`admin_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (1, 'facere', 13);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (2, 'dolorem', 83);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (3, 'maxime', 55);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (4, 'quisquam', 77);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (5, 'unde', 79);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (6, 'atque', 97);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (7, 'ipsam', 48);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (8, 'quisquam', 54);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (9, 'laborum', 96);
INSERT INTO `community` (`id`, `name`, `admin_id`) VALUES (10, 'quibusdam', 62);


#
# TABLE STRUCTURE FOR: frienship_request
#

DROP TABLE IF EXISTS `frienship_request`;

CREATE TABLE `frienship_request` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '-1 - отклонён; 0 - запрос; 1 - дружба',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_frienship_request_profile1_idx` (`from_user_id`),
  KEY `fk_frienship_request_profile2_idx` (`to_user_id`),
  CONSTRAINT `fk_frienship_request_profile1` FOREIGN KEY (`from_user_id`) REFERENCES `profile` (`user_id`),
  CONSTRAINT `fk_frienship_request_profile2` FOREIGN KEY (`to_user_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (2, 28, 0, '1977-04-13 15:06:40', '1983-04-12 07:50:49');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (2, 70, 1, '2012-04-17 10:03:03', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (6, 85, 0, '1986-11-17 16:13:29', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (7, 68, 1, '2018-07-31 15:17:10', '1990-02-28 12:29:04');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (8, 39, 0, '2014-01-25 12:22:48', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (8, 70, 1, '2004-08-24 16:51:40', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (9, 36, -1, '2003-12-09 16:15:24', '2015-06-27 20:27:22');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (9, 82, 1, '1971-10-10 15:44:42', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (9, 96, 1, '1976-10-01 04:42:50', '2011-12-09 03:45:16');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (10, 86, 1, '1972-01-31 04:32:58', '1996-12-12 16:12:52');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (11, 89, 1, '1977-12-25 06:58:58', '1983-08-02 04:24:39');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (12, 71, -1, '2006-02-07 13:54:38', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (14, 8, 0, '1970-12-02 20:26:05', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (14, 86, 1, '1970-05-07 07:59:10', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (15, 60, -1, '1990-09-09 19:33:40', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (16, 41, 1, '1997-06-19 23:30:01', '2018-12-28 17:16:00');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (16, 79, -1, '1994-11-27 21:01:35', '2007-02-11 10:17:37');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (16, 96, 1, '1984-02-08 22:31:30', '1997-12-05 04:45:18');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (17, 39, 1, '2014-08-03 08:29:10', '1995-10-15 12:01:31');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (17, 81, -1, '1982-04-02 07:31:40', '2005-08-27 09:11:19');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (22, 4, -1, '1988-10-06 07:50:12', '1978-04-10 10:23:37');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (23, 74, 0, '1991-04-18 15:12:15', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (24, 72, 1, '2000-06-21 03:15:33', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (25, 74, 0, '1998-11-20 22:02:12', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (27, 88, 1, '1995-04-29 01:31:39', '1995-02-06 10:35:25');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (28, 60, 0, '2018-12-18 21:00:42', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (30, 49, 0, '2004-04-06 18:26:48', '2006-09-15 14:21:36');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (30, 91, 0, '2018-07-19 17:43:56', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (31, 36, 1, '2004-05-18 07:02:46', '1973-04-08 03:14:33');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (31, 99, -1, '1974-11-16 11:28:30', '1990-12-31 19:55:50');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (32, 6, 1, '1991-09-09 05:49:55', '2010-06-26 16:15:42');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (33, 52, 1, '2013-02-15 10:42:24', '2013-06-25 22:10:01');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (34, 51, 0, '1992-12-09 22:02:24', '2020-10-13 23:20:56');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (34, 66, -1, '1975-06-05 00:16:46', '2008-12-13 18:52:14');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (34, 91, 1, '1970-03-10 20:22:16', '2012-07-18 15:04:03');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (35, 28, -1, '2013-02-16 15:30:49', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (36, 12, 1, '2000-01-25 10:14:43', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (36, 13, 1, '1985-02-09 02:06:36', '1997-03-18 13:07:30');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (37, 84, 0, '1984-04-13 15:32:46', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (38, 42, 1, '2011-02-17 16:44:54', '2010-04-22 05:21:31');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (38, 64, -1, '1980-10-23 00:30:21', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (38, 96, -1, '1995-07-24 08:23:31', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (44, 48, 1, '2020-11-19 00:31:04', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (45, 24, -1, '1999-10-01 06:57:43', '2016-07-24 19:24:55');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (48, 57, -1, '1972-04-22 08:38:03', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 21, -1, '2016-07-30 03:45:42', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 54, 1, '2009-12-10 04:24:43', '1990-10-18 00:42:20');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 55, -1, '1995-05-28 13:52:00', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 70, 0, '2013-12-03 10:03:31', '1980-06-09 17:46:31');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (51, 31, -1, '2017-06-29 04:36:46', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (51, 79, 1, '1978-06-08 22:07:16', '1982-05-01 23:45:11');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (52, 51, 0, '2017-01-31 16:40:03', '1991-11-06 07:06:35');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (53, 48, 1, '2005-02-12 11:19:40', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (54, 64, -1, '2017-07-03 13:26:17', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (55, 1, -1, '1982-09-18 10:16:33', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (55, 35, 1, '1981-06-10 21:23:48', '2013-06-14 06:07:44');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (56, 11, -1, '1986-12-27 16:41:32', '1984-01-01 22:25:23');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (56, 42, -1, '2018-04-05 09:59:19', '1999-07-31 18:47:26');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (56, 57, 0, '2001-07-15 21:54:12', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (56, 65, 1, '1979-02-08 15:32:30', '1981-06-04 02:42:20');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (56, 79, -1, '2004-08-20 17:57:41', '1997-01-08 10:57:45');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (57, 96, 1, '2015-05-07 03:22:14', '1988-04-06 16:27:53');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (58, 22, 0, '1987-07-04 00:40:24', '2017-08-29 13:52:56');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (58, 38, 1, '2015-10-12 18:02:06', '2009-02-27 08:38:05');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (59, 17, 1, '1982-08-21 15:20:25', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (59, 86, -1, '2003-10-27 02:24:31', '2000-05-14 07:02:38');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (60, 17, 1, '2017-09-18 23:21:40', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 5, -1, '1979-08-28 10:44:07', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 53, 1, '2015-11-14 06:05:00', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 55, 1, '1983-04-13 08:54:54', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (69, 43, -1, '1970-09-27 08:55:19', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (70, 77, 1, '1994-02-14 12:15:16', '1984-07-23 11:03:56');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (72, 11, -1, '2001-01-06 00:45:26', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (73, 29, -1, '1995-03-23 06:28:45', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 6, 0, '1985-01-04 13:08:20', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 33, 1, '1979-11-26 01:17:41', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 57, 0, '1971-10-15 22:51:20', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 70, 1, '2013-07-02 02:03:53', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (76, 73, -1, '1978-01-06 21:03:14', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (78, 63, 0, '2014-08-17 08:48:23', '2019-10-04 17:13:29');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (78, 97, 1, '2019-05-23 23:34:34', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (79, 69, -1, '1989-03-25 22:21:42', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (80, 72, 1, '2006-05-29 11:20:04', '2019-05-28 21:30:59');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (80, 99, -1, '1993-05-17 11:01:52', '1999-03-19 01:17:16');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (81, 50, 1, '2009-08-17 06:08:42', '1994-09-18 21:14:14');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (82, 24, -1, '2017-03-13 09:13:45', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (83, 13, 1, '1990-10-29 05:53:47', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (84, 8, -1, '2019-08-22 16:44:36', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (86, 38, 0, '2009-05-04 20:48:42', '1999-09-26 23:49:04');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (86, 85, 0, '2007-07-01 12:33:47', '2021-06-25 22:08:14');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (89, 6, 1, '1975-01-11 07:11:27', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (89, 60, 0, '2016-09-08 13:47:49', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (90, 94, -1, '2021-01-23 07:27:01', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (92, 29, 1, '1981-08-28 09:13:28', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (94, 89, 0, '2001-12-05 07:31:15', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (95, 93, 1, '1998-12-13 16:36:02', '1989-05-24 02:52:56');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (96, 26, 1, '1987-01-06 23:47:36', '2002-06-17 09:02:48');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (98, 18, -1, '2017-02-08 03:49:18', NULL);
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (99, 31, -1, '2011-08-16 10:29:07', '1997-11-19 06:33:52');
INSERT INTO `frienship_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (99, 61, -1, '2016-08-04 15:30:41', NULL);


#
# TABLE STRUCTURE FOR: like
#

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `message_id` int(10) unsigned DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_post_UNIQUE` (`user_id`,`post_id`),
  UNIQUE KEY `user_message_UNIQUE` (`user_id`,`message_id`),
  UNIQUE KEY `user_media_UNIQUE` (`user_id`,`media_id`),
  KEY `fk_like_profile1_idx` (`user_id`),
  KEY `fk_like_post1_idx` (`post_id`),
  KEY `fk_like_message1_idx` (`message_id`),
  KEY `fk_like_media1_idx` (`media_id`),
  CONSTRAINT `fk_like_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_like_message1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  CONSTRAINT `fk_like_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_like_profile1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (1, 3, 45, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (2, 51, 40, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (3, 84, 88, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (4, 38, 53, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (5, 70, 17, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (6, 91, 1, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (7, 5, 72, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (8, 99, 40, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (9, 84, 70, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (10, 9, 22, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (11, 10, 22, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (12, 75, 27, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (13, 44, 4, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (14, 5, 50, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (15, 22, 65, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (16, 4, 78, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (17, 47, 17, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (18, 39, 1, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (19, 23, 79, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (20, 6, 44, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (21, 48, 77, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (22, 26, 65, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (23, 29, 97, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (24, 75, 88, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (25, 5, 43, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (26, 44, 26, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (27, 4, 87, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (28, 30, 5, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (29, 81, 40, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (30, 5, 90, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (31, 86, 20, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (32, 8, 87, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (33, 30, 59, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (34, 84, NULL, 40, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (35, 34, NULL, 96, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (36, 8, NULL, 41, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (37, 93, NULL, 94, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (38, 58, NULL, 31, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (39, 67, NULL, 4, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (40, 85, NULL, 87, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (41, 44, NULL, 88, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (42, 91, NULL, 14, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (43, 31, NULL, 88, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (44, 62, NULL, 26, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (45, 97, NULL, 52, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (46, 66, NULL, 99, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (47, 80, NULL, 7, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (48, 87, NULL, 78, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (49, 36, NULL, 57, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (50, 93, NULL, 51, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (51, 79, NULL, 60, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (52, 67, NULL, 94, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (53, 4, NULL, 18, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (54, 28, NULL, 2, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (55, 18, NULL, 71, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (56, 1, NULL, 34, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (57, 14, NULL, 62, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (58, 59, NULL, 29, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (59, 51, NULL, 77, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (60, 73, NULL, 80, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (61, 16, NULL, 46, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (62, 13, NULL, 50, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (63, 55, NULL, 34, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (64, 70, NULL, 91, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (65, 56, NULL, 90, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (66, 65, NULL, 52, NULL);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (67, 6, NULL, NULL, 79);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (68, 98, NULL, NULL, 13);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (69, 9, NULL, NULL, 22);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (70, 48, NULL, NULL, 2);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (71, 27, NULL, NULL, 96);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (72, 50, NULL, NULL, 6);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (73, 98, NULL, NULL, 62);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (74, 86, NULL, NULL, 92);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (75, 99, NULL, NULL, 97);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (76, 20, NULL, NULL, 29);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (77, 26, NULL, NULL, 74);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (78, 71, NULL, NULL, 98);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (79, 84, NULL, NULL, 34);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (80, 77, NULL, NULL, 75);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (81, 39, NULL, NULL, 24);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (82, 31, NULL, NULL, 30);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (83, 22, NULL, NULL, 41);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (84, 10, NULL, NULL, 36);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (85, 1, NULL, NULL, 72);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (86, 20, NULL, NULL, 3);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (87, 14, NULL, NULL, 91);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (88, 33, NULL, NULL, 71);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (89, 36, NULL, NULL, 67);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (90, 13, NULL, NULL, 34);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (91, 92, NULL, NULL, 2);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (92, 58, NULL, NULL, 59);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (93, 64, NULL, NULL, 83);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (94, 29, NULL, NULL, 42);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (95, 61, NULL, NULL, 93);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (96, 99, NULL, NULL, 34);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (97, 97, NULL, NULL, 10);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (98, 64, NULL, NULL, 56);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (99, 18, NULL, NULL, 76);
INSERT INTO `like` (`id`, `user_id`, `post_id`, `message_id`, `media_id`) VALUES (100, 63, NULL, NULL, 26);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blob` blob DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_media_media_type1_idx` (`media_type_id`),
  KEY `fk_media_profile1_idx` (`user_id`),
  CONSTRAINT `fk_media_media_type1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `fk_media_profile1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 65, '3c94e493-8f7f-30f2-995f-57ae58a3e909', NULL, NULL, '2011-09-15 04:42:11', '1987-08-26 20:06:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 58, '12e5fdaf-cb44-3a0d-9b9e-46e995a2095a', NULL, NULL, '1970-06-18 22:34:08', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 100, '855f3dd1-11ac-3914-97ed-a7eb238bd148', NULL, NULL, '1973-10-21 16:51:00', '1986-11-15 10:08:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 99, '97446111-428a-375f-a431-0d0beb25ddef', NULL, NULL, '2004-08-23 15:27:53', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (5, 2, 86, '2ebd1021-3e0d-3c32-95bb-29bdb793a9e4', NULL, NULL, '2012-02-20 09:10:35', '2005-08-25 06:07:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (6, 3, 51, '129b9bdf-7f85-3648-9e49-fbeba20c25c1', NULL, NULL, '1991-02-21 18:43:54', '2021-02-07 00:16:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 23, '289f8f28-4d77-3402-812a-6600df5d48f1', NULL, NULL, '1978-01-01 12:18:17', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (8, 2, 49, '31f541a4-5ef8-365a-92ad-c692d99e8902', NULL, NULL, '1983-02-22 04:03:32', '2008-07-16 08:52:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (9, 3, 22, '39495f0c-7706-32b4-90d5-ef75841005e8', NULL, NULL, '2006-04-24 21:10:22', '1991-09-01 23:13:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 80, '8eee86fa-c98f-3293-ba7f-6509e5565fa3', NULL, NULL, '1990-03-07 03:14:52', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (11, 2, 48, '49a89074-9e7c-31fc-a22d-74bb99dd80d1', NULL, NULL, '2015-08-21 06:42:46', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (12, 3, 84, 'be0364ce-c217-3210-a6f0-627707e3471f', NULL, NULL, '2004-10-02 08:40:07', '1997-03-14 23:04:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (13, 1, 81, 'fc5efc17-966c-3b1f-b01e-10b6af12020a', NULL, NULL, '1989-11-22 15:46:03', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (14, 2, 55, '314fe6ab-ced5-329f-acf3-baddcfce3541', NULL, NULL, '2012-08-11 12:17:30', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (15, 3, 3, 'dee43c94-d69c-3199-8361-365fcc65aa0d', NULL, NULL, '2019-08-07 16:23:36', '1985-06-01 14:17:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 50, 'ead39c1d-6911-3a23-8ea0-ddd693ad96a2', NULL, NULL, '1971-09-08 20:16:52', '1986-09-15 17:22:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 96, '6e2eda58-5ec3-3534-b091-19626075666a', NULL, NULL, '1973-07-06 10:35:36', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 47, '7fbcba14-93d2-3db1-b1b7-8da821a5a2ec', NULL, NULL, '1980-08-01 16:35:21', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 42, 'dbf4ffc7-13d4-326c-b0bb-196c78f26a6f', NULL, NULL, '1975-11-16 04:21:15', '2016-01-13 17:39:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (20, 2, 42, '27ae0073-05c3-30ed-97ac-3ac98f2075da', NULL, NULL, '2014-03-21 05:27:56', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (21, 3, 69, '93a2e026-95be-3807-9af0-00524a1a4b81', NULL, NULL, '1994-12-18 13:04:26', '2009-04-13 23:12:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 37, 'e2efca81-fe2e-3524-9a30-3e211a94891f', NULL, NULL, '2011-04-30 07:19:11', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (23, 2, 71, '197bfca8-31ab-3b4a-89c6-e03ea9fefb75', NULL, NULL, '2007-10-10 14:55:01', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (24, 3, 64, 'ca2d8602-1ec3-3e46-8a8b-7d8f0215c604', NULL, NULL, '1993-04-25 03:26:00', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (25, 1, 98, '21d4fa36-8642-3e0e-8a4d-678ee7af83aa', NULL, NULL, '1991-03-27 15:48:34', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (26, 2, 34, '83d4fca6-1d6b-3c04-8397-6589711a2563', NULL, NULL, '2003-12-22 21:13:55', '2007-11-18 23:02:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (27, 3, 20, 'adcb5679-e2b8-3259-a721-2748f6e27cd5', NULL, NULL, '1985-11-10 09:40:48', '1999-04-09 03:05:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (28, 1, 79, '9319539a-eac9-37b9-9d0a-a75d0f8c79a1', NULL, NULL, '1985-12-19 15:16:56', '1976-01-07 14:53:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (29, 2, 67, '3477d3da-357c-3452-8629-fbdf1b6bc672', NULL, NULL, '1983-10-21 05:37:01', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (30, 3, 59, '6e2dad36-fdf7-30f7-bca2-0a3b792b06ae', NULL, NULL, '1986-02-16 00:29:59', '2004-10-22 14:03:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 61, 'e52338d0-cbc5-3a46-96d4-04f3dab3fc53', NULL, NULL, '1994-03-24 06:52:53', '2007-09-19 05:16:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 31, '4d3c38ac-0834-3d1c-859c-6ee32a261d4a', NULL, NULL, '1980-12-06 00:56:45', '1992-06-11 23:53:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 17, '6da2eb92-9043-3164-8fd8-3d21c13f4734', NULL, NULL, '1977-12-14 06:19:35', '1999-06-20 20:30:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (34, 1, 61, '4901915d-7700-3b4a-9704-e1c0eb31cc85', NULL, NULL, '2004-11-01 00:35:22', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 29, '39cdec05-f360-3cc6-acbb-b41618793309', NULL, NULL, '1991-03-01 17:17:02', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (36, 3, 2, 'da7e595c-1400-313e-97d0-9a3c998eb2f6', NULL, NULL, '1992-01-17 21:51:20', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 11, '83fcd44b-807b-32a5-88be-615d60015902', NULL, NULL, '2004-08-03 05:08:58', '1980-06-23 08:27:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (38, 2, 51, '93e95528-959a-354a-b609-3cd67c7cfaa0', NULL, NULL, '1999-02-09 07:33:58', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (39, 3, 51, 'ff474a90-748d-3569-8742-b868b3de69ff', NULL, NULL, '2014-02-28 17:45:39', '1994-12-06 07:44:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (40, 1, 33, '52ac91c1-53c7-3ccd-ac63-5a68bd8b4bfa', NULL, NULL, '1972-03-16 03:26:17', '1995-06-22 01:57:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (41, 2, 31, '34842917-db6b-3f7b-9dfb-4889025cfcdf', NULL, NULL, '1989-05-14 10:08:52', '1984-10-23 08:42:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (42, 3, 98, 'b178fe39-f81b-3fb3-9968-20fbff2f1535', NULL, NULL, '1988-09-30 15:34:29', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 16, '23749a9e-42b5-32f9-b459-3426847551f3', NULL, NULL, '2011-10-09 03:40:08', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (44, 2, 11, '2f5b6929-8b39-3d5d-a89f-6a634e3e6d44', NULL, NULL, '1985-01-31 03:07:58', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (45, 3, 53, 'ccd06393-f41b-3ad0-884d-95004300973f', NULL, NULL, '2000-07-19 16:49:02', '2006-01-10 02:19:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 18, '2b40abe8-5874-3a98-ba73-88ec8fa5362f', NULL, NULL, '1985-01-06 04:12:30', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 61, 'c311ecf7-0242-311c-9e28-a266e5acecb5', NULL, NULL, '1981-12-15 09:38:53', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, '98417fa5-c67c-3d2e-b8ba-2653b800d3ce', NULL, NULL, '1976-08-16 09:00:11', '1979-10-25 05:00:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (49, 1, 65, '17cb8b06-1db0-3ac0-a803-76e75fb6f7d7', NULL, NULL, '2006-02-26 18:19:15', '1996-12-26 21:16:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (50, 2, 2, '76da2069-53b8-3664-aef8-e2cfb66cece7', NULL, NULL, '2003-11-18 09:13:26', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (51, 3, 89, 'ae8be4d2-273d-301b-9f8d-da8569f0104d', NULL, NULL, '1983-11-01 19:19:12', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (52, 1, 34, '9785a5a3-4522-3a54-b53e-7173fad7add2', NULL, NULL, '2004-03-15 16:07:33', '1994-08-24 03:08:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 38, '28f85db7-c7ee-3812-a652-9d9221e6a85b', NULL, NULL, '1981-11-15 18:57:42', '1992-05-23 16:00:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (54, 3, 60, '23be30f6-e50c-33dc-9b77-36410beab7e6', NULL, NULL, '2019-11-08 01:07:22', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (55, 1, 97, 'd6a6cc13-6937-374e-93f3-a3ccf9303288', NULL, NULL, '1971-12-15 14:13:36', '2013-03-23 04:48:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (56, 2, 36, '2819ff74-d23d-3711-a16c-2b4f5302eccc', NULL, NULL, '2000-05-02 13:45:49', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (57, 3, 93, 'fd9260fc-5729-39af-9ae7-3a8e18bd53f1', NULL, NULL, '1977-10-04 20:13:47', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 16, '2854badc-47b4-3e70-beca-4583f139cf4e', NULL, NULL, '2006-01-31 16:51:49', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 15, 'fcd9ac4e-d94f-3c5c-b819-4d0320da6367', NULL, NULL, '1985-05-09 04:48:37', '1980-02-29 12:09:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (60, 3, 59, 'db83a3a9-f850-39fe-9911-f28985f87826', NULL, NULL, '1975-07-06 17:50:21', '1980-02-27 02:21:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 75, 'a5501823-8c37-31b6-be81-22a990cc5810', NULL, NULL, '1979-01-28 23:22:18', '2008-08-10 12:24:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 76, '726fba9d-30c6-34af-94a0-4b5aad36fd76', NULL, NULL, '1978-09-27 11:55:55', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 90, '0ebd311f-3951-3fc8-9e41-a4574cfeb969', NULL, NULL, '2002-03-27 04:00:04', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (64, 1, 91, '46e51d8d-02cb-3ad3-ba90-6aa32cd773ec', NULL, NULL, '1978-02-05 16:05:34', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 36, '0b356f63-f5e9-3400-a2c9-c19468c8b8aa', NULL, NULL, '2010-03-08 20:14:46', '1982-01-02 08:09:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (66, 3, 19, 'e8cd2fc7-8907-3c7f-8dda-30b4f4650857', NULL, NULL, '1977-05-29 18:45:59', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (67, 1, 93, 'a4d219b5-1e21-345b-8425-a031c22d1ec1', NULL, NULL, '2018-11-28 22:49:13', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (68, 2, 47, '726637cc-ce33-3d29-a21c-d8c63491f9fb', NULL, NULL, '1980-11-19 08:43:10', '2018-06-28 03:38:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (69, 3, 70, 'c8f1a561-946c-322e-8545-068931a6969b', NULL, NULL, '1987-01-06 06:46:50', '2005-07-16 20:48:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (70, 1, 44, '9894dac5-84a6-3999-9ae6-af08d860e651', NULL, NULL, '1988-11-16 10:39:02', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 79, 'b3a0fa12-c295-3568-bfd6-b05e9c1123ca', NULL, NULL, '2015-10-26 02:20:06', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (72, 3, 100, 'f31adb0d-bfd5-3325-aed4-a9f45460d237', NULL, NULL, '1993-05-27 04:23:37', '2003-07-29 22:36:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (73, 1, 41, '0d6a2336-5055-30e7-85fd-f01b222e630f', NULL, NULL, '2020-01-31 19:31:24', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (74, 2, 94, '17e4d75b-a570-389c-9cfb-95a3585af166', NULL, NULL, '1976-02-11 04:10:15', '1982-05-31 14:28:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 11, 'd0e629c1-b2da-31bb-9eb7-97c5245d335a', NULL, NULL, '2021-01-16 09:25:23', '1975-04-26 16:17:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 93, 'ec0445e5-0d24-3893-af6b-a2966902620b', NULL, NULL, '1990-03-14 09:42:44', '2011-03-13 22:45:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 12, '84de656c-fcd5-30b6-b3b3-81e2719fb806', NULL, NULL, '1971-08-29 15:11:18', '1997-03-11 09:38:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 71, '7ceb6520-84bd-392b-bed8-a90f99eb011c', NULL, NULL, '1981-07-12 06:37:32', '1993-07-13 21:18:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (79, 1, 41, 'aaf7bfba-e9b2-3ca9-83fc-dc0ac1267c3f', NULL, NULL, '1991-12-25 06:44:11', '1984-08-13 14:01:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (80, 2, 77, 'd2a8705e-249f-394f-b14c-70e53ff6c758', NULL, NULL, '1991-09-11 23:29:38', '1972-08-08 07:00:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (81, 3, 73, 'fc6fe5ec-1a8a-342e-beac-1ce690ee964e', NULL, NULL, '1987-10-19 06:56:53', '2018-12-30 08:18:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (82, 1, 29, '8eb5a394-2cbf-3bdb-8731-2248ed6e323a', NULL, NULL, '1993-02-17 13:54:39', '2020-10-09 06:30:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (83, 2, 10, '66562684-3f85-3a8c-8f8a-682d85d2e91e', NULL, NULL, '1977-07-16 12:39:55', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (84, 3, 10, '3f7d435b-c3f3-3676-b8a4-3dae8ae04c39', NULL, NULL, '1984-06-15 14:38:07', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (85, 1, 89, 'abcf6f0d-6b78-3d4d-a66e-ad7a50246888', NULL, NULL, '1980-09-23 09:50:39', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 7, 'edee782c-033d-3127-bff0-2bafde9819e7', NULL, NULL, '1973-08-02 18:20:45', '1980-06-19 15:22:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (87, 3, 46, 'fce9ff08-3561-3f01-b18e-8bd77b42e809', NULL, NULL, '2003-12-10 00:51:40', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (88, 1, 81, '669dbbdc-7209-3c8f-9453-c7e2c698bedf', NULL, NULL, '2004-01-05 04:48:23', '2009-09-07 12:43:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (89, 2, 23, 'f9d6af64-4d6c-3fd8-bd83-6395f25aa7c5', NULL, NULL, '2001-12-24 05:32:40', '1982-12-02 10:40:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (90, 3, 60, 'ac6947be-f60d-36e4-9973-1119d097fdad', NULL, NULL, '1971-05-08 05:56:05', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 40, '451fefd4-c688-3295-aeb3-f7808d3703b4', NULL, NULL, '2002-03-02 06:56:52', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 97, '3d09a90b-7d7d-3627-90a3-98e3b8e6148e', NULL, NULL, '2008-09-22 16:28:50', '1992-09-10 18:20:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 35, '8229c4c3-4cff-3211-a315-80fba9d9db42', NULL, NULL, '2009-01-01 17:21:38', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (94, 1, 29, '5c9eb177-8e5e-3917-9322-e4d0601a916e', NULL, NULL, '2015-01-18 03:47:07', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 88, '8830642e-3ebe-3c3e-92ff-5b0ff38f99c6', NULL, NULL, '2005-12-15 11:02:41', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (96, 3, 71, 'e173d2e1-ee5e-3bd5-990a-c80681f7df7c', NULL, NULL, '2017-03-13 15:21:11', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (97, 1, 47, 'caa8b488-7184-3f64-ac5a-05c8c1acf06a', NULL, NULL, '2011-11-12 05:52:40', '1998-12-16 03:28:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (98, 2, 81, '05cd9b14-418f-3c18-83c1-cd25409b62c4', NULL, NULL, '1999-03-09 07:13:08', NULL);
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 17, 'c4497e18-3edf-31ff-a448-6977295893f5', NULL, NULL, '2019-09-15 18:02:32', '1983-07-17 23:42:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (100, 1, 16, '592d4b11-ba12-3991-820b-2f61da873d3a', NULL, NULL, '1992-01-19 15:58:53', NULL);


#
# TABLE STRUCTURE FOR: media_type
#

DROP TABLE IF EXISTS `media_type`;

CREATE TABLE `media_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_type` (`id`, `name`) VALUES (1, 'image');
INSERT INTO `media_type` (`id`, `name`) VALUES (2, 'video');
INSERT INTO `media_type` (`id`, `name`) VALUES (3, 'audio');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user_idx` (`from_user_id`),
  KEY `to_user_idx` (`to_user_id`),
  KEY `fk_message_media1_idx` (`media_id`),
  CONSTRAINT `fk_message_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_message_profile1` FOREIGN KEY (`from_user_id`) REFERENCES `profile` (`user_id`),
  CONSTRAINT `fk_message_profile2` FOREIGN KEY (`to_user_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (1, 30, 12, 'Sed ex quis et.', 93, '2012-01-29 02:47:16', '2006-11-16 23:19:42', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (2, 38, 78, 'Iure non et illo id.', 19, '1995-11-23 01:00:15', '2020-12-21 22:47:28', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (3, 24, 67, 'Repellat rerum nisi amet et neque.', 36, '2009-06-16 02:11:19', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (4, 60, 94, 'Nulla amet vel unde quo voluptatum ratione nihil.', 92, '1985-11-20 15:29:12', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (5, 26, 39, 'Voluptatibus sint laudantium assumenda.', 4, '1973-09-20 07:08:39', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (6, 89, 7, 'Et pariatur qui et neque minus rerum est omnis.', 68, '1973-10-10 20:21:00', '1986-10-09 21:53:01', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (7, 77, 73, 'Ut in vel quod quas rerum.', 56, '2014-12-06 01:39:25', '1981-02-06 03:33:49', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (8, 82, 55, 'Commodi non quo sit mollitia fugiat exercitationem fugiat eveniet.', 1, '1981-07-18 18:19:59', '2019-09-13 08:59:19', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (9, 51, 99, 'Ipsa dolore voluptates molestiae minus aliquam tempore.', 32, '1989-07-02 02:50:43', '2012-06-11 22:52:54', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (10, 13, 77, 'Totam repellat nihil ea fugiat.', 49, '2016-09-02 07:37:31', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (11, 21, 7, 'Vero et totam nobis pariatur quis et.', 61, '1972-12-06 07:10:42', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (12, 14, 44, 'Est excepturi voluptates quos dolore in.', 39, '2003-07-27 04:51:03', '1989-02-08 09:46:15', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (13, 33, 67, 'Suscipit ad nesciunt odit consequuntur perferendis consequuntur quos.', 5, '1995-05-26 04:15:04', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (14, 68, 26, 'Praesentium velit voluptates quidem voluptate quis repellat.', 98, '1990-10-22 15:12:51', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (15, 59, 52, 'Asperiores debitis non quasi porro.', 36, '1976-07-01 22:58:51', '1993-06-16 22:13:08', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (16, 63, 40, 'Illum repellendus pariatur molestiae.', 43, '1992-11-28 16:55:46', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (17, 30, 17, 'Vel corporis excepturi dolorem porro necessitatibus.', 16, '1985-07-25 05:30:33', '2019-01-13 21:00:33', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (18, 86, 99, 'Ea eum repellat architecto nulla.', 70, '2014-08-17 04:26:40', '1977-12-17 10:09:56', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (19, 87, 49, 'Ratione sint veniam explicabo illum iusto dolore culpa quam.', 69, '1982-02-12 03:23:25', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (20, 18, 61, 'Quo aliquam dolore est maiores vero.', 46, '1973-06-27 22:56:20', '1995-03-20 07:08:02', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (21, 67, 82, 'At aliquid fugiat quisquam ullam tempore dolor dicta.', 52, '2020-05-02 18:54:28', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (22, 27, 95, 'Sed repellendus quisquam ut ut.', 95, '2001-02-21 10:04:04', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (23, 66, 27, 'Deleniti odit sit aut libero.', 62, '2009-03-11 20:58:45', '1993-04-30 10:03:29', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (24, 70, 95, 'Explicabo animi tenetur aliquam quaerat repellendus.', 87, '1974-12-14 17:30:57', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (25, 68, 53, 'Quia rerum perferendis tempora.', 38, '1993-01-20 16:53:05', '1980-03-18 21:05:11', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (26, 3, 16, 'Et eligendi a omnis et esse ut vitae.', 78, '1977-02-10 13:23:02', '1984-04-08 23:29:14', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (27, 46, 46, 'Nam enim repudiandae officiis error quidem ullam.', 94, '1999-02-19 04:24:22', '1983-10-15 08:35:42', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (28, 61, 32, 'Ab voluptatibus explicabo nam ea et totam placeat.', 92, '1996-11-20 11:31:41', '1991-01-02 20:53:46', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (29, 31, 18, 'Placeat officia est laborum eius.', 41, '1987-06-05 08:59:50', '2019-08-22 10:11:54', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (30, 99, 36, 'Aliquid sed repellendus quae assumenda mollitia.', 1, '2010-04-10 14:30:21', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (31, 44, 3, 'Perspiciatis fugit sed nisi sit.', 83, '1990-09-05 03:05:02', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (32, 95, 30, 'Repellat molestiae illo autem facilis consequatur.', 77, '1998-08-19 05:21:17', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (33, 90, 95, 'Alias quidem aut quae repudiandae magni.', 4, '1977-02-07 06:20:05', '1992-04-03 12:50:09', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (34, 51, 64, 'Deleniti et soluta nulla facere pariatur esse enim.', 98, '2019-10-04 20:14:59', '1988-09-13 18:02:19', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (35, 38, 31, 'Enim et quo ut ea officia.', 51, '1989-10-02 23:44:11', '1991-10-30 08:30:22', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (36, 75, 34, 'Quam vel dolor perferendis occaecati eligendi quos.', 67, '2002-07-03 08:22:10', '1990-01-02 23:37:42', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (37, 53, 79, 'Non esse impedit voluptatem ut dolor eius aut ipsam.', 12, '2018-05-13 20:00:55', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (38, 46, 40, 'Dolore enim alias commodi velit rerum sed quisquam numquam.', 43, '2016-03-23 13:40:18', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (39, 38, 70, 'Natus occaecati maiores nisi ut sed temporibus.', 61, '2006-02-08 00:56:01', '1998-06-22 14:46:34', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (40, 78, 68, 'Et et iure assumenda nobis blanditiis sint.', 97, '1995-11-19 19:14:19', '1980-06-12 20:08:17', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (41, 79, 12, 'Velit nesciunt non quod consectetur unde nemo sed.', 99, '2021-02-25 01:09:44', '2014-10-23 10:17:54', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (42, 61, 7, 'In adipisci rerum voluptates eos qui est.', 28, '2012-02-03 04:29:24', '1974-06-15 13:58:59', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (43, 38, 96, 'Est animi sint ut id accusantium.', 23, '2001-08-16 07:17:01', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (44, 42, 46, 'Assumenda neque qui et incidunt quae vitae consequatur.', 86, '1990-01-30 22:32:21', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (45, 40, 83, 'Tempore ullam ipsum quaerat iste quidem in neque ea.', 17, '1970-04-20 16:40:02', '2017-05-27 21:20:14', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (46, 90, 58, 'Sint praesentium provident ullam aut ut.', 50, '1987-06-29 14:09:57', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (47, 57, 11, 'Fuga quia laboriosam tempore quam perspiciatis accusamus.', 29, '1980-07-10 20:14:46', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (48, 68, 56, 'Qui recusandae voluptatem id corrupti.', 68, '2010-04-15 05:31:31', '2006-12-07 07:17:59', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (49, 11, 94, 'Qui sint occaecati assumenda voluptas ratione rerum ea.', 38, '2001-01-18 22:49:20', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (50, 72, 72, 'Quo eaque perferendis dolor.', 6, '1977-01-15 04:59:18', '2018-05-31 06:02:56', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (51, 68, 51, 'Dolor porro voluptatem laudantium qui voluptatem voluptatum minus possimus.', 17, '1993-10-07 16:14:57', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (52, 67, 12, 'Ullam voluptate unde id nihil sint quos earum.', 23, '1974-08-15 16:39:53', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (53, 94, 49, 'Culpa sunt veniam distinctio eveniet illum temporibus.', 18, '2017-03-29 10:20:06', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (54, 17, 90, 'Voluptatibus aut eos dolore ratione.', 64, '2008-01-23 15:56:31', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (55, 2, 30, 'Dolores veritatis architecto omnis enim nam a.', 47, '1986-07-06 07:52:26', '2001-01-03 03:30:40', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (56, 19, 19, 'Non cupiditate in eos similique est sapiente.', 5, '1992-08-11 05:46:28', '1996-05-11 04:58:24', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (57, 69, 75, 'Est quis accusamus a voluptates unde.', 15, '2003-02-24 04:15:03', '2001-05-09 10:31:53', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (58, 97, 43, 'Est sunt sed est.', 71, '1996-06-02 09:45:51', '1982-07-24 19:28:06', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (59, 65, 53, 'Sapiente enim natus qui possimus aperiam cum.', 65, '1998-11-07 17:29:00', '1981-06-02 20:47:21', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (60, 3, 25, 'Reprehenderit reiciendis id nemo debitis dolores.', 36, '1977-01-01 03:48:56', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (61, 8, 92, 'Quas suscipit repudiandae et natus.', 86, '1986-07-14 09:55:07', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (62, 24, 58, 'Perferendis non sed ipsum.', 97, '1993-08-18 21:11:17', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (63, 46, 52, 'Voluptatum neque dolorem voluptatem est ut blanditiis.', 46, '1992-10-14 09:42:13', '2019-02-14 23:39:49', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (64, 64, 68, 'Et quod illum consequatur.', 36, '1995-01-02 10:39:38', '1983-05-07 21:22:23', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (65, 28, 70, 'Ipsum velit molestias culpa beatae nulla consequuntur.', 65, '1978-09-03 13:10:04', '1970-09-24 00:01:24', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (66, 74, 88, 'Omnis occaecati et sint aliquid.', 84, '1972-09-30 13:37:12', '2021-03-07 11:45:45', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (67, 78, 56, 'Sit ratione placeat in molestias est.', 59, '1978-02-12 05:43:01', '1975-03-19 03:12:37', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (68, 93, 53, 'Quibusdam dolore est id dolores non doloribus delectus.', 2, '2015-06-24 06:00:17', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (69, 63, 18, 'Debitis nulla nulla quis.', 55, '2001-10-12 03:07:13', '2017-05-02 19:32:34', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (70, 27, 20, 'Nobis dicta possimus maxime commodi in voluptatem reiciendis.', 79, '2005-05-21 23:37:42', '2012-01-19 20:40:45', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (71, 63, 27, 'Provident et iure et velit magnam commodi nam.', 70, '2000-12-26 02:39:03', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (72, 48, 51, 'Velit non numquam rerum cum sequi maiores aspernatur.', 28, '2017-02-01 06:26:45', '2012-04-07 19:41:14', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (73, 45, 96, 'Et sunt ratione rerum qui sit fugit.', 80, '1996-09-04 12:47:17', '2012-06-15 13:56:31', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (74, 91, 60, 'Et fugit quos repudiandae distinctio et sunt.', 47, '2013-01-29 01:01:33', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (75, 27, 87, 'Repudiandae aut nam culpa dolor nisi pariatur.', 17, '2013-11-10 01:40:42', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (76, 91, 60, 'Dicta aut accusantium sapiente.', 4, '1996-08-20 16:05:15', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (77, 75, 38, 'Natus aspernatur explicabo inventore nam.', 60, '2020-03-27 14:07:15', '2021-05-05 04:49:59', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (78, 34, 30, 'Voluptas recusandae et suscipit maxime est.', 12, '1987-04-23 03:21:27', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (79, 35, 92, 'Aut est fuga ab veniam sequi ipsa blanditiis.', 30, '2020-01-24 06:59:48', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (80, 89, 19, 'Quas odit iste sapiente aut.', 49, '1980-04-09 23:06:32', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (81, 67, 81, 'Qui voluptatum voluptatum quaerat assumenda repudiandae animi aliquam qui.', 75, '2016-02-19 23:24:25', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (82, 36, 29, 'Nisi quod temporibus sed iusto maiores molestiae.', 25, '2016-06-23 07:38:54', '1973-02-19 13:46:05', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (83, 64, 73, 'Quisquam ad dolorem consectetur ut quia quo voluptates.', 21, '2009-02-01 08:20:43', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (84, 43, 64, 'Impedit sunt ipsam enim voluptates sapiente temporibus.', 80, '2002-01-10 14:02:43', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (85, 90, 90, 'Nihil quia cumque itaque aut sit sapiente porro.', 67, '1980-12-26 11:04:50', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (86, 6, 81, 'Sequi totam cumque rem deserunt.', 26, '2001-08-31 05:21:43', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (87, 10, 55, 'Quia error laudantium molestiae cupiditate.', 64, '1986-11-30 07:30:20', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (88, 69, 88, 'Aperiam provident temporibus sapiente molestiae.', 93, '1988-02-18 17:31:30', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (89, 81, 22, 'Vitae velit voluptate optio ipsa.', 85, '1983-03-05 06:57:16', '2005-07-04 22:18:58', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (90, 10, 11, 'Repudiandae modi magni quod.', 4, '1987-09-19 03:37:18', '1996-11-21 03:51:04', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (91, 58, 77, 'Sapiente nihil sed rerum possimus quasi doloremque blanditiis consectetur.', 84, '2008-07-21 20:52:38', '2020-02-19 03:07:52', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (92, 33, 13, 'Distinctio odio praesentium et facilis.', 12, '2014-10-01 22:49:13', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (93, 58, 76, 'Nisi voluptas reiciendis veniam deserunt veritatis voluptatem.', 85, '1993-08-11 01:03:15', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (94, 79, 19, 'Non totam quia doloremque ut modi nemo.', 49, '1989-06-06 22:29:13', '1979-06-11 09:25:40', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (95, 59, 8, 'Voluptatum dicta est perferendis ullam consectetur qui.', 38, '1996-05-25 04:03:10', '1985-02-24 10:53:39', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (96, 25, 13, 'Consequatur accusantium unde eaque illo quasi consequuntur hic.', 18, '2002-10-11 21:46:33', '2009-06-29 13:08:50', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (97, 51, 22, 'Sunt voluptatibus omnis adipisci harum eos qui velit.', 73, '1972-01-31 18:36:00', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (98, 14, 91, 'Nemo et a ex at placeat quod.', 60, '2003-11-13 17:47:24', '2016-01-04 02:45:38', NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (99, 7, 71, 'Qui saepe non debitis neque saepe.', 82, '2021-01-30 08:31:43', NULL, NULL);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `media_id`, `created_at`, `read_at`, `deleted_at`) VALUES (100, 92, 81, 'Aut expedita asperiores sed qui.', 92, '2003-07-22 18:09:19', NULL, NULL);


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_post_profile1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_profile1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (1, 94, NULL, NULL, 'Et ut ut nesciunt.', 15, '1973-04-13 11:34:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (2, 67, NULL, NULL, 'Animi error at et quidem modi.', 93, '1998-07-05 02:00:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (3, 29, NULL, NULL, 'Explicabo eius saepe repellat sit soluta id.', 100, '2009-07-10 16:58:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (4, 15, NULL, NULL, 'Explicabo maiores deleniti quasi doloremque similique.', 21, '1992-06-01 19:11:12');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (5, 12, NULL, NULL, 'Ut cumque eos qui in.', 43, '2004-07-06 21:09:26');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (6, 36, NULL, NULL, 'Aliquam doloremque qui sapiente in laborum vel voluptate tempore.', 90, '2018-11-05 01:02:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (7, 2, NULL, NULL, 'Omnis atque quis sed et hic.', 49, '2002-06-24 03:32:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (8, 88, NULL, NULL, 'Qui consequuntur rem et voluptas repellendus.', 6, '1985-07-23 02:01:03');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (9, 91, NULL, NULL, 'Possimus blanditiis nam id assumenda aut autem.', 45, '1977-12-06 07:10:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (10, 27, NULL, NULL, 'Doloribus dolorum porro nemo labore vitae.', 89, '2012-06-12 02:57:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (11, 81, NULL, NULL, 'Placeat et quia alias unde.', 13, '1990-06-29 11:24:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (12, 93, NULL, NULL, 'Et labore magni nihil quisquam asperiores.', 97, '1992-12-29 14:25:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (13, 1, NULL, NULL, 'Aut deleniti rerum temporibus non rem et.', 41, '1988-06-28 00:19:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (14, 74, NULL, NULL, 'Recusandae et alias neque culpa aut nulla.', 60, '1990-06-25 07:59:25');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (15, 21, NULL, NULL, 'Non quos minima expedita illo voluptas.', 34, '2005-03-31 11:51:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (16, 7, NULL, NULL, 'Et laudantium totam laudantium eum eius dolores et maiores.', 14, '2002-02-16 13:21:47');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (17, 48, NULL, NULL, 'Est natus sint dolor ut ea molestias saepe consequatur.', 74, '2017-03-08 21:09:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (18, 7, NULL, NULL, 'Possimus ipsa qui aut porro aut et laborum.', 77, '2012-10-28 09:51:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (19, 73, NULL, NULL, 'Iure accusamus enim voluptatibus quis odit.', 21, '2015-08-11 15:22:56');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (20, 97, NULL, NULL, 'Ut cumque ipsam voluptas fuga.', 85, '1981-08-21 11:32:02');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (21, 63, NULL, NULL, 'Iste aut suscipit corrupti velit laboriosam.', 33, '1995-09-26 11:28:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (22, 75, NULL, NULL, 'Minus accusamus dolores minima quibusdam ullam beatae dolores.', 64, '1990-07-01 23:24:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (23, 82, NULL, NULL, 'Et commodi laudantium ut et.', 62, '1970-07-08 06:49:59');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (24, 70, NULL, NULL, 'Et voluptatem vitae omnis aperiam.', 72, '1977-05-25 20:58:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (25, 7, NULL, NULL, 'Occaecati amet at natus qui aspernatur aliquid.', 96, '2018-01-12 07:23:54');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (26, 61, NULL, NULL, 'Dolores fugit rerum porro itaque.', 87, '2011-02-01 13:24:06');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (27, 8, NULL, NULL, 'Sit voluptas ea nulla quod aut amet dolore.', 53, '2018-07-28 18:54:06');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (28, 84, NULL, NULL, 'Corrupti temporibus debitis officia.', 8, '1997-10-06 05:24:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (29, 94, NULL, NULL, 'Magni corporis natus cupiditate omnis ullam.', 57, '1976-09-28 08:38:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (30, 68, NULL, NULL, 'Et illo totam ut.', 14, '2011-04-11 18:31:44');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (31, 90, NULL, NULL, 'Voluptate nulla eum provident tempora non molestiae.', 75, '1993-05-13 04:24:54');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (32, 28, NULL, NULL, 'Soluta velit doloremque sapiente consectetur in perferendis.', 38, '2017-11-26 00:44:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (33, 48, NULL, NULL, 'Dolore sed commodi suscipit aliquam aut labore.', 34, '1983-12-13 07:23:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (34, 14, NULL, NULL, 'Exercitationem quaerat dolorum sit unde doloremque dolores sed.', 21, '1999-04-16 05:28:21');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (35, 54, NULL, NULL, 'Laborum eveniet pariatur enim eligendi id minus ratione.', 11, '2007-01-17 05:36:12');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (36, 5, NULL, NULL, 'Quam et quae inventore dolor eos dolorem libero.', 17, '1983-08-05 20:04:15');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (37, 43, NULL, NULL, 'Asperiores blanditiis voluptatem aut.', 79, '1972-07-17 01:39:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (38, 80, NULL, NULL, 'Voluptatum eum voluptates sit placeat.', 25, '1993-03-07 02:52:53');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (39, 41, NULL, NULL, 'Quod eos voluptas minima voluptas.', 49, '1981-08-03 19:29:09');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (40, 96, NULL, NULL, 'Odit doloremque corporis dolor ex laboriosam officia.', 48, '2017-04-03 12:03:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (41, 44, NULL, NULL, 'Possimus temporibus in praesentium eum tempora id.', 56, '1990-01-26 15:45:54');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (42, 35, NULL, NULL, 'Minima eius ipsam sint nostrum natus et aut.', 52, '2011-05-23 13:20:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (43, 9, NULL, NULL, 'Qui eum porro aut nam eum.', 18, '1986-08-20 23:44:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (44, 59, NULL, NULL, 'Quasi rerum culpa quia culpa similique.', 3, '2014-11-25 15:04:31');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (45, 75, NULL, NULL, 'Quo mollitia quo sint quo qui.', 26, '2003-11-18 02:45:59');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (46, 16, NULL, NULL, 'Eos eveniet autem quo incidunt.', 65, '1994-03-06 03:07:40');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (47, 100, NULL, NULL, 'Enim hic veniam beatae qui similique iusto.', 44, '1987-12-30 18:12:21');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (48, 2, NULL, NULL, 'Reprehenderit ducimus et adipisci illo.', 48, '1988-02-11 02:57:13');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (49, 77, NULL, NULL, 'Eius excepturi dolorem alias cum.', 16, '1997-09-17 18:36:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (50, 68, NULL, NULL, 'Dolores ut excepturi aliquid ipsam eaque molestiae.', 31, '1991-05-04 16:58:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (51, 27, NULL, NULL, 'Adipisci ipsam et hic officiis fuga alias mollitia provident.', 73, '1970-10-27 23:41:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (52, 47, NULL, NULL, 'Aut neque voluptatem deserunt nihil libero.', 70, '2014-02-22 15:09:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (53, 52, NULL, NULL, 'Doloribus qui deleniti saepe minus.', 27, '1976-06-29 09:24:56');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (54, 94, NULL, NULL, 'Veniam dolore soluta eius dicta.', 92, '1995-12-13 18:13:35');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (55, 75, NULL, NULL, 'Est harum ea eius consequatur.', 89, '2009-11-23 07:52:02');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (56, 40, NULL, NULL, 'Esse consequatur ipsum commodi rerum repudiandae.', 19, '2012-12-16 23:35:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (57, 45, NULL, NULL, 'Ut non libero voluptates nobis aut sed ea.', 74, '1984-10-20 10:19:52');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (58, 71, NULL, NULL, 'Autem distinctio dolorem doloremque molestias sunt.', 54, '1983-09-10 23:06:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (59, 92, NULL, NULL, 'Maxime vero amet eligendi minus.', 29, '1997-02-24 00:31:50');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (60, 56, NULL, NULL, 'Voluptas sint est ullam placeat.', 66, '1979-12-31 01:23:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (61, 55, NULL, NULL, 'Sit iure et sit ut ut soluta.', 72, '1979-01-14 07:38:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (62, 30, NULL, NULL, 'Non dicta harum minima eligendi.', 55, '2006-10-27 15:20:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (63, 15, NULL, NULL, 'Provident pariatur non dolores consequatur velit quos sapiente.', 32, '1978-12-13 04:19:42');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (64, 2, NULL, NULL, 'Ut expedita saepe veniam officia ea suscipit nihil.', 92, '2018-04-18 18:11:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (65, 48, NULL, NULL, 'Rem suscipit et voluptas.', 70, '1989-03-04 07:18:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (66, 22, NULL, NULL, 'Ipsam dolores unde labore.', 74, '1983-05-22 08:47:44');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (67, 42, NULL, NULL, 'Voluptas quas odit rem ex voluptate eos ut.', 68, '1972-12-17 23:45:40');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (68, 43, NULL, NULL, 'Perspiciatis aut est et saepe et.', 93, '1993-06-29 20:12:58');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (69, 94, NULL, NULL, 'Explicabo possimus totam in tempore expedita.', 37, '1971-10-14 08:03:32');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (70, 85, NULL, NULL, 'Recusandae occaecati iusto consectetur neque quae in dignissimos.', 69, '1980-06-28 06:49:12');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (71, 25, NULL, NULL, 'Dicta aperiam placeat aperiam.', 25, '1992-08-17 10:02:56');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (72, 88, NULL, NULL, 'Illo dignissimos molestiae rerum totam perspiciatis ad aut nulla.', 70, '2006-10-28 09:16:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (73, 98, NULL, NULL, 'Accusantium dolorum illum fugiat.', 58, '2015-01-24 03:08:52');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (74, 23, NULL, NULL, 'Nulla eligendi quia corporis consequatur iusto ab.', 89, '1977-07-28 23:31:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (75, 87, NULL, NULL, 'Pariatur numquam alias illum voluptatibus modi.', 79, '1975-05-04 01:48:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (76, 55, NULL, NULL, 'Enim ea libero cumque ab sed necessitatibus.', 41, '2017-09-02 00:11:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (77, 50, NULL, NULL, 'Animi autem voluptatum doloremque et.', 85, '2006-10-30 21:32:08');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (78, 95, NULL, NULL, 'Ducimus consequatur ratione odit magnam harum ipsam possimus.', 65, '2000-06-27 08:40:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (79, 16, NULL, NULL, 'Sint ipsum dolore laborum ut sed quis.', 97, '1973-05-21 07:09:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (80, 56, NULL, NULL, 'Iste qui libero et praesentium fugiat rem.', 64, '1972-10-17 05:31:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (81, 66, NULL, NULL, 'Animi vel omnis quas eius voluptatem molestiae quasi.', 78, '2019-09-06 09:34:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (82, 37, NULL, NULL, 'Ullam eum non rem cum veritatis ut perferendis.', 7, '1970-01-06 16:41:14');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (83, 45, NULL, NULL, 'Vel quas est ut ex.', 80, '1975-06-24 19:02:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (84, 100, NULL, NULL, 'Sunt similique corporis praesentium earum dicta.', 39, '1994-05-05 04:26:53');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (85, 16, NULL, NULL, 'Nihil officiis omnis laborum velit totam.', 85, '1985-06-13 15:04:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (86, 8, NULL, NULL, 'Adipisci voluptate impedit quia sunt.', 41, '1972-07-29 21:20:38');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (87, 9, NULL, NULL, 'Adipisci dicta ut cumque excepturi neque et iure voluptas.', 95, '1971-06-28 20:48:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (88, 10, NULL, NULL, 'Itaque totam quo laudantium saepe.', 7, '1982-01-17 15:35:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (89, 53, NULL, NULL, 'Illum eius explicabo aliquam explicabo.', 33, '2003-06-15 20:55:59');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (90, 96, NULL, NULL, 'Non nemo expedita accusamus quia sapiente.', 39, '1984-01-19 23:47:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (91, 12, NULL, NULL, 'Corporis doloremque quis excepturi illo.', 50, '2014-05-20 08:48:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (92, 79, NULL, NULL, 'Sequi aperiam nulla minima cumque et esse velit corrupti.', 62, '1974-02-12 12:49:46');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (93, 35, NULL, NULL, 'Est velit reprehenderit mollitia qui ut unde neque.', 74, '2017-11-09 05:53:58');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (94, 26, NULL, NULL, 'Autem rerum totam unde autem.', 50, '1999-09-01 04:23:12');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (95, 70, NULL, NULL, 'Nemo et expedita placeat ex.', 82, '1980-05-25 13:44:59');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (96, 14, NULL, NULL, 'Occaecati officia dolor facilis voluptate quas tempora fugiat.', 35, '2010-05-28 17:45:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (97, 59, NULL, NULL, 'Repellat dignissimos et incidunt sint sint rem voluptas quod.', 50, '2002-04-11 03:44:42');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (98, 42, NULL, NULL, 'Nobis minus omnis et dignissimos.', 3, '2016-01-09 09:23:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (99, 30, NULL, NULL, 'Id fugit aperiam eius voluptatem.', 42, '1977-02-24 00:53:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `post_id`, `text`, `media_id`, `created_at`) VALUES (100, 42, NULL, NULL, 'Sint cum iste et quo.', 45, '1996-06-07 19:31:29');


#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(10) unsigned NOT NULL,
  `firstname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f','x') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`),
  KEY `firstname_lastname_idx` (`lastname`,`firstname`),
  KEY `fk_profile_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profile_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (1, 'Justice', 'Ward', 'm', '2004-11-05', '91106 Wilford Tunnel Suite 366\nPfannerstillfort, OK 72708-3787', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (2, 'Kurt', 'Hegmann', 'm', '2011-01-08', '3638 Phyllis Loop Apt. 459\nLake Anitamouth, NH 60266-4917', NULL, '1971-11-17 19:08:50');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (3, 'Keeley', 'West', 'm', '1980-12-31', '44513 Eveline Harbors\nBinschester, TN 31736-5505', NULL, '1977-08-18 12:51:03');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (4, 'Austen', 'Reilly', 'm', '1992-11-19', '54709 Matteo Highway\nArthurshire, MI 33814-3272', NULL, '1978-06-12 05:23:55');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (5, 'Marlee', 'Kuvalis', 'f', '1994-10-21', '760 Durgan Road Apt. 170\nWest Macieton, LA 24633-4284', NULL, '2017-02-25 18:17:07');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (6, 'Rodrick', 'Nader', 'm', '1977-07-14', '04081 Angelina Stravenue\nEast Keith, ID 27514', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (7, 'Darrick', 'Lakin', 'f', '2009-07-14', '2565 Swaniawski Points Apt. 144\nKilbackport, OH 39289', NULL, '1980-09-18 04:13:31');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (8, 'Amira', 'Towne', 'm', '2012-04-11', '39094 Mills Springs\nNew Sophiemouth, IA 52970-3124', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (9, 'Rudy', 'Brown', 'f', '2018-05-29', '4881 Kulas Mills Suite 408\nWest Felicityfort, VT 09611-9955', NULL, '1982-07-29 16:24:55');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (10, 'Florence', 'Purdy', 'm', '2012-10-17', '049 Hilpert Neck Suite 937\nRashadland, MD 82499', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (11, 'Ora', 'Osinski', 'm', '2017-08-03', '1998 Raphaelle Ridges\nRaynorport, MN 60359-6140', NULL, '1998-12-18 08:15:12');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (12, 'Gussie', 'Connelly', 'm', '1996-10-21', '962 Delfina Road\nCletaberg, MN 01243-1426', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (13, 'Janet', 'Spinka', 'f', '1999-04-26', '92807 Reinger Green\nUrsulahaven, MO 69298', NULL, '1988-04-22 23:03:07');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (14, 'Vicky', 'Lakin', 'f', '2007-04-18', '14105 Wilkinson Radial\nEast Edythbury, CA 53652-2823', NULL, '1975-08-22 09:37:01');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (15, 'Wilber', 'Yundt', 'm', '1989-06-28', '7125 Marquardt Plain\nSporerside, ME 58538-8894', NULL, '2010-08-16 19:24:51');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (16, 'Jeanne', 'Ruecker', 'f', '2007-11-04', '059 Jaskolski Views\nMariannaburgh, UT 40866-9261', NULL, '1977-01-31 01:55:16');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (17, 'Nat', 'Hickle', 'm', '1992-02-18', '5255 Maggio Light Suite 385\nSporerhaven, MD 49194-0917', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (18, 'Isom', 'Monahan', 'f', '2021-02-12', '99685 Balistreri Road\nMedhurstside, NC 95763-8938', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (19, 'Sandy', 'Ward', 'f', '2000-05-03', '84287 Marlene Greens Suite 281\nLake Orrinfort, IL 14215', NULL, '1975-04-27 14:51:25');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (20, 'Lurline', 'Moore', 'f', '1996-05-25', '282 Harris Trail Apt. 045\nHayleefurt, AR 99117-6082', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (21, 'Santos', 'Rohan', 'm', '1988-04-22', '883 Flatley Plain Apt. 394\nBeckerview, KS 41457', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (22, 'Layla', 'Pouros', 'm', '1972-12-20', '9712 Bauch Groves Suite 298\nRowanchester, IN 88067', NULL, '2000-02-01 08:48:45');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (23, 'Luis', 'Balistreri', 'm', '2006-02-05', '9636 Charity Cove Apt. 386\nWest Idellview, UT 15501-3398', NULL, '2011-01-20 04:01:57');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (24, 'Isaias', 'Berge', 'f', '2013-09-03', '11064 Isom Meadow\nEast Sabina, KS 95226-0885', NULL, '1982-04-06 00:06:15');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (25, 'Izabella', 'Bayer', 'm', '2007-06-09', '48834 Sipes Brook Apt. 918\nPort Walterbury, CO 03607-6408', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (26, 'Emanuel', 'Hauck', 'f', '1975-10-08', '3963 Stone Park Apt. 179\nPort Sethton, ID 60558-7269', NULL, '2012-02-05 15:43:05');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (27, 'Randall', 'Wyman', 'f', '1986-01-06', '6150 Greta Orchard Suite 451\nWatersberg, AZ 46583-7063', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (28, 'Domenico', 'Skiles', 'f', '2018-01-22', '669 Dora Bypass\nHermanborough, OK 29942-9778', NULL, '2002-01-12 09:28:33');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (29, 'Johathan', 'Nolan', 'f', '1998-10-27', '8861 Stoltenberg Lodge\nNickmouth, CA 42254-1617', NULL, '2020-12-26 12:00:52');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (30, 'Tremaine', 'Reinger', 'f', '1979-07-09', '0590 Rippin Freeway\nNew Karine, IA 46306-0855', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (31, 'Verner', 'Bradtke', 'f', '1998-08-22', '2817 Ova Meadow Apt. 651\nNorth Constance, HI 73060-8799', NULL, '2016-09-10 19:28:04');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (32, 'Orin', 'Jacobs', 'f', '1970-03-25', '1158 Judd Hills Apt. 251\nMarinaville, MA 79744', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (33, 'Grant', 'Schimmel', 'm', '2017-12-26', '196 Stroman Ports\nNorth Dominic, AL 22706-3895', NULL, '1981-05-29 01:29:51');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (34, 'Christ', 'Nicolas', 'f', '1977-08-05', '106 Cecelia Hills Apt. 419\nPinkberg, DC 70811-5228', NULL, '1994-07-23 06:29:50');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (35, 'Dallas', 'Hansen', 'm', '2000-10-18', '409 Davon Island\nNorth Lavinatown, HI 52569-0246', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (36, 'Desiree', 'Gleason', 'f', '2011-06-26', '085 Heller Throughway\nSawaynview, TN 93920-0689', NULL, '2001-10-29 09:34:31');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (37, 'Durward', 'Jerde', 'm', '1992-03-17', '60033 Pauline Station Apt. 686\nKihnchester, ME 71413', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (38, 'Cathy', 'Yundt', 'f', '1973-01-06', '7716 Jakubowski Drive Suite 415\nWildermanstad, PA 09195', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (39, 'Tobin', 'Wunsch', 'f', '1975-09-22', '0955 Jakubowski Greens Apt. 946\nWest Tanner, VT 77104', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (40, 'Hank', 'Lakin', 'f', '1974-10-10', '65619 Bertrand Mount\nLake Earlineshire, OK 30910', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (41, 'Beryl', 'Powlowski', 'm', '2013-08-11', '5508 Leon Crest\nNew Pierreshire, TX 03612-5000', NULL, '1995-04-25 00:02:50');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (42, 'Alanna', 'Moore', 'm', '2011-05-17', '99598 Chadrick Way Suite 376\nWindlerbury, MI 76562', NULL, '1989-01-05 03:41:22');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (43, 'Winnifred', 'Stiedemann', 'm', '1983-11-01', '5333 Florine Bypass Suite 549\nWest Buster, WV 71729-7015', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (44, 'Brandon', 'Morissette', 'f', '2011-02-16', '9022 Glover Place\nAdamsview, RI 65057-0279', NULL, '2016-02-09 22:29:11');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (45, 'Joesph', 'Olson', 'm', '1997-10-12', '177 Rohan Pines Apt. 161\nShanahanbury, MI 34511', NULL, '2000-01-19 07:03:55');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (46, 'Braeden', 'Shanahan', 'm', '1997-07-07', '8067 Therese Lake Apt. 090\nDudleyberg, WV 13065', NULL, '2012-10-28 18:46:00');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (47, 'Bruce', 'Kassulke', 'f', '2004-06-22', '811 Minnie Inlet Suite 883\nMaryjaneton, AZ 78196', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (48, 'Donny', 'Hettinger', 'm', '2015-11-09', '7066 Kaycee Drives\nNew Joelmouth, KY 75990-0287', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (49, 'Dewayne', 'Davis', 'f', '2014-02-16', '33218 Judson Point\nStrosinborough, MT 86918-9270', NULL, '2014-08-16 11:10:58');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (50, 'Amiya', 'Rodriguez', 'm', '2015-08-04', '73304 Asha Villages\nOrnmouth, WY 85980-3840', NULL, '1970-11-22 03:00:51');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (51, 'Charlene', 'Greenfelder', 'f', '2005-08-05', '5857 VonRueden Tunnel\nNorth Anais, WV 85337-6291', NULL, '2012-12-05 19:43:17');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (52, 'Valentin', 'Collier', 'f', '2018-10-23', '79930 Arjun Views\nNew Amira, MN 94315', NULL, '2005-10-04 07:35:33');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (53, 'Ulices', 'Grimes', 'm', '2015-11-18', '77502 Reichert Shores Apt. 023\nEarleneside, PA 26385-7214', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (54, 'Hettie', 'Williamson', 'f', '1982-01-22', '289 Rogahn Street Suite 123\nHomenickchester, PA 44877', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (55, 'Abe', 'Kemmer', 'f', '2003-08-18', '9919 Elouise Underpass Apt. 165\nMonicamouth, MI 87620-4496', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (56, 'Joanny', 'Becker', 'm', '2003-03-09', '63806 Streich Rue Suite 411\nEmardberg, GA 07754', NULL, '2019-08-16 07:35:25');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (57, 'Abagail', 'Koelpin', 'f', '1972-10-31', '23863 Abshire Station Apt. 576\nNew Arjuntown, PA 20907-1601', NULL, '1981-09-16 23:24:54');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (58, 'Burley', 'Boehm', 'f', '2001-07-30', '1095 Hirthe Mill Suite 223\nVolkmanshire, ID 67588-2210', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (59, 'Josefa', 'Kautzer', 'f', '2012-04-11', '58453 Cristal Stravenue Suite 258\nNorth Cartermouth, MS 06954', NULL, '2002-11-25 09:47:06');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (60, 'Orval', 'Von', 'm', '1989-12-17', '684 Schowalter Key Apt. 207\nHuelschester, HI 19479', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (61, 'Davion', 'Lakin', 'f', '1980-06-25', '6514 Orn Lock\nLaurelton, OR 31806', NULL, '2001-01-17 16:00:07');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (62, 'Christopher', 'Medhurst', 'f', '2002-02-03', '45977 Pascale Stream\nEinomouth, IA 86775', NULL, '2015-07-22 22:59:30');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (63, 'Rafael', 'Abernathy', 'm', '1981-05-16', '35965 Samir Skyway Apt. 194\nZiemannmouth, FL 79473', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (64, 'Eva', 'Berge', 'm', '1995-09-14', '314 Batz Cove Suite 901\nAdolfoburgh, IN 83275-9040', NULL, '1987-10-26 22:03:21');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (65, 'Blake', 'Kub', 'f', '2016-11-13', '057 Samanta Meadow\nSouth Suzannemouth, RI 46780-6238', NULL, '1992-09-11 21:25:14');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (66, 'Aliya', 'Kassulke', 'f', '2018-11-24', '6292 Mazie Knoll\nPort Thad, WY 27669-7782', NULL, '1978-09-05 09:40:59');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (67, 'Timothy', 'Littel', 'f', '2012-03-18', '33020 Hagenes Prairie Apt. 775\nWuckerttown, CO 90245-2586', NULL, '1986-06-30 00:56:19');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (68, 'Desiree', 'Miller', 'm', '1980-06-08', '008 Batz Isle Suite 741\nDaytonbury, CA 87681', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (69, 'Cecilia', 'Sporer', 'f', '2008-01-13', '6002 Breitenberg Estates Apt. 515\nPort Miaton, IA 48502-3089', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (70, 'Waylon', 'Buckridge', 'f', '1983-08-29', '61590 Samantha Pike\nNew Estrellahaven, WA 56241-0831', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (71, 'Florence', 'Fadel', 'm', '2006-02-05', '2186 Verla Center Suite 131\nJalenbury, NY 88120', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (72, 'Isabel', 'Ledner', 'm', '2013-06-18', '9395 Steuber Views Apt. 656\nBrisaport, TX 88805', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (73, 'Caleb', 'Quitzon', 'f', '1986-02-19', '988 Feeney Court Apt. 454\nPort Kamilleland, NE 12522-0884', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (74, 'Odell', 'Donnelly', 'f', '2010-03-28', '97154 Jammie Ferry\nPacochaborough, MI 98917', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (75, 'Demetrius', 'Howell', 'f', '1985-02-03', '127 Satterfield Lodge Suite 021\nAmandafort, WA 15091', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (76, 'Orlo', 'Heaney', 'm', '1970-05-06', '79196 Katelyn Mall\nLake Angusland, WI 19801', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (77, 'Kole', 'Grady', 'm', '2010-05-14', '747 Richie Rue Apt. 970\nEast Timmyshire, MN 61358', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (78, 'Jevon', 'Gleason', 'f', '1974-11-15', '59783 Cade Views\nBrielleland, DE 66452', NULL, '1993-01-03 13:13:19');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (79, 'Brice', 'Roob', 'm', '2021-03-06', '51310 Stroman Cliffs\nPort Milliechester, NC 03821-3511', NULL, '2013-07-01 02:28:22');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (80, 'Jerome', 'Quitzon', 'f', '2005-06-19', '86053 Deja Neck Suite 451\nMedhurstland, AR 94437-9980', NULL, '2000-05-17 15:43:24');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (81, 'Lewis', 'Brekke', 'f', '2011-06-10', '26793 Thiel Glen Suite 374\nNorth Ravenborough, WI 60942-1434', NULL, '1982-03-25 05:58:12');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (82, 'Reva', 'Koelpin', 'f', '2007-07-29', '653 Dulce Trail\nLake Dee, AK 72146', NULL, '2016-08-14 11:50:10');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (83, 'Rose', 'Treutel', 'f', '1981-04-01', '161 Jacobi Vista Apt. 836\nPort Adrienbury, AK 97488', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (84, 'Grant', 'Haag', 'f', '1979-06-03', '0846 Adan Via Apt. 591\nLeannonview, FL 32536', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (85, 'Kenton', 'Friesen', 'f', '1974-09-06', '52342 Julien Lodge Suite 617\nEast Candicefurt, AK 62350', NULL, '2002-01-16 12:09:36');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (86, 'Sharon', 'Ferry', 'f', '2017-02-08', '04472 Reynolds Spring\nSouth Wade, NV 18672', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (87, 'Jade', 'Haag', 'm', '2015-11-07', '97709 Travis Light Suite 889\nWest Novella, NH 18815', NULL, '1982-11-20 13:24:09');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (88, 'Elian', 'O\'Kon', 'm', '1982-07-24', '9298 Zena Forest Suite 255\nBrielleshire, ME 98297', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (89, 'Emely', 'Stoltenberg', 'f', '2008-10-30', '49685 Wolff Village\nFaheyville, CT 03319', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (90, 'Cole', 'Williamson', 'f', '1975-07-08', '56274 Adams Mews Suite 502\nPort Tyra, MO 15295', NULL, '1989-11-11 11:58:40');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (91, 'Melissa', 'Yost', 'm', '1975-04-07', '07433 Torey Courts\nDianafort, ID 24549', NULL, '1982-04-13 21:59:57');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (92, 'Micheal', 'Gleason', 'm', '2000-05-08', '44118 Rosie Lodge\nNew Angus, AL 55498', NULL, '1987-05-15 07:44:08');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (93, 'Alessia', 'Huels', 'f', '1985-09-18', '6376 Wiza Rue\nSouth Candida, WI 98386', NULL, '1986-09-09 22:38:43');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (94, 'Karl', 'Kub', 'f', '2000-12-03', '9968 Sadye Brook Suite 870\nNorth Sammy, AZ 17412', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (95, 'Vaughn', 'Howe', 'f', '2011-12-06', '015 Heller Harbors\nEvelineberg, OH 57795', NULL, '2021-02-04 12:19:22');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (96, 'Geo', 'King', 'f', '2018-09-13', '348 Greenfelder Lane\nWiegandville, HI 31597', NULL, '2015-01-21 19:21:23');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (97, 'Braeden', 'Nikolaus', 'f', '1972-12-10', '99088 Erdman Club\nJustineshire, UT 34087-4898', NULL, '2005-02-05 16:50:39');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (98, 'Dejah', 'Wiegand', 'm', '1990-01-14', '359 Grimes Islands\nLake Constanceshire, MT 95322-6016', NULL, NULL);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (99, 'Haylee', 'Mosciski', 'f', '1990-01-01', '996 Borer Port\nLake Lacey, NY 66916', NULL, '2008-09-11 23:45:07');
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `photo_id`, `updated_at`) VALUES (100, 'Salvatore', 'Heathcote', 'm', '2014-03-24', '6621 Wilkinson Prairie Suite 296\nNew Paulashire, WA 34711-4013', NULL, NULL);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'clockman@example.net', '79530142419', '0116d4ae47917ea33464c78f7dbd73f2c62763e3', '1987-10-20 10:04:00', '1983-05-04 19:33:31', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'fanny.dibbert@example.net', '79052666572', 'd5c064e5bdbfcd4d14be30858b1ca3a6eeaa28fd', '1975-06-03 05:41:17', '2004-11-05 09:32:36', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'lpaucek@example.org', '79874815579', '3e061eca43383c77cd33ebc8b6305137914a15d5', '1983-06-01 18:40:46', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'qrosenbaum@example.com', '79991618118', 'cf47ad8a0500e3de46e67dd555a92e9c9c4065c2', '2019-07-01 06:05:18', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'stroman.emmanuel@example.net', '79123803779', '696b98013ebc1ce3bf04f9a96d986b973885da35', '2007-07-26 07:30:20', '1972-03-20 09:37:45', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'aletha20@example.net', '79323466135', '30c437e2d3f554020902101d7d70545da572e72b', '2009-08-07 03:52:47', '1992-04-10 07:56:31', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'corwin.jay@example.org', '79724380715', '9f8018b5d8a330d523b15992945de6901d635b94', '1980-12-10 14:40:41', '1999-08-28 15:07:42', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'parisian.lesley@example.net', '79930178526', '59548e1bedf3d41db5a3b41a7d5244cb49ffd7e2', '2001-10-06 16:05:06', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'qjakubowski@example.org', '79914951269', '5a9002245a0c3ae208d49614148cb07ab94ec94e', '1976-02-29 17:55:50', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'miller.reagan@example.com', '79566103255', '8e8d0db208d1d32ceeec5d9b1dba090a97f845fc', '1970-04-15 12:16:44', '1991-05-20 22:57:20', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'jacobson.ana@example.net', '79816950391', 'f84947671f5e206c04136cbad99cde22461dafa9', '2021-06-08 13:00:05', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'qruecker@example.com', '79897293763', '64e2a5ec0eb8881f6329f62494c51a35b668be2c', '2012-06-08 03:50:08', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'maia86@example.com', '79547803522', 'a7032c1f0bb0130e4944a3a0123781afe9ea7e02', '1985-07-30 12:10:16', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'shayna.denesik@example.net', '79697545841', '69885c4af40c28b757a77d2e8ccfa04479bf719e', '1984-10-02 05:07:22', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'joany99@example.com', '79066453747', '660a9d7d5e228eb4921b508f1480c7a00afbda6b', '1973-07-03 02:23:50', '2010-12-13 15:55:43', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'srussel@example.com', '79609261058', '3e4504b5cb1b98a483d469155a380d8f1623afe0', '2009-12-09 23:46:36', '2021-04-05 19:07:45', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 'aric.harber@example.org', '79268934120', '8b37fa85ba776b42b1e23afb15c23422049c24d1', '1973-10-19 13:49:55', '1995-10-08 00:29:11', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 'lacey80@example.net', '79986305832', '4d73cd2eb4b782c9a6c5afbe8748733f706589f6', '1994-11-15 15:22:38', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 'sydni.erdman@example.org', '79221652886', 'e51aa5d1abb3275c927fa4cd48ba507455127917', '2006-01-02 12:17:14', '2007-11-27 09:11:08', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 'else27@example.org', '79021447892', 'dde1b0f683e67fa9773cb08cd8004d98d3027441', '2020-08-27 08:08:26', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 'bpfeffer@example.net', '79787088561', '44867f94e1e03568a9518147085b050364388120', '2019-12-05 18:53:00', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 'vdubuque@example.net', '79550156568', '377c7c3b0724ff9bc2666b001972a8aa66103e85', '1981-02-18 06:26:14', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 'augustine65@example.org', '79297590268', '5336892798bc96ae3abd52506d07a549c1688c46', '1998-03-13 02:39:52', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 'zlegros@example.net', '79033139154', '2b399b8e134c060d7e807bda715d71f9d9fae082', '1998-05-19 04:58:23', '1997-02-10 04:10:09', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 'fschmitt@example.org', '79781842403', 'dbe5850e2383bbdd04a7df1c9131692ed635fa58', '1979-04-16 06:55:28', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 'sshields@example.org', '79972508483', '451ca6e1b2aa83a88c1661349fcff6c381ce0910', '1990-05-05 05:25:44', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 'gia.miller@example.org', '79383218859', '31d2030d561732d84ac99fe823705fc89c8204fd', '1976-08-14 08:31:42', '2003-07-31 10:53:51', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 'larkin.eladio@example.com', '79179227930', '8e0dc7657af23e0482af4604a3c58ff70bb8398d', '1970-11-30 02:03:14', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 'gglover@example.com', '79042669279', '4bc7ff8b2bac8449c5a7b45ef2660d49b2d7bbab', '1998-12-19 01:13:05', '1999-08-20 06:06:15', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 'spencer.clinton@example.net', '79280809253', 'a190fb3de76e634c2f57a746d5e26f019c42b560', '1971-10-14 21:06:29', '1992-09-08 19:00:42', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 'elliot.flatley@example.net', '79132384519', 'd3654d5c02d71eae3cc4c7c412957b021fbbe82b', '2010-11-04 14:36:46', '2007-04-20 05:09:14', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 'amalia20@example.org', '79304392528', 'a7f83db0859abe3579a0e33ac7d2b6475b08782d', '2008-01-29 11:45:21', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 'lcarter@example.net', '79955332344', 'c6e94605e366411a8b9a264b31b00490beb799bf', '1998-06-11 02:26:51', '2012-03-29 18:23:07', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 'keebler.xavier@example.net', '79448138067', '61eeb4e08857cbac23fd1ad2917168cb29de88d6', '1975-06-28 01:06:16', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 'billy32@example.net', '79156064497', '855a99c9627e3eb2f12943547bdfef52bdc2668c', '2013-02-21 02:44:16', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 'jaylan26@example.org', '79125674732', '35bd70947d2188e0d1abab0659cc0cb4c372e727', '1974-08-26 15:47:17', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 'ryan13@example.com', '79180751446', '4cf4ed79861633b0fe96e659b8fb40f22b16894a', '1971-11-29 01:02:33', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 'jeromy.kuvalis@example.org', '79900271245', '1a66b8b0b4bc4defc2e1092bcb70c012cdcda861', '1987-02-20 00:56:06', '2008-10-10 16:22:28', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 'ymann@example.org', '79894864108', '40504cf973768ef67e3064c9abc2297600f60d7d', '1970-06-04 15:20:38', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 'bdare@example.org', '79461826132', 'a10961eb55d35da2c063800632cb4956e9785842', '1998-05-22 02:56:37', '2006-11-27 16:55:54', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 'kozey.breanna@example.com', '79900697073', 'e1f1e019de47681a5ad3e00a28566ce35a493c30', '2006-05-04 02:30:09', '1979-02-09 08:12:05', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 'krystel63@example.com', '79633625502', 'ed139cfed19e884793b63d81745b675dc2977304', '2008-08-29 23:08:57', '2016-07-31 17:33:05', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 'dgusikowski@example.net', '79683222710', '3171e42c30e55b331f9b974c1e3a7750c003afad', '2019-03-08 12:24:38', '2013-06-29 05:37:39', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 'hdouglas@example.org', '79275583286', 'b06d1e65905dba8530ee523fc16cc7d43092e3fc', '2011-03-07 02:30:35', '1972-06-29 03:56:52', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 'wehner.randall@example.net', '79731089662', '211854143f6a542235f1674c44102f95e2ddb428', '1972-03-08 03:26:26', '2012-07-31 13:46:39', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 'jeromy56@example.net', '79688227311', '05dc560e22c1ae00c1eb0bc3b262b6c5e303db91', '2021-03-10 04:00:35', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 'kemmer.cesar@example.org', '79339520129', 'da2dfa1db01f764dc2937818780ff71f4d1c9e37', '2019-04-16 01:10:12', '2008-05-27 22:36:52', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 'tania65@example.org', '79359033378', '4be8d793480190a79b38a41db77d039110ae5049', '2016-10-10 06:13:29', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 'polly14@example.com', '79870445975', 'fc9bf9ef44e8c0055173534a35c28df5521700e7', '1978-01-23 16:07:38', '2008-05-25 21:14:30', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 'ydibbert@example.com', '79096775828', '64a3220f599b87ad363d7cfd5d269d3e08d1fcb0', '1984-02-26 05:30:06', '1974-07-03 16:13:36', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 'prohaska.florida@example.net', '79668101919', '0ab19b3e2a5d8f11512959a6b18ab23edb07f6ca', '1996-11-05 04:38:40', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 'pollich.salvador@example.com', '79321473284', 'cbc4a8eebf4a047d5af3d74c76ebc392ce7660c1', '1981-05-03 12:59:59', '2005-08-11 23:10:35', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 'halvorson.eli@example.com', '79894197494', '6251490491af0116d0ed67d26e9043bea1030c01', '2000-11-22 03:14:57', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 'lawrence.o\'keefe@example.net', '79127894388', 'f649090e809e05e4b0902582440542d1e3e0fb1b', '1980-04-23 13:16:53', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 'charles.kreiger@example.com', '79111459489', '682212aad810086a8772d4d8163f4ff780c2e7a8', '2020-02-29 18:52:50', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 'trantow.allen@example.org', '79092066396', '0c0e83c69122faf5a889ac6004238ac67a25a600', '1976-08-04 03:30:24', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 'yfriesen@example.com', '79106411967', 'addc30dbfa4525f227c5977eb157addefe5cba54', '1988-07-13 13:23:09', '1995-08-08 07:35:31', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 'meta67@example.org', '79720104866', 'a99d47f44de089bc194bbc93bbbcc0a10d3d7770', '1989-02-22 06:17:59', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 'jasper.collins@example.com', '79610924571', '0ba649426411e77fc0940d45452103cb5cb1e82a', '1972-04-26 06:57:37', '1991-03-14 06:28:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 'ara.greenfelder@example.net', '79029743277', 'b6adccc7c0c307e63bea838ad3ccc66b77a97154', '1984-01-12 04:48:27', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 'jan.hermann@example.net', '79772304946', '25940fcc52c29353c75adea003730c4cf0c360b1', '1982-08-23 12:15:09', '1998-05-10 18:31:13', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 'antonia.vonrueden@example.com', '79677897825', '19e10c5beed7751acbe5bf52932aa9ece03b7c9b', '1981-10-28 18:18:37', '1972-06-29 13:46:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 'shanahan.gerhard@example.org', '79147310511', 'caa9d0e290789033738c6e78520db9cedfde5b62', '2013-01-20 20:08:38', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 'wharvey@example.com', '79037112883', 'e5e19f640215637630525f99ea4afa9f961aa582', '2012-11-29 07:27:10', '1992-03-15 10:48:52', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 'vwisozk@example.net', '79751270545', '56cf761690a31da4eca817effa81b4960bc96637', '1975-05-01 17:26:41', '2019-12-24 09:34:10', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 'fausto.lowe@example.net', '79404536844', '2cf0a108bd58ecd1a9e7444be50a3676b44736b3', '2021-02-12 17:13:39', '1983-03-12 13:06:54', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 'gernser@example.com', '79777765086', 'af1e1103012a50f4050ab3abe432d2aa47eb83a5', '1995-06-25 00:41:01', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 'rmcdermott@example.org', '79480622001', '96752c7789c5819e073772eda92cbcd36668e928', '2009-07-30 02:35:11', '1983-12-09 21:14:09', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 'schaden.chasity@example.org', '79595590623', 'acc23ee5dfa1b878bfc63095918d7586e7ab423c', '2015-03-22 21:00:31', '1990-12-11 04:36:51', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 'hipolito.heidenreich@example.org', '79929013412', 'e1cf216e8e6044b1544797d3dd18edd2b1a4e249', '1979-05-28 14:39:12', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 'bjakubowski@example.com', '79715899833', 'c50632d3e3727868bfc68a320cff51a6e1a65ab0', '1995-10-30 19:40:22', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 'heaney.jewel@example.org', '79804050158', 'bd29e2c084381c319fe4e1bd333ddcde20aa04de', '1991-01-24 19:14:44', '2008-01-03 04:03:48', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 'yasmeen.mclaughlin@example.org', '79976209090', '79ba331ee3cce6d7f0624916a8b77db929fe8739', '1991-10-12 15:48:06', '1979-10-19 05:29:11', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 'sheller@example.net', '79729199684', '560ad62641e6f517107fbbf723cc122115e6b6b8', '1998-02-05 06:09:01', '2013-10-16 00:02:33', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 'faustino.schiller@example.com', '79800708248', 'c0afa0a368ff6451c4d266cb3ba2c18a325b16e4', '1989-06-23 12:29:54', '2012-12-23 22:05:34', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 'upton.carmine@example.net', '79938573895', '8ed0e49f28a02fb48ee420fe390a4a7f93edd501', '2000-09-25 14:43:35', '2003-08-18 16:05:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 'meta06@example.com', '79456636928', '93208d117d3e0e485c0b49e8bac3a5c23de1e922', '1992-06-30 19:10:25', '2009-06-18 18:58:04', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 'remington.huel@example.org', '79314853884', 'a15adfd9d0d40d266eb74e43d264f012bf25027c', '2009-11-25 10:25:03', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 'madisyn44@example.net', '79115323883', '4a906ef2b9d0c5fe370b697d116daa693f9ede8b', '1973-07-29 20:42:35', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 'carolyn30@example.com', '79574090356', '1a9cf07a1d29916f45d498cf36247abd6a6b0d3a', '1977-07-22 14:19:40', '2001-01-16 17:10:37', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 'mozelle.heaney@example.com', '79000554045', 'bc7a6ae3c80a03d21d728cfa8b4a15afedc6ae60', '1978-02-20 04:39:33', '1972-11-12 11:18:26', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 'gusikowski.dominic@example.org', '79092693836', '1a2fd0b36f6294525f4684528b646d191b4a7640', '1977-07-23 06:34:52', '1970-10-30 01:34:12', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 'tiffany.douglas@example.org', '79966530536', '96a5e4706a40d545cacbccf90e12d920a45ef105', '1970-05-07 16:44:57', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 'catalina23@example.com', '79364922756', 'c82c186e3d5dfafa5b42be352adbd641aa70a10b', '1988-05-26 22:45:51', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 'aubrey.cummerata@example.net', '79641949427', '07215f7513c835720c742efb7b3a4a9e242241ed', '2011-03-23 09:48:23', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 'zkonopelski@example.org', '79884118745', '3b6d645b2df4d3643da72b068d4fcba2a7ad6139', '2011-07-15 13:30:58', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 'erdman.kenny@example.org', '79574322339', 'b0e95c5885a91e807ac1a6f72c81d49e3da854a6', '1997-02-24 14:07:28', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 'coy40@example.net', '79803460919', '304502720203ae9c46e24dc101ee4a271a9551bc', '1973-06-16 09:19:11', '1982-10-07 11:06:55', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 'gusikowski.pietro@example.com', '79475103178', 'feaf9f97946cb1eb82909f44b72a7a3dfacb75e2', '1998-11-04 05:56:33', '1987-01-16 09:00:02', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 'yessenia09@example.net', '79973918112', '1303de457426d17fcae3519723019bfe4166daed', '1999-10-21 10:19:27', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 'elang@example.org', '79476572883', '8c83da52a72f837a3201b5eb0fec8a70fe512f70', '2013-01-20 20:20:54', '2019-12-07 11:09:43', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 'bkris@example.com', '79158908856', 'b5c2434e45b6e0f9dec2d5d9dcb79f6dd669f8d2', '2005-09-02 18:11:07', '2009-02-10 15:26:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 'tyrique.herzog@example.org', '79018340393', 'a516c99af47eea8838d8211f03ef5a12195b2edd', '1986-07-05 07:24:04', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 'xconroy@example.org', '79763839845', '145029d2d732c2100250722dcd843ab3d31fffb0', '2009-05-23 13:41:07', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 'turcotte.jon@example.org', '79968423171', '064daa241aebb3ad3efa303add6e36aaeb526e81', '1989-07-04 21:08:20', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 'jayce.marvin@example.com', '79370876201', '0b0e352cb59d523995a34678651553daf720734d', '2012-12-01 05:59:39', '1985-03-30 02:58:12', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 'moshe82@example.com', '79663635772', '438597ac8d5bf07c9b848df06c928ff1a5389fb3', '1991-12-01 22:04:20', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 'fatima36@example.com', '79376673734', 'c93d0ac1227e189a9432bbbcc88cd83e528d066a', '1970-03-14 20:45:59', '2020-02-11 07:46:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 'hoppe.andre@example.net', '79138751941', '1c5f9bd9dc3d8f098b358de17186377726bd2985', '2020-03-22 14:29:10', NULL, NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 'alexzander.schaefer@example.com', '79749314237', 'c444b8f0d4c2dfd93d5ba3707c593f3c8134b2ab', '1992-01-20 02:15:16', NULL, NULL);


#
# TABLE STRUCTURE FOR: user_community
#

DROP TABLE IF EXISTS `user_community`;

CREATE TABLE `user_community` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_community_has_profile_profile1_idx` (`user_id`),
  KEY `fk_community_has_profile_community1_idx` (`community_id`),
  CONSTRAINT `fk_community_has_profile_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_community_has_profile_profile1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 2, '2007-11-14 12:52:14');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 33, '2016-03-10 20:08:28');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 37, '2018-02-16 03:00:30');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 39, '2003-11-20 06:40:56');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 50, '2010-10-26 21:22:15');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2006-07-17 12:54:53');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 55, '2015-05-25 17:16:08');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 57, '2017-01-28 17:58:13');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 60, '1973-12-26 16:40:28');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 65, '1972-10-06 18:16:22');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 67, '1994-08-19 23:22:04');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 75, '2002-11-13 04:22:06');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 76, '2004-10-03 11:44:35');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (1, 88, '1994-03-15 19:47:45');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 9, '1974-05-17 08:17:51');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 15, '1992-09-15 21:22:39');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 41, '2012-10-15 13:26:41');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1986-08-21 14:01:28');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 56, '1982-07-21 07:01:29');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 59, '1995-12-11 13:17:23');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 61, '1977-11-09 19:26:08');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '1989-11-06 23:44:20');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 63, '2018-12-06 04:42:37');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 74, '1973-03-31 19:56:47');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 87, '1992-04-01 13:39:33');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (2, 91, '1991-07-05 17:12:59');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 30, '1970-09-22 06:00:38');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 44, '1993-11-21 22:51:36');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 60, '1988-08-05 23:19:32');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 70, '1992-02-10 18:15:47');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 74, '1991-02-17 06:48:09');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 78, '2019-10-01 08:40:06');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 82, '1994-04-17 11:32:06');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 87, '1987-09-07 11:11:05');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 90, '2016-07-15 21:27:09');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 98, '1977-05-22 02:25:20');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (3, 99, '2012-07-04 21:14:19');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 16, '2015-03-24 13:58:47');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 49, '2018-12-07 11:18:42');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 56, '1987-11-22 10:46:26');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 57, '1970-04-07 17:44:34');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 63, '1987-09-14 13:45:52');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 65, '1980-08-08 00:07:08');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (4, 97, '1990-08-12 00:04:44');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 4, '1983-09-11 03:40:33');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 26, '1990-05-03 04:59:30');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 29, '1990-02-26 06:09:18');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 38, '1981-08-17 14:27:09');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 40, '2004-12-25 16:58:13');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 53, '2003-01-03 16:58:43');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '1988-10-10 13:04:32');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 60, '2004-04-07 06:18:55');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 71, '1999-10-25 06:37:41');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 79, '2000-09-28 21:19:24');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (5, 92, '1988-01-01 19:04:20');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 5, '1995-03-21 04:56:18');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 15, '1984-02-11 16:35:18');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 17, '1987-06-17 04:33:05');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 42, '1976-10-25 12:37:44');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 44, '1980-07-13 21:30:59');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 49, '1979-03-30 09:36:19');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 58, '1994-11-03 00:12:09');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 63, '1971-12-28 23:08:52');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (6, 100, '1989-06-09 11:33:30');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 43, '1994-06-26 03:08:37');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 44, '2013-02-12 17:53:48');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 51, '1998-01-08 02:23:56');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 62, '1985-09-22 15:01:21');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 72, '1995-11-24 22:06:41');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (7, 90, '1971-11-20 20:35:16');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 19, '2015-03-24 02:49:42');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 31, '1980-06-26 05:24:16');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 32, '1974-10-18 00:44:56');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 34, '1998-03-09 15:00:46');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '1993-07-21 13:11:33');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 56, '1981-02-14 10:36:11');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '1996-06-04 00:28:43');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 61, '2005-05-18 01:35:14');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 66, '2000-09-10 05:43:48');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (8, 82, '1983-03-17 02:21:24');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 32, '2002-08-01 16:51:51');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 37, '1982-08-17 02:37:42');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 45, '1970-07-10 10:06:57');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 61, '2011-06-26 09:17:50');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '1975-11-22 17:17:03');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 70, '1987-12-07 14:43:22');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 71, '1973-11-08 15:56:51');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 73, '2017-09-01 15:17:38');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 78, '2001-12-19 19:46:14');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (9, 98, '2006-01-30 08:06:50');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 27, '2015-03-16 12:59:40');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 51, '2017-07-12 20:36:47');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 72, '2003-03-12 04:23:50');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 84, '2019-05-01 14:58:03');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 86, '1989-12-28 08:37:31');
INSERT INTO `user_community` (`community_id`, `user_id`, `created_at`) VALUES (10, 95, '2017-10-02 13:59:11');


