/*
 Navicat Premium Data Transfer

 Source Server         : Frienq Maria DB
 Source Server Type    : MariaDB
 Source Server Version : 100311
 Source Host           : 127.0.0.1:3306
 Source Schema         : frienq

 Target Server Type    : MariaDB
 Target Server Version : 100311
 File Encoding         : 65001

 Date: 23/07/2020 22:13:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for frienq_def_security_level
-- ----------------------------
DROP TABLE IF EXISTS `frienq_def_security_level`;
CREATE TABLE `frienq_def_security_level`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_def_security_level
-- ----------------------------
INSERT INTO `frienq_def_security_level` VALUES (0, 'public');
INSERT INTO `frienq_def_security_level` VALUES (1, 'just frienq');
INSERT INTO `frienq_def_security_level` VALUES (2, 'group');

-- ----------------------------
-- Table structure for frienq_def_sex
-- ----------------------------
DROP TABLE IF EXISTS `frienq_def_sex`;
CREATE TABLE `frienq_def_sex`  (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_def_sex
-- ----------------------------
INSERT INTO `frienq_def_sex` VALUES (1, 'Male');
INSERT INTO `frienq_def_sex` VALUES (2, 'Famale');
INSERT INTO `frienq_def_sex` VALUES (3, 'Other');

-- ----------------------------
-- Table structure for frienq_member
-- ----------------------------
DROP TABLE IF EXISTS `frienq_member`;
CREATE TABLE `frienq_member`  (
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_sex` smallint(6) NOT NULL,
  `date_birth` date NOT NULL,
  `date_sign` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_online` datetime(0) NOT NULL,
  `loc_lat` float NOT NULL,
  `loc_lan` float NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `frienq_count` int(11) NOT NULL DEFAULT 0,
  `owned_frienq_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `frienq_member_username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_member
-- ----------------------------
INSERT INTO `frienq_member` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 1, '1975-12-11', '2020-03-23 08:49:22', '2020-03-23 08:49:22', '2020-03-23 08:49:22', 0, 0, 'music', 'forever', 'music_forever', '58b1216b06850385d9a4eadbedc806c4', 'd5070184-b2c8-44cf-8272-5ef578e8fdc6.jpg', 0, 13, 13);
INSERT INTO `frienq_member` VALUES ('111a6e26-815d-46aa-bd01-993d73f04a4f', 1, '1998-09-10', '2020-03-12 22:19:36', '2020-03-12 22:19:36', '2020-03-12 22:19:36', 0, 0, 'Yusuf', 'pinar', 'yusufpinar', '58b1216b06850385d9a4eadbedc806c4', '5bbdc8eb-da79-47a1-b184-279e682b1bfd.jpg', 0, 2, 2);
INSERT INTO `frienq_member` VALUES ('1454500f-5054-4555-a4c7-d045f589ca92', 1, '1988-08-30', '2020-01-30 08:24:14', '2020-01-30 08:24:14', '2020-01-30 08:24:14', 0, 0, 'asdasdasd', 'asdasdv', 'asdasd', '58b1216b06850385d9a4eadbedc806c4', 'e2262f83-429c-4c74-8e39-d62580fe87a0.jpg', 0, 0, 1);
INSERT INTO `frienq_member` VALUES ('178b5043-0be8-4dbf-8279-fb74ca676047', 1, '1991-06-04', '2019-12-24 22:00:12', '2019-12-24 22:00:12', '2019-12-24 22:00:12', 0, 0, 'abdulah', 'kara', 'pyrumar', '58b1216b06850385d9a4eadbedc806c4', 'a140e11b-0a19-43f6-b727-c0c00735e80f.jpg', 0, 25, 2);
INSERT INTO `frienq_member` VALUES ('1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 1, '1997-08-30', '2020-02-16 15:27:08', '2020-02-16 15:27:08', '2020-02-16 15:27:08', 0, 0, 'deneme', 'kara', 'deneme2', '123456', '04357d1f-a0bc-4c13-a191-dc3afdc10f7b.jpg', 0, 0, 1);
INSERT INTO `frienq_member` VALUES ('2c6acd15-31f3-48bb-a607-4a93b5e95990', 1, '1994-08-30', '2020-01-07 11:08:19', '2020-01-07 11:08:19', '2020-01-07 11:08:19', 0, 0, 'abdullah	', 'kara	', 'saas', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 1, '1986-08-30', '2020-04-06 14:10:48', '2020-04-06 14:10:48', '2020-04-06 14:10:48', 0, 0, 'Auto', 'Mobile', 'automobile', '58b1216b06850385d9a4eadbedc806c4', '85bef549-8052-48b1-b650-23725c4f1ab5.jpg', 0, 13, 15);
INSERT INTO `frienq_member` VALUES ('2f97e09b-2919-437c-9df3-c530f72fb23a', 0, '2020-01-11', '2020-01-11 14:44:17', '2020-01-11 14:44:17', '2020-01-11 14:44:17', 0, 0, 'abdullah', 'karaq', 'karakarara', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 1, '1988-01-31', '2020-03-23 08:43:39', '2020-03-23 08:43:39', '2020-03-23 08:43:39', 0, 0, 'fitness', 'wellness', 'fitness&wellness', '58b1216b06850385d9a4eadbedc806c4', '8edca5ac-c290-498c-9432-8e1ff7b3fdf1.jpg', 0, 13, 20);
INSERT INTO `frienq_member` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 1, '1974-08-30', '2020-04-07 19:43:41', '2020-04-07 19:43:41', '2020-04-07 19:43:41', 0, 0, 'Nine', 'Gag', '9gag', '58b1216b06850385d9a4eadbedc806c4', '7ff534dd-51c9-4eb8-9bb4-c635a5c63579.jpg', 0, 16, 15);
INSERT INTO `frienq_member` VALUES ('3cfb3b78-60b6-4a5f-b0ea-c98502ca0e5b', 1, '1982-08-30', '2020-03-19 22:45:22', '2020-03-19 22:45:22', '2020-03-19 22:45:22', 0, 0, 'asd', 'asd', 'asd', '8be4177df4ec5dee8c8bc4f3b49d7a2d', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 1, '1992-08-30', '2020-04-06 14:09:36', '2020-04-06 14:09:36', '2020-04-06 14:09:36', 0, 0, 'Sport', 'Sport', 'sportandsport', '58b1216b06850385d9a4eadbedc806c4', 'f63b0f90-e4fc-47cf-98df-a809d6da8898.jpg', 0, 12, 15);
INSERT INTO `frienq_member` VALUES ('43c46dcf-1b62-4570-8e1e-c4cbd1c2dda9', 0, '2020-01-18', '2020-01-17 22:45:04', '2020-01-17 22:45:04', '2020-01-17 22:45:04', 0, 0, '__', 'dus', 'dbsbsbsabdullahfff', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('47e8d108-65ea-4534-8609-c0f794be3bf0', 1, '2020-07-09', '2020-07-09 17:12:43', '2020-07-09 17:12:43', '2020-07-09 17:12:43', 0, 0, 'ksmd', 'lrlr', 'tess', 'f289787ca8a691d5dcb9550f2dbc1ef4', 'b0621476-ee26-4c69-9b90-baacb52c51a1.jpg', 0, 1, 0);
INSERT INTO `frienq_member` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 1, '1976-04-18', '2020-03-23 09:05:48', '2020-03-23 09:05:48', '2020-03-23 09:05:48', 0, 0, 'celebrity', 'news', 'celebrity_news', '58b1216b06850385d9a4eadbedc806c4', '30d20ba2-0da0-434e-b0e9-e603caa4363d.jpg', 0, 13, 12);
INSERT INTO `frienq_member` VALUES ('4ab78e9d-e811-422f-a3a8-fcaed27bf168', 0, '2020-01-11', '2020-01-11 14:17:47', '2020-01-11 14:17:47', '2020-01-11 14:17:47', 0, 0, 'abdullah', 'kara', 'abdullah', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('4e2896d9-0ac4-4f82-a085-fb017e7a88fd', 1, '1987-08-30', '2020-01-27 20:48:37', '2020-01-27 20:48:37', '2020-01-27 20:48:37', 0, 0, 'karq', 'abdullah', 'pyrumarsad2', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 1, '1985-01-05', '2020-03-23 08:31:23', '2020-03-23 08:31:23', '2020-03-23 08:31:23', 0, 0, 'foody', 'channel', 'foody', '58b1216b06850385d9a4eadbedc806c4', 'a2935876-1325-444d-be5e-c972f4718aff.jpg', 0, 14, 27);
INSERT INTO `frienq_member` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 1, '1969-08-30', '2020-04-06 14:06:32', '2020-04-06 14:06:32', '2020-04-06 14:06:32', 0, 0, 'Make Up', 'Hits', 'makeuphits', '58b1216b06850385d9a4eadbedc806c4', '0d29413e-bcbf-44d7-b0ee-e262182b300e.jpg', 0, 14, 15);
INSERT INTO `frienq_member` VALUES ('617c805e-36ff-426c-8741-6a0937cd39ef', 1, '1988-08-30', '2020-04-04 16:59:26', '2020-04-04 16:59:26', '2020-04-04 16:59:26', 0, 0, 'Alice', 'Salt', 'AliceSalt', '2e99bf4e42962410038bc6fa4ce40d97', '', 0, 0, 1);
INSERT INTO `frienq_member` VALUES ('62992ab9-d90c-4ad7-acb8-970a7ffe0663', 1, '2020-07-10', '2020-07-10 07:52:46', '2020-07-10 07:52:46', '2020-07-10 07:52:46', 0, 0, 'test', 'yest', 'test', '5dacd7e78261890bae980551e1b0a138', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('64601352-674d-4d8b-a206-22f72fb7bf87', 1, '1972-08-30', '2020-01-30 07:57:29', '2020-01-30 07:57:29', '2020-01-30 07:57:29', 0, 0, 'aleyna', 'kara', 'abdyl', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', 1, '2020-01-18', '2020-01-17 22:35:53', '2020-01-17 22:35:53', '2020-01-17 22:35:53', 0, 0, 'Cafer', 'AYDIN', 'blackmeteora', '58b1216b06850385d9a4eadbedc806c4', '360515fc-50a3-4481-8bf9-78b49f19af54.jpg', 0, 4, 6);
INSERT INTO `frienq_member` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 1, '1984-12-27', '2020-03-23 08:45:45', '2020-03-23 08:45:45', '2020-03-23 08:45:45', 0, 0, 'sport', 'international', 'sport_international', '58b1216b06850385d9a4eadbedc806c4', '2306680a-5861-4075-9790-f6b797283e0a.jpg', 0, 12, 12);
INSERT INTO `frienq_member` VALUES ('6f54c50f-ed1f-4d59-9570-6cdb2c55e995', 1, '2020-01-20', '2020-01-20 20:40:15', '2020-01-20 20:40:15', '2020-01-20 20:40:15', 0, 0, 'ahhs', '__', 'jsja@kdıd.col', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('75209907-9c77-4d60-a96b-8a8cbf687e2a', 1, '1985-01-05', '2020-02-17 08:17:36', '2020-02-17 08:17:36', '2020-02-17 08:17:36', 0, 0, 'Özenç', 'Yelter', 'ozencyelter', 'geronimo85.5', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 1, '1992-08-30', '2020-04-07 19:49:40', '2020-04-07 19:49:40', '2020-04-07 19:49:40', 0, 0, 'Celebrity', 'Life', 'celebrity', '58b1216b06850385d9a4eadbedc806c4', '53c7060b-898a-4259-83db-afb2fc7ec2f5.jpg', 0, 13, 14);
INSERT INTO `frienq_member` VALUES ('8f31f134-ac77-4b21-a863-ccd3429e78db', 1, '1991-08-30', '2020-01-27 20:50:02', '2020-01-27 20:50:02', '2020-01-27 20:50:02', 0, 0, 'jdjdjej', 'krke rjrjr', 'kdıdıdıdudud', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('9342cd93-801a-4a96-8ca7-63b84c48b47c', 1, '1996-08-30', '2020-04-03 21:39:54', '2020-04-03 21:39:54', '2020-04-03 21:39:54', 0, 0, 'rtgbbb', 'ggbb', 'deneme', '58b1216b06850385d9a4eadbedc806c4', '', 0, 1, 0);
INSERT INTO `frienq_member` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 1, '1983-08-30', '2020-04-07 19:46:53', '2020-04-07 19:46:53', '2020-04-07 19:46:53', 0, 0, 'Hand', 'Craft', 'crafts', '58b1216b06850385d9a4eadbedc806c4', '6935486c-d28c-4759-8176-a6865194bd1d.jpg', 0, 13, 14);
INSERT INTO `frienq_member` VALUES ('955e4061-0e73-4256-9dcc-cf71347a52b9', 1, '1984-08-30', '2020-04-03 21:44:31', '2020-04-03 21:44:31', '2020-04-03 21:44:31', 0, 0, 'fffvv', 'bghb bb', 'hhggg', '71dc1e3eb0af5a864cb389895be4e3ce', '', 0, 1, 0);
INSERT INTO `frienq_member` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 1, '1977-08-30', '2020-04-06 14:07:56', '2020-04-06 14:07:56', '2020-04-06 14:07:56', 0, 0, 'Fitness', 'World', 'fitness', '58b1216b06850385d9a4eadbedc806c4', 'd32c5bcf-8c32-4fce-8292-1f40694b798c.jpg', 0, 12, 13);
INSERT INTO `frienq_member` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', 1, '1952-08-30', '2020-04-06 13:58:15', '2020-04-06 13:58:15', '2020-04-06 13:58:15', 0, 0, 'Alice', 'Wallace ', 'alice', '58b1216b06850385d9a4eadbedc806c4', '56c61554-c898-42fc-8b85-a07b3d1a4d27.jpg', 0, 13, 2);
INSERT INTO `frienq_member` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 1, '1980-08-30', '2020-04-07 19:04:41', '2020-04-07 19:04:41', '2020-04-07 19:04:41', 0, 0, 'Music ', 'Life', 'musiclife', '58b1216b06850385d9a4eadbedc806c4', 'f267400f-72dc-4887-933f-da457f0b4a1d.jpg', 0, 16, 15);
INSERT INTO `frienq_member` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 1, '1987-08-30', '2020-04-06 14:13:57', '2020-04-06 14:13:57', '2020-04-06 14:13:57', 0, 0, 'Movies', 'Movies', 'movies', '58b1216b06850385d9a4eadbedc806c4', '3db4aa32-d99f-43e4-9940-4004effe0c02.jpg', 0, 15, 15);
INSERT INTO `frienq_member` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 1, '1992-01-12', '2020-03-23 08:53:10', '2020-03-23 08:53:10', '2020-03-23 08:53:10', 0, 0, 'art', 'calender', 'art_calender', '58b1216b06850385d9a4eadbedc806c4', 'cf725168-603c-4ffb-9bc3-88c916367f24.jpg', 0, 13, 12);
INSERT INTO `frienq_member` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 1, '1977-12-13', '2020-03-23 09:04:38', '2020-03-23 09:04:38', '2020-03-23 09:04:38', 0, 0, 'mamas', 'kids', 'mamas_and_kids', '58b1216b06850385d9a4eadbedc806c4', '40a109cb-fe9f-42b3-9b3d-2a3d4e1fe53e.jpg', 0, 13, 15);
INSERT INTO `frienq_member` VALUES ('b545b46d-3195-470e-bd62-94f6d7b8a586', 1, '1987-08-30', '2020-01-27 20:48:02', '2020-01-27 20:48:02', '2020-01-27 20:48:02', 0, 0, 'karq', 'abdullah', 'pyrumar2', '58b1216b06850385d9a4eadbedc806c4', '', 0, 2, 1);
INSERT INTO `frienq_member` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 1, '1981-01-31', '2020-03-23 08:41:51', '2020-03-23 08:41:51', '2020-03-23 08:41:51', 0, 0, 'trend', 'makeup', 'trend_makeup', '58b1216b06850385d9a4eadbedc806c4', 'd7b915b4-f433-4393-90e0-3fe70b403469.jpg', 0, 13, 16);
INSERT INTO `frienq_member` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 1, '1986-06-08', '2020-03-23 09:06:55', '2020-03-23 09:06:55', '2020-03-23 09:06:55', 0, 0, 'travel', 'guide', 'travel_guide', '58b1216b06850385d9a4eadbedc806c4', '2cd8d66a-e29d-44d8-af35-5c283d6cfafa.jpg', 0, 13, 27);
INSERT INTO `frienq_member` VALUES ('b9960b24-72ae-4e4c-ad01-b602a48bf4f4', 1, '1984-08-30', '2020-01-30 08:19:17', '2020-01-30 08:19:17', '2020-01-30 08:19:17', 0, 0, 'abdullah', 'kara', '2', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 1, '1981-08-30', '2020-04-07 19:48:28', '2020-04-07 19:48:28', '2020-04-07 19:48:28', 0, 0, 'Mamas', 'Kids', 'mamas&kids', '58b1216b06850385d9a4eadbedc806c4', 'f709c0c9-c3ca-4438-95dc-539792a728d8.jpg', 0, 13, 12);
INSERT INTO `frienq_member` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 1, '1989-10-27', '2020-03-23 08:46:42', '2020-03-23 08:46:42', '2020-03-23 08:46:42', 0, 0, 'auto', 'life', 'auto_life', '58b1216b06850385d9a4eadbedc806c4', 'c67dd3de-83ee-4d05-a3d7-bea746449bf0.jpg', 0, 14, 15);
INSERT INTO `frienq_member` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 1, '1964-08-30', '2020-04-07 19:08:01', '2020-04-07 19:08:01', '2020-04-07 19:08:01', 0, 0, 'Art', 'Gallery', 'gallery', '58b1216b06850385d9a4eadbedc806c4', '7bccd3ca-04b7-4a24-9ae3-97f3fadbef29.jpg', 0, 18, 10);
INSERT INTO `frienq_member` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 1, '1982-08-30', '2020-03-23 08:32:51', '2020-03-23 08:32:51', '2020-03-23 08:32:51', 0, 0, 'fashion ', 'beauty', 'fashion_and_beauty', '58b1216b06850385d9a4eadbedc806c4', 'ce0878fb-0152-4652-9e19-b32efb83c336.jpg', 0, 13, 12);
INSERT INTO `frienq_member` VALUES ('c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 1, '1999-08-13', '2020-02-06 20:28:53', '2020-02-06 20:28:53', '2020-02-06 20:28:53', 0, 0, 'Can', 'taşcıoğlu ', 'cantasciogluu', '123456789.', 'b5fd11ab-7a10-4864-b6fb-0fd8950b685a.jpg', 0, 0, 2);
INSERT INTO `frienq_member` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 1, '1996-01-31', '2020-03-23 08:54:19', '2020-03-23 08:54:19', '2020-03-23 08:54:19', 0, 0, 'gags', 'memes', 'gags_and_memes', '58b1216b06850385d9a4eadbedc806c4', '0b7388d2-6873-4ede-bc51-8fabf1719376.jpg', 0, 13, 12);
INSERT INTO `frienq_member` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 1, '1988-06-24', '2020-03-23 08:48:09', '2020-03-23 08:48:09', '2020-03-23 08:48:09', 0, 0, 'movie', 'channel', 'movie_channel', '58b1216b06850385d9a4eadbedc806c4', '058144e3-c376-4243-a94c-03296e244bad.jpg', 0, 13, 11);
INSERT INTO `frienq_member` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 1, '1979-01-17', '2020-03-23 09:02:40', '2020-03-23 09:02:40', '2020-03-23 09:02:40', 0, 0, 'do it', 'yourself', 'do_it_yourself', '58b1216b06850385d9a4eadbedc806c4', '33689335-d61e-4dc1-b071-44b872ad4e34.jpg', 0, 0, 13);
INSERT INTO `frienq_member` VALUES ('ea4e2e52-e955-43ff-bdec-66e90d5a8f12', 1, '1987-08-30', '2020-01-30 08:22:11', '2020-01-30 08:22:11', '2020-01-30 08:22:11', 0, 0, 'sdasdasd', '12e12d', 'deneme1', '58b1216b06850385d9a4eadbedc806c4', '', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 1, '1977-08-30', '2020-04-06 14:04:55', '2020-04-06 14:04:55', '2020-04-06 14:04:55', 0, 0, 'Fashion', 'Style', 'fashionstyle', '58b1216b06850385d9a4eadbedc806c4', 'cccf5e0d-cdf7-4d2c-8b3f-015f3c088dbd.jpg', 0, 14, 15);
INSERT INTO `frienq_member` VALUES ('efbb658a-c5bf-425d-95bc-04ce0aa94e11', 1, '2020-07-09', '2020-07-09 08:24:59', '2020-07-09 08:24:59', '2020-07-09 08:24:59', 0, 0, 'ggg', 'fff', 'ttt', 'f5363e7753f5e4ceb84b28685efd9b7a', 'c2a228d2-b77e-4cc0-b469-a7c5066b7207.jpg', 0, 0, 0);
INSERT INTO `frienq_member` VALUES ('efe73545-e213-4b54-acaa-f6014980f388', 1, '1996-11-30', '2020-04-03 21:47:03', '2020-04-03 21:47:03', '2020-04-03 21:47:03', 0, 0, 'ttggb', 'gbb', 'chhnncf', '5c789fd1d7e646c495921fbd7852216a', '', 0, 15, 0);
INSERT INTO `frienq_member` VALUES ('f415e3c3-0659-4378-8ea8-cdd2336ea67b', 1, '2020-07-09', '2020-07-09 17:32:07', '2020-07-09 17:32:07', '2020-07-09 17:32:07', 0, 0, 'Özenç', 'Yelter', 'ozenc', '6240dd81f2f8b40f729a5ed2ccb765d9', '435fae38-5b1b-4ccb-b032-97fa742f84cf.jpg', 0, 0, 0);

-- ----------------------------
-- Table structure for frienq_member_application
-- ----------------------------
DROP TABLE IF EXISTS `frienq_member_application`;
CREATE TABLE `frienq_member_application`  (
  `uid_member` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_instagram` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_twitter` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_google` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data_facebook` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data_instagram` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data_twitter` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data_google` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid_member`) USING BTREE,
  CONSTRAINT `frienq_member_application_frienq_member` FOREIGN KEY (`uid_member`) REFERENCES `frienq_member` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_member_application
-- ----------------------------
INSERT INTO `frienq_member_application` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('47e8d108-65ea-4534-8609-c0f794be3bf0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('617c805e-36ff-426c-8741-6a0937cd39ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('62992ab9-d90c-4ad7-acb8-970a7ffe0663', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('9342cd93-801a-4a96-8ca7-63b84c48b47c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('955e4061-0e73-4256-9dcc-cf71347a52b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('efbb658a-c5bf-425d-95bc-04ce0aa94e11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('efe73545-e213-4b54-acaa-f6014980f388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `frienq_member_application` VALUES ('f415e3c3-0659-4378-8ea8-cdd2336ea67b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for frienq_member_email
-- ----------------------------
DROP TABLE IF EXISTS `frienq_member_email`;
CREATE TABLE `frienq_member_email`  (
  `uid_member` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isdefault` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  UNIQUE INDEX `index_unique_email`(`uid_member`, `email`) USING BTREE,
  UNIQUE INDEX `index_unique_mail`(`email`) USING BTREE,
  INDEX `index_uid`(`uid_member`) USING BTREE,
  CONSTRAINT `frienq_member` FOREIGN KEY (`uid_member`) REFERENCES `frienq_member` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_member_email
-- ----------------------------
INSERT INTO `frienq_member_email` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'musicforever@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('111a6e26-815d-46aa-bd01-993d73f04a4f', 'yusufpinar048@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('1454500f-5054-4555-a4c7-d045f589ca92', 'dasd@asdasd.asda', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('178b5043-0be8-4dbf-8279-fb74ca676047', 'test@test.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 'deneme@dd.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('2c6acd15-31f3-48bb-a607-4a93b5e95990', 'abd@dasd.sd', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'automobile@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('2f97e09b-2919-437c-9df3-c530f72fb23a', 'karakak3ara@qweqffwe.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'fitnessandwellness@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '9gag@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('3cfb3b78-60b6-4a5f-b0ea-c98502ca0e5b', 'asdas@dvv.mmm', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'sportandsport@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('43c46dcf-1b62-4570-8e1e-c4cbd1c2dda9', 'absh@ndnd.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('47e8d108-65ea-4534-8609-c0f794be3bf0', 'jsjs@ndm.ckf', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'celebritynews@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('4ab78e9d-e811-422f-a3a8-fcaed27bf168', 'abd@test.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('4e2896d9-0ac4-4f82-a085-fb017e7a88fd', 'abdullah@gmail.cpdö', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'foody@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'makeuphits@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('617c805e-36ff-426c-8741-6a0937cd39ef', '__', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('62992ab9-d90c-4ad7-acb8-970a7ffe0663', 'test@mail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('64601352-674d-4d8b-a206-22f72fb7bf87', 'abdullah@fasdm.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', 'cafer_aydin@hotmail.com.tr', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'sportinternational@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('6f54c50f-ed1f-4d59-9570-6cdb2c55e995', 'anasd@asd.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('75209907-9c77-4d60-a96b-8a8cbf687e2a', 'ozenc.yelter@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'celebrity@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('8f31f134-ac77-4b21-a863-ccd3429e78db', 'oeıeıdıej@krkrjrj.flfkf', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('9342cd93-801a-4a96-8ca7-63b84c48b47c', 'debeme@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'crafts@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('955e4061-0e73-4256-9dcc-cf71347a52b9', 'gggg@xghbb.nhh', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'fitness@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', 'alice@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'musiclife@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'movies@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'artcalender@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'mamasandkids@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b545b46d-3195-470e-bd62-94f6d7b8a586', 'abdullah@gmail.cpö', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'trendmakeup@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'travelguide@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('b9960b24-72ae-4e4c-ad01-b602a48bf4f4', 'abdullah@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'mamaskids@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'autolife@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'gallery@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'fashion@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 'Can.tascioglu.19@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'gagsandmemes@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'moviechannel@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'doityourself@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('ea4e2e52-e955-43ff-bdec-66e90d5a8f12', 'abdullah@asd.asdca', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'fashionstyle@gmail.com', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('efbb658a-c5bf-425d-95bc-04ce0aa94e11', 'ggg@gg.nn', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('efe73545-e213-4b54-acaa-f6014980f388', 'xdgbbb@ffcvm.bbu', 1, 0);
INSERT INTO `frienq_member_email` VALUES ('f415e3c3-0659-4378-8ea8-cdd2336ea67b', 'ozenc.yelter@coante.com', 1, 0);

-- ----------------------------
-- Table structure for frienq_member_frienq
-- ----------------------------
DROP TABLE IF EXISTS `frienq_member_frienq`;
CREATE TABLE `frienq_member_frienq`  (
  `uid_owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE INDEX `uniquekey_frienq_member_frienq`(`uid_owner`, `uid_member`) USING BTREE,
  INDEX `uid_member`(`uid_member`) USING BTREE,
  CONSTRAINT `uid_member` FOREIGN KEY (`uid_member`) REFERENCES `frienq_member` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid_owner` FOREIGN KEY (`uid_owner`) REFERENCES `frienq_member` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_member_frienq
-- ----------------------------
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('111a6e26-815d-46aa-bd01-993d73f04a4f', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('111a6e26-815d-46aa-bd01-993d73f04a4f', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_member_frienq` VALUES ('1454500f-5054-4555-a4c7-d045f589ca92', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_member_frienq` VALUES ('178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_member_frienq` VALUES ('178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '47e8d108-65ea-4534-8609-c0f794be3bf0');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('617c805e-36ff-426c-8741-6a0937cd39ef', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', '9342cd93-801a-4a96-8ca7-63b84c48b47c');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', '955e4061-0e73-4256-9dcc-cf71347a52b9');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', 'b545b46d-3195-470e-bd62-94f6d7b8a586');
INSERT INTO `frienq_member_frienq` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('b545b46d-3195-470e-bd62-94f6d7b8a586', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_member_frienq` VALUES ('c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 'b545b46d-3195-470e-bd62-94f6d7b8a586');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '31b9dacc-a730-4310-9fe5-1c193fa7ff42');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '4973fded-993c-4044-af5c-91d6bae8e9d4');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'be41e06f-ebe2-4eb9-a855-15c08435cedc');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'd63826af-2fd3-46fa-8ef4-3d735982601e');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140');
INSERT INTO `frienq_member_frienq` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', 'efe73545-e213-4b54-acaa-f6014980f388');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '3c225c96-5d2d-4993-a6e3-a9971cc23308');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '435bf805-7db6-4035-a1ba-c5da2559a2b6');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '535634d4-1383-4ab6-92d9-637226556da1');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '5e474feb-3c84-4dea-9d03-b21e57b3b493');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '830bc394-2490-4e21-bcc7-c9e1c19d5256');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '93577441-c74d-4ea6-b7c6-8de467cc9915');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ab08fa01-67b1-469c-9eec-1f84f89398d3');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'b7de53bf-8cb7-42f8-99e1-66812170f438');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'bae9d92b-dba5-4a90-80df-1e55285419e2');
INSERT INTO `frienq_member_frienq` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7');

-- ----------------------------
-- Table structure for frienq_member_session
-- ----------------------------
DROP TABLE IF EXISTS `frienq_member_session`;
CREATE TABLE `frienq_member_session`  (
  `uid_member` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime(0) NOT NULL,
  UNIQUE INDEX `uid_frienq_member_session`(`uid_member`) USING BTREE,
  CONSTRAINT `uid_frienq_member_session` FOREIGN KEY (`uid_member`) REFERENCES `frienq_member` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_member_session
-- ----------------------------
INSERT INTO `frienq_member_session` VALUES ('0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '3cf7353c-1fec-4b31-ad26-6ddfe7c338fa', '2020-03-23 08:49:22');
INSERT INTO `frienq_member_session` VALUES ('111a6e26-815d-46aa-bd01-993d73f04a4f', '53ce2ec6-5630-42c9-a80f-f748b75234f8', '2020-03-12 22:20:07');
INSERT INTO `frienq_member_session` VALUES ('1454500f-5054-4555-a4c7-d045f589ca92', 'ac472800-72a5-489b-9972-daba14a21462', '2020-01-30 08:24:14');
INSERT INTO `frienq_member_session` VALUES ('178b5043-0be8-4dbf-8279-fb74ca676047', 'e85efac3-608e-4355-a6c0-c00778b86cb2', '2020-01-07 20:05:16');
INSERT INTO `frienq_member_session` VALUES ('1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 'e08cd9ce-a79e-485c-813d-f67f582c14f5', '2020-02-16 15:27:09');
INSERT INTO `frienq_member_session` VALUES ('2c6acd15-31f3-48bb-a607-4a93b5e95990', 'ec08314d-e634-4b45-b68d-65d00552c32a', '2020-01-29 22:28:07');
INSERT INTO `frienq_member_session` VALUES ('2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '4cfe29b9-1e33-450b-8a21-bea61b5dc66c', '2020-04-06 14:10:48');
INSERT INTO `frienq_member_session` VALUES ('2f97e09b-2919-437c-9df3-c530f72fb23a', '521ccee6-3595-4b96-86b1-c6aa2c94de02', '2020-01-29 22:28:58');
INSERT INTO `frienq_member_session` VALUES ('31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'bc74c5e1-acdd-4133-8208-1e027132726e', '2020-03-23 08:43:39');
INSERT INTO `frienq_member_session` VALUES ('3c225c96-5d2d-4993-a6e3-a9971cc23308', 'f72dda9b-b956-4492-9d0a-2e0b959df37e', '2020-04-07 19:43:42');
INSERT INTO `frienq_member_session` VALUES ('3cfb3b78-60b6-4a5f-b0ea-c98502ca0e5b', '9088fa7c-ec86-451a-a4fa-7e964eb75900', '2020-03-19 22:45:22');
INSERT INTO `frienq_member_session` VALUES ('435bf805-7db6-4035-a1ba-c5da2559a2b6', '22940ee3-e913-441b-b8da-464d4bc55315', '2020-04-06 14:09:36');
INSERT INTO `frienq_member_session` VALUES ('43c46dcf-1b62-4570-8e1e-c4cbd1c2dda9', 'c8dc746d-533f-4931-bf01-8fc0fbe27de9', '2020-01-17 22:45:35');
INSERT INTO `frienq_member_session` VALUES ('47e8d108-65ea-4534-8609-c0f794be3bf0', '466be8e8-cd6e-4910-9017-7c74df1e2973', '2020-07-09 17:12:43');
INSERT INTO `frienq_member_session` VALUES ('4973fded-993c-4044-af5c-91d6bae8e9d4', '48c90934-f4a5-4d5b-be97-1b33890809d5', '2020-03-23 12:26:19');
INSERT INTO `frienq_member_session` VALUES ('4ab78e9d-e811-422f-a3a8-fcaed27bf168', '7d791800-5049-4857-ab38-5a2c994a6720', '2020-01-31 19:54:41');
INSERT INTO `frienq_member_session` VALUES ('4e2896d9-0ac4-4f82-a085-fb017e7a88fd', '99394ecb-b617-4096-8386-f8300a5c9ea5', '2020-01-29 22:26:23');
INSERT INTO `frienq_member_session` VALUES ('535634d4-1383-4ab6-92d9-637226556da1', '17ebb17f-c9e7-4c3b-8375-7ad6b2456898', '2020-03-23 08:31:23');
INSERT INTO `frienq_member_session` VALUES ('5e474feb-3c84-4dea-9d03-b21e57b3b493', 'd56d8b01-c32f-43ea-a02e-fca02421deb0', '2020-04-06 14:06:33');
INSERT INTO `frienq_member_session` VALUES ('617c805e-36ff-426c-8741-6a0937cd39ef', '204c7d81-d6e0-4c66-b782-808207a91397', '2020-04-04 16:59:52');
INSERT INTO `frienq_member_session` VALUES ('62992ab9-d90c-4ad7-acb8-970a7ffe0663', '1c9bdc6b-9604-48c5-80e9-3cd67c63d246', '2020-07-10 07:52:46');
INSERT INTO `frienq_member_session` VALUES ('64601352-674d-4d8b-a206-22f72fb7bf87', '5592187e-4944-49f6-b818-0b9e395b9627', '2020-01-30 07:57:37');
INSERT INTO `frienq_member_session` VALUES ('6625344d-99ed-40ec-840b-9de4d4bc29c1', 'a718c636-b023-4bcb-abf8-2b5279af3c18', '2020-01-17 22:35:54');
INSERT INTO `frienq_member_session` VALUES ('6782d740-3551-4396-9cec-e1f023e88ecc', '36219268-342c-446d-bd39-da2c21a9555f', '2020-03-23 08:45:45');
INSERT INTO `frienq_member_session` VALUES ('75209907-9c77-4d60-a96b-8a8cbf687e2a', '311282ba-4b93-4d42-a5ef-9a83b3160dbd', '2020-02-17 08:17:36');
INSERT INTO `frienq_member_session` VALUES ('830bc394-2490-4e21-bcc7-c9e1c19d5256', '96b71b1a-09e1-4f3f-9487-0957e14e230f', '2020-04-07 19:49:40');
INSERT INTO `frienq_member_session` VALUES ('8f31f134-ac77-4b21-a863-ccd3429e78db', '0733099a-3f3d-4add-8589-8ded962deb70', '2020-01-27 20:50:02');
INSERT INTO `frienq_member_session` VALUES ('9342cd93-801a-4a96-8ca7-63b84c48b47c', 'a5823900-30a0-4702-9d6c-f77f2f8bc14e', '2020-04-03 21:39:54');
INSERT INTO `frienq_member_session` VALUES ('93577441-c74d-4ea6-b7c6-8de467cc9915', '93758b37-6d3e-42f3-bf84-3e5b37dbf2e5', '2020-04-07 19:46:53');
INSERT INTO `frienq_member_session` VALUES ('955e4061-0e73-4256-9dcc-cf71347a52b9', '963e8744-0d63-4192-b5ea-82c99978011d', '2020-04-03 21:44:31');
INSERT INTO `frienq_member_session` VALUES ('a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '9cfb9491-5cb4-4770-b6e8-58d17533ff33', '2020-04-06 14:07:56');
INSERT INTO `frienq_member_session` VALUES ('ab08fa01-67b1-469c-9eec-1f84f89398d3', 'a9638c8b-27b4-49ed-aaf9-7800d909db88', '2020-04-06 13:58:15');
INSERT INTO `frienq_member_session` VALUES ('ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '528ac7e1-c920-43c2-95a8-17dd6102903b', '2020-04-07 19:04:41');
INSERT INTO `frienq_member_session` VALUES ('b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'b0bfd9a0-b34d-46fb-9f28-9e0250563742', '2020-04-06 14:13:57');
INSERT INTO `frienq_member_session` VALUES ('b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '431de1de-9c6a-468b-9f47-8ab7094b5645', '2020-03-23 08:53:10');
INSERT INTO `frienq_member_session` VALUES ('b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '3bac64ed-6157-4481-9cb9-9114d64317a8', '2020-03-23 09:04:38');
INSERT INTO `frienq_member_session` VALUES ('b545b46d-3195-470e-bd62-94f6d7b8a586', '0848d04c-5384-4924-bbcb-6299dedc6521', '2020-01-27 20:48:17');
INSERT INTO `frienq_member_session` VALUES ('b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '20a8d63f-1b0e-4ba6-b169-2ed5f22f4683', '2020-03-23 08:41:52');
INSERT INTO `frienq_member_session` VALUES ('b7de53bf-8cb7-42f8-99e1-66812170f438', '0b09b6a0-ca75-4369-80d9-3f34dfd7adfa', '2020-03-23 09:06:55');
INSERT INTO `frienq_member_session` VALUES ('b9960b24-72ae-4e4c-ad01-b602a48bf4f4', 'a075e1d2-8f1e-426a-8af4-6b64dab2c884', '2020-01-30 08:19:17');
INSERT INTO `frienq_member_session` VALUES ('bae9d92b-dba5-4a90-80df-1e55285419e2', 'abd3f01a-982a-4a27-bf59-9990c0f4edd6', '2020-04-07 19:48:28');
INSERT INTO `frienq_member_session` VALUES ('be41e06f-ebe2-4eb9-a855-15c08435cedc', '4c34fb78-12cd-42d3-9ffa-f98231513fdb', '2020-03-23 08:46:42');
INSERT INTO `frienq_member_session` VALUES ('c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '1147a590-bae7-484f-b322-9dc5f3e93990', '2020-04-07 19:08:01');
INSERT INTO `frienq_member_session` VALUES ('c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'bb0847c6-d074-45e9-b924-7c60159305cd', '2020-03-23 08:32:51');
INSERT INTO `frienq_member_session` VALUES ('c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '79be77d0-bc7d-4035-9197-532ef2b379ad', '2020-02-06 20:28:53');
INSERT INTO `frienq_member_session` VALUES ('d63826af-2fd3-46fa-8ef4-3d735982601e', '72cbc940-ee07-4bb0-9d4c-61cec44b6d4f', '2020-03-23 08:54:19');
INSERT INTO `frienq_member_session` VALUES ('d6d83d63-bdac-42e4-81ff-91e3f7ec1140', '223c461f-5f8e-47ce-ac6f-951ebe68feca', '2020-03-23 08:48:09');
INSERT INTO `frienq_member_session` VALUES ('dabbb0be-af35-4eaa-951b-abf6569f9201', '06e2d723-1871-4e94-9c2e-0f254ad0c877', '2020-03-23 09:02:40');
INSERT INTO `frienq_member_session` VALUES ('ea4e2e52-e955-43ff-bdec-66e90d5a8f12', '0e6096f4-f455-44a5-baef-e8ea7af975bb', '2020-01-30 08:22:12');
INSERT INTO `frienq_member_session` VALUES ('edad7cf8-583a-4427-94a0-2f25ea9396bd', '7d48cb12-da88-4e41-80f2-ffa09ebb084c', '2020-04-06 14:04:55');
INSERT INTO `frienq_member_session` VALUES ('efbb658a-c5bf-425d-95bc-04ce0aa94e11', '6a4d32fc-50b2-44c9-862e-0f0067e39beb', '2020-07-09 08:24:59');
INSERT INTO `frienq_member_session` VALUES ('efe73545-e213-4b54-acaa-f6014980f388', '6c17bfc4-18ea-45be-bc84-c27ee84e027d', '2020-04-03 21:47:03');
INSERT INTO `frienq_member_session` VALUES ('f415e3c3-0659-4378-8ea8-cdd2336ea67b', '2d8754ff-71cc-46a9-a4cc-3994f6a6a58f', '2020-07-09 17:32:09');

-- ----------------------------
-- Table structure for frienq_notification
-- ----------------------------
DROP TABLE IF EXISTS `frienq_notification`;
CREATE TABLE `frienq_notification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid_owner` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_frienq` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notification_type` int(11) NOT NULL,
  `notified` tinyint(1) NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL,
  `notification_data` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notification_data2` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 911 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_notification
-- ----------------------------
INSERT INTO `frienq_notification` VALUES (546, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 1, 0, '2020-04-03 22:12:15', '2020-04-03 22:12:15', '2020-04-03 22:12:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (547, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:17:36', '2020-04-03 22:17:36', '2020-04-03 22:17:36', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', 'dd66d22e-ba32-4a17-b34b-4b85436513bb');
INSERT INTO `frienq_notification` VALUES (548, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:21:11', '2020-04-03 22:21:11', '2020-04-03 22:21:11', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '8ae88c0c-1fab-4d3c-adbd-e4d8c5028fd3');
INSERT INTO `frienq_notification` VALUES (549, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:21:32', '2020-04-03 22:21:32', '2020-04-03 22:21:32', 'd7d70c21-09db-45ea-9c95-c3bc80caa1df', NULL);
INSERT INTO `frienq_notification` VALUES (550, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:22:11', '2020-04-03 22:22:11', '2020-04-03 22:22:11', '02cef7e7-f36b-4ff3-9332-e2ac159ea308', NULL);
INSERT INTO `frienq_notification` VALUES (551, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:23:27', '2020-04-03 22:23:27', '2020-04-03 22:23:27', 'b466edc1-87a4-4902-96bc-99b7202295c3', NULL);
INSERT INTO `frienq_notification` VALUES (552, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:23:35', '2020-04-03 22:23:35', '2020-04-03 22:23:35', 'b466edc1-87a4-4902-96bc-99b7202295c3', '635cc0a2-f0ed-4860-b5d1-60fc3dfcfe4a');
INSERT INTO `frienq_notification` VALUES (553, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:23:52', '2020-04-03 22:23:52', '2020-04-03 22:23:52', 'c53adf6b-45fd-4680-93ee-e341eabbe890', NULL);
INSERT INTO `frienq_notification` VALUES (554, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:27:43', '2020-04-03 22:27:43', '2020-04-03 22:27:43', 'c53adf6b-45fd-4680-93ee-e341eabbe890', 'a3960d1c-35c1-40c8-b946-0ab1c1716be5');
INSERT INTO `frienq_notification` VALUES (555, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:28:26', '2020-04-03 22:28:26', '2020-04-03 22:28:26', '7962a92e-db07-4458-8f5b-9abb67f0102f', NULL);
INSERT INTO `frienq_notification` VALUES (556, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:28:59', '2020-04-03 22:28:59', '2020-04-03 22:28:59', 'a6da7ac5-a815-4f4c-a82c-1b01965fd2be', NULL);
INSERT INTO `frienq_notification` VALUES (557, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:33:35', '2020-04-03 22:33:35', '2020-04-03 22:33:35', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', NULL);
INSERT INTO `frienq_notification` VALUES (558, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:35:50', '2020-04-03 22:35:50', '2020-04-03 22:35:50', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '2c3f166f-d21a-49ad-ad17-5dd736a74820');
INSERT INTO `frienq_notification` VALUES (559, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:36:08', '2020-04-03 22:36:08', '2020-04-03 22:36:08', 'd7d70c21-09db-45ea-9c95-c3bc80caa1df', 'e26dc1da-48eb-4ff3-840e-90901f0ac9b4');
INSERT INTO `frienq_notification` VALUES (560, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:36:28', '2020-04-03 22:36:28', '2020-04-03 22:36:28', '7962a92e-db07-4458-8f5b-9abb67f0102f', 'b7e86d5e-0b32-45a2-9f56-85f5256b52e2');
INSERT INTO `frienq_notification` VALUES (561, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 1, 1, 0, '2020-04-03 22:40:47', '2020-04-03 22:40:47', '2020-04-03 22:40:47', '6681b86f-23dd-4d49-a15c-7c559c4bfc58', NULL);
INSERT INTO `frienq_notification` VALUES (562, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:45:25', '2020-04-03 22:45:25', '2020-04-03 22:45:25', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '99e69c2b-4a5a-42c5-99c0-9853aabeec7b');
INSERT INTO `frienq_notification` VALUES (563, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:45:48', '2020-04-03 22:45:48', '2020-04-03 22:45:48', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '68ca195e-d257-4de1-8449-8b8c9fb66b50');
INSERT INTO `frienq_notification` VALUES (564, 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:46:32', '2020-04-03 22:46:32', '2020-04-03 22:46:32', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '54518742-65f9-40e4-b260-102b6bd4ebf2');
INSERT INTO `frienq_notification` VALUES (565, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:54:34', '2020-04-03 22:54:34', '2020-04-03 22:54:34', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '56e94a72-b04f-43e7-896e-2a9d5f8e7824');
INSERT INTO `frienq_notification` VALUES (566, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 22:55:53', '2020-04-03 22:55:53', '2020-04-03 22:55:53', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', '355cc5e8-b04b-41fb-a6aa-a5c03e6ba8b9');
INSERT INTO `frienq_notification` VALUES (567, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 23:00:12', '2020-04-03 23:00:12', '2020-04-03 23:00:12', '7962a92e-db07-4458-8f5b-9abb67f0102f', '36458539-f940-416d-bc06-9e7b376bf7ed');
INSERT INTO `frienq_notification` VALUES (568, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 1, 0, '2020-04-03 23:02:22', '2020-04-03 23:02:22', '2020-04-03 23:02:22', '7962a92e-db07-4458-8f5b-9abb67f0102f', '89bac03d-9b81-420b-898f-1a3efc38b4dd');
INSERT INTO `frienq_notification` VALUES (569, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 0, 0, '2020-04-03 23:03:23', '2020-04-03 23:03:23', '2020-04-03 23:03:23', '7962a92e-db07-4458-8f5b-9abb67f0102f', 'dc4ab67d-5b3d-4fe1-b4f2-cf068245db65');
INSERT INTO `frienq_notification` VALUES (570, '4973fded-993c-4044-af5c-91d6bae8e9d4', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:00:34', '2020-04-05 01:00:34', '2020-04-05 01:00:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (571, '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:00:47', '2020-04-05 01:00:47', '2020-04-05 01:00:47', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (572, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:07', '2020-04-05 01:02:07', '2020-04-05 01:02:07', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (573, '535634d4-1383-4ab6-92d9-637226556da1', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 1, 0, '2020-04-05 01:02:09', '2020-04-05 01:02:09', '2020-04-05 01:02:09', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (574, '6782d740-3551-4396-9cec-e1f023e88ecc', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 1, 0, '2020-04-05 01:02:10', '2020-04-05 01:02:10', '2020-04-05 01:02:10', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (575, 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:12', '2020-04-05 01:02:12', '2020-04-05 01:02:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (576, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:12', '2020-04-05 01:02:12', '2020-04-05 01:02:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (577, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:14', '2020-04-05 01:02:14', '2020-04-05 01:02:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (578, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:14', '2020-04-05 01:02:14', '2020-04-05 01:02:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (579, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:16', '2020-04-05 01:02:16', '2020-04-05 01:02:16', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (580, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:16', '2020-04-05 01:02:16', '2020-04-05 01:02:16', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (581, 'd63826af-2fd3-46fa-8ef4-3d735982601e', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:19', '2020-04-05 01:02:19', '2020-04-05 01:02:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (582, 'd6d83d63-bdac-42e4-81ff-91e3f7ec1140', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:19', '2020-04-05 01:02:19', '2020-04-05 01:02:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (583, 'dabbb0be-af35-4eaa-951b-abf6569f9201', 'efe73545-e213-4b54-acaa-f6014980f388', 0, 0, 0, '2020-04-05 01:02:20', '2020-04-05 01:02:20', '2020-04-05 01:02:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (584, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'efe73545-e213-4b54-acaa-f6014980f388', 3, 0, 0, '2020-04-05 01:03:16', '2020-04-05 01:03:16', '2020-04-05 01:03:16', '6681b86f-23dd-4d49-a15c-7c559c4bfc58', 'f77cde83-78f5-4149-aeff-7318d5961a53');
INSERT INTO `frienq_notification` VALUES (585, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 1, 1, 0, '2020-04-06 13:51:31', '2020-04-06 13:51:31', '2020-04-06 13:51:31', 'ab98fb55-1c87-4f8b-a52b-9bb48fe2a6a8', NULL);
INSERT INTO `frienq_notification` VALUES (586, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 0, '2020-04-07 19:53:41', '2020-04-07 19:53:41', '2020-04-07 19:53:41', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (587, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:53:49', '2020-04-07 19:53:49', '2020-04-07 19:53:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (588, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 0, '2020-04-07 19:54:05', '2020-04-07 19:54:05', '2020-04-07 19:54:05', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (589, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:22', '2020-04-07 19:54:22', '2020-04-07 19:54:22', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (590, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:27', '2020-04-07 19:54:27', '2020-04-07 19:54:27', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (591, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:35', '2020-04-07 19:54:35', '2020-04-07 19:54:35', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (592, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:42', '2020-04-07 19:54:42', '2020-04-07 19:54:42', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (593, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:47', '2020-04-07 19:54:47', '2020-04-07 19:54:47', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (594, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:53', '2020-04-07 19:54:53', '2020-04-07 19:54:53', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (595, '93577441-c74d-4ea6-b7c6-8de467cc9915', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:54:59', '2020-04-07 19:54:59', '2020-04-07 19:54:59', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (596, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:55:09', '2020-04-07 19:55:09', '2020-04-07 19:55:09', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (597, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:55:17', '2020-04-07 19:55:17', '2020-04-07 19:55:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (598, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-04-07 19:55:23', '2020-04-07 19:55:23', '2020-04-07 19:55:23', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (599, '535634d4-1383-4ab6-92d9-637226556da1', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 1, 0, '2020-04-07 19:57:02', '2020-04-07 19:57:02', '2020-04-07 19:57:02', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (600, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:09', '2020-04-07 19:57:09', '2020-04-07 19:57:09', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (601, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:15', '2020-04-07 19:57:15', '2020-04-07 19:57:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (602, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:17', '2020-04-07 19:57:17', '2020-04-07 19:57:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (603, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:20', '2020-04-07 19:57:20', '2020-04-07 19:57:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (604, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:29', '2020-04-07 19:57:29', '2020-04-07 19:57:29', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (605, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:31', '2020-04-07 19:57:31', '2020-04-07 19:57:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (606, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 1, 0, '2020-04-07 19:57:33', '2020-04-07 19:57:33', '2020-04-07 19:57:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (607, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:34', '2020-04-07 19:57:34', '2020-04-07 19:57:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (608, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:36', '2020-04-07 19:57:36', '2020-04-07 19:57:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (609, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:41', '2020-04-07 19:57:41', '2020-04-07 19:57:41', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (610, 'bae9d92b-dba5-4a90-80df-1e55285419e2', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:43', '2020-04-07 19:57:43', '2020-04-07 19:57:43', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (611, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-04-07 19:57:46', '2020-04-07 19:57:46', '2020-04-07 19:57:46', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (612, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 1, '2020-04-07 19:57:49', '2020-04-07 19:57:49', '2020-04-07 19:57:52', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (613, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:13', '2020-04-07 20:00:13', '2020-04-07 20:00:13', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (614, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:15', '2020-04-07 20:00:15', '2020-04-07 20:00:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (615, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:17', '2020-04-07 20:00:17', '2020-04-07 20:00:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (616, '535634d4-1383-4ab6-92d9-637226556da1', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 1, 0, '2020-04-07 20:00:20', '2020-04-07 20:00:20', '2020-04-07 20:00:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (617, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:24', '2020-04-07 20:00:24', '2020-04-07 20:00:24', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (618, '93577441-c74d-4ea6-b7c6-8de467cc9915', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:26', '2020-04-07 20:00:26', '2020-04-07 20:00:26', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (619, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 1, 0, '2020-04-07 20:00:28', '2020-04-07 20:00:28', '2020-04-07 20:00:28', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (620, 'ab08fa01-67b1-469c-9eec-1f84f89398d3', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:31', '2020-04-07 20:00:31', '2020-04-07 20:00:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (621, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:33', '2020-04-07 20:00:33', '2020-04-07 20:00:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (622, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:34', '2020-04-07 20:00:34', '2020-04-07 20:00:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (623, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:45', '2020-04-07 20:00:45', '2020-04-07 20:00:45', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (624, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:49', '2020-04-07 20:00:49', '2020-04-07 20:00:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (625, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 0, 0, '2020-04-07 20:00:50', '2020-04-07 20:00:50', '2020-04-07 20:00:50', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (626, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '5e474feb-3c84-4dea-9d03-b21e57b3b493', 0, 1, 0, '2020-04-07 20:00:59', '2020-04-07 20:00:59', '2020-04-07 20:00:59', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (627, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:04', '2020-04-07 20:02:04', '2020-04-07 20:02:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (628, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:06', '2020-04-07 20:02:06', '2020-04-07 20:02:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (629, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:09', '2020-04-07 20:02:09', '2020-04-07 20:02:09', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (630, '535634d4-1383-4ab6-92d9-637226556da1', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 1, 0, '2020-04-07 20:02:12', '2020-04-07 20:02:12', '2020-04-07 20:02:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (631, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:12', '2020-04-07 20:02:12', '2020-04-07 20:02:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (632, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:17', '2020-04-07 20:02:17', '2020-04-07 20:02:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (633, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:19', '2020-04-07 20:02:19', '2020-04-07 20:02:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (634, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:22', '2020-04-07 20:02:22', '2020-04-07 20:02:22', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (635, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:33', '2020-04-07 20:02:33', '2020-04-07 20:02:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (636, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 1, '2020-04-07 20:02:38', '2020-04-07 20:02:38', '2020-04-07 20:02:41', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (637, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:38', '2020-04-07 20:02:38', '2020-04-07 20:02:38', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (638, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 0, 0, '2020-04-07 20:02:44', '2020-04-07 20:02:44', '2020-04-07 20:02:44', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (639, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 0, 1, 0, '2020-04-07 20:02:49', '2020-04-07 20:02:49', '2020-04-07 20:02:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (640, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:03:52', '2020-04-07 20:03:52', '2020-04-07 20:03:52', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (641, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:03:56', '2020-04-07 20:03:56', '2020-04-07 20:03:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (642, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:03:58', '2020-04-07 20:03:58', '2020-04-07 20:03:58', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (643, '535634d4-1383-4ab6-92d9-637226556da1', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 1, 0, '2020-04-07 20:04:02', '2020-04-07 20:04:02', '2020-04-07 20:04:02', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (644, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:08', '2020-04-07 20:04:08', '2020-04-07 20:04:08', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (645, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:12', '2020-04-07 20:04:12', '2020-04-07 20:04:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (646, '93577441-c74d-4ea6-b7c6-8de467cc9915', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:13', '2020-04-07 20:04:13', '2020-04-07 20:04:13', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (647, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:15', '2020-04-07 20:04:15', '2020-04-07 20:04:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (648, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:16', '2020-04-07 20:04:16', '2020-04-07 20:04:16', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (649, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:04:17', '2020-04-07 20:04:17', '2020-04-07 20:04:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (650, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 1, 0, '2020-04-07 20:04:23', '2020-04-07 20:04:23', '2020-04-07 20:04:23', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (651, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '435bf805-7db6-4035-a1ba-c5da2559a2b6', 0, 0, 0, '2020-04-07 20:05:17', '2020-04-07 20:05:17', '2020-04-07 20:05:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (652, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:48', '2020-04-07 20:08:48', '2020-04-07 20:08:48', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (653, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:49', '2020-04-07 20:08:49', '2020-04-07 20:08:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (654, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:50', '2020-04-07 20:08:50', '2020-04-07 20:08:50', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (655, '535634d4-1383-4ab6-92d9-637226556da1', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 1, 0, '2020-04-07 20:08:52', '2020-04-07 20:08:52', '2020-04-07 20:08:52', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (656, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:53', '2020-04-07 20:08:53', '2020-04-07 20:08:53', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (657, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:56', '2020-04-07 20:08:56', '2020-04-07 20:08:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (658, '93577441-c74d-4ea6-b7c6-8de467cc9915', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:08:58', '2020-04-07 20:08:58', '2020-04-07 20:08:58', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (659, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:09:00', '2020-04-07 20:09:00', '2020-04-07 20:09:00', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (660, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:09:01', '2020-04-07 20:09:01', '2020-04-07 20:09:01', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (661, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 1, '2020-04-07 20:09:08', '2020-04-07 20:09:08', '2020-04-07 20:09:10', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (662, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:09:11', '2020-04-07 20:09:11', '2020-04-07 20:09:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (663, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:09:13', '2020-04-07 20:09:13', '2020-04-07 20:09:13', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (664, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 0, 0, '2020-04-07 20:09:14', '2020-04-07 20:09:14', '2020-04-07 20:09:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (665, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 0, 1, 0, '2020-04-07 20:09:19', '2020-04-07 20:09:19', '2020-04-07 20:09:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (666, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:26', '2020-04-07 20:11:26', '2020-04-07 20:11:26', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (667, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:28', '2020-04-07 20:11:28', '2020-04-07 20:11:28', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (668, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:29', '2020-04-07 20:11:29', '2020-04-07 20:11:29', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (669, '535634d4-1383-4ab6-92d9-637226556da1', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 1, 0, '2020-04-07 20:11:31', '2020-04-07 20:11:31', '2020-04-07 20:11:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (670, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:31', '2020-04-07 20:11:31', '2020-04-07 20:11:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (671, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:34', '2020-04-07 20:11:34', '2020-04-07 20:11:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (672, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:36', '2020-04-07 20:11:36', '2020-04-07 20:11:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (673, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:36', '2020-04-07 20:11:36', '2020-04-07 20:11:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (674, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:38', '2020-04-07 20:11:38', '2020-04-07 20:11:38', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (675, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:41', '2020-04-07 20:11:41', '2020-04-07 20:11:41', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (676, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:42', '2020-04-07 20:11:42', '2020-04-07 20:11:42', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (677, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:43', '2020-04-07 20:11:43', '2020-04-07 20:11:43', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (678, 'bae9d92b-dba5-4a90-80df-1e55285419e2', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:45', '2020-04-07 20:11:45', '2020-04-07 20:11:45', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (679, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 0, 0, '2020-04-07 20:11:48', '2020-04-07 20:11:48', '2020-04-07 20:11:48', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (680, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 0, 1, 0, '2020-04-07 20:11:52', '2020-04-07 20:11:52', '2020-04-07 20:11:52', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (681, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:12:55', '2020-04-07 20:12:55', '2020-04-07 20:12:55', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (682, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:12:56', '2020-04-07 20:12:56', '2020-04-07 20:12:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (683, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:12:56', '2020-04-07 20:12:56', '2020-04-07 20:12:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (684, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:02', '2020-04-07 20:13:02', '2020-04-07 20:13:02', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (685, '535634d4-1383-4ab6-92d9-637226556da1', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 1, 0, '2020-04-07 20:13:06', '2020-04-07 20:13:06', '2020-04-07 20:13:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (686, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:06', '2020-04-07 20:13:06', '2020-04-07 20:13:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (687, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:10', '2020-04-07 20:13:10', '2020-04-07 20:13:10', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (688, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:11', '2020-04-07 20:13:11', '2020-04-07 20:13:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (689, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:12', '2020-04-07 20:13:12', '2020-04-07 20:13:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (690, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:14', '2020-04-07 20:13:14', '2020-04-07 20:13:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (691, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:21', '2020-04-07 20:13:21', '2020-04-07 20:13:21', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (692, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:28', '2020-04-07 20:13:28', '2020-04-07 20:13:28', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (693, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:30', '2020-04-07 20:13:30', '2020-04-07 20:13:30', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (694, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:32', '2020-04-07 20:13:32', '2020-04-07 20:13:32', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (695, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 0, 0, '2020-04-07 20:13:32', '2020-04-07 20:13:32', '2020-04-07 20:13:32', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (696, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 0, 1, 0, '2020-04-07 20:13:37', '2020-04-07 20:13:37', '2020-04-07 20:13:37', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (697, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:36', '2020-04-07 20:14:36', '2020-04-07 20:14:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (698, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:37', '2020-04-07 20:14:37', '2020-04-07 20:14:37', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (699, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:39', '2020-04-07 20:14:39', '2020-04-07 20:14:39', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (700, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:39', '2020-04-07 20:14:39', '2020-04-07 20:14:39', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (701, '535634d4-1383-4ab6-92d9-637226556da1', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 1, 0, '2020-04-07 20:14:43', '2020-04-07 20:14:43', '2020-04-07 20:14:43', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (702, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:43', '2020-04-07 20:14:43', '2020-04-07 20:14:43', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (703, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:46', '2020-04-07 20:14:46', '2020-04-07 20:14:46', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (704, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:47', '2020-04-07 20:14:47', '2020-04-07 20:14:47', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (705, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:49', '2020-04-07 20:14:49', '2020-04-07 20:14:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (706, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:50', '2020-04-07 20:14:50', '2020-04-07 20:14:50', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (707, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:51', '2020-04-07 20:14:51', '2020-04-07 20:14:51', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (708, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:53', '2020-04-07 20:14:53', '2020-04-07 20:14:53', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (709, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:54', '2020-04-07 20:14:54', '2020-04-07 20:14:54', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (710, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:54', '2020-04-07 20:14:54', '2020-04-07 20:14:54', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (711, 'bae9d92b-dba5-4a90-80df-1e55285419e2', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:57', '2020-04-07 20:14:57', '2020-04-07 20:14:57', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (712, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:58', '2020-04-07 20:14:58', '2020-04-07 20:14:58', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (713, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 0, 0, '2020-04-07 20:14:59', '2020-04-07 20:14:59', '2020-04-07 20:14:59', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (714, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 0, 1, 0, '2020-04-07 20:15:06', '2020-04-07 20:15:06', '2020-04-07 20:15:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (715, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:15:51', '2020-04-07 20:15:51', '2020-04-07 20:15:51', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (716, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:15:53', '2020-04-07 20:15:53', '2020-04-07 20:15:53', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (717, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:00', '2020-04-07 20:16:00', '2020-04-07 20:16:00', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (718, '535634d4-1383-4ab6-92d9-637226556da1', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 1, 0, '2020-04-07 20:16:12', '2020-04-07 20:16:12', '2020-04-07 20:16:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (719, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:13', '2020-04-07 20:16:13', '2020-04-07 20:16:13', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (720, '6782d740-3551-4396-9cec-e1f023e88ecc', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 1, '2020-04-07 20:16:18', '2020-04-07 20:16:18', '2020-04-07 20:16:21', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (721, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:22', '2020-04-07 20:16:22', '2020-04-07 20:16:22', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (722, '93577441-c74d-4ea6-b7c6-8de467cc9915', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:24', '2020-04-07 20:16:24', '2020-04-07 20:16:24', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (723, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:25', '2020-04-07 20:16:25', '2020-04-07 20:16:25', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (724, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:27', '2020-04-07 20:16:27', '2020-04-07 20:16:27', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (725, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:28', '2020-04-07 20:16:28', '2020-04-07 20:16:28', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (726, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:30', '2020-04-07 20:16:30', '2020-04-07 20:16:30', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (727, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:31', '2020-04-07 20:16:31', '2020-04-07 20:16:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (728, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:32', '2020-04-07 20:16:32', '2020-04-07 20:16:32', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (729, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:33', '2020-04-07 20:16:33', '2020-04-07 20:16:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (730, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 0, '2020-04-07 20:16:34', '2020-04-07 20:16:34', '2020-04-07 20:16:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (731, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 0, 1, '2020-04-07 20:16:38', '2020-04-07 20:16:38', '2020-04-07 20:16:40', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (732, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '3c225c96-5d2d-4993-a6e3-a9971cc23308', 0, 1, 0, '2020-04-07 20:16:49', '2020-04-07 20:16:49', '2020-04-07 20:16:49', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (733, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:04', '2020-04-07 20:26:04', '2020-04-07 20:26:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (734, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:06', '2020-04-07 20:26:06', '2020-04-07 20:26:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (735, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:07', '2020-04-07 20:26:07', '2020-04-07 20:26:07', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (736, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:08', '2020-04-07 20:26:08', '2020-04-07 20:26:08', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (737, '535634d4-1383-4ab6-92d9-637226556da1', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 1, 0, '2020-04-07 20:26:11', '2020-04-07 20:26:11', '2020-04-07 20:26:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (738, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:12', '2020-04-07 20:26:12', '2020-04-07 20:26:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (739, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:18', '2020-04-07 20:26:18', '2020-04-07 20:26:18', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (740, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:21', '2020-04-07 20:26:21', '2020-04-07 20:26:21', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (741, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:25', '2020-04-07 20:26:25', '2020-04-07 20:26:25', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (742, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:26', '2020-04-07 20:26:26', '2020-04-07 20:26:26', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (743, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:26', '2020-04-07 20:26:26', '2020-04-07 20:26:26', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (744, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 1, '2020-04-07 20:26:29', '2020-04-07 20:26:29', '2020-04-07 20:26:31', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (745, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 1, '2020-04-07 20:26:32', '2020-04-07 20:26:32', '2020-04-07 20:26:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (746, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 0, '2020-04-07 20:26:33', '2020-04-07 20:26:33', '2020-04-07 20:26:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (747, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 0, 1, '2020-04-07 20:26:44', '2020-04-07 20:26:44', '2020-04-07 20:26:46', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (748, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'bae9d92b-dba5-4a90-80df-1e55285419e2', 0, 1, 0, '2020-04-07 20:26:50', '2020-04-07 20:26:50', '2020-04-07 20:26:50', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (749, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:27:53', '2020-04-07 20:27:53', '2020-04-07 20:27:53', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (750, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:27:54', '2020-04-07 20:27:54', '2020-04-07 20:27:54', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (751, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:27:56', '2020-04-07 20:27:56', '2020-04-07 20:27:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (752, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:27:57', '2020-04-07 20:27:57', '2020-04-07 20:27:57', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (753, '535634d4-1383-4ab6-92d9-637226556da1', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 1, 0, '2020-04-07 20:28:00', '2020-04-07 20:28:00', '2020-04-07 20:28:00', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (754, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:01', '2020-04-07 20:28:01', '2020-04-07 20:28:01', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (755, '830bc394-2490-4e21-bcc7-c9e1c19d5256', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:03', '2020-04-07 20:28:03', '2020-04-07 20:28:03', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (756, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:06', '2020-04-07 20:28:06', '2020-04-07 20:28:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (757, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:08', '2020-04-07 20:28:08', '2020-04-07 20:28:08', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (758, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:08', '2020-04-07 20:28:08', '2020-04-07 20:28:08', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (759, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:11', '2020-04-07 20:28:11', '2020-04-07 20:28:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (760, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 0, 0, '2020-04-07 20:28:13', '2020-04-07 20:28:13', '2020-04-07 20:28:13', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (761, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '93577441-c74d-4ea6-b7c6-8de467cc9915', 0, 1, 0, '2020-04-07 20:28:19', '2020-04-07 20:28:19', '2020-04-07 20:28:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (762, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:07', '2020-04-07 20:29:07', '2020-04-07 20:29:07', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (763, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:10', '2020-04-07 20:29:10', '2020-04-07 20:29:10', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (764, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:11', '2020-04-07 20:29:11', '2020-04-07 20:29:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (765, '535634d4-1383-4ab6-92d9-637226556da1', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 1, 0, '2020-04-07 20:29:14', '2020-04-07 20:29:14', '2020-04-07 20:29:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (766, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:15', '2020-04-07 20:29:15', '2020-04-07 20:29:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (767, '93577441-c74d-4ea6-b7c6-8de467cc9915', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:20', '2020-04-07 20:29:20', '2020-04-07 20:29:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (768, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:21', '2020-04-07 20:29:21', '2020-04-07 20:29:21', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (769, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:23', '2020-04-07 20:29:23', '2020-04-07 20:29:23', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (770, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:24', '2020-04-07 20:29:24', '2020-04-07 20:29:24', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (771, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:27', '2020-04-07 20:29:27', '2020-04-07 20:29:27', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (772, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:29', '2020-04-07 20:29:29', '2020-04-07 20:29:29', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (773, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 0, 0, '2020-04-07 20:29:34', '2020-04-07 20:29:34', '2020-04-07 20:29:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (774, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '830bc394-2490-4e21-bcc7-c9e1c19d5256', 0, 1, 0, '2020-04-07 20:29:38', '2020-04-07 20:29:38', '2020-04-07 20:29:38', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (775, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:08', '2020-04-07 20:31:08', '2020-04-07 20:31:08', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (776, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:11', '2020-04-07 20:31:11', '2020-04-07 20:31:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (777, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:12', '2020-04-07 20:31:12', '2020-04-07 20:31:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (778, '535634d4-1383-4ab6-92d9-637226556da1', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 1, 0, '2020-04-07 20:31:15', '2020-04-07 20:31:15', '2020-04-07 20:31:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (779, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:33', '2020-04-07 20:31:33', '2020-04-07 20:31:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (780, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:34', '2020-04-07 20:31:34', '2020-04-07 20:31:34', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (781, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:36', '2020-04-07 20:31:36', '2020-04-07 20:31:36', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (782, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:37', '2020-04-07 20:31:37', '2020-04-07 20:31:37', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (783, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:37', '2020-04-07 20:31:37', '2020-04-07 20:31:37', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (784, 'bae9d92b-dba5-4a90-80df-1e55285419e2', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:45', '2020-04-07 20:31:45', '2020-04-07 20:31:45', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (785, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:31:55', '2020-04-07 20:31:55', '2020-04-07 20:31:55', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (786, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 1, 0, '2020-04-07 20:32:04', '2020-04-07 20:32:04', '2020-04-07 20:32:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (787, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'b7de53bf-8cb7-42f8-99e1-66812170f438', 0, 0, 0, '2020-04-07 20:32:19', '2020-04-07 20:32:19', '2020-04-07 20:32:19', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (788, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:35:45', '2020-04-07 20:35:45', '2020-04-07 20:35:45', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (789, '3c225c96-5d2d-4993-a6e3-a9971cc23308', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:35:48', '2020-04-07 20:35:48', '2020-04-07 20:35:48', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (790, '435bf805-7db6-4035-a1ba-c5da2559a2b6', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:35:48', '2020-04-07 20:35:48', '2020-04-07 20:35:48', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (791, '535634d4-1383-4ab6-92d9-637226556da1', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 1, 0, '2020-04-07 20:35:56', '2020-04-07 20:35:56', '2020-04-07 20:35:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (792, '5e474feb-3c84-4dea-9d03-b21e57b3b493', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:35:58', '2020-04-07 20:35:58', '2020-04-07 20:35:58', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (793, '830bc394-2490-4e21-bcc7-c9e1c19d5256', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:02', '2020-04-07 20:36:02', '2020-04-07 20:36:02', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (794, '93577441-c74d-4ea6-b7c6-8de467cc9915', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:04', '2020-04-07 20:36:04', '2020-04-07 20:36:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (795, 'a6f08a1a-4cef-44e8-8e81-ad92ccbaf4fc', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:04', '2020-04-07 20:36:04', '2020-04-07 20:36:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (796, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:06', '2020-04-07 20:36:06', '2020-04-07 20:36:06', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (797, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:07', '2020-04-07 20:36:07', '2020-04-07 20:36:07', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (798, 'b7de53bf-8cb7-42f8-99e1-66812170f438', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:11', '2020-04-07 20:36:11', '2020-04-07 20:36:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (799, 'bae9d92b-dba5-4a90-80df-1e55285419e2', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 0, 0, '2020-04-07 20:36:11', '2020-04-07 20:36:11', '2020-04-07 20:36:11', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (800, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 0, 1, 0, '2020-04-07 20:36:16', '2020-04-07 20:36:16', '2020-04-07 20:36:16', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (801, '535634d4-1383-4ab6-92d9-637226556da1', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 1, 1, 0, '2020-04-09 16:04:28', '2020-04-09 16:04:28', '2020-04-09 16:04:28', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', NULL);
INSERT INTO `frienq_notification` VALUES (802, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-14 19:43:32', '2020-05-14 19:43:32', '2020-05-14 19:43:32', '144d93f1-49dc-4cbd-8f91-b27f9a1a2105', 'select');
INSERT INTO `frienq_notification` VALUES (803, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 1, 0, '2020-05-14 19:50:39', '2020-06-11 18:43:52', '2020-05-14 19:50:39', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', NULL);
INSERT INTO `frienq_notification` VALUES (804, '111a6e26-815d-46aa-bd01-993d73f04a4f', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-14 19:54:42', '2020-05-14 19:54:42', '2020-05-14 19:54:42', 'b7067cbc-3e4d-4560-8f42-7311bc40af8d', 'select');
INSERT INTO `frienq_notification` VALUES (805, '111a6e26-815d-46aa-bd01-993d73f04a4f', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-16 09:41:35', '2020-05-16 09:41:35', '2020-05-16 09:41:35', '18e06c60-28e1-488c-a088-2fc7c993c8bd', NULL);
INSERT INTO `frienq_notification` VALUES (806, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-16 20:32:36', '2020-05-16 20:32:36', '2020-05-16 20:32:36', '180ffaf8-3471-40cd-8739-5e4588d12126', NULL);
INSERT INTO `frienq_notification` VALUES (807, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 1, 0, '2020-05-16 22:15:38', '2020-06-11 18:43:52', '2020-05-16 22:15:38', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '655eaf14-9b73-47c1-87ac-340ee362f600');
INSERT INTO `frienq_notification` VALUES (808, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-16 22:28:55', '2020-05-16 22:28:55', '2020-05-16 22:28:55', '55d0adb7-e272-428e-bec3-cac48aa150fe', NULL);
INSERT INTO `frienq_notification` VALUES (809, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-05-16 22:29:29', '2020-05-16 22:29:29', '2020-05-16 22:29:29', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', NULL);
INSERT INTO `frienq_notification` VALUES (810, '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:29:41', '2020-05-16 22:29:41', '2020-05-16 22:29:41', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (811, '2c9c9c26-0c42-431e-9b1f-6e54475a34ae', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:29:46', '2020-05-16 22:29:46', '2020-05-16 22:29:46', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (812, '31b9dacc-a730-4310-9fe5-1c193fa7ff42', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:29:50', '2020-05-16 22:29:50', '2020-05-16 22:29:50', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (813, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:29:51', '2020-05-16 22:29:51', '2020-05-16 22:29:51', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (814, '435bf805-7db6-4035-a1ba-c5da2559a2b6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:29:56', '2020-05-16 22:29:56', '2020-05-16 22:29:56', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (815, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:01', '2020-05-16 22:30:01', '2020-05-16 22:30:01', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (816, 'dabbb0be-af35-4eaa-951b-abf6569f9201', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:04', '2020-05-16 22:30:04', '2020-05-16 22:30:04', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (817, 'd63826af-2fd3-46fa-8ef4-3d735982601e', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:10', '2020-05-16 22:30:10', '2020-05-16 22:30:10', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (818, 'c0ff693d-bfa5-4cb7-8414-43c073ef8cb7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:12', '2020-05-16 22:30:12', '2020-05-16 22:30:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (819, 'be41e06f-ebe2-4eb9-a855-15c08435cedc', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:12', '2020-05-16 22:30:12', '2020-05-16 22:30:12', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (820, 'bae9d92b-dba5-4a90-80df-1e55285419e2', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:14', '2020-05-16 22:30:14', '2020-05-16 22:30:14', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (821, 'b7de53bf-8cb7-42f8-99e1-66812170f438', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:15', '2020-05-16 22:30:15', '2020-05-16 22:30:15', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (822, 'b6d3be38-75c4-4c11-9bc4-78cd2e790ed3', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:16', '2020-05-16 22:30:16', '2020-05-16 22:30:16', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (823, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:18', '2020-05-16 22:30:18', '2020-05-16 22:30:18', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (824, 'b34df3fa-ef3b-47bb-a6a2-391b33abdb28', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:20', '2020-05-16 22:30:20', '2020-05-16 22:30:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (825, 'b1e621a4-dc85-43c1-8eaf-4de27c80c1b9', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:20', '2020-05-16 22:30:20', '2020-05-16 22:30:20', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (826, 'ad86883b-6fbb-43f5-8a54-48e851b7d8b5', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:23', '2020-05-16 22:30:23', '2020-05-16 22:30:23', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (827, '4973fded-993c-4044-af5c-91d6bae8e9d4', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:27', '2020-05-16 22:30:27', '2020-05-16 22:30:27', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (828, '5e474feb-3c84-4dea-9d03-b21e57b3b493', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:29', '2020-05-16 22:30:29', '2020-05-16 22:30:29', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (829, '617c805e-36ff-426c-8741-6a0937cd39ef', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:30', '2020-05-16 22:30:30', '2020-05-16 22:30:30', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (830, '6782d740-3551-4396-9cec-e1f023e88ecc', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 0, '2020-05-16 22:30:33', '2020-05-16 22:30:33', '2020-05-16 22:30:33', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (831, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-02 18:36:20', '2020-06-02 18:36:20', '2020-06-02 18:36:20', 'a94adb5e-6cea-45ae-a618-573ced9b220f', 'select');
INSERT INTO `frienq_notification` VALUES (832, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-02 22:22:21', '2020-06-02 22:22:21', '2020-06-02 22:22:21', '214f522a-5ca0-404e-a822-e84f8271c529', 'select');
INSERT INTO `frienq_notification` VALUES (833, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-02 22:22:30', '2020-06-02 22:22:30', '2020-06-02 22:22:30', '22fb9ec4-b757-43cf-825c-99ce2cf4df73', 'select');
INSERT INTO `frienq_notification` VALUES (834, '111a6e26-815d-46aa-bd01-993d73f04a4f', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-03 18:55:19', '2020-06-03 18:55:19', '2020-06-03 18:55:19', '0910b051-cfc9-421c-aab8-cb8408288881', NULL);
INSERT INTO `frienq_notification` VALUES (835, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-03 19:14:06', '2020-07-07 19:57:24', '2020-06-03 19:14:06', 'e9c242b8-b3bc-4b65-829e-981a89394746', 'select');
INSERT INTO `frienq_notification` VALUES (836, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-03 19:14:09', '2020-07-07 19:57:21', '2020-06-03 19:14:09', '6422d032-6ad6-49b5-8c31-aa37de23a0af', 'select');
INSERT INTO `frienq_notification` VALUES (837, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-06-11 21:12:48', '2020-06-11 21:12:48', '2020-06-11 21:12:48', '6422d032-6ad6-49b5-8c31-aa37de23a0af', 'select');
INSERT INTO `frienq_notification` VALUES (838, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-06-11 21:12:53', '2020-06-11 21:12:53', '2020-06-11 21:12:53', 'e9c242b8-b3bc-4b65-829e-981a89394746', 'select');
INSERT INTO `frienq_notification` VALUES (839, '0cbb3482-ee29-46cc-bf14-cbb43f38ed8c', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 0, '2020-06-11 21:13:17', '2020-06-11 21:13:17', '2020-06-11 21:13:17', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (840, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-06-11 21:13:37', '2020-06-11 21:13:37', '2020-06-11 21:13:37', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', NULL);
INSERT INTO `frienq_notification` VALUES (841, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 3, 0, 0, '2020-06-11 21:13:59', '2020-07-09 11:57:17', '2020-06-11 21:13:59', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'c57737f2-844f-4cd5-aeb7-f9b3b83b4a9f');
INSERT INTO `frienq_notification` VALUES (842, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:14:41', '2020-06-11 21:14:41', '2020-06-11 21:14:41', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'f03e3212-e017-4382-aaac-9947acca121e');
INSERT INTO `frienq_notification` VALUES (843, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:15:10', '2020-06-11 21:15:10', '2020-06-11 21:15:10', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '58d9d5ec-980a-4f4c-b2be-aae27bda152b');
INSERT INTO `frienq_notification` VALUES (844, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:16:33', '2020-06-11 21:16:33', '2020-06-11 21:16:33', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'dab1167e-c29e-43ef-a539-9cdc04725c56');
INSERT INTO `frienq_notification` VALUES (845, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:17:27', '2020-06-11 21:17:27', '2020-06-11 21:17:27', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '1ece42f5-792e-4188-9dbd-e09cb7c96c68');
INSERT INTO `frienq_notification` VALUES (846, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:17:48', '2020-06-11 21:17:48', '2020-06-11 21:17:48', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'ed8600b5-9ccb-4845-82ac-f9245eb3d54a');
INSERT INTO `frienq_notification` VALUES (847, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:18:18', '2020-06-11 21:18:18', '2020-06-11 21:18:18', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '213f9bef-d588-4354-b983-8bf87b29c065');
INSERT INTO `frienq_notification` VALUES (848, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:19:57', '2020-06-11 21:19:57', '2020-06-11 21:19:57', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '7e6bbcac-6644-4bb2-b6f3-b5f712ddeb3f');
INSERT INTO `frienq_notification` VALUES (849, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:20:15', '2020-06-11 21:20:15', '2020-06-11 21:20:15', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '48cb567c-8d95-4cd7-8a56-79da0d081f1e');
INSERT INTO `frienq_notification` VALUES (850, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-11 21:21:16', '2020-06-11 21:21:16', '2020-06-11 21:21:16', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'cd332f8c-ed01-4034-beac-9f5e4f8036cb');
INSERT INTO `frienq_notification` VALUES (851, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-06-11 21:25:31', '2020-06-11 21:25:31', '2020-06-11 21:25:31', '77fa1015-83a9-4997-9e7c-a249fe863eac', NULL);
INSERT INTO `frienq_notification` VALUES (852, '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 1, 0, 0, '2020-06-23 18:57:33', '2020-06-23 18:57:33', '2020-06-23 18:57:33', '77fa1015-83a9-4997-9e7c-a249fe863eac', NULL);
INSERT INTO `frienq_notification` VALUES (853, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-23 19:01:53', '2020-06-23 19:01:53', '2020-06-23 19:01:53', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 'select');
INSERT INTO `frienq_notification` VALUES (854, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:02:01', '2020-06-23 19:02:01', '2020-06-23 19:02:01', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 'cade63bc-3821-4bc4-aa10-40937f276673');
INSERT INTO `frienq_notification` VALUES (855, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:02:19', '2020-06-23 19:02:19', '2020-06-23 19:02:19', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '744327af-f191-4454-9d48-374f4cd5ca1e');
INSERT INTO `frienq_notification` VALUES (856, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:06:48', '2020-06-23 19:06:48', '2020-06-23 19:06:48', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '6524e2c3-6924-42af-bf58-2748a5434c2d');
INSERT INTO `frienq_notification` VALUES (857, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:07:21', '2020-06-23 19:07:21', '2020-06-23 19:07:21', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '6a59df17-e73a-4516-9157-53c601c3783d');
INSERT INTO `frienq_notification` VALUES (858, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:12:49', '2020-06-23 19:12:49', '2020-06-23 19:12:49', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 'ed5faafa-a20b-48f1-8fca-3095a856aad7');
INSERT INTO `frienq_notification` VALUES (859, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:13:00', '2020-06-23 19:13:00', '2020-06-23 19:13:00', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '321e7afb-b7ef-4268-be68-7c26641dbcf1');
INSERT INTO `frienq_notification` VALUES (860, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:14:53', '2020-06-23 19:14:53', '2020-06-23 19:14:53', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '07b62e0b-7748-43ef-8be2-de06e9450bec');
INSERT INTO `frienq_notification` VALUES (861, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-06-23 19:24:10', '2020-06-23 19:24:10', '2020-06-23 19:24:10', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', 'select');
INSERT INTO `frienq_notification` VALUES (862, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:24:48', '2020-06-23 19:24:48', '2020-06-23 19:24:48', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '41c262cb-beb3-43be-b046-a32d07609d17');
INSERT INTO `frienq_notification` VALUES (863, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:47:05', '2020-06-23 19:47:05', '2020-06-23 19:47:05', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', '48548ad0-d67f-44b5-bbb0-4c2fb33d024c');
INSERT INTO `frienq_notification` VALUES (864, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-06-23 19:47:19', '2020-06-23 19:47:19', '2020-06-23 19:47:19', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', 'd686133d-1e79-4bc2-befa-2b7e2a22158b');
INSERT INTO `frienq_notification` VALUES (865, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-07 12:18:42', '2020-07-07 12:18:42', '2020-07-07 12:18:42', 'f122a15c-7e82-436e-9aa9-01a13c5356d5', 'select');
INSERT INTO `frienq_notification` VALUES (866, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-07 12:27:01', '2020-07-07 12:27:01', '2020-07-07 12:27:01', '4518073e-42db-4473-9b18-c7fab09e10a1', NULL);
INSERT INTO `frienq_notification` VALUES (867, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-07 12:27:12', '2020-07-07 12:27:12', '2020-07-07 12:27:12', '77fa1015-83a9-4997-9e7c-a249fe863eac', NULL);
INSERT INTO `frienq_notification` VALUES (868, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:14:29', '2020-07-07 19:14:29', '2020-07-07 19:14:29', '4518073e-42db-4473-9b18-c7fab09e10a1', '586c0732-0344-4b0d-b09b-160d15c987d6');
INSERT INTO `frienq_notification` VALUES (869, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:25:13', '2020-07-07 19:25:13', '2020-07-07 19:25:13', '02a52a0f-2246-4286-871f-2d38781f4e94', '36f8798e-a365-4b01-bda3-069a45573a7f');
INSERT INTO `frienq_notification` VALUES (870, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:29:31', '2020-07-07 19:29:31', '2020-07-07 19:29:31', '02a52a0f-2246-4286-871f-2d38781f4e94', 'b24656d8-0bbc-4ae3-a7f0-3d588dab5847');
INSERT INTO `frienq_notification` VALUES (871, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:32:31', '2020-07-07 19:32:31', '2020-07-07 19:32:31', '02a52a0f-2246-4286-871f-2d38781f4e94', '711252a9-f91e-4ae0-b96c-65eca714bd96');
INSERT INTO `frienq_notification` VALUES (872, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:33:23', '2020-07-07 19:33:23', '2020-07-07 19:33:23', '02a52a0f-2246-4286-871f-2d38781f4e94', '5759af1d-7ddd-4eba-89fe-021b3c380768');
INSERT INTO `frienq_notification` VALUES (873, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:34:32', '2020-07-07 19:34:32', '2020-07-07 19:34:32', '02a52a0f-2246-4286-871f-2d38781f4e94', 'c6a7894d-dd79-44db-8ccb-6fb984c12947');
INSERT INTO `frienq_notification` VALUES (874, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 19:35:23', '2020-07-07 19:35:23', '2020-07-07 19:35:23', '02a52a0f-2246-4286-871f-2d38781f4e94', 'f6e10dff-10ee-4a91-b144-b6b73029ca02');
INSERT INTO `frienq_notification` VALUES (875, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-07 19:58:28', '2020-07-07 19:58:28', '2020-07-07 19:58:28', 'd050aca0-c423-42ae-8017-1971c4278d7d', NULL);
INSERT INTO `frienq_notification` VALUES (876, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-07 19:58:35', '2020-07-07 19:58:35', '2020-07-07 19:58:35', 'd02492ee-f615-4d69-82b9-1176845a2a69', NULL);
INSERT INTO `frienq_notification` VALUES (877, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:23:17', '2020-07-07 20:23:17', '2020-07-07 20:23:17', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '5640ff96-a3b3-4835-8ac2-d242d60533d0');
INSERT INTO `frienq_notification` VALUES (878, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:23:33', '2020-07-07 20:23:33', '2020-07-07 20:23:33', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'e254d69b-3b66-4d70-8de5-002adf239e01');
INSERT INTO `frienq_notification` VALUES (879, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:24:06', '2020-07-07 20:24:06', '2020-07-07 20:24:06', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'c87c8dd7-0ac6-4891-b0bf-297d03cfe055');
INSERT INTO `frienq_notification` VALUES (880, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:24:26', '2020-07-07 20:24:26', '2020-07-07 20:24:26', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '83fc3b65-93c9-450c-8d2e-bdc3b70281af');
INSERT INTO `frienq_notification` VALUES (881, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:24:44', '2020-07-07 20:24:44', '2020-07-07 20:24:44', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '9d67f615-d044-4b77-b417-ebd25e9bddbe');
INSERT INTO `frienq_notification` VALUES (882, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:24:54', '2020-07-07 20:24:54', '2020-07-07 20:24:54', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '549e8357-c167-4cfa-ba48-5b49bc369af2');
INSERT INTO `frienq_notification` VALUES (883, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:26:01', '2020-07-07 20:26:01', '2020-07-07 20:26:01', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '4bf13c78-89df-4e25-a95c-167796e47be4');
INSERT INTO `frienq_notification` VALUES (884, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:26:23', '2020-07-07 20:26:23', '2020-07-07 20:26:23', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'd292c6a0-9594-45ed-9e7e-65b7e6d50c14');
INSERT INTO `frienq_notification` VALUES (885, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:26:38', '2020-07-07 20:26:38', '2020-07-07 20:26:38', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '69ad7727-1539-418b-abcb-97f5605f8f5f');
INSERT INTO `frienq_notification` VALUES (886, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:26:48', '2020-07-07 20:26:48', '2020-07-07 20:26:48', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '56bb2b7c-252a-4178-806b-b9813a340f56');
INSERT INTO `frienq_notification` VALUES (887, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:26:57', '2020-07-07 20:26:57', '2020-07-07 20:26:57', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '8780dd64-fd24-416e-bbfa-7e5d7b681c7e');
INSERT INTO `frienq_notification` VALUES (888, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:27:24', '2020-07-07 20:27:24', '2020-07-07 20:27:24', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '88cfd224-131b-4344-83e1-356c0ff8f4f0');
INSERT INTO `frienq_notification` VALUES (889, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:29:41', '2020-07-07 20:29:41', '2020-07-07 20:29:41', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '9099c05f-419f-49f9-a37a-315cb4aa58b6');
INSERT INTO `frienq_notification` VALUES (890, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:48:12', '2020-07-07 20:48:12', '2020-07-07 20:48:12', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'c96a4cd3-77c7-4236-9722-25ec622ebb45');
INSERT INTO `frienq_notification` VALUES (891, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:48:16', '2020-07-07 20:48:16', '2020-07-07 20:48:16', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '1a45d252-d6d7-4302-8e5b-35aaf48ebcb4');
INSERT INTO `frienq_notification` VALUES (892, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:55:29', '2020-07-07 20:55:29', '2020-07-07 20:55:29', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'ba9882fe-d80d-4408-942a-e320da542dec');
INSERT INTO `frienq_notification` VALUES (893, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:56:07', '2020-07-07 20:56:07', '2020-07-07 20:56:07', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'c88fd64d-582d-4b1a-90e8-d9d88ce9206b');
INSERT INTO `frienq_notification` VALUES (894, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:56:32', '2020-07-07 20:56:32', '2020-07-07 20:56:32', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '577fdbe8-8d7f-40e6-9b83-60e9fda20b3e');
INSERT INTO `frienq_notification` VALUES (895, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:56:48', '2020-07-07 20:56:48', '2020-07-07 20:56:48', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '16cedf0c-4c9f-4f3d-af1c-93b41b3bf04a');
INSERT INTO `frienq_notification` VALUES (896, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:57:01', '2020-07-07 20:57:01', '2020-07-07 20:57:01', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'a3d6bac9-c356-4a22-ae13-719da910dbcd');
INSERT INTO `frienq_notification` VALUES (897, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-07 20:58:03', '2020-07-07 20:58:03', '2020-07-07 20:58:03', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 'a039369d-82f1-4056-a161-a8374c3d5d7f');
INSERT INTO `frienq_notification` VALUES (898, '111a6e26-815d-46aa-bd01-993d73f04a4f', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-07 21:24:54', '2020-07-07 21:24:54', '2020-07-07 21:24:54', 'bfb4fd17-a0e7-4281-b821-d85df8051527', NULL);
INSERT INTO `frienq_notification` VALUES (899, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-07 21:25:05', '2020-07-07 21:25:05', '2020-07-07 21:25:05', '4518073e-42db-4473-9b18-c7fab09e10a1', NULL);
INSERT INTO `frienq_notification` VALUES (900, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-07 21:25:57', '2020-07-07 21:25:57', '2020-07-07 21:25:57', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 'select');
INSERT INTO `frienq_notification` VALUES (901, '111a6e26-815d-46aa-bd01-993d73f04a4f', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-07 21:26:05', '2020-07-07 21:26:05', '2020-07-07 21:26:05', 'a80c7f85-41e2-4643-818b-1cc43ffff71d', NULL);
INSERT INTO `frienq_notification` VALUES (902, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-07 21:26:27', '2020-07-07 21:26:27', '2020-07-07 21:26:27', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', 'select');
INSERT INTO `frienq_notification` VALUES (903, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 0, '2020-07-08 23:01:30', '2020-07-08 23:01:30', '2020-07-08 23:01:30', '0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', NULL);
INSERT INTO `frienq_notification` VALUES (904, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, 0, 0, '2020-07-08 23:02:41', '2020-07-08 23:02:41', '2020-07-08 23:02:41', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '7a93d058-aee3-4257-bfb4-6a439b80d792');
INSERT INTO `frienq_notification` VALUES (905, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-08 23:03:25', '2020-07-08 23:03:25', '2020-07-08 23:03:25', '0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', NULL);
INSERT INTO `frienq_notification` VALUES (906, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 1, 0, 0, '2020-07-08 23:04:02', '2020-07-08 23:04:02', '2020-07-08 23:04:02', '55d0adb7-e272-428e-bec3-cac48aa150fe', NULL);
INSERT INTO `frienq_notification` VALUES (907, '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 1, 0, 0, '2020-07-09 07:18:15', '2020-07-09 07:18:15', '2020-07-09 07:18:15', '0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', NULL);
INSERT INTO `frienq_notification` VALUES (908, 'ab08fa01-67b1-469c-9eec-1f84f89398d3', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 0, '2020-07-09 07:18:45', '2020-07-09 07:18:45', '2020-07-09 07:18:45', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (909, '3c225c96-5d2d-4993-a6e3-a9971cc23308', '47e8d108-65ea-4534-8609-c0f794be3bf0', 0, 0, 0, '2020-07-09 17:16:40', '2020-07-09 17:16:40', '2020-07-09 17:16:40', NULL, NULL);
INSERT INTO `frienq_notification` VALUES (910, '178b5043-0be8-4dbf-8279-fb74ca676047', 'f415e3c3-0659-4378-8ea8-cdd2336ea67b', 1, 0, 0, '2020-07-10 12:32:27', '2020-07-10 12:32:27', '2020-07-10 12:32:27', '4518073e-42db-4473-9b18-c7fab09e10a1', NULL);

-- ----------------------------
-- Table structure for frienq_post
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post`;
CREATE TABLE `frienq_post`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_def_security_level` int(11) NOT NULL,
  `location` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `lat` float NOT NULL,
  `lan` float NOT NULL,
  `explanation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `count_rate` int(11) NOT NULL,
  `count_comment` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL,
  `date_last` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post
-- ----------------------------
INSERT INTO `frienq_post` VALUES ('026201e6-6609-4948-862b-a5fb744e3cfe', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'video tesy', 0, 0, 0, b'1', '2020-02-25 01:34:33', '2020-02-25 01:34:33', '2020-02-25 01:35:07', NULL);
INSERT INTO `frienq_post` VALUES ('02a3cd30-df64-46ef-a5f9-3f383e31f520', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'özenç bey', 1, 1, 0, b'1', '2020-03-01 22:33:30', '2020-03-01 22:33:30', '2020-03-01 22:53:05', NULL);
INSERT INTO `frienq_post` VALUES ('02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'test location', 36.2589, 47.6566, 'test explanation', 5, 3, 6, b'1', '2020-02-01 01:01:57', '2020-02-01 01:01:57', '2020-02-01 01:01:57', NULL);
INSERT INTO `frienq_post` VALUES ('02b9f157-80f1-416f-b0d2-75521350029a', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tg-Jiu, Romania', 45.0314, 23.2689, 'jer', 0, 0, 0, b'1', '2020-02-13 20:59:52', '2020-02-13 20:59:52', '2020-02-13 21:00:25', NULL);
INSERT INTO `frienq_post` VALUES ('02cef7e7-f36b-4ff3-9332-e2ac159ea308', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Kuşadası, Aydın, Turkey', 37.8579, 27.261, 'Akselinyoo', 7.5, 4, 1, b'0', '2020-02-26 01:34:40', '2020-02-26 01:34:40', '2020-02-26 01:34:40', NULL);
INSERT INTO `frienq_post` VALUES ('02edb583-0963-4fc1-b9c0-1acd17cb2898', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'sdasdad', 9, 1, 0, b'1', '2020-02-06 22:59:30', '2020-02-06 22:59:30', '2020-02-08 23:30:41', NULL);
INSERT INTO `frienq_post` VALUES ('03f8a38f-9f3b-44af-a25d-8fb2bba5446c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'GGD Amsterdam, Nieuwe Achtergracht, Amsterdam, Netherlands', 52.3625, 4.90877, 'ff', 0, 0, 0, b'1', '2020-02-13 00:22:38', '2020-02-13 00:22:38', '2020-02-13 20:42:50', NULL);
INSERT INTO `frienq_post` VALUES ('057cbbe9-a8f0-4ac9-bdd4-9c46beda7bdf', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Armutalan, Marmaris/Muğla, Turkey', 36.8566, 28.2375, 'good', 6.66667, 3, 1, b'1', '2020-02-26 02:15:36', '2020-02-26 02:15:36', '2020-02-26 02:15:36', NULL);
INSERT INTO `frienq_post` VALUES ('072feeab-637d-495b-8b66-0acb80e9434c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'vxv', 8, 1, 0, b'1', '2020-02-06 23:44:41', '2020-02-06 23:44:41', '2020-02-06 23:44:41', NULL);
INSERT INTO `frienq_post` VALUES ('0808103c-4c27-4db0-937d-3a78be16db9f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Çıldır, Hasan Işık Cd. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8524, 28.264, 'yaz yağmuru', 0, 0, 0, b'1', '2020-07-08 23:00:15', '2020-07-08 23:00:15', '2020-07-08 23:00:37', NULL);
INSERT INTO `frienq_post` VALUES ('081bf8a3-dadb-4105-9dba-6c80307ad6eb', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Mrs Macquarie\'s Chair, Mrs Macquaries Road, Sydney NSW, Australia', -33.8597, 151.223, 'deneme', 0, 2, 0, b'1', '2020-02-22 02:14:58', '2020-02-22 02:14:58', '2020-03-09 23:28:36', NULL);
INSERT INTO `frienq_post` VALUES ('0910b051-cfc9-421c-aab8-cb8408288881', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'mckc', 10, 1, 0, b'0', '2020-03-29 20:50:34', '2020-03-29 20:50:34', '2020-03-29 20:50:34', NULL);
INSERT INTO `frienq_post` VALUES ('0a1987c0-e52e-4d56-9343-d27ccc66b254', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'cbcnxn', 7, 1, 1, b'1', '2020-03-29 20:27:19', '2020-03-29 20:27:19', '2020-03-29 20:36:06', NULL);
INSERT INTO `frienq_post` VALUES ('0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Çıldır, Hasan Işık Cd. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8524, 28.264, 'yaz yağmuru', 7.33333, 3, 0, b'0', '2020-07-08 23:00:22', '2020-07-08 23:00:22', '2020-07-08 23:00:22', NULL);
INSERT INTO `frienq_post` VALUES ('0b541363-9dc1-4146-82a8-2c0b009267aa', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'deneme,', 0, 0, 0, b'1', '2020-03-22 19:35:31', '2020-03-22 19:35:31', '2020-03-27 19:09:44', '2020-03-22 23:08:00');
INSERT INTO `frienq_post` VALUES ('0d93e574-0e5d-48ee-845d-b2d898802926', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test 2', 0, 1, 0, b'1', '2020-03-06 21:48:31', '2020-03-06 21:48:31', '2020-03-07 00:12:32', NULL);
INSERT INTO `frienq_post` VALUES ('1169ad21-d7f6-42d9-8764-9fa9105ebb44', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 1, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'Test video', 7.66667, 3, 3, b'0', '2020-03-12 23:14:49', '2020-03-12 23:14:49', '2020-03-12 23:14:49', NULL);
INSERT INTO `frienq_post` VALUES ('129e01c6-c673-4030-9219-bfd0cf355b75', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Jakarta, Indonesia', -6.20876, 106.846, 'uu', 10, 1, 0, b'1', '2020-02-07 00:28:45', '2020-02-07 00:28:45', '2020-02-07 00:28:45', NULL);
INSERT INTO `frienq_post` VALUES ('12d0cae2-f0a1-46aa-b577-35972462ec82', '6782d740-3551-4396-9cec-e1f023e88ecc', 0, 1, 'Barcelona, Spain', 41.3851, 2.1734, 'ron mes', 9, 1, 0, b'1', '2020-03-24 23:00:31', '2020-03-24 23:00:31', '2020-03-25 07:45:09', NULL);
INSERT INTO `frienq_post` VALUES ('144d93f1-49dc-4cbd-8f91-b27f9a1a2105', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 1, '1599 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'team the you from', 0, 2, 0, b'0', '2020-03-29 10:17:38', '2020-03-29 10:17:38', '2020-03-29 10:17:38', NULL);
INSERT INTO `frienq_post` VALUES ('15197396-4b92-4f65-aa97-6ccc6912d902', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'test', 1, 1, 0, b'1', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34', NULL);
INSERT INTO `frienq_post` VALUES ('154a85e8-c29b-4caa-93ee-48eb70273495', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Çamdibi Mh, 264. Sk. No:15, 48700 Marmaris/Muğla, Türkiye', 36.8638, 28.2693, 'test', 0, 3, 0, b'1', '2020-03-12 03:14:19', '2020-03-12 03:14:19', '2020-03-12 03:14:19', NULL);
INSERT INTO `frienq_post` VALUES ('17e59247-b9ad-43af-a458-5eb31b2608cb', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Gatlinburg, TN, USA', 35.7143, -83.5102, 'Jhshebevsh', 0, 0, 0, b'1', '2020-03-23 22:37:48', '2020-03-23 22:37:48', '2020-03-23 22:39:14', NULL);
INSERT INTO `frienq_post` VALUES ('17fff07e-0eb4-4d28-b17f-b360617f28fe', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'selam', 10, 1, 1, b'1', '2020-02-22 01:58:58', '2020-02-22 01:58:58', '2020-02-22 02:08:58', NULL);
INSERT INTO `frienq_post` VALUES ('180ffaf8-3471-40cd-8739-5e4588d12126', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '1599 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'GGG', 8, 2, 0, b'0', '2020-03-29 10:30:04', '2020-03-29 10:30:04', '2020-03-29 10:30:04', NULL);
INSERT INTO `frienq_post` VALUES ('18e06c60-28e1-488c-a088-2fc7c993c8bd', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 2, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'hhh', 8, 1, 0, b'0', '2020-03-13 02:28:38', '2020-03-13 02:28:38', '2020-03-13 02:28:38', NULL);
INSERT INTO `frienq_post` VALUES ('19939143-1706-47c8-b196-c4dfdeb36ba0', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'merhaba  bu bir denemedir', 3, 2, 0, b'1', '2020-02-09 22:49:47', '2020-02-09 22:49:47', '2020-02-09 22:51:29', NULL);
INSERT INTO `frienq_post` VALUES ('1a6edd4e-d90b-4020-91e7-c81ad93b1220', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Denver, CO, USA', 39.7392, -104.99, 'dd', 0, 0, 0, b'1', '2020-02-16 16:39:38', '2020-02-16 16:39:38', '2020-02-16 16:41:31', NULL);
INSERT INTO `frienq_post` VALUES ('214f522a-5ca0-404e-a822-e84f8271c529', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 1, 1, 'Paris, France', 48.8566, 2.35222, 'Louis Vitton İlkbahar Kreasyonu. Hangi kombin sizce daha güzel? 🌸👠👗❤', 0, 2, 2, b'0', '2020-03-26 11:08:16', '2020-03-26 11:08:16', '2020-03-26 11:08:16', NULL);
INSERT INTO `frienq_post` VALUES ('2287bca7-2d3b-4c95-b292-83473d40d367', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Valencia, Spain', 39.4699, -0.376288, 'sdf', 8, 1, 0, b'1', '2020-02-09 22:55:11', '2020-02-09 22:55:11', '2020-02-12 01:18:36', NULL);
INSERT INTO `frienq_post` VALUES ('22ef7131-9531-4db9-9a0b-897202838450', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2645, 'jsjsjsjs', 9, 3, 0, b'0', '2020-03-13 01:54:16', '2020-03-13 01:54:16', '2020-03-13 01:54:16', NULL);
INSERT INTO `frienq_post` VALUES ('22fb9ec4-b757-43cf-825c-99ce2cf4df73', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 1, 1, 'New York, NY, USA', 40.7128, -74.006, 'Which red catpet dress is better?', 0, 2, 0, b'0', '2020-03-25 15:13:12', '2020-03-25 15:13:12', '2020-03-25 15:13:12', NULL);
INSERT INTO `frienq_post` VALUES ('247a7de1-68f5-4af8-9f27-e94b532b2369', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Andheri Railway Station East Northern Overpass, Railway Colony, Andheri East, Mumbai, Maharashtra, India', 19.1199, 72.8466, 'heneş', 9, 1, 0, b'1', '2020-02-22 19:59:18', '2020-02-22 19:59:18', '2020-02-23 23:03:31', NULL);
INSERT INTO `frienq_post` VALUES ('271b151b-7737-4ce0-9ae5-6e77b4841d20', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Sarıana, Marmaris Otogarı, Marmaris/Muğla, Turkey', 36.8647, 28.2765, 'merhaba', 0, 0, 0, b'1', '2020-02-22 02:12:00', '2020-02-22 02:12:00', '2020-02-22 02:12:18', NULL);
INSERT INTO `frienq_post` VALUES ('27f0ec61-2413-4a81-b3af-ce76d47fc5d7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Coan Park, Woodbine Avenue Southeast, Atlanta, GA, USA', 33.7523, -84.3363, 'dd', 9, 2, 0, b'1', '2020-02-16 16:30:36', '2020-02-16 16:30:36', '2020-02-22 02:09:04', NULL);
INSERT INTO `frienq_post` VALUES ('2944b91e-ae58-48bf-a85a-69606d7d79e5', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Rockefeller Center, Rockefeller Plaza, New York, NY, USA', 40.7587, -73.9787, 'jd', 0, 0, 0, b'1', '2020-02-15 15:50:02', '2020-02-15 15:50:02', '2020-02-15 15:50:08', NULL);
INSERT INTO `frienq_post` VALUES ('2a9372e9-cf9d-4c01-8952-15064fdb43c0', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:55', '2020-02-16 15:59:55', '2020-02-16 16:01:00', NULL);
INSERT INTO `frienq_post` VALUES ('2d962eaf-47cf-40d2-94a5-6909f2b81f4b', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'test location', 36.2589, 47.6566, 'test explanation', 4, 1, 0, b'1', '2020-02-01 01:00:52', '2020-02-01 01:00:52', '2020-02-08 23:29:57', NULL);
INSERT INTO `frienq_post` VALUES ('2dfef1b7-a39f-4da3-9537-9ad660a80f06', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Osmaniye, Marmara Forum Alışveriş Merkezi, Çobançeşme Koşuyolu Caddesi, Bakırköy/İstanbul, Turkey', 40.9971, 28.8861, 'deneme', 6, 2, 0, b'1', '2020-02-22 02:14:09', '2020-02-22 02:14:09', '2020-02-22 02:14:09', NULL);
INSERT INTO `frienq_post` VALUES ('2e2340ad-b98f-41a0-920c-0794ee6556d3', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Los Angeles, CA, USA', 34.0522, -118.244, 'djshsurb', 7.5, 2, 1, b'1', '2020-03-23 22:41:16', '2020-03-23 22:41:16', '2020-03-23 23:07:15', NULL);
INSERT INTO `frienq_post` VALUES ('2f028dfb-c6f4-4a70-a4b8-84d386267a52', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'g', 0, 0, 0, b'1', '2020-03-22 17:06:33', '2020-03-22 17:06:33', '2020-03-27 19:09:47', '2020-03-22 17:45:00');
INSERT INTO `frienq_post` VALUES ('3042d003-da4b-44a4-a129-e21151fbedcc', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Mermaid Beach QLD, Australia', -28.044, 153.437, 'test', 8, 1, 0, b'1', '2020-02-23 22:57:37', '2020-02-23 22:57:37', '2020-02-23 22:58:46', NULL);
INSERT INTO `frienq_post` VALUES ('308b2b40-8dd9-4398-9be4-eb25e09c953a', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Dallas, TX, USA', 32.7767, -96.797, 'deme	', 0, 2, 0, b'1', '2020-02-25 00:52:17', '2020-02-25 00:52:17', '2020-02-25 00:52:17', NULL);
INSERT INTO `frienq_post` VALUES ('33c2499d-8779-47f7-84ca-10fd3a8814e8', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Denver, CO, USA', 39.7392, -104.99, 'debe', 9, 1, 0, b'1', '2020-02-23 21:11:38', '2020-02-23 21:11:38', '2020-02-23 23:03:30', NULL);
INSERT INTO `frienq_post` VALUES ('34f24ce0-cb84-47c5-9948-0c83be892743', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'dasdasd', 10, 1, 0, b'1', '2020-03-01 22:46:46', '2020-03-01 22:46:46', '2020-03-01 22:46:46', NULL);
INSERT INTO `frienq_post` VALUES ('3517d1fb-9e9a-4b10-b28b-b29c430facb2', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Kraków, Poland', 50.0647, 19.945, 'u', 0, 0, 0, b'1', '2020-02-13 21:00:45', '2020-02-13 21:00:45', '2020-02-13 21:01:30', NULL);
INSERT INTO `frienq_post` VALUES ('35ba6e8f-e4b1-4121-8b60-9bd127d846ef', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 16:00:45', NULL);
INSERT INTO `frienq_post` VALUES ('37e9bede-9978-4bb1-9e35-852f3ee3a237', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'test', 8.33333, 3, 1, b'0', '2020-02-16 15:57:33', '2020-02-16 15:57:33', '2020-02-16 15:57:33', NULL);
INSERT INTO `frienq_post` VALUES ('3889d737-47d9-42a0-a8dc-5b7a424d2b7d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'test location', 36.2589, 47.6566, 'test explanation', 1, 1, 0, b'1', '2020-02-01 00:50:56', '2020-02-01 00:50:56', '2020-02-08 23:29:59', NULL);
INSERT INTO `frienq_post` VALUES ('3a9190ae-d8e2-4a32-bf4d-6b5b27ebdb49', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 0, 1, 'New York, NY, USA', 40.7128, -74.006, 'Which red carpet dress is better? Choose you like 😍', 0, 0, 0, b'1', '2020-03-25 14:50:46', '2020-03-25 14:50:46', '2020-03-25 14:57:07', NULL);
INSERT INTO `frienq_post` VALUES ('3bf34016-5359-4db1-ae17-d70fb641992f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Denver, CO, USA', 39.7392, -104.99, 'deneme	', 0, 0, 0, b'1', '2020-02-13 20:15:35', '2020-02-13 20:15:35', '2020-02-13 20:18:38', NULL);
INSERT INTO `frienq_post` VALUES ('3d29b427-6a12-4816-92bc-5d7f469dcbc1', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 'Singapore', 1.35208, 103.82, 'Rate this amazing recipe. Green Coconut With Tofu🥥😋', 8.33333, 3, 32, b'0', '2020-04-07 20:38:07', '2020-04-07 20:38:07', '2020-04-07 20:38:07', NULL);
INSERT INTO `frienq_post` VALUES ('3ddc101b-5b1f-402f-944a-c05a92ae9d36', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'Yusuf 2', 7, 1, 0, b'1', '2020-03-13 01:16:18', '2020-03-13 01:16:18', '2020-03-13 01:16:18', NULL);
INSERT INTO `frienq_post` VALUES ('40e0099a-c2cb-4613-8b24-6d2ca3640c9e', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'sadasd', 8, 1, 0, b'1', '2020-02-06 22:50:50', '2020-02-06 22:50:50', '2020-02-06 22:50:50', NULL);
INSERT INTO `frienq_post` VALUES ('41293e9d-572c-413e-91f7-f3795dbd38d5', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 10, 2, 0, b'1', '2020-02-16 15:59:55', '2020-02-16 15:59:55', '2020-02-16 15:59:55', NULL);
INSERT INTO `frienq_post` VALUES ('419964aa-e13c-4571-927f-6dbfbd7b9779', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'test', 5, 1, 0, b'1', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34', NULL);
INSERT INTO `frienq_post` VALUES ('41ab565e-f256-4983-89a8-80eb914c42a8', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Frankfurt, Germany', 50.1109, 8.68213, 'deneme	', 8, 1, 0, b'1', '2020-02-21 23:19:35', '2020-02-21 23:19:35', '2020-02-22 02:08:19', NULL);
INSERT INTO `frienq_post` VALUES ('44a66d43-cfb1-4fe2-829f-23026871f3ec', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'L A, CA, USA', 34.0522, -118.244, 'Follow @foody for more recipe', 0, 0, 0, b'1', '2020-03-23 22:38:39', '2020-03-23 22:38:39', '2020-03-23 22:39:28', NULL);
INSERT INTO `frienq_post` VALUES ('4518073e-42db-4473-9b18-c7fab09e10a1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'rrr', 8.66667, 3, 1, b'0', '2020-07-07 12:11:46', '2020-07-07 12:11:46', '2020-07-07 12:11:46', NULL);
INSERT INTO `frienq_post` VALUES ('457e5e47-5f3a-4405-95d9-f97cddbc43d5', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 2, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, 'la mı şu mu', 0, 3, 0, b'0', '2020-02-22 01:54:14', '2020-02-22 01:54:14', '2020-02-22 01:54:14', NULL);
INSERT INTO `frienq_post` VALUES ('47f8f00f-fc5f-473a-92d4-dd157c34f1bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'link: https://www.youtube.com/watch?v=USbtMCEcrX4', 0, 0, 0, b'1', '2020-03-24 16:31:27', '2020-03-24 16:31:27', '2020-03-27 19:09:38', '2020-03-24 18:04:00');
INSERT INTO `frienq_post` VALUES ('4890bf17-3752-426b-8d68-9caa96ed0a32', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test 35', 0, 2, 0, b'1', '2020-03-07 01:32:41', '2020-03-07 01:32:41', '2020-03-07 01:32:41', NULL);
INSERT INTO `frienq_post` VALUES ('4be2029b-cb30-4f83-97be-6010e64a3178', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Los Angeles, CA, USA', 34.0522, -118.244, 'Green Coconut Cury With Tofu', 0, 0, 0, b'1', '2020-03-24 05:55:14', '2020-03-24 05:55:14', '2020-03-24 16:22:40', NULL);
INSERT INTO `frienq_post` VALUES ('4c5e984c-28f1-4797-beb5-0f6bfeefdfba', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 16:00:36', NULL);
INSERT INTO `frienq_post` VALUES ('4eed59c6-42f0-4b2c-b49c-22e1255fa83c', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 0, 1, 0, b'1', '2020-03-07 00:16:31', '2020-03-07 00:16:31', '2020-03-07 00:16:31', NULL);
INSERT INTO `frienq_post` VALUES ('4f027a5e-cebc-403a-b150-d0568bcfa9b0', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'fvf vrfv', 0, 1, 0, b'1', '2020-03-01 22:41:13', '2020-03-01 22:41:13', '2020-03-01 22:53:03', NULL);
INSERT INTO `frienq_post` VALUES ('52d3da51-379d-459c-86a3-aa8dc8756d82', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'hone', 3, 2, 0, b'1', '2020-02-05 21:49:07', '2020-02-05 21:49:07', '2020-02-05 21:49:07', NULL);
INSERT INTO `frienq_post` VALUES ('5319d6e6-6a6f-4857-8f64-551bab7bff8b', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Dallas, TX, USA', 32.7767, -96.797, 'd', 9, 1, 0, b'1', '2020-02-25 00:30:28', '2020-02-25 00:30:28', '2020-02-25 00:31:29', NULL);
INSERT INTO `frienq_post` VALUES ('54afa2ab-968a-4932-a1f1-3fb0b8930141', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'video test', 0, 0, 0, b'1', '2020-02-25 01:36:31', '2020-02-25 01:36:31', '2020-02-25 01:45:41', NULL);
INSERT INTO `frienq_post` VALUES ('54e71e0e-570f-4679-ae7b-f88c443e1180', '111a6e26-815d-46aa-bd01-993d73f04a4f', 2, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'hh', 0, 3, 0, b'0', '2020-03-13 02:18:11', '2020-03-13 02:18:11', '2020-03-13 02:18:11', NULL);
INSERT INTO `frienq_post` VALUES ('55d0adb7-e272-428e-bec3-cac48aa150fe', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'najar dndnd', 4.66667, 3, 4, b'0', '2020-03-29 20:15:55', '2020-03-29 20:15:55', '2020-03-29 20:15:55', NULL);
INSERT INTO `frienq_post` VALUES ('591a6297-e1c8-445e-ad70-22756c5f3d83', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 0, 1, 'Paris, France', 48.8566, 2.35222, 'Louis Vitton İlkbahar Kreasyonu! Hangi kombin sizce daha güzel? 👠🌸👗❤', 0, 0, 0, b'1', '2020-03-26 11:07:09', '2020-03-26 11:07:09', '2020-03-26 11:07:18', NULL);
INSERT INTO `frienq_post` VALUES ('593f1662-88e1-42b6-9a0d-845c6382b3dc', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tesla Factory Showroom, Fremont Boulevard, Fremont, CA, USA', 37.4925, -121.945, 'test', 0, 0, 0, b'1', '2020-02-24 23:39:09', '2020-02-24 23:39:09', '2020-02-24 23:42:29', NULL);
INSERT INTO `frienq_post` VALUES ('5a16b400-0ed7-4316-90fb-669767a0ddcb', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'afhh', 8, 2, 0, b'1', '2020-02-02 01:05:19', '2020-02-02 01:05:19', '2020-02-08 23:29:53', NULL);
INSERT INTO `frienq_post` VALUES ('5a748890-49ae-4344-a1b1-d7b53b27e8d6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 2, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'dd', 9, 1, 0, b'1', '2020-03-16 22:46:11', '2020-03-16 22:46:11', '2020-03-16 22:46:11', NULL);
INSERT INTO `frienq_post` VALUES ('5ad94d80-0bca-4f6d-b6b9-729887129a09', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 0, 1, 0, b'1', '2020-03-07 00:12:59', '2020-03-07 00:12:59', '2020-03-07 00:16:06', NULL);
INSERT INTO `frienq_post` VALUES ('5b22d4ac-d4e4-421c-b937-f24f4b592905', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Hyderabad, Telangana, India', 17.385, 78.4867, 'ej', 10, 1, 0, b'1', '2020-02-15 15:51:01', '2020-02-15 15:51:01', '2020-02-15 15:51:09', NULL);
INSERT INTO `frienq_post` VALUES ('5bb9e383-e6f6-4500-8c31-0e6f2cb6cd71', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Menteşe/Muğla, Turkey', 37.2352, 28.4397, 'jsheu', 10, 1, 16, b'1', '2020-02-11 21:06:47', '2020-02-11 21:06:47', '2020-02-12 01:18:33', NULL);
INSERT INTO `frienq_post` VALUES ('5ec60526-185f-4f3d-8b2f-e57e6499258d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Testour, Tunisia', 36.5499, 9.44227, 'test', 0, 0, 0, b'1', '2020-02-24 23:38:28', '2020-02-24 23:38:28', '2020-02-24 23:42:31', NULL);
INSERT INTO `frienq_post` VALUES ('5f5b68f4-5948-49fa-8d70-329113388b52', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, 'video test', 6, 1, 0, b'1', '2020-02-13 00:36:26', '2020-02-13 00:36:26', '2020-02-13 20:42:48', NULL);
INSERT INTO `frienq_post` VALUES ('5f6f5c5c-6fdb-4c2e-95ef-abd6ffaa5d0b', 'efbb658a-c5bf-425d-95bc-04ce0aa94e11', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:14, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'rese', 0, 0, 0, b'0', '2020-07-09 08:30:46', '2020-07-09 08:30:46', '2020-07-09 08:30:46', NULL);
INSERT INTO `frienq_post` VALUES ('5ffe131f-7b22-4d36-a803-5628985e4ade', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '1599 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'December', 2, 1, 0, b'1', '2020-03-29 10:28:18', '2020-03-29 10:28:18', '2020-07-07 13:02:29', NULL);
INSERT INTO `frienq_post` VALUES ('6048555f-14c7-402b-abf9-ba5bf6203865', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Florianópolis, State of Santa Catarina, Brazil', -27.5986, -48.5187, 'fo', 10, 1, 0, b'1', '2020-02-13 20:48:25', '2020-02-13 20:48:25', '2020-02-13 21:00:27', NULL);
INSERT INTO `frienq_post` VALUES ('62929077-99f5-4a67-baa5-073e10a59e00', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'by the under', 0, 0, 0, b'1', '2020-03-22 19:28:13', '2020-03-22 19:28:13', '2020-03-27 19:09:45', '2020-04-01 06:05:00');
INSERT INTO `frienq_post` VALUES ('62a527d8-aa16-4e03-aaab-a366aec8fac8', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'hgh', 10, 1, 0, b'1', '2020-02-02 01:17:11', '2020-02-02 01:17:11', '2020-02-02 01:17:11', NULL);
INSERT INTO `frienq_post` VALUES ('62c27537-e2c8-45fd-8d04-4fc97d4c007d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'ggg', 0, 0, 0, b'1', '2020-03-07 01:27:54', '2020-03-07 01:27:54', '2020-03-07 01:28:02', NULL);
INSERT INTO `frienq_post` VALUES ('6422d032-6ad6-49b5-8c31-aa37de23a0af', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 1, '1 Stockton St, San Francisco, CA  94108, United States', 37.7858, -122.406, 'test', 0, 2, 0, b'0', '2020-06-03 19:13:53', '2020-06-03 19:13:53', '2020-06-03 19:13:53', NULL);
INSERT INTO `frienq_post` VALUES ('667c6b0b-93ef-4a42-8897-d9d65f96fb50', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2645, 'ff', 6, 1, 1, b'0', '2020-03-13 02:08:03', '2020-03-13 02:08:03', '2020-03-13 02:08:03', NULL);
INSERT INTO `frienq_post` VALUES ('6681b86f-23dd-4d49-a15c-7c559c4bfc58', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, '11', 11, 11, 'test\n', 7, 4, 1, b'0', '2020-02-06 00:54:57', '2020-02-06 00:54:57', '2020-02-06 00:54:57', NULL);
INSERT INTO `frienq_post` VALUES ('6aefd1aa-7be8-4810-a4f2-056072ec95dd', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'Ermaş Coantedeyiz !', 7, 2, 2, b'0', '2020-02-16 15:49:15', '2020-02-16 15:49:15', '2020-02-16 15:49:15', NULL);
INSERT INTO `frienq_post` VALUES ('6c2c5d3e-8930-492c-9d01-a1a4a878fda3', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2645, 'test', 10, 1, 0, b'0', '2020-03-13 01:55:12', '2020-03-13 01:55:12', '2020-03-13 01:55:12', NULL);
INSERT INTO `frienq_post` VALUES ('6c779056-8011-471a-bc8e-5f4158e41298', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, '', 0, 0, 0, b'1', '2020-02-20 23:18:22', '2020-02-20 23:18:22', '2020-02-20 23:20:34', NULL);
INSERT INTO `frienq_post` VALUES ('6ca066a9-4f1b-4883-b7ee-f7801127581d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Orhaniye, Şelale Alabalık, Marmaris/Muğla, Turkey', 36.731, 28.1486, 'güzel günlerden', 3, 1, 0, b'1', '2020-03-12 03:09:00', '2020-03-12 03:09:00', '2020-03-12 03:09:00', NULL);
INSERT INTO `frienq_post` VALUES ('70e6d4ca-a273-4fd8-97ac-830500bbcd86', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'behzat ç', 9, 3, 1, b'1', '2020-02-26 02:24:46', '2020-02-26 02:24:46', '2020-02-26 02:24:46', NULL);
INSERT INTO `frienq_post` VALUES ('714ea1c6-25b7-475f-8da9-ada0e32674a7', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Los Angeles, CA, USA', 34.0522, -118.244, 'Follow @foody for more recipes like this! 🥥Green Coconut Cury With Tofu😋', 9, 1, 1, b'1', '2020-03-24 16:23:57', '2020-03-24 16:23:57', '2020-03-24 18:27:29', NULL);
INSERT INTO `frienq_post` VALUES ('74818591-d707-46e4-b807-1f111b5541d9', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'New Orleans, LA, USA', 29.9511, -90.0715, 'ıe', 8.5, 2, 1, b'1', '2020-02-15 15:52:09', '2020-02-15 15:52:09', '2020-02-15 15:52:09', NULL);
INSERT INTO `frienq_post` VALUES ('77fa1015-83a9-4997-9e7c-a249fe863eac', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'test', 7.66667, 3, 0, b'0', '2020-06-03 21:36:23', '2020-06-03 21:36:23', '2020-06-03 21:36:23', NULL);
INSERT INTO `frienq_post` VALUES ('780ba0be-5443-4ae4-a86c-4b4b64c079eb', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 2, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'deneme 2', 0, 3, 0, b'1', '2020-02-23 22:39:21', '2020-02-23 22:39:21', '2020-03-12 03:23:43', NULL);
INSERT INTO `frienq_post` VALUES ('7962a92e-db07-4458-8f5b-9abb67f0102f', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Armutalan, DBHSOFT SGO MATRIX SATIŞ GÜCÜ OTOMASYONU, Marmaris/Muğla, Turkey', 36.8566, 28.2546, 'Sabah kahvaltısı', 8.25, 4, 3, b'0', '2020-02-26 01:09:08', '2020-02-26 01:09:08', '2020-02-26 01:09:08', NULL);
INSERT INTO `frienq_post` VALUES ('798035b6-924b-4e0f-8f75-90554a188e27', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Cremona, Province of Cremona, Italy', 45.1332, 10.0227, 'ccs', 0, 2, 0, b'1', '2020-02-23 21:12:28', '2020-02-23 21:12:28', '2020-02-23 23:03:29', NULL);
INSERT INTO `frienq_post` VALUES ('7b3c2e7c-a54a-4178-b7c1-abcda21701d0', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'Toplantı', 9.75, 4, 1, b'0', '2020-02-16 18:30:15', '2020-02-16 18:30:15', '2020-02-16 18:30:15', NULL);
INSERT INTO `frienq_post` VALUES ('7b479a55-0618-4cdc-9783-cd7a130e97fb', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'test', 9, 1, 0, b'1', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34', NULL);
INSERT INTO `frienq_post` VALUES ('7c1025f3-8f96-4b77-b246-957c987b5eb5', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'fhh get', 0, 0, 0, b'1', '2020-03-22 00:32:44', '2020-03-22 00:32:44', '2020-03-22 00:32:44', '2020-03-21 23:59:00');
INSERT INTO `frienq_post` VALUES ('7ced889f-eccc-4b8a-8049-eb96e8d967aa', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'ghj', 9.5, 2, 0, b'1', '2020-02-06 23:06:44', '2020-02-06 23:06:44', '2020-02-08 23:30:53', NULL);
INSERT INTO `frienq_post` VALUES ('7d56bf9d-b29b-41ef-bb71-6df6e10fe129', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'ASas', 9, 2, 0, b'1', '2020-02-06 22:58:45', '2020-02-06 22:58:45', '2020-02-08 23:30:42', NULL);
INSERT INTO `frienq_post` VALUES ('7d93a2a6-bd85-4bbc-9c66-79e00221582d', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 1, 1, 'New York, NY, USA', 40.7128, -74.006, 'Which Red Carpet dress is better? Choose you which you like 🤩', 0, 1, 0, b'1', '2020-03-25 12:49:59', '2020-03-25 12:49:59', '2020-03-25 14:48:58', '2020-05-04 18:22:00');
INSERT INTO `frienq_post` VALUES ('7d9e57b5-1e58-4117-818a-a28b25febced', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'Denemee', 3, 2, 0, b'0', '2020-02-27 23:45:58', '2020-02-27 23:45:58', '2020-02-27 23:45:58', NULL);
INSERT INTO `frienq_post` VALUES ('7e8b4fc0-cdec-4420-8764-a00202961191', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'ncjcj', 7, 1, 0, b'0', '2020-03-29 20:43:18', '2020-03-29 20:43:18', '2020-03-29 20:43:18', NULL);
INSERT INTO `frienq_post` VALUES ('7f80caff-cbd8-4cdd-9d23-02de599491f6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Dubai - United Arab Emirates', 25.2048, 55.2708, 'deneöe', 0, 0, 0, b'1', '2020-02-13 20:32:29', '2020-02-13 20:32:29', '2020-02-13 20:42:46', NULL);
INSERT INTO `frienq_post` VALUES ('80089239-60e0-40f2-857b-e90c48cf7da6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'fzs', 0, 0, 0, b'1', '2020-03-07 01:28:56', '2020-03-07 01:28:56', '2020-03-07 01:29:05', NULL);
INSERT INTO `frienq_post` VALUES ('8036bb81-66c6-4932-b6b3-d0f34995fed6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '47 Chrystie Street, New York, NY, USA', 40.7162, -73.995, 'ff', 6.5, 2, 0, b'1', '2020-02-14 21:00:05', '2020-02-14 21:00:05', '2020-02-14 21:00:05', NULL);
INSERT INTO `frienq_post` VALUES ('81325651-543d-4cac-9cd1-d8c432f586b1', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 0, 2, 0, b'1', '2020-03-08 22:30:46', '2020-03-08 22:30:46', '2020-03-08 22:30:46', NULL);
INSERT INTO `frienq_post` VALUES ('813f206e-5c55-45b5-b88f-595e3806563f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Fort Lauderdale, FL, USA', 26.1224, -80.1373, 'test	', 0, 0, 0, b'1', '2020-02-24 23:41:25', '2020-02-24 23:41:25', '2020-02-24 23:42:28', NULL);
INSERT INTO `frienq_post` VALUES ('8205e70d-cd7a-4fc1-a446-6409dc11b86c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'you should create watchers @pyrumar ', 5, 1, 0, b'1', '2020-03-24 17:15:50', '2020-03-24 17:15:50', '2020-03-27 19:09:37', '2020-04-05 19:48:00');
INSERT INTO `frienq_post` VALUES ('82a3c9dd-a791-4124-8b92-6c9578000567', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Denver, CO, USA', 39.7392, -104.99, 'test', 9, 1, 0, b'1', '2020-02-07 00:14:50', '2020-02-07 00:14:50', '2020-02-07 00:14:50', NULL);
INSERT INTO `frienq_post` VALUES ('8440747f-0f7f-44eb-865d-1eb9773a5411', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Çamdibi Mh, 264. Sk. No:15, 48700 Marmaris/Muğla, Türkiye', 36.8638, 28.2693, 'testj', 0, 3, 0, b'1', '2020-03-12 03:10:31', '2020-03-12 03:10:31', '2020-03-12 03:10:31', NULL);
INSERT INTO `frienq_post` VALUES ('863bf4aa-5431-4f66-bb1f-28998c0ff04e', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Hyderabad, Telangana, India', 17.385, 78.4867, 'y', 9, 1, 0, b'1', '2020-02-13 21:00:16', '2020-02-13 21:00:16', '2020-02-13 21:01:28', NULL);
INSERT INTO `frienq_post` VALUES ('87415b23-0dc0-4a6f-9d71-bbf84ae16cbf', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Münster, Germany', 51.9607, 7.62613, 'grg ergf', 10, 1, 0, b'1', '2020-02-09 22:52:03', '2020-02-09 22:52:03', '2020-02-12 01:18:37', NULL);
INSERT INTO `frienq_post` VALUES ('8893ce22-f6d9-4355-867e-0a13dcdf9b5f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'test location', 36.2589, 47.6566, 'test explanation', 0, 0, 0, b'1', '2020-02-21 23:34:34', '2020-02-21 23:34:34', '2020-02-21 23:43:34', NULL);
INSERT INTO `frienq_post` VALUES ('8b46008a-a6d7-4066-80cd-0a3815408960', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Santiago, Chile', -33.4489, -70.6693, 'ree', 0, 0, 0, b'1', '2020-02-24 23:42:06', '2020-02-24 23:42:06', '2020-02-25 00:31:30', NULL);
INSERT INTO `frienq_post` VALUES ('8d0f33ac-32c8-4cc4-9bd5-cc7fc2f33c1c', '111a6e26-815d-46aa-bd01-993d73f04a4f', 2, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'y', 0, 2, 0, b'0', '2020-03-13 02:15:40', '2020-03-13 02:15:40', '2020-03-13 02:15:40', NULL);
INSERT INTO `frienq_post` VALUES ('8d1f2345-c4bf-480c-80a2-de75f26497d1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'jj', 5, 1, 0, b'1', '2020-02-06 23:52:21', '2020-02-06 23:52:21', '2020-02-06 23:52:21', NULL);
INSERT INTO `frienq_post` VALUES ('8d28a6e0-07a8-4810-bfee-b702718c72c6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'D/permissions_handler(31674): No android specific permissions needed for: $permission\nI/flutter (31674): CacheManager: Failed to download file from http://192.168.8.174:3000/Post/Media?u=178b5043-0be8-4dbf-8279-fb74ca676047&p=c44912a4-0eb1-4b85-9e5f-94652916c539&f=1f414317-d85e-4ce0-b9db-5d4dc63b60bb.jpg with error:', 0, 0, 0, b'1', '2020-03-24 06:18:33', '2020-03-24 06:18:33', '2020-03-27 19:09:21', '2020-03-24 10:55:00');
INSERT INTO `frienq_post` VALUES ('8d7196fb-f892-48e0-b034-e7741aafe362', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Sarıana, Marmaris Otogarı, Marmaris/Muğla, Turkey', 36.8647, 28.2765, 'merhaba', 0, 0, 0, b'1', '2020-02-22 02:12:11', '2020-02-22 02:12:11', '2020-02-22 02:12:21', NULL);
INSERT INTO `frienq_post` VALUES ('8ddef3a0-e69a-48f2-8999-6641cac7d75a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 1, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, 'developed', 0, 4, 0, b'0', '2020-02-23 22:36:51', '2020-02-23 22:36:51', '2020-02-23 22:36:51', NULL);
INSERT INTO `frienq_post` VALUES ('8ee3297d-7012-462c-be0d-97b0ae7b0223', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'resr', 0, 0, 0, b'1', '2020-03-21 23:12:02', '2020-03-21 23:12:02', '2020-03-21 23:12:02', '2020-03-21 20:48:00');
INSERT INTO `frienq_post` VALUES ('90ed90d3-f0dd-4944-838b-5d0d5bcbd4ef', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.\n\nNeden Kullanırız?\nYinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.\n\n', 5, 1, 0, b'1', '2020-03-24 06:22:37', '2020-03-24 06:22:37', '2020-03-27 19:09:18', '2020-03-24 07:55:00');
INSERT INTO `frienq_post` VALUES ('946243f2-71bc-472f-ab9a-3ed9246ce5ee', '111a6e26-815d-46aa-bd01-993d73f04a4f', 2, 2, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'ii', 0, 2, 0, b'0', '2020-03-13 02:18:34', '2020-03-13 02:18:34', '2020-03-13 02:18:34', NULL);
INSERT INTO `frienq_post` VALUES ('959292e3-fcd0-4a75-8ed5-0bf440b47ecf', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 0, 0, 0, b'1', '2020-03-23 21:38:39', '2020-03-23 21:38:39', '2020-03-23 22:31:47', '2020-03-30 22:11:00');
INSERT INTO `frienq_post` VALUES ('9680218b-b57e-4a8d-bccb-27f6f38d343f', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Central Park, New York, NY, USA', 40.7829, -73.9654, 'l', 0, 0, 0, b'1', '2020-02-23 21:15:40', '2020-02-23 21:15:40', '2020-02-23 21:15:44', NULL);
INSERT INTO `frienq_post` VALUES ('9719d5e6-a797-44ba-a804-fef1bbe7b1a4', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 0, 'Burj Khalifa - Sheikh Mohammed bin Rashid Boulevard - Dubai - United Arab Emirates', 25.1972, 55.2744, 'jaısu', 0, 0, 0, b'1', '2020-04-10 16:43:31', '2020-04-10 16:43:31', '2020-04-10 16:44:07', NULL);
INSERT INTO `frienq_post` VALUES ('983a23a3-6e80-4825-8665-02df1697b438', '6782d740-3551-4396-9cec-e1f023e88ecc', 2, 1, 'Kolkata, West Bengal, India', 22.5726, 88.3639, 'mzkdjd', 0, 0, 0, b'1', '2020-03-26 11:13:29', '2020-03-26 11:13:29', '2020-03-26 11:13:33', NULL);
INSERT INTO `frienq_post` VALUES ('99bf928d-cdb9-442b-a732-dd4d33140b4e', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 16:01:04', NULL);
INSERT INTO `frienq_post` VALUES ('9a41ceb6-a9e2-488c-b2a2-ca6d8a82b6ce', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Restaurant Near Me Bang Phra, Si Racha District, Chon Buri, Thailand', 13.214, 101.004, 'test	', 10, 1, 0, b'1', '2020-02-25 00:51:47', '2020-02-25 00:51:47', '2020-02-25 01:45:44', NULL);
INSERT INTO `frienq_post` VALUES ('9b7181cc-16bd-4050-83c2-35503bb295be', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'deneme 2	', 0, 3, 0, b'1', '2020-02-21 21:27:12', '2020-02-21 21:27:12', '2020-02-22 02:08:21', NULL);
INSERT INTO `frienq_post` VALUES ('9b7bcb64-8ba9-4cf7-94b5-03acf19bd09b', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'Lorem Ipsum Nedir?\nLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.\n\nNeden Kullanırız?\nYinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.\n\n\nNereden Gelir?\nYaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan \"de Finibus Bonorum et Malorum\" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan \"Lorem ipsum dolor sit amet\" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.', 0, 0, 0, b'1', '2020-03-24 06:24:23', '2020-03-24 06:24:23', '2020-03-27 19:09:32', '2020-03-24 11:57:00');
INSERT INTO `frienq_post` VALUES ('9bb59f47-9bf2-45ac-b1f4-26c7c29bf009', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'the', 0, 0, 0, b'1', '2020-03-22 19:17:54', '2020-03-22 19:17:54', '2020-03-27 19:09:46', '2020-03-25 01:53:00');
INSERT INTO `frienq_post` VALUES ('9c3dc0f3-3716-4337-819d-cd66cc93742a', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Chennai, Tamil Nadu, India', 13.0827, 80.2707, 'cv', 7, 2, 0, b'1', '2020-02-09 01:19:08', '2020-02-09 01:19:08', '2020-02-09 22:51:39', NULL);
INSERT INTO `frienq_post` VALUES ('9fcde38e-92be-4a1b-901c-7b14e55cef83', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Oxford Street, London, UK', 51.5159, -0.136103, '', 0, 0, 0, b'1', '2020-02-20 22:27:55', '2020-02-20 22:27:55', '2020-02-20 22:46:26', NULL);
INSERT INTO `frienq_post` VALUES ('a0b2cfb8-c65f-49c6-bb76-5b9a8ed15862', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 8, 2, 0, b'1', '2020-03-07 01:31:05', '2020-03-07 01:31:05', '2020-03-07 01:31:05', NULL);
INSERT INTO `frienq_post` VALUES ('a12420bc-51f7-4034-9206-914ae2088dfb', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'get our', 0, 0, 0, b'1', '2020-03-23 17:50:06', '2020-03-23 17:50:06', '2020-03-27 19:09:26', '2020-04-02 18:22:00');
INSERT INTO `frienq_post` VALUES ('a200fcd4-6752-4571-a343-f0d0f78e5dc1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Rotterdam, Netherlands', 51.9244, 4.47773, 'rger', 0, 0, 0, b'1', '2020-02-12 01:18:13', '2020-02-12 01:18:13', '2020-02-12 01:18:31', NULL);
INSERT INTO `frienq_post` VALUES ('a240a3f3-9f74-44e5-aa15-1a6ecaf7562b', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Central Park, New York, NY, USA', 40.7829, -73.9654, 'l', 0, 0, 0, b'1', '2020-02-23 21:14:47', '2020-02-23 21:14:47', '2020-02-23 21:15:47', NULL);
INSERT INTO `frienq_post` VALUES ('a246b596-016e-4d45-adc9-de351b9d6cf2', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Central Park, New York, NY, USA', 40.7829, -73.9654, 'l', 0, 0, 0, b'1', '2020-02-23 21:15:03', '2020-02-23 21:15:03', '2020-02-23 21:15:46', NULL);
INSERT INTO `frienq_post` VALUES ('a3fc7cb3-e3df-45e0-ae85-be6153778db7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Granada, Spain', 37.1773, -3.59856, 'vuhc cfj ', 4, 1, 0, b'1', '2020-02-08 22:10:30', '2020-02-08 22:10:30', '2020-02-08 22:10:30', NULL);
INSERT INTO `frienq_post` VALUES ('a5002b4c-3f56-42eb-bfca-9bdb8dbc82e1', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:12, 48700 Marmaris/Muğla, Türkiye', 36.8638, 28.27, 'snjsnns', 6.5, 2, 2, b'0', '2020-03-29 20:22:25', '2020-03-29 20:22:25', '2020-03-29 20:22:25', NULL);
INSERT INTO `frienq_post` VALUES ('a6da7ac5-a815-4f4c-a82c-1b01965fd2be', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Erfurt, Germany', 50.9848, 11.0299, 'rate', 4.66667, 3, 0, b'0', '2020-02-23 22:42:54', '2020-02-23 22:42:54', '2020-02-23 22:42:54', NULL);
INSERT INTO `frienq_post` VALUES ('a80c7f85-41e2-4643-818b-1cc43ffff71d', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'djdjd', 6.66667, 3, 1, b'0', '2020-03-29 21:00:18', '2020-03-29 21:00:18', '2020-03-29 21:00:18', NULL);
INSERT INTO `frienq_post` VALUES ('a8556fcc-9bb7-4bbe-8577-0faa30fbd5a2', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Seattle, WA, USA', 47.6062, -122.332, 'sd', 10, 1, 0, b'1', '2020-02-25 01:30:19', '2020-02-25 01:30:19', '2020-02-25 01:34:51', NULL);
INSERT INTO `frienq_post` VALUES ('a91a17aa-37a1-4992-b078-8344bec849e7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'fc', 8, 2, 0, b'1', '2020-02-06 23:21:57', '2020-02-06 23:21:57', '2020-02-06 23:21:57', NULL);
INSERT INTO `frienq_post` VALUES ('a94adb5e-6cea-45ae-a618-573ced9b220f', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 1, '1599 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'gv b', 0, 1, 0, b'0', '2020-03-29 10:19:23', '2020-03-29 10:19:23', '2020-03-29 10:19:23', NULL);
INSERT INTO `frienq_post` VALUES ('aaba3901-38b4-4330-9baf-536fdf30a921', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Grand Canyon National Park, Arizona, USA', 36.107, -112.113, 'or years by given', 6, 1, 0, b'1', '2020-02-26 23:27:01', '2020-02-26 23:27:01', '2020-02-27 01:15:55', NULL);
INSERT INTO `frienq_post` VALUES ('ab98fb55-1c87-4f8b-a52b-9bb48fe2a6a8', '535634d4-1383-4ab6-92d9-637226556da1', 0, 0, 'Budapest, Hungary', 47.4979, 19.0402, 'Moda', 10, 1, 0, b'1', '2020-04-06 13:51:14', '2020-04-06 13:51:14', '2020-04-06 13:51:59', NULL);
INSERT INTO `frienq_post` VALUES ('ac2597ce-4719-4a78-886d-b959041e9e45', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Raffles Avenue, Singapore Flyer, Singapore', 1.2893, 103.863, 'Follow @foody for more recipes like this! 🥥Green Coconut Cury With Tofu 😋 ', 8.5, 4, 3, b'1', '2020-03-24 18:29:34', '2020-03-24 18:29:34', '2020-04-04 12:21:12', NULL);
INSERT INTO `frienq_post` VALUES ('ada557cf-0bad-43ca-8ed8-9aaee88d1165', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Frankfurt, Germany', 50.1109, 8.68213, 'en e', 0, 0, 0, b'1', '2020-02-13 20:43:42', '2020-02-13 20:43:42', '2020-02-13 20:48:45', NULL);
INSERT INTO `frienq_post` VALUES ('addb159b-33e6-46a0-874d-5c84d31854f2', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Yorkdale Shopping Centre, Dufferin Street, North York, ON, Canada', 43.7254, -79.4521, 'ı', 9, 2, 1, b'0', '2020-02-15 15:54:44', '2020-02-15 15:54:44', '2020-02-15 15:54:44', NULL);
INSERT INTO `frienq_post` VALUES ('ae51b00a-fc82-463a-ac79-f1fe2dbbc8d4', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Çıldır, Hasan Işık Cd. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8524, 28.264, 'yaz yağmuru', 0, 0, 0, b'1', '2020-07-08 23:00:21', '2020-07-08 23:00:21', '2020-07-08 23:00:30', NULL);
INSERT INTO `frienq_post` VALUES ('afb53026-6474-452e-814b-3e3454973665', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'afhh', 10, 1, 0, b'1', '2020-02-02 01:00:50', '2020-02-02 01:00:50', '2020-02-08 23:29:55', NULL);
INSERT INTO `frienq_post` VALUES ('b0663df1-5507-44ca-b92b-d7d0e091442c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Unicenter Shopping, Paraná, Martínez, Buenos Aires Province, Argentina', -34.5076, -58.5252, 'u', 0, 0, 0, b'1', '2020-02-13 00:20:31', '2020-02-13 00:20:31', '2020-02-13 20:42:51', NULL);
INSERT INTO `frienq_post` VALUES ('b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 2, 0, 'Çıldır, Hasan Işık Cd. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8524, 28.264, 'test', 0, 2, 8, b'0', '2020-06-23 18:58:23', '2020-06-23 18:58:23', '2020-06-23 18:58:23', NULL);
INSERT INTO `frienq_post` VALUES ('b3ae6d41-2d89-4775-888e-f2a59cfe9ef1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Mentes, Güvendik, Urla/İzmir, Turkey', 38.4167, 26.7333, 'hshsh', 1, 1, 0, b'1', '2020-02-10 17:11:20', '2020-02-10 17:11:20', '2020-02-12 01:18:34', NULL);
INSERT INTO `frienq_post` VALUES ('b425614a-77f3-4d3a-b433-cb8494a558bf', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'y5ey5', 10, 1, 0, b'1', '2020-02-01 02:36:27', '2020-02-01 02:36:27', '2020-02-08 23:29:56', NULL);
INSERT INTO `frienq_post` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Yenibağlar, Denemeler Sokak, Tepebaşı/Eskişehir, Turkey', 39.7863, 30.5121, 'test deneme 1 2', 8, 5, 1, b'0', '2020-02-26 01:20:53', '2020-02-26 01:20:53', '2020-02-26 01:20:53', NULL);
INSERT INTO `frienq_post` VALUES ('b48ee58f-fe03-4446-a518-f876a2062e37', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Hyderabad, Telangana, India', 17.385, 78.4867, 'ej', 0, 0, 0, b'1', '2020-02-15 15:51:01', '2020-02-15 15:51:01', '2020-02-15 15:51:14', NULL);
INSERT INTO `frienq_post` VALUES ('b5504f3f-cf70-4dcd-9e6c-fcc51bcf29ce', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Frankfurt, Germany', 50.1109, 8.68213, 'nm', 0, 0, 0, b'1', '2020-02-13 20:14:09', '2020-02-13 20:14:09', '2020-02-13 20:18:40', NULL);
INSERT INTO `frienq_post` VALUES ('b67169f2-7cd4-44cd-b3fa-fe37cb757f27', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Çamdibi Mh, 264. Sk. No:15, 48700 Marmaris/Muğla, Türkiye', 36.8638, 28.2693, 'deneme', 0, 3, 0, b'1', '2020-03-06 01:43:18', '2020-03-06 01:43:18', '2020-03-06 01:43:18', NULL);
INSERT INTO `frienq_post` VALUES ('b7067cbc-3e4d-4560-8f42-7311bc40af8d', '111a6e26-815d-46aa-bd01-993d73f04a4f', 2, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2645, 'Hangi takım lisin ', 0, 3, 0, b'0', '2020-03-13 01:34:58', '2020-03-13 01:34:58', '2020-03-13 01:34:58', NULL);
INSERT INTO `frienq_post` VALUES ('b7149ce5-2ae6-46ff-8106-9abb8d62c57d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:56', '2020-02-16 15:59:56', '2020-02-16 16:00:31', NULL);
INSERT INTO `frienq_post` VALUES ('b7ee09d7-59c2-4148-bdf0-7e46f751810d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'by years', 0, 0, 0, b'1', '2020-03-22 19:52:38', '2020-03-22 19:52:38', '2020-03-27 19:09:40', '2020-03-27 17:25:00');
INSERT INTO `frienq_post` VALUES ('b9ad6dc7-f981-4729-b228-f87a85022309', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Andheri Railway Station East Northern Overpass, Railway Colony, Andheri East, Mumbai, Maharashtra, India', 19.1199, 72.8466, 'heneş', 9, 3, 1, b'1', '2020-02-22 19:59:09', '2020-02-22 19:59:09', '2020-02-22 19:59:09', NULL);
INSERT INTO `frienq_post` VALUES ('bb0fc156-0dea-4bfb-8146-934a861e9c86', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, '23:59', 4.5, 2, 0, b'1', '2020-02-04 23:58:03', '2020-02-04 23:58:03', '2020-02-09 01:18:42', NULL);
INSERT INTO `frienq_post` VALUES ('bbb8c6bc-2f36-4a8d-8d92-b8078aacc956', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 0, 0, '11', 11, 11, 'Kdkdk', 5, 3, 3, b'0', '2020-02-06 23:32:47', '2020-02-06 23:32:47', '2020-02-06 23:32:47', NULL);
INSERT INTO `frienq_post` VALUES ('beca6b6c-967e-44c2-84aa-c41251a84436', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Guadalajara, Jalisco, Mexico', 20.6597, -103.35, '', 0, 0, 0, b'1', '2020-02-20 22:21:56', '2020-02-20 22:21:56', '2020-02-20 22:56:20', NULL);
INSERT INTO `frienq_post` VALUES ('bfb4fd17-a0e7-4281-b821-d85df8051527', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2644, 'fd', 8.5, 2, 0, b'0', '2020-03-13 02:06:21', '2020-03-13 02:06:21', '2020-03-13 02:06:21', NULL);
INSERT INTO `frienq_post` VALUES ('c09baef1-e880-4536-944f-966b739ebf28', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'afhh', 10, 1, 0, b'1', '2020-02-02 01:04:17', '2020-02-02 01:04:17', '2020-02-08 23:29:54', NULL);
INSERT INTO `frienq_post` VALUES ('c2ab56e6-5420-48e4-a862-674f0fc3ee8f', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, Tuğcuoğlu Sk. No:8, 48704 Marmaris/Muğla, Türkiye', 36.8694, 28.266, 'vncn', 7, 1, 1, b'0', '2020-03-29 20:36:55', '2020-03-29 20:36:55', '2020-03-29 20:36:55', NULL);
INSERT INTO `frienq_post` VALUES ('c2c878b4-f923-4ed5-b23a-24ceac9607c9', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test', 0, 0, 0, b'1', '2020-03-06 21:48:03', '2020-03-06 21:48:03', '2020-03-07 00:12:33', NULL);
INSERT INTO `frienq_post` VALUES ('c2e7559d-b8b2-4653-9ba5-0a1d6ec1ba10', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, '', 0, 0, 0, b'1', '2020-02-20 22:58:05', '2020-02-20 22:58:05', '2020-02-20 23:20:35', NULL);
INSERT INTO `frienq_post` VALUES ('c44912a4-0eb1-4b85-9e5f-94652916c539', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'by years ', 0, 0, 0, b'1', '2020-03-23 17:52:22', '2020-03-23 17:52:22', '2020-03-27 19:09:25', '2020-04-02 18:25:00');
INSERT INTO `frienq_post` VALUES ('c4eafaf1-71cc-4750-8130-290aa5ff4e82', '6782d740-3551-4396-9cec-e1f023e88ecc', 1, 1, 'Barcelona, Spain', 41.3851, 2.1734, 'Cristiano Ronaldo vs Lionel Messi. Who is the best? Chose your side ⚽️', 0, 3, 0, b'1', '2020-03-25 07:46:27', '2020-03-25 07:46:27', '2020-04-04 16:56:40', NULL);
INSERT INTO `frienq_post` VALUES ('c53adf6b-45fd-4680-93ee-e341eabbe890', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'ABC Verdun, Beirut, Lebanon', 33.8843, 35.4846, 'test', 6.5, 4, 1, b'0', '2020-02-26 01:14:34', '2020-02-26 01:14:34', '2020-02-26 01:14:34', NULL);
INSERT INTO `frienq_post` VALUES ('c55dc1a9-1889-40c1-84e1-e3a757d28bc4', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'hhh', 10, 1, 0, b'1', '2020-02-06 22:28:06', '2020-02-06 22:28:06', '2020-02-06 22:28:06', NULL);
INSERT INTO `frienq_post` VALUES ('c881be71-d182-405e-b39d-53069019975b', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'test 3', 0, 1, 0, b'1', '2020-03-07 01:31:28', '2020-03-07 01:31:28', '2020-03-07 01:31:28', NULL);
INSERT INTO `frienq_post` VALUES ('c8f78d9e-79b8-4ba8-b5ca-71d126530237', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'get our', 0, 0, 0, b'1', '2020-03-23 20:02:48', '2020-03-23 20:02:48', '2020-03-27 19:09:23', '2020-03-24 20:35:00');
INSERT INTO `frienq_post` VALUES ('c9311198-12ff-4549-9743-5baf493215e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Oxford Street, London, UK', 51.5159, -0.136103, '', 0, 0, 0, b'1', '2020-02-20 22:28:01', '2020-02-20 22:28:01', '2020-02-20 23:03:07', NULL);
INSERT INTO `frienq_post` VALUES ('cc45f811-1820-4946-87ef-87cfdc728069', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'get', 7, 1, 0, b'1', '2020-03-22 19:58:13', '2020-03-22 19:58:13', '2020-03-27 19:09:28', '2020-03-22 17:36:00');
INSERT INTO `frienq_post` VALUES ('cc481f76-58bd-4305-a105-64e012f679e3', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'İstanbul, Turkey', 41.0082, 28.9784, 'h', 0, 0, 0, b'1', '2020-02-13 20:31:34', '2020-02-13 20:31:34', '2020-02-13 20:42:47', NULL);
INSERT INTO `frienq_post` VALUES ('ccf99d03-b736-400e-9e77-136d42bfd26f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'GH', 0, 0, 0, b'1', '2020-03-22 00:40:40', '2020-03-22 00:40:40', '2020-03-22 00:40:40', NULL);
INSERT INTO `frienq_post` VALUES ('cd28682b-8633-4845-9780-c3deda87175d', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'sdasdas', 0, 1, 0, b'1', '2020-03-07 01:07:07', '2020-03-07 01:07:07', '2020-03-08 22:40:55', NULL);
INSERT INTO `frienq_post` VALUES ('ce8777ee-f888-440e-9716-95d7422c7ae7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Yosemite National Park, California, USA', 37.8651, -119.538, 'hhh', 0, 0, 0, b'1', '2020-02-13 00:07:09', '2020-02-13 00:07:09', '2020-02-13 20:42:54', NULL);
INSERT INTO `frienq_post` VALUES ('ce998247-8d06-4383-bebe-1ad28e7dda80', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'test', 8, 2, 0, b'1', '2020-02-26 01:11:47', '2020-02-26 01:11:47', '2020-02-26 02:22:55', NULL);
INSERT INTO `frienq_post` VALUES ('d015010e-b7e7-44e2-ab43-69ae7d760fee', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 2, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'Bu uygulama tutar mı?', 0, 3, 1, b'1', '2020-02-27 00:10:46', '2020-02-27 00:10:46', '2020-03-01 22:05:26', NULL);
INSERT INTO `frienq_post` VALUES ('d02492ee-f615-4d69-82b9-1176845a2a69', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 0, 1, 'İstanbul, Turkey', 41.0082, 28.9784, 'İlkbahar ayakkabı trendlerinde espadril birçok ünlü markanın defilelerinde yerini aldı bile. Siz bu modaya kaç puan verirsiniz?', 9, 3, 0, b'0', '2020-03-26 10:47:41', '2020-03-26 10:47:41', '2020-03-26 10:47:41', NULL);
INSERT INTO `frienq_post` VALUES ('d050aca0-c423-42ae-8017-1971c4278d7d', '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 0, 0, 'Denver, CO, USA', 39.7392, -104.99, 'deneme	', 7, 2, 0, b'0', '2020-02-16 18:29:28', '2020-02-16 18:29:28', '2020-02-16 18:29:28', NULL);
INSERT INTO `frienq_post` VALUES ('d05eb94c-aa09-4069-9dfd-6e1e72d49fab', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'hangisi kazanır? ', 0, 3, 0, b'1', '2020-02-22 02:02:54', '2020-02-22 02:02:54', '2020-02-22 02:02:54', NULL);
INSERT INTO `frienq_post` VALUES ('d0f2783a-67bb-4293-bf16-1ca8bfbffa95', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 0, 1, 'Paris, France', 48.8566, 2.35222, 'nsjsj', 0, 0, 0, b'1', '2020-04-08 12:39:06', '2020-04-08 12:39:06', '2020-04-08 12:39:15', NULL);
INSERT INTO `frienq_post` VALUES ('d1200964-c1c7-429a-9bbc-182aa3d524ca', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Beldibi, 41. Sk. No:2, 48704 Marmaris/Muğla, Türkiye', 36.8721, 28.2644, 't', 9, 1, 0, b'0', '2020-03-13 02:11:48', '2020-03-13 02:11:48', '2020-03-13 02:11:48', NULL);
INSERT INTO `frienq_post` VALUES ('d1e3f6d6-7250-4f68-b726-2efe41a3c79b', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 2, 0, 'Çıldır, Hasan Işık Cd. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8524, 28.264, 'nrw', 0, 2, 2, b'0', '2020-06-23 19:23:57', '2020-06-23 19:23:57', '2020-06-23 19:23:57', NULL);
INSERT INTO `frienq_post` VALUES ('d3c25b94-4e0a-4522-99f3-89fdd6160a66', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'ggg', 4.5, 2, 0, b'1', '2020-02-05 21:48:15', '2020-02-05 21:48:15', '2020-02-05 21:48:15', NULL);
INSERT INTO `frienq_post` VALUES ('d40af02a-ae74-43c1-9cb4-f3a57fa87d56', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Paşapınarı, Coante quartz surfacess, Menteşe/Muğla, Turkey', 37.2522, 28.2286, 'jdje', 0, 0, 0, b'1', '2020-02-16 15:59:57', '2020-02-16 15:59:57', '2020-02-16 16:00:33', NULL);
INSERT INTO `frienq_post` VALUES ('d4794f30-b33e-49c1-b2dc-66754305fa9f', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'selam', 0, 0, 0, b'1', '2020-02-22 01:58:56', '2020-02-22 01:58:56', '2020-02-22 01:59:04', NULL);
INSERT INTO `frienq_post` VALUES ('d5868386-61db-476d-8d0f-6aa32f5188ff', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'merhaba', 0, 0, 0, b'1', '2020-02-07 00:14:03', '2020-02-07 00:14:03', '2020-02-07 00:14:03', NULL);
INSERT INTO `frienq_post` VALUES ('d6d93cb8-ca20-41a6-8be1-35b41bf493df', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Hyderabad, Telangana, India', 17.385, 78.4867, 'uu', 0, 0, 0, b'1', '2020-02-13 20:47:31', '2020-02-13 20:47:31', '2020-02-13 20:48:47', NULL);
INSERT INTO `frienq_post` VALUES ('d7d70c21-09db-45ea-9c95-c3bc80caa1df', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Deneneda Kindergarten, 474-1 Edachō, Aoba Ward, Yokohama, Kanagawa, Japan', 35.557, 139.555, 'denene', 6.75, 4, 1, b'0', '2020-02-26 01:39:07', '2020-02-26 01:39:07', '2020-02-26 01:39:07', NULL);
INSERT INTO `frienq_post` VALUES ('dadf0650-5905-428f-ba9a-db854e262772', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'DD Hills, Devarayana Durga, Karnataka, India', 13.3737, 77.2075, '', 6, 1, 0, b'1', '2020-02-20 21:34:01', '2020-02-20 21:34:01', '2020-02-22 01:17:47', NULL);
INSERT INTO `frienq_post` VALUES ('daf4c262-2739-4d6d-80ad-0859b7f0242e', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'İzmir, Turkey', 38.4237, 27.1428, 'hangisi güzel', 0, 3, 0, b'1', '2020-02-22 00:10:21', '2020-02-22 00:10:21', '2020-02-22 02:09:01', NULL);
INSERT INTO `frienq_post` VALUES ('daf8b29a-2f25-4613-9c2b-5adee2828ae1', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'h ', 0, 0, 0, b'1', '2020-03-22 00:44:53', '2020-03-22 00:44:53', '2020-03-22 00:44:53', '2020-03-22 03:16:00');
INSERT INTO `frienq_post` VALUES ('db50778e-183c-43be-bbf7-8f7fa1a7f60e', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, '😐 😑 😶 🙄 😏 😣 😥 😮 🤐 😯 😪 😫 😴 😌 😛 😜 😝 🤤 😒 😓 😔 😕 🙃 🤑 😲 ☹️ 🙁 😖 😞 😟 😤 😢 😭 😦 😧 😨 😩 😰 😱 ', 6, 1, 0, b'1', '2020-03-24 16:20:22', '2020-03-24 16:20:22', '2020-03-27 19:09:39', '2020-03-27 16:53:00');
INSERT INTO `frienq_post` VALUES ('db6999e9-4a69-48bc-bf2e-b16398b3f815', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 0, 1, 'Paris, France', 48.8566, 2.35222, 'İlkbahar kombin önerileri. Sizce hangisi? Louis Vitton İlkbahar Koleksiyonu 👗👠🌸❤', 0, 0, 0, b'1', '2020-03-26 11:05:38', '2020-03-26 11:05:38', '2020-03-26 11:06:01', NULL);
INSERT INTO `frienq_post` VALUES ('dc43d49b-3cf2-4af6-b368-84bea25ff239', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'Yusuf', 10, 1, 0, b'1', '2020-03-12 23:14:34', '2020-03-12 23:14:34', '2020-03-12 23:14:34', NULL);
INSERT INTO `frienq_post` VALUES ('dd248e48-a1bf-448e-93ed-a1aa9a26a122', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Hamburg, Germany', 53.5511, 9.99368, 'the t had he from John on and at keep', 8, 1, 0, b'1', '2020-02-07 00:20:26', '2020-02-07 00:20:26', '2020-02-07 00:20:26', NULL);
INSERT INTO `frienq_post` VALUES ('dfbe7dc2-64a3-43ef-9570-47ad6c2326d9', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Mar del Plata, Buenos Aires Province, Argentina', -38.0055, -57.5426, 'urjdjj', 0, 2, 0, b'1', '2020-02-27 01:34:40', '2020-02-27 01:34:40', '2020-02-27 01:34:40', NULL);
INSERT INTO `frienq_post` VALUES ('dfcd9a57-96f5-4656-bd34-27027c45db6c', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'the under used t', 0, 1, 0, b'1', '2020-03-22 19:42:47', '2020-03-22 19:42:47', '2020-03-27 19:09:41', '2020-03-24 14:15:00');
INSERT INTO `frienq_post` VALUES ('e16da070-b651-4424-92fb-8fbacbef85e1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 't', 3, 1, 0, b'1', '2020-03-22 00:57:20', '2020-03-22 00:57:20', '2020-03-27 19:09:49', '2020-03-22 01:32:00');
INSERT INTO `frienq_post` VALUES ('e1818a96-5d5a-4693-b75e-39c8f1039108', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Armutalan, DBHSOFT SGO MATRIX SATIŞ GÜCÜ OTOMASYONU, Marmaris/Muğla, Turkey', 36.8566, 28.2546, 'test', 8.5, 4, 0, b'0', '2020-02-18 14:08:10', '2020-02-18 14:08:10', '2020-02-18 14:08:10', NULL);
INSERT INTO `frienq_post` VALUES ('e2962526-5c7e-44d5-ac43-55cf68f03b3d', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'test location', 36.2589, 47.6566, 'test explanation', 0, 0, 0, b'1', '2020-02-21 23:40:38', '2020-02-21 23:40:38', '2020-02-21 23:43:33', NULL);
INSERT INTO `frienq_post` VALUES ('e3674a15-671e-4afc-97fc-8c4c58758931', '111a6e26-815d-46aa-bd01-993d73f04a4f', 0, 1, 'Çamdibi Mh, 264. Sk. No:11, 48700 Marmaris/Muğla, Türkiye', 36.8639, 28.2693, 'vnvnm', 8, 1, 0, b'0', '2020-03-29 20:45:10', '2020-03-29 20:45:10', '2020-03-29 20:45:10', NULL);
INSERT INTO `frienq_post` VALUES ('e49e51d9-16e7-47b0-9c50-683e6461e283', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'asdasd', 0, 1, 0, b'1', '2020-03-01 22:47:07', '2020-03-01 22:47:07', '2020-03-01 22:47:07', NULL);
INSERT INTO `frienq_post` VALUES ('e5d5713c-b386-4c43-9f98-bce334bb1926', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'İçmeler, Ottoman silver, Kayabal Caddesi, Marmaris/Muğla, Turkey', 36.7991, 28.2319, 'merhaba dünya ', 4, 1, 0, b'1', '2020-02-07 00:26:37', '2020-02-07 00:26:37', '2020-02-07 00:26:37', NULL);
INSERT INTO `frienq_post` VALUES ('e815183e-f580-4295-95ac-b413086edaa0', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Rockefeller Center, Rockefeller Plaza, New York, NY, USA', 40.7587, -73.9787, 'ydud', 0, 0, 0, b'1', '2020-02-13 00:14:58', '2020-02-13 00:14:58', '2020-02-13 20:42:53', NULL);
INSERT INTO `frienq_post` VALUES ('e9c242b8-b3bc-4b65-829e-981a89394746', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 1, '1 Stockton St, San Francisco, CA  94108, United States', 37.7858, -122.406, 'test', 0, 2, 0, b'0', '2020-06-03 19:13:52', '2020-06-03 19:13:52', '2020-06-03 19:13:52', NULL);
INSERT INTO `frienq_post` VALUES ('eba840c2-52dc-40fe-a65e-41fe84fedad2', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, '1599 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.422, -122.084, 'y b b', 0, 2, 0, b'0', '2020-03-29 10:24:32', '2020-03-29 10:24:32', '2020-03-29 10:24:32', NULL);
INSERT INTO `frienq_post` VALUES ('eefbd577-1636-45a2-938a-59169ba261a7', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, 0, 'Wuhan, Hubei, China', 30.5928, 114.306, 'ffc', 10, 2, 0, b'1', '2020-02-09 20:54:37', '2020-02-09 20:54:37', '2020-02-15 15:54:58', NULL);
INSERT INTO `frienq_post` VALUES ('f0165d3e-114b-4369-bf60-ffa04bf813d2', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'test', 8.33333, 3, 0, b'1', '2020-02-26 00:39:15', '2020-02-26 00:39:15', '2020-02-26 00:39:15', NULL);
INSERT INTO `frienq_post` VALUES ('f11ee528-a3cd-46bb-ae96-2d36c924cc4c', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'merhaba yeni bir bilgisayar aldım sizce nasıl? ', 9, 3, 0, b'1', '2020-02-06 00:41:31', '2020-02-06 00:41:31', '2020-02-06 00:41:31', NULL);
INSERT INTO `frienq_post` VALUES ('f122a15c-7e82-436e-9aa9-01a13c5356d5', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 1, '1 Stockton St, San Francisco, CA  94108, United States', 37.7858, -122.406, 'test', 0, 1, 0, b'1', '2020-06-03 19:13:57', '2020-06-03 19:13:57', '2020-07-07 13:02:20', NULL);
INSERT INTO `frienq_post` VALUES ('f25a4caa-efbf-4c88-b658-06e3005f05a7', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Marmaris, Muğla, Turkey', 36.8549, 28.2709, 'deneme', 10, 2, 0, b'1', '2020-02-15 00:42:12', '2020-02-15 00:42:12', '2020-02-15 00:42:12', NULL);
INSERT INTO `frienq_post` VALUES ('f2d9c602-fb9b-4521-a5b7-f112c24eac20', 'd63826af-2fd3-46fa-8ef4-3d735982601e', 0, 0, 'Çifte Havuzlar, YTÜ-Davutpaşa Kampüsü, Esenler/İstanbul, Turkey', 41.0244, 28.892, 'hff', 0, 0, 0, b'1', '2020-03-23 08:59:18', '2020-03-23 08:59:18', '2020-03-23 08:59:52', NULL);
INSERT INTO `frienq_post` VALUES ('f3d427b4-9ee0-42a4-a405-5e452f80b11a', '535634d4-1383-4ab6-92d9-637226556da1', 0, 1, 'Los Angeles, CA, USA', 34.0522, -118.244, 'Follow', 0, 0, 0, b'1', '2020-03-24 05:53:12', '2020-03-24 05:53:12', '2020-03-24 05:53:40', NULL);
INSERT INTO `frienq_post` VALUES ('f8a16331-bbe3-4c62-837d-1415230410a4', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'gbgb', 0, 2, 0, b'1', '2020-03-07 01:33:22', '2020-03-07 01:33:22', '2020-03-07 01:33:22', NULL);
INSERT INTO `frienq_post` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, 0, 'Muğla, Menteşe/Muğla, Turkey', 37.2154, 28.3634, 'hangi takmlsn', 6, 4, 0, b'1', '2020-02-20 23:21:17', '2020-02-20 23:21:17', '2020-02-22 02:09:03', NULL);
INSERT INTO `frienq_post` VALUES ('f94febba-5296-4af5-87f9-470082bed416', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, '11', 11, 11, 'sdf', 6.5, 2, 0, b'1', '2020-02-06 23:04:23', '2020-02-06 23:04:23', '2020-02-08 23:30:46', NULL);
INSERT INTO `frienq_post` VALUES ('fb2f6170-9374-4b48-9aa5-894027d1edfd', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, 0, 'İzmir, Turkey', 38.4237, 27.1428, 'deneme 3', 0, 0, 0, b'1', '2020-02-21 23:45:56', '2020-02-21 23:45:56', '2020-02-22 00:11:43', NULL);
INSERT INTO `frienq_post` VALUES ('fc0a6404-dd39-48f2-aee6-2ff9daa64ff6', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'under used', 0, 0, 0, b'1', '2020-03-22 00:50:04', '2020-03-22 00:50:04', '2020-03-27 19:09:50', '2020-03-22 03:22:00');
INSERT INTO `frienq_post` VALUES ('fd406708-1b07-43db-9062-b17e1c775ca5', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'Brisbane QLD, Australia', -27.4698, 153.025, 'uh', 10, 1, 0, b'1', '2020-02-13 20:59:04', '2020-02-13 20:59:04', '2020-02-13 20:59:16', NULL);
INSERT INTO `frienq_post` VALUES ('fe29e239-87bc-495f-9e65-e71e36175b9b', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 1, 'Tepe, Ulusal Egemenlik Cd. No:16, 48700 Marmaris/Muğla, Turkey', 36.8549, 28.2709, 'by years run', 7, 1, 0, b'1', '2020-03-22 19:40:35', '2020-03-22 19:40:35', '2020-03-27 19:09:42', '2020-08-12 23:21:00');
INSERT INTO `frienq_post` VALUES ('ff92305d-b46d-4892-b319-b69ba6d344eb', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, 0, 'İstanbul, Turkey', 41.0082, 28.9784, 'deneme2', 8.66667, 3, 0, b'1', '2020-02-21 23:43:18', '2020-02-21 23:43:18', '2020-02-22 02:08:17', NULL);

-- ----------------------------
-- Table structure for frienq_post_comment
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post_comment`;
CREATE TABLE `frienq_post_comment`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_post` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_from` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rate` float NOT NULL,
  `rate_count` int(11) NOT NULL,
  `notified` bit(1) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post_comment
-- ----------------------------
INSERT INTO `frienq_post_comment` VALUES ('07b62e0b-7748-43ef-8be2-de06e9450bec', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'dd', 0, 0, b'0', b'0', '2020-06-23 19:14:53', '2020-06-23 19:14:53', '2020-06-23 19:14:53');
INSERT INTO `frienq_post_comment` VALUES ('16cedf0c-4c9f-4f3d-af1c-93b41b3bf04a', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'g', 0, 0, b'0', b'0', '2020-07-07 20:56:48', '2020-07-07 20:56:48', '2020-07-07 20:56:48');
INSERT INTO `frienq_post_comment` VALUES ('1a45d252-d6d7-4302-8e5b-35aaf48ebcb4', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'ty', 0, 0, b'0', b'0', '2020-07-07 20:48:16', '2020-07-07 20:48:16', '2020-07-07 20:48:16');
INSERT INTO `frienq_post_comment` VALUES ('1ece42f5-792e-4188-9dbd-e09cb7c96c68', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '//  ', 0, 0, b'0', b'0', '2020-06-11 21:17:27', '2020-06-11 21:17:27', '2020-06-11 21:17:27');
INSERT INTO `frienq_post_comment` VALUES ('213f9bef-d588-4354-b983-8bf87b29c065', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '//  ', 0, 0, b'0', b'0', '2020-06-11 21:18:18', '2020-06-11 21:18:18', '2020-06-11 21:18:18');
INSERT INTO `frienq_post_comment` VALUES ('321e7afb-b7ef-4268-be68-7c26641dbcf1', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'xgh', 0, 0, b'0', b'0', '2020-06-23 19:13:00', '2020-06-23 19:13:00', '2020-06-23 19:13:00');
INSERT INTO `frienq_post_comment` VALUES ('355cc5e8-b04b-41fb-a6aa-a5c03e6ba8b9', NULL, '1169ad21-d7f6-42d9-8764-9fa9105ebb44', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'SDC v', 0, 0, b'0', b'0', '2020-04-03 22:55:53', '2020-04-03 22:55:53', '2020-04-03 22:55:53');
INSERT INTO `frienq_post_comment` VALUES ('36458539-f940-416d-bc06-9e7b376bf7ed', NULL, '7962a92e-db07-4458-8f5b-9abb67f0102f', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'jjn', 0, 0, b'0', b'0', '2020-04-03 23:00:12', '2020-04-03 23:00:12', '2020-04-03 23:00:12');
INSERT INTO `frienq_post_comment` VALUES ('36f8798e-a365-4b01-bda3-069a45573a7f', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:30:13', '2020-07-07 22:30:13', '2020-07-07 22:30:13');
INSERT INTO `frienq_post_comment` VALUES ('41c262cb-beb3-43be-b046-a32d07609d17', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ooo', 0, 0, b'0', b'0', '2020-06-23 19:24:48', '2020-06-23 19:24:48', '2020-06-23 19:24:48');
INSERT INTO `frienq_post_comment` VALUES ('48548ad0-d67f-44b5-bbb0-4c2fb33d024c', NULL, 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'vvvv', 0, 0, b'0', b'0', '2020-06-23 19:47:05', '2020-06-23 19:47:05', '2020-06-23 19:47:05');
INSERT INTO `frienq_post_comment` VALUES ('48cb567c-8d95-4cd7-8a56-79da0d081f1e', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '          key: NavigationService().scaffoldKey,\n', 0, 0, b'0', b'0', '2020-06-11 21:20:15', '2020-06-11 21:20:15', '2020-06-11 21:20:15');
INSERT INTO `frienq_post_comment` VALUES ('4bf13c78-89df-4e25-a95c-167796e47be4', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'rift', 0, 0, b'0', b'0', '2020-07-07 20:26:01', '2020-07-07 20:26:01', '2020-07-07 20:26:01');
INSERT INTO `frienq_post_comment` VALUES ('54518742-65f9-40e4-b260-102b6bd4ebf2', NULL, '1169ad21-d7f6-42d9-8764-9fa9105ebb44', 'efe73545-e213-4b54-acaa-f6014980f388', 'efe73545-e213-4b54-acaa-f6014980f388', 'cader', 0, 0, b'0', b'0', '2020-04-03 22:46:32', '2020-04-03 22:46:32', '2020-04-03 22:46:32');
INSERT INTO `frienq_post_comment` VALUES ('549e8357-c167-4cfa-ba48-5b49bc369af2', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'v', 0, 0, b'0', b'0', '2020-07-07 20:24:54', '2020-07-07 20:24:54', '2020-07-07 20:24:54');
INSERT INTO `frienq_post_comment` VALUES ('5640ff96-a3b3-4835-8ac2-d242d60533d0', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'or the by', 0, 0, b'0', b'0', '2020-07-07 20:23:17', '2020-07-07 20:23:17', '2020-07-07 20:23:17');
INSERT INTO `frienq_post_comment` VALUES ('56bb2b7c-252a-4178-806b-b9813a340f56', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', ',cc', 0, 0, b'0', b'0', '2020-07-07 20:26:48', '2020-07-07 20:26:48', '2020-07-07 20:26:48');
INSERT INTO `frienq_post_comment` VALUES ('56e94a72-b04f-43e7-896e-2a9d5f8e7824', NULL, '1169ad21-d7f6-42d9-8764-9fa9105ebb44', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'ffff', 0, 0, b'0', b'0', '2020-04-03 22:54:34', '2020-04-03 22:54:34', '2020-04-03 22:54:34');
INSERT INTO `frienq_post_comment` VALUES ('5759af1d-7ddd-4eba-89fe-021b3c380768', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:38:23', '2020-07-07 22:38:23', '2020-07-07 22:38:23');
INSERT INTO `frienq_post_comment` VALUES ('577fdbe8-8d7f-40e6-9b83-60e9fda20b3e', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'g', 0, 0, b'0', b'0', '2020-07-07 20:56:32', '2020-07-07 20:56:32', '2020-07-07 20:56:32');
INSERT INTO `frienq_post_comment` VALUES ('586c0732-0344-4b0d-b09b-160d15c987d6', NULL, '4518073e-42db-4473-9b18-c7fab09e10a1', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'hhh', 0, 0, b'0', b'0', '2020-07-07 19:14:29', '2020-07-07 19:14:29', '2020-07-07 19:14:29');
INSERT INTO `frienq_post_comment` VALUES ('58d9d5ec-980a-4f4c-b2be-aae27bda152b', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'fdsdfsd', 0, 0, b'0', b'0', '2020-06-11 21:15:10', '2020-06-11 21:15:10', '2020-06-11 21:15:10');
INSERT INTO `frienq_post_comment` VALUES ('6524e2c3-6924-42af-bf58-2748a5434c2d', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'yyy', 0, 0, b'0', b'0', '2020-06-23 19:06:48', '2020-06-23 19:06:48', '2020-06-23 19:06:48');
INSERT INTO `frienq_post_comment` VALUES ('655eaf14-9b73-47c1-87ac-340ee362f600', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'tt', 0, 0, b'0', b'0', '2020-05-16 22:15:38', '2020-05-16 22:15:38', '2020-05-16 22:15:38');
INSERT INTO `frienq_post_comment` VALUES ('69ad7727-1539-418b-abcb-97f5605f8f5f', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'ch', 0, 0, b'0', b'0', '2020-07-07 20:26:38', '2020-07-07 20:26:38', '2020-07-07 20:26:38');
INSERT INTO `frienq_post_comment` VALUES ('6a59df17-e73a-4516-9157-53c601c3783d', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'cvv', 0, 0, b'0', b'0', '2020-06-23 19:07:21', '2020-06-23 19:07:21', '2020-06-23 19:07:21');
INSERT INTO `frienq_post_comment` VALUES ('711252a9-f91e-4ae0-b96c-65eca714bd96', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:37:31', '2020-07-07 22:37:31', '2020-07-07 22:37:31');
INSERT INTO `frienq_post_comment` VALUES ('744327af-f191-4454-9d48-374f4cd5ca1e', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'hh', 0, 0, b'0', b'0', '2020-06-23 19:02:19', '2020-06-23 19:02:19', '2020-06-23 19:02:19');
INSERT INTO `frienq_post_comment` VALUES ('7a93d058-aee3-4257-bfb4-6a439b80d792', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'test', 0, 0, b'0', b'0', '2020-07-08 23:02:41', '2020-07-08 23:02:41', '2020-07-08 23:02:41');
INSERT INTO `frienq_post_comment` VALUES ('7e6bbcac-6644-4bb2-b6f3-b5f712ddeb3f', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '          key: NavigationService().scaffoldKey,\n', 0, 0, b'0', b'0', '2020-06-11 21:19:57', '2020-06-11 21:19:57', '2020-06-11 21:19:57');
INSERT INTO `frienq_post_comment` VALUES ('83fc3b65-93c9-450c-8d2e-bdc3b70281af', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'g', 0, 0, b'0', b'0', '2020-07-07 20:24:26', '2020-07-07 20:24:26', '2020-07-07 20:24:26');
INSERT INTO `frienq_post_comment` VALUES ('8780dd64-fd24-416e-bbfa-7e5d7b681c7e', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'ff', 0, 0, b'0', b'0', '2020-07-07 20:26:57', '2020-07-07 20:26:57', '2020-07-07 20:26:57');
INSERT INTO `frienq_post_comment` VALUES ('88cfd224-131b-4344-83e1-356c0ff8f4f0', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'v', 0, 0, b'0', b'0', '2020-07-07 20:27:24', '2020-07-07 20:27:24', '2020-07-07 20:27:24');
INSERT INTO `frienq_post_comment` VALUES ('89bac03d-9b81-420b-898f-1a3efc38b4dd', NULL, '7962a92e-db07-4458-8f5b-9abb67f0102f', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'c vv ', 0, 0, b'0', b'0', '2020-04-03 23:02:22', '2020-04-03 23:02:22', '2020-04-03 23:02:22');
INSERT INTO `frienq_post_comment` VALUES ('9099c05f-419f-49f9-a37a-315cb4aa58b6', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'GH', 0, 0, b'0', b'0', '2020-07-07 20:29:41', '2020-07-07 20:29:41', '2020-07-07 20:29:41');
INSERT INTO `frienq_post_comment` VALUES ('9d67f615-d044-4b77-b417-ebd25e9bddbe', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'rer', 0, 0, b'0', b'0', '2020-07-07 20:24:44', '2020-07-07 20:24:44', '2020-07-07 20:24:44');
INSERT INTO `frienq_post_comment` VALUES ('a039369d-82f1-4056-a161-a8374c3d5d7f', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'u', 0, 0, b'0', b'0', '2020-07-07 20:58:03', '2020-07-07 20:58:03', '2020-07-07 20:58:03');
INSERT INTO `frienq_post_comment` VALUES ('a3d6bac9-c356-4a22-ae13-719da910dbcd', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'y', 0, 0, b'0', b'0', '2020-07-07 20:57:01', '2020-07-07 20:57:01', '2020-07-07 20:57:01');
INSERT INTO `frienq_post_comment` VALUES ('b24656d8-0bbc-4ae3-a7f0-3d588dab5847', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:34:31', '2020-07-07 22:34:31', '2020-07-07 22:34:31');
INSERT INTO `frienq_post_comment` VALUES ('ba9882fe-d80d-4408-942a-e320da542dec', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'reet', 0, 0, b'0', b'0', '2020-07-07 20:55:29', '2020-07-07 20:55:29', '2020-07-07 20:55:29');
INSERT INTO `frienq_post_comment` VALUES ('c57737f2-844f-4cd5-aeb7-f9b3b83b4a9f', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', '//  ', 0, 0, b'0', b'1', '2020-06-11 21:13:59', '2020-06-11 21:13:59', '2020-07-09 11:57:17');
INSERT INTO `frienq_post_comment` VALUES ('c6a7894d-dd79-44db-8ccb-6fb984c12947', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:39:32', '2020-07-07 22:39:32', '2020-07-07 22:39:32');
INSERT INTO `frienq_post_comment` VALUES ('c87c8dd7-0ac6-4891-b0bf-297d03cfe055', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'f', 0, 0, b'0', b'0', '2020-07-07 20:24:06', '2020-07-07 20:24:06', '2020-07-07 20:24:06');
INSERT INTO `frienq_post_comment` VALUES ('c88fd64d-582d-4b1a-90e8-d9d88ce9206b', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'gb', 0, 0, b'0', b'0', '2020-07-07 20:56:07', '2020-07-07 20:56:07', '2020-07-07 20:56:07');
INSERT INTO `frienq_post_comment` VALUES ('c96a4cd3-77c7-4236-9722-25ec622ebb45', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'yj bg', 0, 0, b'0', b'0', '2020-07-07 20:48:12', '2020-07-07 20:48:12', '2020-07-07 20:48:12');
INSERT INTO `frienq_post_comment` VALUES ('cade63bc-3821-4bc4-aa10-40937f276673', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'ytt', 0, 0, b'0', b'0', '2020-06-23 19:02:01', '2020-06-23 19:02:01', '2020-06-23 19:02:01');
INSERT INTO `frienq_post_comment` VALUES ('cd332f8c-ed01-4034-beac-9f5e4f8036cb', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '          key: NavigationService().scaffoldKey,\n', 0, 0, b'0', b'0', '2020-06-11 21:21:16', '2020-06-11 21:21:16', '2020-06-11 21:21:16');
INSERT INTO `frienq_post_comment` VALUES ('d292c6a0-9594-45ed-9e7e-65b7e6d50c14', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'dg', 0, 0, b'0', b'0', '2020-07-07 20:26:23', '2020-07-07 20:26:23', '2020-07-07 20:26:23');
INSERT INTO `frienq_post_comment` VALUES ('d686133d-1e79-4bc2-befa-2b7e2a22158b', NULL, 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'fff', 0, 0, b'0', b'0', '2020-06-23 19:47:19', '2020-06-23 19:47:19', '2020-06-23 19:47:19');
INSERT INTO `frienq_post_comment` VALUES ('dab1167e-c29e-43ef-a539-9cdc04725c56', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '//  ', 0, 0, b'0', b'0', '2020-06-11 21:16:33', '2020-06-11 21:16:33', '2020-06-11 21:16:33');
INSERT INTO `frienq_post_comment` VALUES ('dc4ab67d-5b3d-4fe1-b4f2-cf068245db65', NULL, '7962a92e-db07-4458-8f5b-9abb67f0102f', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'hj', 0, 0, b'0', b'0', '2020-04-03 23:03:23', '2020-04-03 23:03:23', '2020-04-03 23:03:23');
INSERT INTO `frienq_post_comment` VALUES ('e254d69b-3b66-4d70-8de5-002adf239e01', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 'hh', 0, 0, b'0', b'0', '2020-07-07 20:23:33', '2020-07-07 20:23:33', '2020-07-07 20:23:33');
INSERT INTO `frienq_post_comment` VALUES ('ed5faafa-a20b-48f1-8fca-3095a856aad7', NULL, 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', 'edad7cf8-583a-4427-94a0-2f25ea9396bd', 'iii', 0, 0, b'0', b'0', '2020-06-23 19:12:49', '2020-06-23 19:12:49', '2020-06-23 19:12:49');
INSERT INTO `frienq_post_comment` VALUES ('ed8600b5-9ccb-4845-82ac-f9245eb3d54a', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '//  ', 0, 0, b'0', b'0', '2020-06-11 21:17:48', '2020-06-11 21:17:48', '2020-06-11 21:17:48');
INSERT INTO `frienq_post_comment` VALUES ('f03e3212-e017-4382-aaac-9947acca121e', NULL, '3d29b427-6a12-4816-92bc-5d7f469dcbc1', '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', '//  gd', 0, 0, b'0', b'0', '2020-06-11 21:14:41', '2020-06-11 21:14:41', '2020-06-11 21:14:41');
INSERT INTO `frienq_post_comment` VALUES ('f6e10dff-10ee-4a91-b144-b6b73029ca02', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-07-07 22:40:23', '2020-07-07 22:40:23', '2020-07-07 22:40:23');
INSERT INTO `frienq_post_comment` VALUES ('f77cde83-78f5-4149-aeff-7318d5961a53', NULL, '6681b86f-23dd-4d49-a15c-7c559c4bfc58', 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', ' @yusufpinar ', 0, 0, b'0', b'0', '2020-04-05 01:03:16', '2020-04-05 01:03:16', '2020-04-05 01:03:16');

-- ----------------------------
-- Table structure for frienq_post_comment_history
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post_comment_history`;
CREATE TABLE `frienq_post_comment_history`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_post` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_from` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `rate_count` int(11) NOT NULL,
  `notified` bit(1) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post_comment_history
-- ----------------------------
INSERT INTO `frienq_post_comment_history` VALUES ('d3f0f581-d1df-437c-bb28-49a184bd4e47', NULL, '02a52a0f-2246-4286-871f-2d38781f4e94', '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 'First Comment To Post !', 0, 0, b'0', b'0', '2020-02-11 22:21:25', '2020-02-11 22:21:25', '2020-02-11 22:21:25');

-- ----------------------------
-- Table structure for frienq_post_item
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post_item`;
CREATE TABLE `frienq_post_item`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_post` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `explanation` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `count_rate` int(11) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT 0,
  `deleted` bit(1) NOT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post_item
-- ----------------------------
INSERT INTO `frienq_post_item` VALUES ('014b53e1-5221-400d-a50c-6c68681534a8', '22fb9ec4-b757-43cf-825c-99ce2cf4df73', 0, '49047da5-ede1-4d74-b875-92afff0db967.jpg', '', 0, 1, 0, b'0', '2020-03-25 15:13:12', '2020-03-25 15:13:12', '2020-03-25 15:13:12');
INSERT INTO `frienq_post_item` VALUES ('0282e05b-1852-427d-8b98-ea5c31e374d5', 'c53adf6b-45fd-4680-93ee-e341eabbe890', 0, '8740e847-2e79-4375-a441-4c767668604f.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:14:34', '2020-02-26 01:14:34', '2020-02-26 01:14:34');
INSERT INTO `frienq_post_item` VALUES ('0316b801-1eb0-48f1-8821-fc9c44d7d1e1', 'db6999e9-4a69-48bc-bf2e-b16398b3f815', 0, 'e6141e62-65b2-40c7-84ab-d096a189f4ce.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:05:38', '2020-03-26 11:05:38', '2020-03-26 11:05:38');
INSERT INTO `frienq_post_item` VALUES ('05969281-7284-4a31-aa5b-30072b5f24a5', 'c881be71-d182-405e-b39d-53069019975b', 0, '3ba5fa8f-fda0-439c-af7b-74c05e1fbc99.jpg', '', 0, 1, 0, b'0', '2020-03-07 01:31:28', '2020-03-07 01:31:28', '2020-03-07 01:31:28');
INSERT INTO `frienq_post_item` VALUES ('059fdba4-49dd-4f0f-aa1d-ba0c02d2f6ed', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', 0, '', 'kdkfkd', 0, 1, 2, b'0', '2020-06-23 19:23:57', '2020-06-23 19:23:57', '2020-06-23 19:23:57');
INSERT INTO `frienq_post_item` VALUES ('05a6fac0-c102-4393-a918-198e73066b12', '8ddef3a0-e69a-48f2-8999-6641cac7d75a', 0, 'c73fba6d-b5d6-4208-9f49-47afebb0814a.jpg', '', 0, 2, 0, b'0', '2020-02-23 22:36:51', '2020-02-23 22:36:51', '2020-02-23 22:36:51');
INSERT INTO `frienq_post_item` VALUES ('05f6fe9e-5d9a-4ed7-8cdf-879d395a518d', 'a240a3f3-9f74-44e5-aa15-1a6ecaf7562b', 0, '', 'kö', 0, 0, 2, b'0', '2020-02-23 21:14:47', '2020-02-23 21:14:47', '2020-02-23 21:14:47');
INSERT INTO `frienq_post_item` VALUES ('067bf9f7-c9c8-4b98-9bb6-b99f8a80b136', 'a246b596-016e-4d45-adc9-de351b9d6cf2', 0, '', 'çl', 0, 0, 3, b'0', '2020-02-23 21:15:03', '2020-02-23 21:15:03', '2020-02-23 21:15:03');
INSERT INTO `frienq_post_item` VALUES ('0741414c-d162-480a-bdcf-99f3a40b9293', '6048555f-14c7-402b-abf9-ba5bf6203865', 0, '6497d9c8-44c9-46fa-8a72-0650b5ce6b1f.jpg', '', 0, 0, 0, b'0', '2020-02-13 20:48:25', '2020-02-13 20:48:25', '2020-02-13 20:48:25');
INSERT INTO `frienq_post_item` VALUES ('076badb8-2ff4-474f-8136-423948fd2a7f', '6681b86f-23dd-4d49-a15c-7c559c4bfc58', 0, 'dfb4439e-03a8-40bc-95a8-530f4fd04f86.jpg', '', 0, 0, 0, b'0', '2020-02-06 00:54:57', '2020-02-06 00:54:57', '2020-02-06 00:54:57');
INSERT INTO `frienq_post_item` VALUES ('079c2033-182b-4848-ad5b-b8344302332a', '959292e3-fcd0-4a75-8ed5-0bf440b47ecf', 0, '1507ffd9-0a84-417c-a866-d34b58c51e31.jpg', '', 0, 0, 0, b'0', '2020-03-23 21:38:39', '2020-03-23 21:38:39', '2020-03-23 21:38:39');
INSERT INTO `frienq_post_item` VALUES ('07fc70af-407e-4fcd-b820-bd109938b5f9', '47f8f00f-fc5f-473a-92d4-dd157c34f1bd', 0, '5a18c63e-1551-4ec6-b0f3-06180a00d808.jpg', '', 0, 0, 0, b'0', '2020-03-24 16:31:27', '2020-03-24 16:31:27', '2020-03-24 16:31:27');
INSERT INTO `frienq_post_item` VALUES ('0ac25bc5-dac1-489f-95b5-c85746ce780e', 'd05eb94c-aa09-4069-9dfd-6e1e72d49fab', 0, '', 'Galatasaray', 0, 2, 1, b'0', '2020-02-22 02:02:54', '2020-02-22 02:02:54', '2020-02-22 02:02:54');
INSERT INTO `frienq_post_item` VALUES ('0d2b3a01-2098-40d3-883c-3eface2cbf4c', '7c1025f3-8f96-4b77-b246-957c987b5eb5', 0, '19ac7cc3-2c45-4058-8c15-3aa76964e495.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:32:44', '2020-03-22 00:32:44', '2020-03-22 00:32:44');
INSERT INTO `frienq_post_item` VALUES ('0db9b198-c6bf-4932-8574-140b0ceff77a', 'd5868386-61db-476d-8d0f-6aa32f5188ff', 0, '0c52b886-9afb-427a-8e94-c43094202ab2.jpg', '', 0, 0, 0, b'0', '2020-02-07 00:14:03', '2020-02-07 00:14:03', '2020-02-07 00:14:03');
INSERT INTO `frienq_post_item` VALUES ('0e360ee6-157a-4cd9-bdb3-9f04b180ca7f', '62a527d8-aa16-4e03-aaab-a366aec8fac8', 0, 'bee6a016-d082-4142-863a-bd3fa1cbfeda.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:17:11', '2020-02-02 01:17:11', '2020-02-02 01:17:11');
INSERT INTO `frienq_post_item` VALUES ('0e361e5a-1c7d-4f3c-a3ec-9043e9043426', '946243f2-71bc-472f-ab9a-3ed9246ce5ee', 0, '', 'h', 0, 1, 2, b'0', '2020-03-13 02:18:34', '2020-03-13 02:18:34', '2020-03-13 02:18:34');
INSERT INTO `frienq_post_item` VALUES ('0e98ea28-799b-4c0d-8394-12a3d8c65d48', '3a9190ae-d8e2-4a32-bf4d-6b5b27ebdb49', 0, '05d82e7a-6377-4831-ad4f-a358a3e1f8bc.jpg', '', 0, 0, 0, b'0', '2020-03-25 14:50:46', '2020-03-25 14:50:46', '2020-03-25 14:50:46');
INSERT INTO `frienq_post_item` VALUES ('0ec38fa3-4433-4d19-8914-e09929621081', 'd3c25b94-4e0a-4522-99f3-89fdd6160a66', 0, '969664bc-3244-44c1-be4b-30032bfb6c48.jpg', '', 0, 0, 0, b'0', '2020-02-05 21:48:15', '2020-02-05 21:48:15', '2020-02-05 21:48:15');
INSERT INTO `frienq_post_item` VALUES ('10068e44-1587-4a28-b361-1246310b7561', 'a80c7f85-41e2-4643-818b-1cc43ffff71d', 0, '3ff37834-e8d6-4925-b5ff-27dfe45c6119.jpg', '', 0, 0, 0, b'0', '2020-03-29 21:00:18', '2020-03-29 21:00:18', '2020-03-29 21:00:18');
INSERT INTO `frienq_post_item` VALUES ('10481bef-d856-4fa9-b705-744692d6ad89', '3ddc101b-5b1f-402f-944a-c05a92ae9d36', 0, '052c52cb-ddef-48a7-8d0c-9ff8102062c7.jpg', '', 0, 0, 0, b'0', '2020-03-13 01:16:18', '2020-03-13 01:16:18', '2020-03-13 01:16:18');
INSERT INTO `frienq_post_item` VALUES ('110b3e60-a378-4722-9e13-736189816a55', 'd015010e-b7e7-44e2-ab43-69ae7d760fee', 0, '', 'Tutmaz', 0, 0, 3, b'0', '2020-02-27 00:10:46', '2020-02-27 00:10:46', '2020-02-27 00:10:46');
INSERT INTO `frienq_post_item` VALUES ('112ce9e7-cbc5-4a1c-8323-b1fcac04b851', 'fe29e239-87bc-495f-9e65-e71e36175b9b', 0, 'dd268512-4a07-491e-91d1-3a44e9b82de9.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:40:35', '2020-03-22 19:40:35', '2020-03-22 19:40:35');
INSERT INTO `frienq_post_item` VALUES ('118e3655-57da-4432-9c9e-523b6b0a83b2', 'dc43d49b-3cf2-4af6-b368-84bea25ff239', 0, 'c5233984-0909-434e-95b2-cb2aa3764bf6.mp4', '', 0, 0, 0, b'0', '2020-03-12 23:14:34', '2020-03-12 23:14:34', '2020-03-12 23:14:34');
INSERT INTO `frienq_post_item` VALUES ('119d2b6b-5956-4774-9ca4-03aa43f723d0', '081bf8a3-dadb-4105-9dba-6c80307ad6eb', 0, '42008098-c617-4c1a-89d9-e75ab689099d.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:14:58', '2020-02-22 02:14:58', '2020-02-22 02:14:58');
INSERT INTO `frienq_post_item` VALUES ('1274424e-3f9f-4508-8f34-a4e3f8089adc', '34f24ce0-cb84-47c5-9948-0c83be892743', 0, '1aa40959-e2a9-4f36-84a0-6255b51415d3.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:46:46', '2020-03-01 22:46:46', '2020-03-01 22:46:46');
INSERT INTO `frienq_post_item` VALUES ('1280e4c5-7bbb-47e4-848a-59c8c31e830b', 'dfbe7dc2-64a3-43ef-9570-47ad6c2326d9', 0, '', 'it\n', 0, 1, 1, b'0', '2020-02-27 01:34:40', '2020-02-27 01:34:40', '2020-02-27 01:34:40');
INSERT INTO `frienq_post_item` VALUES ('12dc8aa0-cee0-4be5-b057-eae0bc7bfe54', '247a7de1-68f5-4af8-9f27-e94b532b2369', 0, '66227eed-1514-40a0-9334-0decc51da14b.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:18', '2020-02-22 19:59:18', '2020-02-22 19:59:18');
INSERT INTO `frienq_post_item` VALUES ('13172a4d-7ad8-4123-8c07-c5bf3f724187', '154a85e8-c29b-4caa-93ee-48eb70273495', 0, '', 'a', 0, 1, 1, b'0', '2020-03-12 03:14:19', '2020-03-12 03:14:19', '2020-03-12 03:14:19');
INSERT INTO `frienq_post_item` VALUES ('13782b2c-bd84-45d4-8aa2-2f85eba1844a', '129e01c6-c673-4030-9219-bfd0cf355b75', 0, '63321889-e07d-4c0a-b041-8aea06c2c76e.jpg', '', 0, 0, 0, b'0', '2020-02-07 00:28:45', '2020-02-07 00:28:45', '2020-02-07 00:28:45');
INSERT INTO `frienq_post_item` VALUES ('14f1c9f5-0fee-4ad8-98c2-db20deea9a6e', 'a240a3f3-9f74-44e5-aa15-1a6ecaf7562b', 0, '', 'j', 0, 0, 4, b'0', '2020-02-23 21:14:47', '2020-02-23 21:14:47', '2020-02-23 21:14:47');
INSERT INTO `frienq_post_item` VALUES ('151ecf44-0a92-4cc9-ab09-aee30e94bd32', '6422d032-6ad6-49b5-8c31-aa37de23a0af', 0, '', 'tete', 0, 1, 1, b'0', '2020-06-03 19:13:53', '2020-06-03 19:13:53', '2020-06-03 19:13:53');
INSERT INTO `frienq_post_item` VALUES ('18478b87-479a-44bc-b9ca-c1a021a63176', 'e3674a15-671e-4afc-97fc-8c4c58758931', 0, 'db9b2312-26d2-46bc-847b-77537dbb41c5.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:45:10', '2020-03-29 20:45:10', '2020-03-29 20:45:10');
INSERT INTO `frienq_post_item` VALUES ('18a521d3-1584-4dda-b80d-93e955a22a47', '780ba0be-5443-4ae4-a86c-4b4b64c079eb', 0, '', 'ronaldo', 0, 1, 2, b'0', '2020-02-23 22:39:21', '2020-02-23 22:39:21', '2020-02-23 22:39:21');
INSERT INTO `frienq_post_item` VALUES ('18b33a4f-2345-44fb-a04e-b2059b731c9e', '593f1662-88e1-42b6-9a0d-845c6382b3dc', 0, '53a96826-b164-4e43-a430-3f3fd36318cc.jpg', '', 0, 0, 0, b'0', '2020-02-24 23:39:09', '2020-02-24 23:39:09', '2020-02-24 23:39:09');
INSERT INTO `frienq_post_item` VALUES ('1a704a46-8611-45e6-a772-bbd80fabba92', 'fb2f6170-9374-4b48-9aa5-894027d1edfd', 0, '7d7a06df-1efb-4f6f-9997-d9f45a7591a7.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:45:56', '2020-02-21 23:45:56', '2020-02-21 23:45:56');
INSERT INTO `frienq_post_item` VALUES ('1a7059d2-2eda-4102-93e4-ac13980b6480', '34f24ce0-cb84-47c5-9948-0c83be892743', 0, '0d49fb01-3b6a-4586-906f-420099cc2534.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:46:46', '2020-03-01 22:46:46', '2020-03-01 22:46:46');
INSERT INTO `frienq_post_item` VALUES ('1bf066e8-159b-4f3f-b746-6db277ed66c4', 'a12420bc-51f7-4034-9206-914ae2088dfb', 0, '6038b783-8edd-4169-ae07-4baf667b0bf8.jpg', '', 0, 0, 0, b'0', '2020-03-23 17:50:06', '2020-03-23 17:50:06', '2020-03-23 17:50:06');
INSERT INTO `frienq_post_item` VALUES ('1c9ffeaf-8068-4d33-9b82-2fc603b061da', '4f027a5e-cebc-403a-b150-d0568bcfa9b0', 0, 'fca25dde-5197-40ef-ac85-2a4c75ff4ba7.jpg', '', 0, 1, 0, b'0', '2020-03-01 22:41:13', '2020-03-01 22:41:13', '2020-03-01 22:41:13');
INSERT INTO `frienq_post_item` VALUES ('1d0d2c21-70e9-4386-a016-e36c7c51e91d', 'b3ae6d41-2d89-4775-888e-f2a59cfe9ef1', 0, '4b4a3213-db0b-4ca4-86c8-8f850d468da6.jpg', '', 0, 0, 0, b'0', '2020-02-10 17:11:20', '2020-02-10 17:11:20', '2020-02-10 17:11:20');
INSERT INTO `frienq_post_item` VALUES ('1d0ded51-8a31-451c-a8e2-6a9b3fc3d215', '12d0cae2-f0a1-46aa-b577-35972462ec82', 0, '591493fd-2b12-4e0d-927a-42af7f945d3d.jpg', '', 0, 0, 0, b'0', '2020-03-24 23:00:31', '2020-03-24 23:00:31', '2020-03-24 23:00:31');
INSERT INTO `frienq_post_item` VALUES ('1def0d38-907a-4f57-81a7-45caa1628475', 'c2e7559d-b8b2-4653-9ba5-0a1d6ec1ba10', 0, '', 'yarak', 0, 0, 1, b'0', '2020-02-20 22:58:05', '2020-02-20 22:58:05', '2020-02-20 22:58:05');
INSERT INTO `frienq_post_item` VALUES ('1e0ace96-728c-4856-a999-b60260dcaf02', '591a6297-e1c8-445e-ad70-22756c5f3d83', 0, '827b0e02-f7df-4de2-805d-5aa510298ce4.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:07:09', '2020-03-26 11:07:09', '2020-03-26 11:07:09');
INSERT INTO `frienq_post_item` VALUES ('1e4470d5-f668-404f-988d-bd06f8572000', '813f206e-5c55-45b5-b88f-595e3806563f', 0, '486d4cdd-661d-4ae4-bbd2-2d890000520b.mp4', '', 0, 0, 0, b'0', '2020-02-24 23:41:25', '2020-02-24 23:41:25', '2020-02-24 23:41:25');
INSERT INTO `frienq_post_item` VALUES ('1e6f3217-f66b-4a6d-b26e-66b49058fced', 'd0f2783a-67bb-4293-bf16-1ca8bfbffa95', 0, 'd7e6b51c-ef3b-43a8-89af-39fde41baa95.jpg', '', 0, 0, 0, b'0', '2020-04-08 12:39:06', '2020-04-08 12:39:06', '2020-04-08 12:39:06');
INSERT INTO `frienq_post_item` VALUES ('1fc207ab-dca5-4a75-884b-c516adc1fa80', 'd015010e-b7e7-44e2-ab43-69ae7d760fee', 0, '', 'Tutar', 0, 1, 1, b'0', '2020-02-27 00:10:46', '2020-02-27 00:10:46', '2020-02-27 00:10:46');
INSERT INTO `frienq_post_item` VALUES ('20c15d27-9746-4914-a718-75b6515ac109', '5b22d4ac-d4e4-421c-b937-f24f4b592905', 0, '15c8891a-532b-46bd-8b1a-122831c4d85d.mp4', '', 0, 0, 0, b'0', '2020-02-15 15:51:01', '2020-02-15 15:51:01', '2020-02-15 15:51:01');
INSERT INTO `frienq_post_item` VALUES ('21576caf-81ba-446c-b2ad-012d1acced43', '714ea1c6-25b7-475f-8da9-ada0e32674a7', 0, '04e0ed66-afb6-484f-badb-bfa414ede695.jpg', '', 0, 0, 0, b'0', '2020-03-24 16:23:57', '2020-03-24 16:23:57', '2020-03-24 16:23:57');
INSERT INTO `frienq_post_item` VALUES ('21ab447e-798c-49e7-aef8-754a4a57e21d', 'db6999e9-4a69-48bc-bf2e-b16398b3f815', 0, '9e5766bb-9e70-4be7-ba2a-67ac76faa82b.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:05:38', '2020-03-26 11:05:38', '2020-03-26 11:05:38');
INSERT INTO `frienq_post_item` VALUES ('22b63bc4-1402-494f-bad4-f38a0c24a56e', '0d93e574-0e5d-48ee-845d-b2d898802926', 0, 'db3c9866-d749-4034-9781-83cae683794d.jpg', '', 0, 1, 0, b'0', '2020-03-06 21:48:31', '2020-03-06 21:48:31', '2020-03-06 21:48:31');
INSERT INTO `frienq_post_item` VALUES ('22d759ed-60b4-4a14-a3ec-d00568f0a960', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 0, '', 'l', 0, 2, 2, b'0', '2020-06-23 18:58:23', '2020-06-23 18:58:23', '2020-06-23 18:58:23');
INSERT INTO `frienq_post_item` VALUES ('244ba176-9749-4aa9-9841-6df71f8a5b90', '22fb9ec4-b757-43cf-825c-99ce2cf4df73', 0, '7e41ca8b-2f09-4449-b9da-271af7d069a0.jpg', '', 0, 1, 0, b'0', '2020-03-25 15:13:12', '2020-03-25 15:13:12', '2020-03-25 15:13:12');
INSERT INTO `frienq_post_item` VALUES ('247558df-cb8b-443e-904a-646c1052d3a2', 'd02492ee-f615-4d69-82b9-1176845a2a69', 0, 'b963f63d-799e-4fef-ad7d-329aabef5d08.jpg', '', 0, 0, 0, b'0', '2020-03-26 10:47:41', '2020-03-26 10:47:41', '2020-03-26 10:47:41');
INSERT INTO `frienq_post_item` VALUES ('247b6882-a18f-4b19-9b02-7ae9c74acefd', '0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', 0, 'c15375b3-06f7-47ed-8057-74b74110f540.jpg', '', 0, 0, 0, b'0', '2020-07-08 23:00:22', '2020-07-08 23:00:22', '2020-07-08 23:00:22');
INSERT INTO `frienq_post_item` VALUES ('25d67332-f0e9-42e7-9211-af038ad4871f', 'cd28682b-8633-4845-9780-c3deda87175d', 0, 'b5148bc8-8375-4757-8318-b71ddee374d9.jpg', '', 0, 1, 0, b'0', '2020-03-07 01:07:07', '2020-03-07 01:07:07', '2020-03-07 01:07:07');
INSERT INTO `frienq_post_item` VALUES ('26edff97-3393-404b-8fbf-cfb17424744d', '271b151b-7737-4ce0-9ae5-6e77b4841d20', 0, 'ed638955-999e-4275-822d-94620d38c2ef.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:12:00', '2020-02-22 02:12:00', '2020-02-22 02:12:00');
INSERT INTO `frienq_post_item` VALUES ('27e9b6b2-e50a-4be7-a176-51a4ac1879ff', '5ec60526-185f-4f3d-8b2f-e57e6499258d', 0, '3e45534f-4f3f-40aa-92ec-8b53daff77c8.jpg', '', 0, 0, 0, b'0', '2020-02-24 23:38:28', '2020-02-24 23:38:28', '2020-02-24 23:38:28');
INSERT INTO `frienq_post_item` VALUES ('27ec2b7e-1ec9-4d66-a4c7-653105728f62', 'b67169f2-7cd4-44cd-b3fa-fe37cb757f27', 0, '', 'g', 0, 2, 2, b'0', '2020-03-06 01:43:18', '2020-03-06 01:43:18', '2020-03-06 01:43:18');
INSERT INTO `frienq_post_item` VALUES ('27fdaebd-66f5-4212-a97e-97a483703d50', '0a1987c0-e52e-4d56-9343-d27ccc66b254', 0, '0927e83e-edd8-48a5-8e15-1c2f52e3abce.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:27:19', '2020-03-29 20:27:19', '2020-03-29 20:27:19');
INSERT INTO `frienq_post_item` VALUES ('281a5604-37c6-4a75-90bb-b3d79c66ca28', '9680218b-b57e-4a8d-bccb-27f6f38d343f', 0, '', 'k', 0, 0, 1, b'0', '2020-02-23 21:15:40', '2020-02-23 21:15:40', '2020-02-23 21:15:40');
INSERT INTO `frienq_post_item` VALUES ('28657722-b478-4e2d-9831-2738e6809624', '983a23a3-6e80-4825-8665-02df1697b438', 0, '', 'jshndjf', 0, 0, 2, b'0', '2020-03-26 11:13:29', '2020-03-26 11:13:29', '2020-03-26 11:13:29');
INSERT INTO `frienq_post_item` VALUES ('28f80e85-14c5-49bf-937c-ee359ca89da9', '02a52a0f-2246-4286-871f-2d38781f4e94', 0, 'aa00a28f-33cd-4584-a882-092226c6fb1d.jpg', '', 0, 0, 0, b'0', '2020-02-01 01:01:57', '2020-02-01 01:01:57', '2020-02-01 01:01:57');
INSERT INTO `frienq_post_item` VALUES ('29bec380-14e6-462d-a560-33f8c59f5159', '308b2b40-8dd9-4398-9be4-eb25e09c953a', 0, '', 'ded', 0, 1, 2, b'0', '2020-02-25 00:52:17', '2020-02-25 00:52:17', '2020-02-25 00:52:17');
INSERT INTO `frienq_post_item` VALUES ('2a01e148-7acf-4181-b2f8-d4903aa894fa', 'fe29e239-87bc-495f-9e65-e71e36175b9b', 0, 'ba816b76-bf0d-4038-b333-5641c28d4422.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:40:35', '2020-03-22 19:40:35', '2020-03-22 19:40:35');
INSERT INTO `frienq_post_item` VALUES ('2ae699a0-4934-4d98-a864-1aa6de020838', 'daf4c262-2739-4d6d-80ad-0859b7f0242e', 0, 'f865ceb8-2f09-44c3-93b8-7c1e41b3a73d.jpg', '', 0, 2, 0, b'0', '2020-02-22 00:10:21', '2020-02-22 00:10:21', '2020-02-22 00:10:21');
INSERT INTO `frienq_post_item` VALUES ('2c43369d-7681-448c-a735-c340c00bd8c3', 'd050aca0-c423-42ae-8017-1971c4278d7d', 0, '73ed865e-6803-487a-b154-2d65b16a203d.jpg', '', 0, 0, 0, b'0', '2020-02-16 18:29:28', '2020-02-16 18:29:28', '2020-02-16 18:29:28');
INSERT INTO `frienq_post_item` VALUES ('2cf6807c-19f1-4a63-9cba-8b8419065fce', 'a8556fcc-9bb7-4bbe-8577-0faa30fbd5a2', 0, '599721ba-13ec-4194-a9bb-ecb9b0ba7ca8.jpg', '', 0, 0, 0, b'0', '2020-02-25 01:30:19', '2020-02-25 01:30:19', '2020-02-25 01:30:19');
INSERT INTO `frienq_post_item` VALUES ('2d71286f-c6f5-4b3f-ac22-bed7c5d5e4fa', 'ada557cf-0bad-43ca-8ed8-9aaee88d1165', 0, 'ec93a46b-f3df-4c7a-bc23-518ed29efb42.mp4', '', 0, 0, 0, b'0', '2020-02-13 20:43:42', '2020-02-13 20:43:42', '2020-02-13 20:43:42');
INSERT INTO `frienq_post_item` VALUES ('2e4c2d0f-8682-4e45-8f0b-050c3a9285aa', '5ad94d80-0bca-4f6d-b6b9-729887129a09', 0, 'aee5eef0-96d8-4c4d-a305-54ae92e2df11.jpg', '', 0, 0, 0, b'0', '2020-03-07 00:12:59', '2020-03-07 00:12:59', '2020-03-07 00:12:59');
INSERT INTO `frienq_post_item` VALUES ('2e5a9e2f-16ec-42d1-bee6-9b4da6c793d6', '27f0ec61-2413-4a81-b3af-ce76d47fc5d7', 0, 'c827864a-4b53-45c3-af20-f1c87854a2aa.jpg', '', 0, 0, 0, b'0', '2020-02-16 16:30:36', '2020-02-16 16:30:36', '2020-02-16 16:30:36');
INSERT INTO `frienq_post_item` VALUES ('2f462d5b-40d8-456c-b803-088d0ca4a87e', 'c2c878b4-f923-4ed5-b23a-24ceac9607c9', 0, '22dab017-4935-47e0-832d-fe4430fd6158.jpg', '', 0, 0, 0, b'0', '2020-03-06 21:48:03', '2020-03-06 21:48:03', '2020-03-06 21:48:03');
INSERT INTO `frienq_post_item` VALUES ('2ffd3df5-bf68-4730-8b82-f9db7311d4fb', 'bb0fc156-0dea-4bfb-8146-934a861e9c86', 0, 'a54c05c1-7a22-4ce6-97de-40715b6e30cf.jpg', '', 0, 0, 0, b'0', '2020-02-04 23:58:03', '2020-02-04 23:58:03', '2020-02-04 23:58:03');
INSERT INTO `frienq_post_item` VALUES ('3146eff0-3b2c-4355-b28b-713382e9b1fb', '7d9e57b5-1e58-4117-818a-a28b25febced', 0, 'a71029a1-fc53-4f75-9d04-9f929b0121ee.jpg', '', 0, 0, 0, b'0', '2020-02-27 23:45:58', '2020-02-27 23:45:58', '2020-02-27 23:45:58');
INSERT INTO `frienq_post_item` VALUES ('319f234d-1913-43ce-a13f-34cea6265933', 'c55dc1a9-1889-40c1-84e1-e3a757d28bc4', 0, 'd18411bb-3e87-4e71-8485-80644f4dd97d.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:28:06', '2020-02-06 22:28:06', '2020-02-06 22:28:06');
INSERT INTO `frienq_post_item` VALUES ('31e7df63-6c75-47f0-b7b2-a2dc37064c77', '15197396-4b92-4f65-aa97-6ccc6912d902', 0, '00ea6a64-d063-4768-9e82-af73d3efa1ea.jpg', '', 0, 0, 0, b'0', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34');
INSERT INTO `frienq_post_item` VALUES ('3420774f-7abc-4bd3-b6c8-e5c6c36943ac', '62a527d8-aa16-4e03-aaab-a366aec8fac8', 0, '845aa911-0326-464b-8283-f7066689da23.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:17:11', '2020-02-02 01:17:11', '2020-02-02 01:17:11');
INSERT INTO `frienq_post_item` VALUES ('3496d128-1dcb-4395-9022-24f030291ddf', 'cc481f76-58bd-4305-a105-64e012f679e3', 0, '3badda65-130c-4581-8eee-4042eb7a524d.mp4', '', 0, 0, 0, b'0', '2020-02-13 20:31:34', '2020-02-13 20:31:34', '2020-02-13 20:31:34');
INSERT INTO `frienq_post_item` VALUES ('34bbddc7-7a74-4c57-a395-243345d17124', '5ec60526-185f-4f3d-8b2f-e57e6499258d', 0, '3aa895fa-3ec1-42e4-868f-afa933b1ffb7.jpg', '', 0, 0, 0, b'0', '2020-02-24 23:38:28', '2020-02-24 23:38:28', '2020-02-24 23:38:28');
INSERT INTO `frienq_post_item` VALUES ('35caa50d-af4c-4352-854d-c1d35bdf0f96', 'e9c242b8-b3bc-4b65-829e-981a89394746', 0, '', 'etet', 0, 1, 2, b'0', '2020-06-03 19:13:52', '2020-06-03 19:13:52', '2020-06-03 19:13:52');
INSERT INTO `frienq_post_item` VALUES ('35f64c53-cad0-46c8-9996-8894e45bc88b', '74818591-d707-46e4-b807-1f111b5541d9', 0, 'd959224e-a795-4cd8-be88-a8d919f3d9d8.jpg', '', 0, 0, 0, b'0', '2020-02-15 15:52:09', '2020-02-15 15:52:09', '2020-02-15 15:52:09');
INSERT INTO `frienq_post_item` VALUES ('368cf237-8753-45c1-a765-799805fe7eac', 'dadf0650-5905-428f-ba9a-db854e262772', 0, '9c9c3796-c4a4-43c4-b2a6-4827b2db44bf.jpg', '', 0, 1, 0, b'0', '2020-02-20 21:34:01', '2020-02-20 21:34:01', '2020-02-20 21:34:01');
INSERT INTO `frienq_post_item` VALUES ('36a8032b-5987-4b15-9776-f798dc3aa97d', 'f122a15c-7e82-436e-9aa9-01a13c5356d5', 0, '', 'tete', 0, 1, 1, b'0', '2020-06-03 19:13:57', '2020-06-03 19:13:57', '2020-06-03 19:13:57');
INSERT INTO `frienq_post_item` VALUES ('36ebf4eb-2892-45e5-b707-d573cabeaa80', 'e5d5713c-b386-4c43-9f98-bce334bb1926', 0, '4b9cbd3a-7f62-4dd4-9dcd-f3f4d26295b2.jpg', '', 0, 0, 0, b'0', '2020-02-07 00:26:37', '2020-02-07 00:26:37', '2020-02-07 00:26:37');
INSERT INTO `frienq_post_item` VALUES ('39448911-ed2f-4efd-b46f-5563e08a6bb3', 'f2d9c602-fb9b-4521-a5b7-f112c24eac20', 0, '05639842-88c6-4ee8-9b92-b2b5e330cead.jpg', '', 0, 0, 0, b'0', '2020-03-23 08:59:18', '2020-03-23 08:59:18', '2020-03-23 08:59:18');
INSERT INTO `frienq_post_item` VALUES ('394a65ba-c510-4835-aa35-5f6ba86f89b7', '54e71e0e-570f-4679-ae7b-f88c443e1180', 0, '', 'y', 0, 1, 1, b'0', '2020-03-13 02:18:11', '2020-03-13 02:18:11', '2020-03-13 02:18:11');
INSERT INTO `frienq_post_item` VALUES ('3953730a-8ea7-4d33-8e37-dc24162412ff', '457e5e47-5f3a-4405-95d9-f97cddbc43d5', 0, '', 'Lu', 0, 0, 2, b'0', '2020-02-22 01:54:14', '2020-02-22 01:54:14', '2020-02-22 01:54:14');
INSERT INTO `frienq_post_item` VALUES ('39974d5f-70a2-4cef-85cd-165ea8922b92', 'd015010e-b7e7-44e2-ab43-69ae7d760fee', 0, '', 'Nah Tutar', 0, 0, 4, b'0', '2020-02-27 00:10:46', '2020-02-27 00:10:46', '2020-02-27 00:10:46');
INSERT INTO `frienq_post_item` VALUES ('3a0fe0b3-abd8-47b9-9c77-1cad691f99b1', 'a246b596-016e-4d45-adc9-de351b9d6cf2', 0, '', 'kö', 0, 0, 2, b'0', '2020-02-23 21:15:03', '2020-02-23 21:15:03', '2020-02-23 21:15:03');
INSERT INTO `frienq_post_item` VALUES ('3ab0de9c-2032-4a9f-b0cb-b7ae86e08e25', '9b7181cc-16bd-4050-83c2-35503bb295be', 0, '', 'merhaba', 0, 1, 1, b'0', '2020-02-21 21:27:12', '2020-02-21 21:27:12', '2020-02-21 21:27:12');
INSERT INTO `frienq_post_item` VALUES ('3ab35604-375c-4cd5-ace6-b2092778dbe3', 'a246b596-016e-4d45-adc9-de351b9d6cf2', 0, '', 'k', 0, 0, 1, b'0', '2020-02-23 21:15:03', '2020-02-23 21:15:03', '2020-02-23 21:15:03');
INSERT INTO `frienq_post_item` VALUES ('3b05dda8-8b8a-470a-b919-f76c43081767', '8ddef3a0-e69a-48f2-8999-6641cac7d75a', 0, '4ec9cea0-ed5d-4524-b7da-458410f919d3.jpg', '', 0, 1, 0, b'0', '2020-02-23 22:36:51', '2020-02-23 22:36:51', '2020-02-23 22:36:51');
INSERT INTO `frienq_post_item` VALUES ('3b1549ee-bb2b-446d-9ae0-189e0f17b735', '214f522a-5ca0-404e-a822-e84f8271c529', 0, 'e068e3c9-4873-4a83-82fe-67f2625a23f5.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:08:16', '2020-03-26 11:08:16', '2020-03-26 11:08:16');
INSERT INTO `frienq_post_item` VALUES ('3b2f254a-6630-4af2-ad3d-a19b73ee56e0', '8d7196fb-f892-48e0-b034-e7741aafe362', 0, '396ec6ed-f9d3-45be-808e-455edd9786bd.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:12:11', '2020-02-22 02:12:11', '2020-02-22 02:12:11');
INSERT INTO `frienq_post_item` VALUES ('3cc1ae9d-cdd8-41c7-a928-878a1708338c', 'd1200964-c1c7-429a-9bbc-182aa3d524ca', 0, '112f8e30-d99a-43eb-b1ab-1f93d4aa5fb6.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:11:48', '2020-03-13 02:11:48', '2020-03-13 02:11:48');
INSERT INTO `frienq_post_item` VALUES ('3dc99f10-8dd3-46b7-865d-3f2eb8a81664', '3a9190ae-d8e2-4a32-bf4d-6b5b27ebdb49', 0, 'f53edb64-3edc-4d43-9e72-ec5ff24f1d9c.jpg', '', 0, 0, 0, b'0', '2020-03-25 14:50:46', '2020-03-25 14:50:46', '2020-03-25 14:50:46');
INSERT INTO `frienq_post_item` VALUES ('3ed81ff7-e73d-4d24-bf1e-b5ccc6f42eb4', 'ff92305d-b46d-4892-b319-b69ba6d344eb', 0, '2ce859c2-4a9f-44f1-a9cd-a29304111264.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:43:18', '2020-02-21 23:43:18', '2020-02-21 23:43:18');
INSERT INTO `frienq_post_item` VALUES ('3f54325d-600d-472d-a1f9-69d3881682ff', '0b541363-9dc1-4146-82a8-2c0b009267aa', 0, 'd630fa7b-7cc8-4a48-b41c-72796a5019dc.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:35:31', '2020-03-22 19:35:31', '2020-03-22 19:35:31');
INSERT INTO `frienq_post_item` VALUES ('3fb56011-98cb-4037-a59c-f51b4d042dd3', '81325651-543d-4cac-9cd1-d8c432f586b1', 0, '0383d2ac-1a7e-4873-b35f-860e14335728.jpg', '', 0, 1, 0, b'0', '2020-03-08 22:30:46', '2020-03-08 22:30:46', '2020-03-08 22:30:46');
INSERT INTO `frienq_post_item` VALUES ('40481ace-0264-421e-9925-fe566b300a58', 'e2962526-5c7e-44d5-ac43-55cf68f03b3d', 0, '860a49ec-082f-41e0-a018-022cde7be037.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:41:14', '2020-02-21 23:41:14', '2020-02-21 23:41:14');
INSERT INTO `frienq_post_item` VALUES ('40751d7c-37c9-4a99-aee6-9e18e9b1e977', '9680218b-b57e-4a8d-bccb-27f6f38d343f', 0, '', 'kö', 0, 0, 2, b'0', '2020-02-23 21:15:40', '2020-02-23 21:15:40', '2020-02-23 21:15:40');
INSERT INTO `frienq_post_item` VALUES ('40b4c7d3-9dde-4b89-82f4-49f5bbd8ee51', '8440747f-0f7f-44eb-865d-1eb9773a5411', 0, '', 'y', 0, 1, 1, b'0', '2020-03-12 03:10:31', '2020-03-12 03:10:31', '2020-03-12 03:10:31');
INSERT INTO `frienq_post_item` VALUES ('4240ba9b-00bf-4517-a6a0-b895c3845484', '7b3c2e7c-a54a-4178-b7c1-abcda21701d0', 0, '17f737aa-472e-4075-9a53-690309ee0339.jpg', '', 0, 0, 0, b'0', '2020-02-16 18:30:15', '2020-02-16 18:30:15', '2020-02-16 18:30:15');
INSERT INTO `frienq_post_item` VALUES ('4262bb34-53b0-44b1-beb1-0a27a60bd404', 'ae51b00a-fc82-463a-ac79-f1fe2dbbc8d4', 0, '409d967e-9785-43ad-8e89-a79285180e3a.jpg', '', 0, 0, 0, b'0', '2020-07-08 23:00:21', '2020-07-08 23:00:21', '2020-07-08 23:00:21');
INSERT INTO `frienq_post_item` VALUES ('42909f34-c048-4524-a9c8-f73798c8550c', '70e6d4ca-a273-4fd8-97ac-830500bbcd86', 0, '967325d0-6b9c-4bc2-b09d-80eb7ec34927.jpg', '', 0, 0, 0, b'0', '2020-02-26 02:24:46', '2020-02-26 02:24:46', '2020-02-26 02:24:46');
INSERT INTO `frienq_post_item` VALUES ('43856413-677a-4afc-8b1c-af2d757ad1cf', 'f122a15c-7e82-436e-9aa9-01a13c5356d5', 0, '', 'etet', 0, 0, 2, b'0', '2020-06-03 19:13:57', '2020-06-03 19:13:57', '2020-06-03 19:13:57');
INSERT INTO `frienq_post_item` VALUES ('441898b7-a043-476b-93a8-bafceac0e449', '8036bb81-66c6-4932-b6b3-d0f34995fed6', 0, 'ef34b7f8-16db-4bbb-9e0b-be30eb1a982a.jpg', '', 0, 0, 0, b'0', '2020-02-14 21:00:05', '2020-02-14 21:00:05', '2020-02-14 21:00:05');
INSERT INTO `frienq_post_item` VALUES ('4459247e-a856-4cb1-beca-c5e398d1924b', 'dfcd9a57-96f5-4656-bd34-27027c45db6c', 0, '2b127b6f-7593-434a-b8d0-62fde5604e20.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:42:47', '2020-03-22 19:42:47', '2020-03-22 19:42:47');
INSERT INTO `frienq_post_item` VALUES ('44625e57-af87-464e-b085-25ff2ab94f4e', '4c5e984c-28f1-4797-beb5-0f6bfeefdfba', 0, 'd478c19e-2fa4-482b-a767-ceca5e6a56d2.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 15:59:58');
INSERT INTO `frienq_post_item` VALUES ('44f46064-c48d-4ca2-a4df-d032655319bf', 'c2e7559d-b8b2-4653-9ba5-0a1d6ec1ba10', 0, '', 'kürek', 0, 0, 2, b'0', '2020-02-20 22:58:05', '2020-02-20 22:58:05', '2020-02-20 22:58:05');
INSERT INTO `frienq_post_item` VALUES ('456f1aed-cb1f-4b72-b809-466012dd045f', 'addb159b-33e6-46a0-874d-5c84d31854f2', 0, '3065c79a-ff49-436b-97d6-bfd528da8625.jpg', '', 0, 0, 0, b'0', '2020-02-15 15:54:44', '2020-02-15 15:54:44', '2020-02-15 15:54:44');
INSERT INTO `frienq_post_item` VALUES ('458f5312-4f9f-40f0-b28d-3f39df8d9b8c', 'c4eafaf1-71cc-4750-8130-290aa5ff4e82', 0, '41f8e1ef-5003-4491-8265-4080d6ad328d.jpg', '', 0, 2, 0, b'0', '2020-03-25 07:46:27', '2020-03-25 07:46:27', '2020-03-25 07:46:27');
INSERT INTO `frienq_post_item` VALUES ('45a3006e-2fbc-459c-93e4-0074516590aa', 'fc0a6404-dd39-48f2-aee6-2ff9daa64ff6', 0, '1fee4ef2-f5dd-4f05-98d6-05462f0147b7.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:50:04', '2020-03-22 00:50:04', '2020-03-22 00:50:04');
INSERT INTO `frienq_post_item` VALUES ('45b69cec-a4ff-4dac-ab75-17e17437185a', '593f1662-88e1-42b6-9a0d-845c6382b3dc', 0, 'b9ea89e8-06ab-48fa-8b13-03e3a1170be6.jpg', '', 0, 0, 0, b'0', '2020-02-24 23:39:09', '2020-02-24 23:39:09', '2020-02-24 23:39:09');
INSERT INTO `frienq_post_item` VALUES ('46829b3e-81d8-48b8-86b4-c876ee58a82c', '33c2499d-8779-47f7-84ca-10fd3a8814e8', 0, '035c29ef-6b8e-495e-a011-7a9b407f44b1.jpg', '', 0, 0, 0, b'0', '2020-02-23 21:11:38', '2020-02-23 21:11:38', '2020-02-23 21:11:38');
INSERT INTO `frienq_post_item` VALUES ('486cadba-c0b4-44c4-8045-545885277913', '27f0ec61-2413-4a81-b3af-ce76d47fc5d7', 0, '3265b674-33fd-46a4-99e6-a6cec68be9b8.jpg', '', 0, 0, 0, b'0', '2020-02-16 16:30:36', '2020-02-16 16:30:36', '2020-02-16 16:30:36');
INSERT INTO `frienq_post_item` VALUES ('48a18c9c-cfbe-4d1a-9ff6-ba2e4fa24ab9', '2dfef1b7-a39f-4da3-9537-9ad660a80f06', 0, 'd93b851e-5ec5-41f4-b1e1-57f562d37e30.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:14:09', '2020-02-22 02:14:09', '2020-02-22 02:14:09');
INSERT INTO `frienq_post_item` VALUES ('48aa860a-3858-40fa-b68f-7b83b8793267', '0808103c-4c27-4db0-937d-3a78be16db9f', 0, '7dc2b177-a848-4f7a-9867-03891c2a5075.jpg', '', 0, 0, 0, b'0', '2020-07-08 23:00:15', '2020-07-08 23:00:15', '2020-07-08 23:00:15');
INSERT INTO `frienq_post_item` VALUES ('4a7600c0-27dc-4639-ace3-be41f62c75b8', 'd05eb94c-aa09-4069-9dfd-6e1e72d49fab', 0, '', 'Fenerbahçe', 0, 1, 1, b'0', '2020-02-22 02:02:54', '2020-02-22 02:02:54', '2020-02-22 02:02:54');
INSERT INTO `frienq_post_item` VALUES ('4ab7ce5a-8969-4c0c-b091-6310918d5d4a', '3517d1fb-9e9a-4b10-b28b-b29c430facb2', 0, 'dded3eed-1dd8-424f-9b2d-b5e4507857ec.mp4', '', 0, 0, 0, b'0', '2020-02-13 21:00:45', '2020-02-13 21:00:45', '2020-02-13 21:00:45');
INSERT INTO `frienq_post_item` VALUES ('4b66c7c7-d9bd-4220-b061-887ca079d75b', 'ce8777ee-f888-440e-9716-95d7422c7ae7', 0, '72d9fdbb-08a8-4962-b8a0-171674c7528b.jpg', '', 0, 0, 0, b'0', '2020-02-13 00:07:09', '2020-02-13 00:07:09', '2020-02-13 00:07:09');
INSERT INTO `frienq_post_item` VALUES ('4b671d81-fb94-41f8-a761-62ede993ff21', 'daf8b29a-2f25-4613-9c2b-5adee2828ae1', 0, 'da5e1ee5-6fce-46dc-97fb-9c115a3fe148.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:44:53', '2020-03-22 00:44:53', '2020-03-22 00:44:53');
INSERT INTO `frienq_post_item` VALUES ('4b9da60d-12cc-4f39-bbf4-6f6ba2cdb616', '7d56bf9d-b29b-41ef-bb71-6df6e10fe129', 0, 'e7269efb-c639-4768-bca1-02f8c95861c9.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:58:45', '2020-02-06 22:58:45', '2020-02-06 22:58:45');
INSERT INTO `frienq_post_item` VALUES ('4c882cf0-bcf9-4f56-8209-33fa02adecdc', '7c1025f3-8f96-4b77-b246-957c987b5eb5', 0, '01b4f9c0-ee5a-4800-b706-a5ce531f5988.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:32:44', '2020-03-22 00:32:44', '2020-03-22 00:32:44');
INSERT INTO `frienq_post_item` VALUES ('4d6e6da1-ea3c-402c-aa81-1ae9c9cc2654', 'd4794f30-b33e-49c1-b2dc-66754305fa9f', 0, '68e25f37-80f8-436a-9fd1-69604a560d93.jpg', '', 0, 0, 0, b'0', '2020-02-22 01:58:56', '2020-02-22 01:58:56', '2020-02-22 01:58:56');
INSERT INTO `frienq_post_item` VALUES ('4d9446fa-6b22-431d-a57d-914a2cf982df', '4518073e-42db-4473-9b18-c7fab09e10a1', 0, '3aa34e96-454b-48db-914b-9fb1e7716462.jpg', '', 0, 0, 0, b'0', '2020-07-07 12:11:46', '2020-07-07 12:11:46', '2020-07-07 12:11:46');
INSERT INTO `frienq_post_item` VALUES ('4dfca479-9412-40cc-8d9f-de0203ffd6e7', 'b9ad6dc7-f981-4729-b228-f87a85022309', 0, 'dd57caf2-e716-4623-be58-a3e9be8f9d36.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:09', '2020-02-22 19:59:09', '2020-02-22 19:59:09');
INSERT INTO `frienq_post_item` VALUES ('4f072f62-77a8-4135-b260-0f6c3c47147e', '9a41ceb6-a9e2-488c-b2a2-ca6d8a82b6ce', 0, '8247a578-5cc6-4d7c-bc38-3dee4c14c252.mp4', '', 0, 0, 0, b'0', '2020-02-25 00:51:47', '2020-02-25 00:51:47', '2020-02-25 00:51:47');
INSERT INTO `frienq_post_item` VALUES ('514e7c0f-6d6c-4fc5-b9be-e0ee2125345d', '7d93a2a6-bd85-4bbc-9c66-79e00221582d', 0, '24a19777-e8e2-4f9f-9741-9567c3d15427.jpg', '', 0, 0, 0, b'0', '2020-03-25 12:49:59', '2020-03-25 12:49:59', '2020-03-25 12:49:59');
INSERT INTO `frienq_post_item` VALUES ('51536718-8249-4e3f-833f-d500ad367350', 'b466edc1-87a4-4902-96bc-99b7202295c3', 0, 'e0cbec40-6c9f-49f1-9659-dbee54a6526b.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:20:53', '2020-02-26 01:20:53', '2020-02-26 01:20:53');
INSERT INTO `frienq_post_item` VALUES ('5192e9a4-4270-4030-8a34-35c9478ed69d', '6c779056-8011-471a-bc8e-5f4158e41298', 0, '', 'galatasaray', 0, 0, 1, b'0', '2020-02-20 23:18:22', '2020-02-20 23:18:22', '2020-02-20 23:18:22');
INSERT INTO `frienq_post_item` VALUES ('52a4dbc0-1cce-4bfc-aa5f-ff72463b1d19', 'a94adb5e-6cea-45ae-a618-573ced9b220f', 0, '', 'v', 0, 1, 1, b'0', '2020-03-29 10:19:23', '2020-03-29 10:19:23', '2020-03-29 10:19:23');
INSERT INTO `frienq_post_item` VALUES ('52d0ea9d-1d3e-4816-bd4e-293db7ece605', '0910b051-cfc9-421c-aab8-cb8408288881', 0, 'b526cf50-cae6-40bf-bab9-725306b18750.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:50:34', '2020-03-29 20:50:34', '2020-03-29 20:50:34');
INSERT INTO `frienq_post_item` VALUES ('56f81b95-3bf0-4a8e-a58b-c1c22dca019a', '17fff07e-0eb4-4d28-b17f-b360617f28fe', 0, '3032c549-0775-44bc-9fd8-245c037fbcaf.jpg', '', 0, 0, 0, b'0', '2020-02-22 01:58:58', '2020-02-22 01:58:58', '2020-02-22 01:58:58');
INSERT INTO `frienq_post_item` VALUES ('5760e78d-361c-4862-a03e-9c8f7fc2514d', '4890bf17-3752-426b-8d68-9caa96ed0a32', 0, '', 'werwer', 0, 1, 2, b'0', '2020-03-07 01:32:41', '2020-03-07 01:32:41', '2020-03-07 01:32:41');
INSERT INTO `frienq_post_item` VALUES ('5806ac76-7f94-4343-a543-83a9c0840731', '798035b6-924b-4e0f-8f75-90554a188e27', 0, '8912e186-480a-42dc-aa9f-5143c0e05369.jpg', '', 0, 0, 0, b'0', '2020-02-23 21:12:28', '2020-02-23 21:12:28', '2020-02-23 21:12:28');
INSERT INTO `frienq_post_item` VALUES ('595cceb7-f91b-40d5-8f85-723718e38b20', 'dfbe7dc2-64a3-43ef-9570-47ad6c2326d9', 0, '', 'f', 0, 1, 2, b'0', '2020-02-27 01:34:40', '2020-02-27 01:34:40', '2020-02-27 01:34:40');
INSERT INTO `frienq_post_item` VALUES ('59706a9c-f258-453c-ae3e-238beda4fb45', '9bb59f47-9bf2-45ac-b1f4-26c7c29bf009', 0, 'a19c182f-b496-40ce-9414-c2726ad7b6a8.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:17:54', '2020-03-22 19:17:54', '2020-03-22 19:17:54');
INSERT INTO `frienq_post_item` VALUES ('59e90ec0-1ae1-4b14-8a75-7995d04a4897', '180ffaf8-3471-40cd-8739-5e4588d12126', 0, '0d4a1e4b-ba00-41ab-871c-73f9c372b008.jpg', '', 0, 0, 0, b'0', '2020-03-29 10:30:04', '2020-03-29 10:30:04', '2020-03-29 10:30:04');
INSERT INTO `frienq_post_item` VALUES ('5a2c3e18-581c-4aaf-8d71-da6da82a9afc', '1169ad21-d7f6-42d9-8764-9fa9105ebb44', 0, 'f670e60d-cf8d-4e39-85cd-ed6e6011b2b9.mp4', '', 0, 0, 0, b'0', '2020-03-12 23:14:49', '2020-03-12 23:14:49', '2020-03-12 23:14:49');
INSERT INTO `frienq_post_item` VALUES ('5d0f480a-ca96-4734-8a1c-86abc4e0a209', 'f11ee528-a3cd-46bb-ae96-2d36c924cc4c', 0, 'ea38ca56-8296-4b13-a071-ce7ca473f7ac.jpg', '', 0, 0, 0, b'0', '2020-02-06 00:41:31', '2020-02-06 00:41:31', '2020-02-06 00:41:31');
INSERT INTO `frienq_post_item` VALUES ('5ee294ee-5a0a-47e7-9db6-731879966f6d', '026201e6-6609-4948-862b-a5fb744e3cfe', 0, '2691b785-6997-4195-8388-2886dacd10b2.mp4', '', 0, 0, 0, b'0', '2020-02-25 01:34:33', '2020-02-25 01:34:33', '2020-02-25 01:34:33');
INSERT INTO `frienq_post_item` VALUES ('5ee55745-9326-4438-aab8-7cc75e1f8054', '02edb583-0963-4fc1-b9c0-1acd17cb2898', 0, '2700c54b-8e89-4978-91a9-b34eda91f5c7.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:59:30', '2020-02-06 22:59:30', '2020-02-06 22:59:30');
INSERT INTO `frienq_post_item` VALUES ('5efdd9c2-5bde-4bb2-b67e-e419d161cbe4', 'a5002b4c-3f56-42eb-bfca-9bdb8dbc82e1', 0, '8b97c113-8bac-4626-a2b1-f67e89f30abf.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:22:25', '2020-03-29 20:22:25', '2020-03-29 20:22:25');
INSERT INTO `frienq_post_item` VALUES ('609b81bf-2b40-4dae-98b4-6fc3816b5355', '863bf4aa-5431-4f66-bb1f-28998c0ff04e', 0, '3d4c1cc9-4ea7-4c7f-a09d-2290a39d3509.jpg', '', 0, 0, 0, b'0', '2020-02-13 21:00:16', '2020-02-13 21:00:16', '2020-02-13 21:00:16');
INSERT INTO `frienq_post_item` VALUES ('609d5c21-a6c0-489a-bccb-029091355a2f', '271b151b-7737-4ce0-9ae5-6e77b4841d20', 0, 'f5377767-ca49-4d39-8d7f-1ba78955defc.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:12:00', '2020-02-22 02:12:00', '2020-02-22 02:12:00');
INSERT INTO `frienq_post_item` VALUES ('61313652-727e-4a6c-9aed-6df623c13ff3', '2944b91e-ae58-48bf-a85a-69606d7d79e5', 0, 'ba5fd486-e8af-49cd-8374-80abd078c2f5.jpg', '', 0, 0, 0, b'0', '2020-02-15 15:50:02', '2020-02-15 15:50:02', '2020-02-15 15:50:02');
INSERT INTO `frienq_post_item` VALUES ('61518164-5021-4bbb-ad40-505e2cc45726', 'e2962526-5c7e-44d5-ac43-55cf68f03b3d', 0, 'fc3609af-4dda-416f-bfd8-82e0f3e85429.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:41:13', '2020-02-21 23:41:13', '2020-02-21 23:41:13');
INSERT INTO `frienq_post_item` VALUES ('622d2594-dd26-418a-babb-379b1ca55f75', 'c2c878b4-f923-4ed5-b23a-24ceac9607c9', 0, '5a62eed5-e531-4c96-b324-7e65299b7fd5.mp4', '', 0, 0, 0, b'0', '2020-03-06 21:48:03', '2020-03-06 21:48:03', '2020-03-06 21:48:03');
INSERT INTO `frienq_post_item` VALUES ('633ea3cf-dde5-49cb-99ad-22c4e1b355cf', '47f8f00f-fc5f-473a-92d4-dd157c34f1bd', 0, '689cfe9e-bea4-4b01-9a4b-0aae194bf5a6.jpg', '', 0, 0, 0, b'0', '2020-03-24 16:31:27', '2020-03-24 16:31:27', '2020-03-24 16:31:27');
INSERT INTO `frienq_post_item` VALUES ('6585c925-b214-4a2f-939e-adc2e07a2183', 'e49e51d9-16e7-47b0-9c50-683e6461e283', 0, 'ea1fb10f-3a13-4d08-a386-3109c1be8bd3.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:47:07', '2020-03-01 22:47:07', '2020-03-01 22:47:07');
INSERT INTO `frienq_post_item` VALUES ('65a9111f-6f58-46b7-aa10-f3e0e436b70e', 'd40af02a-ae74-43c1-9cb4-f3a57fa87d56', 0, '9e65bfb7-d936-4e28-9b8f-e5309b916502.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:57', '2020-02-16 15:59:57', '2020-02-16 15:59:57');
INSERT INTO `frienq_post_item` VALUES ('68033e8e-50a9-423b-8397-e2ccd7c28394', 'a94adb5e-6cea-45ae-a618-573ced9b220f', 0, '', 'n', 0, 0, 2, b'0', '2020-03-29 10:19:23', '2020-03-29 10:19:23', '2020-03-29 10:19:23');
INSERT INTO `frienq_post_item` VALUES ('68a1a787-7abe-43ec-b644-9ecf5de5e065', '6c779056-8011-471a-bc8e-5f4158e41298', 0, '', 'besiktas', 0, 0, 1, b'0', '2020-02-20 23:18:22', '2020-02-20 23:18:22', '2020-02-20 23:18:22');
INSERT INTO `frienq_post_item` VALUES ('68dc20d2-5efe-40a3-a8d1-fb3f36dfeeb8', '62a527d8-aa16-4e03-aaab-a366aec8fac8', 0, 'fb7fccd9-fb9d-4629-94ea-a58a76f4330b.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:17:11', '2020-02-02 01:17:11', '2020-02-02 01:17:11');
INSERT INTO `frienq_post_item` VALUES ('694126b7-c0e3-4b45-961b-5b0c8987e1ad', '057cbbe9-a8f0-4ac9-bdd4-9c46beda7bdf', 0, '8499f646-7e5a-460c-8a9d-f542a3eeb566.jpg', '', 0, 0, 0, b'0', '2020-02-26 02:15:36', '2020-02-26 02:15:36', '2020-02-26 02:15:36');
INSERT INTO `frienq_post_item` VALUES ('6bc5039d-c83b-4f2b-b9a1-74d11add2923', '17fff07e-0eb4-4d28-b17f-b360617f28fe', 0, '5335218d-1673-4424-adcd-8284a2ef7140.jpg', '', 0, 0, 0, b'0', '2020-02-22 01:58:58', '2020-02-22 01:58:58', '2020-02-22 01:58:58');
INSERT INTO `frienq_post_item` VALUES ('6c92e60f-0a33-4329-aca7-03293227932b', 'b7067cbc-3e4d-4560-8f42-7311bc40af8d', 0, '', 'Fenerbahçe', 0, 1, 1, b'0', '2020-03-13 01:34:58', '2020-03-13 01:34:58', '2020-03-13 01:34:58');
INSERT INTO `frienq_post_item` VALUES ('6d259942-c465-4d0c-b659-8bd7430eb301', '6ca066a9-4f1b-4883-b7ee-f7801127581d', 0, '80554af2-d3f8-4a37-94fb-8448339c0ca8.jpg', '', 0, 0, 0, b'0', '2020-03-12 03:09:00', '2020-03-12 03:09:00', '2020-03-12 03:09:00');
INSERT INTO `frienq_post_item` VALUES ('6e1f8c89-4136-41a5-986a-7bd04eb2c8bb', '52d3da51-379d-459c-86a3-aa8dc8756d82', 0, '8be65e71-d81b-48e5-ac79-f7a529a6f4d0.jpg', '', 0, 0, 0, b'0', '2020-02-05 21:49:07', '2020-02-05 21:49:07', '2020-02-05 21:49:07');
INSERT INTO `frienq_post_item` VALUES ('6f037757-ac2a-4243-ae6e-b83e22aea89d', '1a6edd4e-d90b-4020-91e7-c81ad93b1220', 0, '32f57325-046c-4167-a0cf-2e4f13cf844a.jpg', '', 0, 0, 0, b'0', '2020-02-16 16:39:38', '2020-02-16 16:39:38', '2020-02-16 16:39:38');
INSERT INTO `frienq_post_item` VALUES ('6fb0f81f-4411-415a-8cac-a528410b2673', 'a6da7ac5-a815-4f4c-a82c-1b01965fd2be', 0, 'e557094a-6b96-44b6-bb09-cb00b2e5a170.jpg', '', 0, 0, 0, b'0', '2020-02-23 22:42:54', '2020-02-23 22:42:54', '2020-02-23 22:42:54');
INSERT INTO `frienq_post_item` VALUES ('6fbcc9cd-c359-4173-9a67-cff6ad132a34', '2287bca7-2d3b-4c95-b292-83473d40d367', 0, '6bc9aeb2-c185-4f21-afca-cbc1472da4d1.jpg', '', 0, 0, 0, b'0', '2020-02-09 22:55:11', '2020-02-09 22:55:11', '2020-02-09 22:55:11');
INSERT INTO `frienq_post_item` VALUES ('6ff1de47-3791-4399-b0fd-994339a37393', 'b425614a-77f3-4d3a-b433-cb8494a558bf', 0, '63bdb57a-3c5d-4029-a1ee-00cadebd7a95.jpg', '', 0, 0, 0, b'0', '2020-02-01 02:36:27', '2020-02-01 02:36:27', '2020-02-01 02:36:27');
INSERT INTO `frienq_post_item` VALUES ('71373407-eb93-4eb4-8714-524fcf1ffa62', '419964aa-e13c-4571-927f-6dbfbd7b9779', 0, '651f38e2-5ae6-48f7-a359-d323452c4111.jpg', '', 0, 0, 0, b'0', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34');
INSERT INTO `frienq_post_item` VALUES ('718f92d4-7fd4-4ada-b2c0-c53ff9dbc21d', '2d962eaf-47cf-40d2-94a5-6909f2b81f4b', 0, 'bc71ed71-5eab-4340-8baa-d8980fc5b24d.jpg', '', 0, 0, 0, b'0', '2020-02-01 01:00:52', '2020-02-01 01:00:52', '2020-02-01 01:00:52');
INSERT INTO `frienq_post_item` VALUES ('71d56969-3e93-4821-9747-5d8466f6fa2b', '798035b6-924b-4e0f-8f75-90554a188e27', 0, '23f6d34e-7504-450d-9629-28644f6221c9.jpg', '', 0, 2, 0, b'0', '2020-02-23 21:12:28', '2020-02-23 21:12:28', '2020-02-23 21:12:28');
INSERT INTO `frienq_post_item` VALUES ('725dd56c-ed6b-4a55-98e0-3a64304ca52c', '8ee3297d-7012-462c-be0d-97b0ae7b0223', 0, 'b29fc2a2-89aa-4609-83b6-eb716458a219.jpg', '', 0, 0, 0, b'0', '2020-03-21 23:12:02', '2020-03-21 23:12:02', '2020-03-21 23:12:02');
INSERT INTO `frienq_post_item` VALUES ('73992e88-3953-4011-91be-a3b9afcbb621', '3889d737-47d9-42a0-a8dc-5b7a424d2b7d', 0, 'b7e99a8f-2979-43e0-827f-1170316ebc90.jpg', '', 0, 0, 0, b'0', '2020-02-01 00:50:56', '2020-02-01 00:50:56', '2020-02-01 00:50:56');
INSERT INTO `frienq_post_item` VALUES ('73bd712e-8182-42e1-8780-f184c88f969c', 'c09baef1-e880-4536-944f-966b739ebf28', 0, '75e38561-8e9a-48b6-a025-a1b6974e1330.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:04:17', '2020-02-02 01:04:17', '2020-02-02 01:04:17');
INSERT INTO `frienq_post_item` VALUES ('74d5dc5c-10c3-4264-822d-8b3ce928842c', '9b7bcb64-8ba9-4cf7-94b5-03acf19bd09b', 0, 'b571ef1d-4e6a-491d-9175-e175516fb510.jpg', '', 0, 0, 0, b'0', '2020-03-24 06:24:23', '2020-03-24 06:24:23', '2020-03-24 06:24:23');
INSERT INTO `frienq_post_item` VALUES ('7551c6a8-8e40-4b35-9271-89d9edcca062', '18e06c60-28e1-488c-a088-2fc7c993c8bd', 0, 'f87f4599-e7fe-43df-9936-c95edf7cbb92.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:28:38', '2020-03-13 02:28:38', '2020-03-13 02:28:38');
INSERT INTO `frienq_post_item` VALUES ('759f4181-2141-4ac7-b9df-84cb2b4d2a2f', '5ad94d80-0bca-4f6d-b6b9-729887129a09', 0, '7caeabd4-4ba2-400f-b96e-008ed904fc6f.jpg', '', 0, 1, 0, b'0', '2020-03-07 00:12:59', '2020-03-07 00:12:59', '2020-03-07 00:12:59');
INSERT INTO `frienq_post_item` VALUES ('777dd9dd-08b4-4fe9-b7d7-cadf7e93efa1', '081bf8a3-dadb-4105-9dba-6c80307ad6eb', 0, 'e331f87e-cbfb-4029-b341-9e070c0fa0ef.jpg', '', 0, 2, 0, b'0', '2020-02-22 02:14:58', '2020-02-22 02:14:58', '2020-02-22 02:14:58');
INSERT INTO `frienq_post_item` VALUES ('77f57579-409a-4552-80bd-3528af8e2a2b', 'f8a16331-bbe3-4c62-837d-1415230410a4', 0, '', 'bb', 0, 2, 1, b'0', '2020-03-07 01:33:22', '2020-03-07 01:33:22', '2020-03-07 01:33:22');
INSERT INTO `frienq_post_item` VALUES ('78336ded-0164-48e4-a5a4-a9d23a125a7b', 'c8f78d9e-79b8-4ba8-b5ca-71d126530237', 0, '27ab0526-dfb1-4c7a-8500-9a88d463081c.jpg', '', 0, 0, 0, b'0', '2020-03-23 20:02:48', '2020-03-23 20:02:48', '2020-03-23 20:02:48');
INSERT INTO `frienq_post_item` VALUES ('7892007a-0fb7-44ce-aa04-648e2834c601', '593f1662-88e1-42b6-9a0d-845c6382b3dc', 0, 'bffd049e-5c01-4ff6-a22c-b72488c8556d.jpg', '', 0, 0, 0, b'0', '2020-02-24 23:39:09', '2020-02-24 23:39:09', '2020-02-24 23:39:09');
INSERT INTO `frienq_post_item` VALUES ('79786af2-a4f9-4f42-8892-4a0ea8136636', '02cef7e7-f36b-4ff3-9332-e2ac159ea308', 0, '77873b48-b5cf-4bc6-b53b-ca79d173d30b.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:34:40', '2020-02-26 01:34:40', '2020-02-26 01:34:40');
INSERT INTO `frienq_post_item` VALUES ('7a7b7d46-957e-4474-9f44-6d59c55adb66', 'db50778e-183c-43be-bbf7-8f7fa1a7f60e', 0, '870e9081-7368-46fc-b0dc-bd160513a8a3.jpg', '', 0, 0, 0, b'0', '2020-03-24 16:20:22', '2020-03-24 16:20:22', '2020-03-24 16:20:22');
INSERT INTO `frienq_post_item` VALUES ('7b2ea132-b19d-44ba-87ee-310d855f9bbb', 'a246b596-016e-4d45-adc9-de351b9d6cf2', 0, '', 'j', 0, 0, 4, b'0', '2020-02-23 21:15:03', '2020-02-23 21:15:03', '2020-02-23 21:15:03');
INSERT INTO `frienq_post_item` VALUES ('7be340ef-3609-49ec-862b-5b1ed11a8ecd', 'f8f4904b-cee6-4dd8-bf70-920353e5a054', 0, '', 'fenerbahce', 0, 2, 1, b'0', '2020-02-20 23:21:17', '2020-02-20 23:21:17', '2020-02-20 23:21:17');
INSERT INTO `frienq_post_item` VALUES ('7c6a4fbc-df01-4646-a9a7-bce4e968f1c7', '4f027a5e-cebc-403a-b150-d0568bcfa9b0', 0, 'c46dfaf4-82b4-4d5d-ac2b-056555766a06.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:41:13', '2020-03-01 22:41:13', '2020-03-01 22:41:13');
INSERT INTO `frienq_post_item` VALUES ('7c751f7e-f7ad-4c11-b13d-5544253006d8', 'd015010e-b7e7-44e2-ab43-69ae7d760fee', 0, '', 'Tutabilir', 0, 2, 2, b'0', '2020-02-27 00:10:46', '2020-02-27 00:10:46', '2020-02-27 00:10:46');
INSERT INTO `frienq_post_item` VALUES ('7f2de28e-f000-4613-a803-d147948d35c0', '6c779056-8011-471a-bc8e-5f4158e41298', 0, '', 'fenerbahçe', 0, 0, 1, b'0', '2020-02-20 23:18:22', '2020-02-20 23:18:22', '2020-02-20 23:18:22');
INSERT INTO `frienq_post_item` VALUES ('7fd56f6f-2efd-4172-8b34-9ac8cf0a7743', 'a0b2cfb8-c65f-49c6-bb76-5b9a8ed15862', 0, '0e9a2367-168b-4cc0-b125-ecc4b5be1770.jpg', '', 0, 0, 0, b'0', '2020-03-07 01:31:05', '2020-03-07 01:31:05', '2020-03-07 01:31:05');
INSERT INTO `frienq_post_item` VALUES ('8015bbbc-089d-4fef-a96e-47b4f1d4f36a', '4be2029b-cb30-4f83-97be-6010e64a3178', 0, '44127aa2-0449-4840-a1c8-f830d5659440.jpg', '', 0, 0, 0, b'0', '2020-03-24 05:55:14', '2020-03-24 05:55:14', '2020-03-24 05:55:14');
INSERT INTO `frienq_post_item` VALUES ('80d28318-457e-4573-aa03-6ae05f27002a', '7d93a2a6-bd85-4bbc-9c66-79e00221582d', 0, '6c9a0767-3900-43ce-8cb1-7197befa2a6b.jpg', '', 0, 0, 0, b'0', '2020-03-25 12:49:59', '2020-03-25 12:49:59', '2020-03-25 12:49:59');
INSERT INTO `frienq_post_item` VALUES ('81052920-e821-4b0d-a44a-2725cdfac16d', 'd05eb94c-aa09-4069-9dfd-6e1e72d49fab', 0, '', 'Beşiktaş', 0, 0, 1, b'0', '2020-02-22 02:02:54', '2020-02-22 02:02:54', '2020-02-22 02:02:54');
INSERT INTO `frienq_post_item` VALUES ('8119b155-c128-4350-9ee9-7f22e45b621d', 'b67169f2-7cd4-44cd-b3fa-fe37cb757f27', 0, '', 'b', 0, 1, 3, b'0', '2020-03-06 01:43:18', '2020-03-06 01:43:18', '2020-03-06 01:43:18');
INSERT INTO `frienq_post_item` VALUES ('811d3447-35e4-4339-9f48-a9e98c04a12b', '55d0adb7-e272-428e-bec3-cac48aa150fe', 0, '8b5cc98a-742b-42a1-a7f7-4a5deb78a4af.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:15:55', '2020-03-29 20:15:55', '2020-03-29 20:15:55');
INSERT INTO `frienq_post_item` VALUES ('81201d27-9c30-45bc-95bf-f9495a3df1de', '7d56bf9d-b29b-41ef-bb71-6df6e10fe129', 0, 'b56b4384-8700-4cff-baa3-73e23cfaed6e.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:58:45', '2020-02-06 22:58:45', '2020-02-06 22:58:45');
INSERT INTO `frienq_post_item` VALUES ('812fe78e-c560-4fe3-a945-d2a36caf769b', '8d1f2345-c4bf-480c-80a2-de75f26497d1', 0, '70c3ace7-eab4-454d-909c-9c3a3f600ec2.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:52:21', '2020-02-06 23:52:21', '2020-02-06 23:52:21');
INSERT INTO `frienq_post_item` VALUES ('813a1154-d463-4853-a5cb-c5e6520a84e4', '62929077-99f5-4a67-baa5-073e10a59e00', 0, 'f5303cf8-2279-412c-910f-e37265d89cc9.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:28:13', '2020-03-22 19:28:13', '2020-03-22 19:28:13');
INSERT INTO `frienq_post_item` VALUES ('826140bc-ef2e-4bf3-a9f5-cbb93929b12c', 'f8f4904b-cee6-4dd8-bf70-920353e5a054', 0, '', 'trabzonspor', 0, 0, 4, b'0', '2020-02-20 23:21:17', '2020-02-20 23:21:17', '2020-02-20 23:21:17');
INSERT INTO `frienq_post_item` VALUES ('828b4922-90eb-4d36-83f6-f65248e88b9a', 'e49e51d9-16e7-47b0-9c50-683e6461e283', 0, '76d1a6fd-305a-42a6-9c2f-226bec620f44.jpg', '', 0, 1, 0, b'0', '2020-03-01 22:47:07', '2020-03-01 22:47:07', '2020-03-01 22:47:07');
INSERT INTO `frienq_post_item` VALUES ('835b994b-c306-44bc-971d-05dc879b9120', '22ef7131-9531-4db9-9a0b-897202838450', 0, 'a7c91bb2-6045-40ee-b59e-e3c7681a31e0.jpg', '', 0, 0, 0, b'0', '2020-03-13 01:54:16', '2020-03-13 01:54:16', '2020-03-13 01:54:16');
INSERT INTO `frienq_post_item` VALUES ('843d727f-af9a-4542-905d-fca433c8895c', 'bbb8c6bc-2f36-4a8d-8d92-b8078aacc956', 0, 'e7b267b8-2e34-4e96-835b-babce8885cc3.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:32:47', '2020-02-06 23:32:47', '2020-02-06 23:32:47');
INSERT INTO `frienq_post_item` VALUES ('847b77ab-3440-40e7-803c-b55d6b41f377', '8440747f-0f7f-44eb-865d-1eb9773a5411', 0, '', 'k', 0, 2, 2, b'0', '2020-03-12 03:10:31', '2020-03-12 03:10:31', '2020-03-12 03:10:31');
INSERT INTO `frienq_post_item` VALUES ('8487d92f-5327-4331-a6e6-0492a375666c', 'ce998247-8d06-4383-bebe-1ad28e7dda80', 0, '6933051c-d8f3-4821-bf1e-da98023a5e0d.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:11:47', '2020-02-26 01:11:47', '2020-02-26 01:11:47');
INSERT INTO `frienq_post_item` VALUES ('84af1db7-d1cc-4bf1-94bf-e5327af5fe9a', 'b9ad6dc7-f981-4729-b228-f87a85022309', 0, '545e8e02-9a79-4419-8432-a16c03beb93e.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:09', '2020-02-22 19:59:09', '2020-02-22 19:59:09');
INSERT INTO `frienq_post_item` VALUES ('882b3dd9-6594-4231-9470-4df35a77339c', 'b5504f3f-cf70-4dcd-9e6c-fcc51bcf29ce', 0, '5a428e08-99a9-4f4a-abdb-3fb9eaad1ad6.jpg', '', 0, 0, 0, b'0', '2020-02-13 20:14:09', '2020-02-13 20:14:09', '2020-02-13 20:14:09');
INSERT INTO `frienq_post_item` VALUES ('882c2960-2848-4fef-83af-984592e9c19f', '144d93f1-49dc-4cbd-8f91-b27f9a1a2105', 0, '', 'b', 0, 1, 2, b'0', '2020-03-29 10:17:38', '2020-03-29 10:17:38', '2020-03-29 10:17:38');
INSERT INTO `frienq_post_item` VALUES ('891b2f70-2c56-4d31-939e-2ff20f8b63e4', 'daf4c262-2739-4d6d-80ad-0859b7f0242e', 0, '47eb2ec4-a8a7-4981-be44-4336fa74acb8.jpg', '', 0, 0, 0, b'0', '2020-02-22 00:10:21', '2020-02-22 00:10:21', '2020-02-22 00:10:21');
INSERT INTO `frienq_post_item` VALUES ('897c9140-8396-4d77-949d-196a1bf67991', 'a91a17aa-37a1-4992-b078-8344bec849e7', 0, '7b5fbc28-4352-4b91-ba90-e8813510bfad.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:21:57', '2020-02-06 23:21:57', '2020-02-06 23:21:57');
INSERT INTO `frienq_post_item` VALUES ('89f22243-35a0-425b-be2b-e0ed13310aa7', '02b9f157-80f1-416f-b0d2-75521350029a', 0, '6979294a-1794-4640-b362-344c86dc9a7f.jpg', '', 0, 0, 0, b'0', '2020-02-13 20:59:52', '2020-02-13 20:59:52', '2020-02-13 20:59:52');
INSERT INTO `frienq_post_item` VALUES ('8b638362-5956-4d27-8a01-6df5553dddc2', 'c2ab56e6-5420-48e4-a862-674f0fc3ee8f', 0, '59eb9f42-1c98-493d-98e1-1e82a9f9ee2c.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:36:55', '2020-03-29 20:36:55', '2020-03-29 20:36:55');
INSERT INTO `frienq_post_item` VALUES ('8b8c6c81-fe1f-4e10-ab81-95a61caf960f', '9719d5e6-a797-44ba-a804-fef1bbe7b1a4', 0, '9648aad8-4e56-4316-a7b3-40ab539b25c1.mp4', '', 0, 0, 0, b'0', '2020-04-10 16:43:31', '2020-04-10 16:43:31', '2020-04-10 16:43:31');
INSERT INTO `frienq_post_item` VALUES ('8c78ba38-b7db-4bf9-b3d5-fed5a10dd179', '3a9190ae-d8e2-4a32-bf4d-6b5b27ebdb49', 0, 'f4234100-ea3e-456c-92c4-4d9f4bf8c3df.jpg', '', 0, 0, 0, b'0', '2020-03-25 14:50:46', '2020-03-25 14:50:46', '2020-03-25 14:50:46');
INSERT INTO `frienq_post_item` VALUES ('8d1dceb3-aaa5-4bfc-8b16-effbb778c8fa', '8205e70d-cd7a-4fc1-a446-6409dc11b86c', 0, '4b116fab-f3c3-49b8-a8f1-ec6707f2671c.jpg', '', 0, 0, 0, b'0', '2020-03-24 17:15:50', '2020-03-24 17:15:50', '2020-03-24 17:15:50');
INSERT INTO `frienq_post_item` VALUES ('8de1a80a-d276-446a-aeaa-4a5da02ef896', '946243f2-71bc-472f-ab9a-3ed9246ce5ee', 0, '', 'Yusuf', 0, 1, 1, b'0', '2020-03-13 02:18:34', '2020-03-13 02:18:34', '2020-03-13 02:18:34');
INSERT INTO `frienq_post_item` VALUES ('8e38d2a3-3186-4076-9cff-867976032823', '5f5b68f4-5948-49fa-8d70-329113388b52', 0, '4b15bbe0-f1d5-4865-9d1d-fb5942a10f11.mp4', '', 0, 0, 0, b'0', '2020-02-13 00:36:26', '2020-02-13 00:36:26', '2020-02-13 00:36:26');
INSERT INTO `frienq_post_item` VALUES ('8e62821e-1dcc-419a-b75f-5595399fa89a', 'e1818a96-5d5a-4693-b75e-39c8f1039108', 0, '0cdbc728-b5a7-4f9d-aa80-77fa09969085.jpg', '', 0, 0, 0, b'0', '2020-02-18 14:08:10', '2020-02-18 14:08:10', '2020-02-18 14:08:10');
INSERT INTO `frienq_post_item` VALUES ('8f074aee-5c17-43c5-8a46-6aa75591327e', '7d93a2a6-bd85-4bbc-9c66-79e00221582d', 0, '89b689cb-c529-4e1f-8f1c-d64a41ae9888.jpg', '', 0, 1, 0, b'0', '2020-03-25 12:49:59', '2020-03-25 12:49:59', '2020-03-25 12:49:59');
INSERT INTO `frienq_post_item` VALUES ('8fa1f34b-8e91-495b-b039-6776eb64f74d', '9680218b-b57e-4a8d-bccb-27f6f38d343f', 0, '', 'j', 0, 0, 4, b'0', '2020-02-23 21:15:40', '2020-02-23 21:15:40', '2020-02-23 21:15:40');
INSERT INTO `frienq_post_item` VALUES ('91fb7846-51bb-4160-bea7-702170fdfb9b', '6c779056-8011-471a-bc8e-5f4158e41298', 0, '', 'trabzonspor', 0, 0, 1, b'0', '2020-02-20 23:18:22', '2020-02-20 23:18:22', '2020-02-20 23:18:22');
INSERT INTO `frienq_post_item` VALUES ('9249748d-b4db-4dec-932f-a37dc67d23ab', '5bb9e383-e6f6-4500-8c31-0e6f2cb6cd71', 0, '30b5ada0-4efa-4706-a3ee-ca03695e5d0d.jpg', '', 0, 0, 0, b'0', '2020-02-11 21:06:47', '2020-02-11 21:06:47', '2020-02-11 21:06:47');
INSERT INTO `frienq_post_item` VALUES ('92c9a089-349c-463a-852c-54af9261aa35', '214f522a-5ca0-404e-a822-e84f8271c529', 0, 'a58f3afc-4cc4-4568-8edc-a1e8a27c5845.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:08:16', '2020-03-26 11:08:16', '2020-03-26 11:08:16');
INSERT INTO `frienq_post_item` VALUES ('935969da-6232-46e7-a778-cae86f3b0328', 'db6999e9-4a69-48bc-bf2e-b16398b3f815', 0, 'dc1f936c-16e0-4b05-a60a-18f789a83222.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:05:38', '2020-03-26 11:05:38', '2020-03-26 11:05:38');
INSERT INTO `frienq_post_item` VALUES ('948ff1b5-b532-492d-8fe1-e5f91f25447d', '6c2c5d3e-8930-492c-9d01-a1a4a878fda3', 0, 'e58b2b2c-5839-4d3d-bd2a-fd5dc6a9ef11.jpg', '', 0, 0, 0, b'0', '2020-03-13 01:55:12', '2020-03-13 01:55:12', '2020-03-13 01:55:12');
INSERT INTO `frienq_post_item` VALUES ('9579b61d-dd1e-493d-9db3-734309e24a84', 'a200fcd4-6752-4571-a343-f0d0f78e5dc1', 0, '8c98e027-0859-4c60-8e64-525adce89d41.jpg', '', 0, 0, 0, b'0', '2020-02-12 01:18:13', '2020-02-12 01:18:13', '2020-02-12 01:18:13');
INSERT INTO `frienq_post_item` VALUES ('96c31232-07f9-447b-9690-646f32a02061', '34f24ce0-cb84-47c5-9948-0c83be892743', 0, '335ff04d-0699-401f-b2d6-eeb988e97ec8.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:46:46', '2020-03-01 22:46:46', '2020-03-01 22:46:46');
INSERT INTO `frienq_post_item` VALUES ('973f6c63-a610-4438-b2a7-d2b3e3fe21d7', 'a3fc7cb3-e3df-45e0-ae85-be6153778db7', 0, 'd2ceb073-e90a-471f-be68-abe3d04dcc05.jpg', '', 0, 0, 0, b'0', '2020-02-08 22:10:30', '2020-02-08 22:10:30', '2020-02-08 22:10:30');
INSERT INTO `frienq_post_item` VALUES ('9748c779-c406-4432-80e2-b20fc06cc123', 'c9311198-12ff-4549-9743-5baf493215e6', 0, '', 'mmm', 0, 0, 1, b'0', '2020-02-20 22:28:01', '2020-02-20 22:28:01', '2020-02-20 22:28:01');
INSERT INTO `frienq_post_item` VALUES ('9814c705-aef9-4057-853d-acf0d3005f9f', '247a7de1-68f5-4af8-9f27-e94b532b2369', 0, '0568abf4-1b56-4c41-851c-968eeda778ad.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:18', '2020-02-22 19:59:18', '2020-02-22 19:59:18');
INSERT INTO `frienq_post_item` VALUES ('9aa7c851-8539-45ef-9853-4810801a3ac4', '41293e9d-572c-413e-91f7-f3795dbd38d5', 0, 'e3344c92-0657-47d5-b5e0-4abc18f5baa7.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:55', '2020-02-16 15:59:55', '2020-02-16 15:59:55');
INSERT INTO `frienq_post_item` VALUES ('9bdf9f8a-f7aa-4a42-a047-ea5618b0d9b6', '3bf34016-5359-4db1-ae17-d70fb641992f', 0, '889e9329-1b28-4d25-8347-5ae956ff7d70.jpg', '', 0, 0, 0, b'0', '2020-02-13 20:15:35', '2020-02-13 20:15:35', '2020-02-13 20:15:35');
INSERT INTO `frienq_post_item` VALUES ('9cc2d2c5-8d29-4eff-8dd6-e2d443069a84', '308b2b40-8dd9-4398-9be4-eb25e09c953a', 0, '', 'de', 0, 1, 1, b'0', '2020-02-25 00:52:17', '2020-02-25 00:52:17', '2020-02-25 00:52:17');
INSERT INTO `frienq_post_item` VALUES ('9e50d735-32bc-4b2e-bf20-61d86f97039c', '82a3c9dd-a791-4124-8b92-6c9578000567', 0, 'e6838572-1fae-4aa9-b15f-fc99b94d8201.jpg', '', 0, 0, 0, b'0', '2020-02-07 00:14:50', '2020-02-07 00:14:50', '2020-02-07 00:14:50');
INSERT INTO `frienq_post_item` VALUES ('a0056540-0ed0-4ffa-90a9-70d9fa737bc1', 'f0165d3e-114b-4369-bf60-ffa04bf813d2', 0, 'fec784ad-c0b6-4329-9d01-19b81fe4d689.jpg', '', 0, 0, 0, b'0', '2020-02-26 00:39:15', '2020-02-26 00:39:15', '2020-02-26 00:39:15');
INSERT INTO `frienq_post_item` VALUES ('a019a441-941d-4bd8-8ed6-64c60345c113', '7e8b4fc0-cdec-4420-8764-a00202961191', 0, 'a18f0e34-52a8-449c-845b-f9e1ad26ec63.jpg', '', 0, 0, 0, b'0', '2020-03-29 20:43:18', '2020-03-29 20:43:18', '2020-03-29 20:43:18');
INSERT INTO `frienq_post_item` VALUES ('a05290a0-fc62-4691-a20a-188cab150018', '8d0f33ac-32c8-4cc4-9bd5-cc7fc2f33c1c', 0, '', 'u', 0, 2, 2, b'0', '2020-03-13 02:15:40', '2020-03-13 02:15:40', '2020-03-13 02:15:40');
INSERT INTO `frienq_post_item` VALUES ('a243fb03-4a1f-448e-a5b2-b0c9fe41c87e', 'dd248e48-a1bf-448e-93ed-a1aa9a26a122', 0, '27b67947-784b-4025-a891-9acc421f344e.jpg', '', 0, 0, 0, b'0', '2020-02-07 00:20:26', '2020-02-07 00:20:26', '2020-02-07 00:20:26');
INSERT INTO `frienq_post_item` VALUES ('a25c5a8e-2497-48bd-9e2b-3ad7c391df93', '9b7181cc-16bd-4050-83c2-35503bb295be', 0, '', 'selam', 0, 2, 2, b'0', '2020-02-21 21:27:12', '2020-02-21 21:27:12', '2020-02-21 21:27:12');
INSERT INTO `frienq_post_item` VALUES ('a46105c7-de27-4719-9d0f-aecb77046ed8', 'eba840c2-52dc-40fe-a65e-41fe84fedad2', 0, '', 'xcc', 0, 1, 2, b'0', '2020-03-29 10:24:32', '2020-03-29 10:24:32', '2020-03-29 10:24:32');
INSERT INTO `frienq_post_item` VALUES ('a4b5f737-cb52-43c8-a777-0d9c648d87ee', '154a85e8-c29b-4caa-93ee-48eb70273495', 0, '', 'b', 0, 2, 0, b'0', '2020-03-12 03:14:19', '2020-03-12 03:14:19', '2020-03-12 03:14:19');
INSERT INTO `frienq_post_item` VALUES ('a575e240-b750-491e-94e0-1310362a05a0', 'ff92305d-b46d-4892-b319-b69ba6d344eb', 0, 'aed86fc0-f1ac-4591-8fa4-bdc9fbf126f7.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:43:18', '2020-02-21 23:43:18', '2020-02-21 23:43:18');
INSERT INTO `frienq_post_item` VALUES ('a5e585cc-8bb0-4b89-9518-16a677ba905d', 'a240a3f3-9f74-44e5-aa15-1a6ecaf7562b', 0, '', 'k', 0, 0, 1, b'0', '2020-02-23 21:14:47', '2020-02-23 21:14:47', '2020-02-23 21:14:47');
INSERT INTO `frienq_post_item` VALUES ('a728f56d-7fab-4991-b908-65e97fe5f36d', '247a7de1-68f5-4af8-9f27-e94b532b2369', 0, 'c7fc5e4e-3994-4f15-912b-9bc57f5f87d1.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:18', '2020-02-22 19:59:18', '2020-02-22 19:59:18');
INSERT INTO `frienq_post_item` VALUES ('a7a1046c-e49a-4984-b4f8-baba6b62fdea', '4eed59c6-42f0-4b2c-b49c-22e1255fa83c', 0, '591667ee-d91f-4e08-b6f1-98ef9eca9589.jpg', '', 0, 0, 0, b'0', '2020-03-07 00:16:31', '2020-03-07 00:16:31', '2020-03-07 00:16:31');
INSERT INTO `frienq_post_item` VALUES ('a8013511-3b0f-4f91-babc-e68c28af4731', 'b9ad6dc7-f981-4729-b228-f87a85022309', 0, 'dcf438eb-87ac-469e-8f52-867faa469a21.jpg', '', 0, 0, 0, b'0', '2020-02-22 19:59:09', '2020-02-22 19:59:09', '2020-02-22 19:59:09');
INSERT INTO `frienq_post_item` VALUES ('a81bc307-5167-4337-a4b8-31d04ee485f9', 'd6d93cb8-ca20-41a6-8be1-35b41bf493df', 0, '68467172-b4fb-4114-9113-a9a7625527f6.mp4', '', 0, 0, 0, b'0', '2020-02-13 20:47:31', '2020-02-13 20:47:31', '2020-02-13 20:47:31');
INSERT INTO `frienq_post_item` VALUES ('a973977d-a317-48cf-89ea-f23db7f0b801', '37e9bede-9978-4bb1-9e35-852f3ee3a237', 0, '4fcde371-4fd2-433e-a994-49c44a3d1221.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:57:33', '2020-02-16 15:57:33', '2020-02-16 15:57:33');
INSERT INTO `frienq_post_item` VALUES ('aa400a1d-f24e-44b3-9c71-95bc20a3e225', 'f25a4caa-efbf-4c88-b658-06e3005f05a7', 0, '9c42a1f2-cbb2-44e4-b153-4bb01c4ebd6b.jpg', '', 0, 0, 0, b'0', '2020-02-15 00:42:12', '2020-02-15 00:42:12', '2020-02-15 00:42:12');
INSERT INTO `frienq_post_item` VALUES ('abcdcf69-fdf2-45b4-93c7-1425810bf06b', '22fb9ec4-b757-43cf-825c-99ce2cf4df73', 0, 'c0e8b9c1-471c-46a6-b06a-5445e3dd387f.jpg', '', 0, 0, 0, b'0', '2020-03-25 15:13:12', '2020-03-25 15:13:12', '2020-03-25 15:13:12');
INSERT INTO `frienq_post_item` VALUES ('acfd80b9-e91a-4dd1-9e49-d109cefb193c', 'db6999e9-4a69-48bc-bf2e-b16398b3f815', 0, 'ee744874-df38-4049-80fd-9f75de6adf93.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:05:38', '2020-03-26 11:05:38', '2020-03-26 11:05:38');
INSERT INTO `frienq_post_item` VALUES ('ad82d37e-d96b-480b-9910-7ca5ac90661c', 'eba840c2-52dc-40fe-a65e-41fe84fedad2', 0, '', 'iih', 0, 1, 1, b'0', '2020-03-29 10:24:32', '2020-03-29 10:24:32', '2020-03-29 10:24:32');
INSERT INTO `frienq_post_item` VALUES ('ae59edad-a4ff-4c35-9bd4-e7e777e606d0', 'f8a16331-bbe3-4c62-837d-1415230410a4', 0, '', 'bb', 0, 0, 2, b'0', '2020-03-07 01:33:22', '2020-03-07 01:33:22', '2020-03-07 01:33:22');
INSERT INTO `frienq_post_item` VALUES ('ae9513f7-a7fe-45d1-bd08-214d57e41bd6', 'fd406708-1b07-43db-9062-b17e1c775ca5', 0, '08b07fb2-0306-4787-b92e-01a230539da6.jpg', '', 0, 0, 0, b'0', '2020-02-13 20:59:04', '2020-02-13 20:59:04', '2020-02-13 20:59:04');
INSERT INTO `frienq_post_item` VALUES ('b019940f-e095-488f-bc42-88b700148a3c', 'b1cb7133-82be-44ba-aff3-d4cedf49c6e6', 0, '', 'ooo\n', 0, 0, 1, b'0', '2020-06-23 18:58:23', '2020-06-23 18:58:23', '2020-06-23 18:58:23');
INSERT INTO `frienq_post_item` VALUES ('b020465c-e60d-40cf-acbe-3e9fec24faff', '2f028dfb-c6f4-4a70-a4b8-84d386267a52', 0, '6eed90c1-819d-4883-bed6-9044a6a5db22.jpg', '', 0, 0, 0, b'0', '2020-03-22 17:06:33', '2020-03-22 17:06:33', '2020-03-22 17:06:33');
INSERT INTO `frienq_post_item` VALUES ('b08814ee-57b0-44df-8003-54dd4db8f9a1', '9680218b-b57e-4a8d-bccb-27f6f38d343f', 0, '', 'çl', 0, 0, 3, b'0', '2020-02-23 21:15:40', '2020-02-23 21:15:40', '2020-02-23 21:15:40');
INSERT INTO `frienq_post_item` VALUES ('b466d61e-e951-4fde-9c87-885d4a15e0ed', '41ab565e-f256-4983-89a8-80eb914c42a8', 0, '9e17743b-6ff2-4049-94aa-a3feb2fc9e8a.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:19:35', '2020-02-21 23:19:35', '2020-02-21 23:19:35');
INSERT INTO `frienq_post_item` VALUES ('b5c448c3-e601-4ce4-9342-79d958373f43', '22fb9ec4-b757-43cf-825c-99ce2cf4df73', 0, '743f6a8c-c84a-411f-895e-a81997a97dc4.jpg', '', 0, 0, 0, b'0', '2020-03-25 15:13:12', '2020-03-25 15:13:12', '2020-03-25 15:13:12');
INSERT INTO `frienq_post_item` VALUES ('b61599b8-0b4b-456d-b94c-b84c97843fdc', '77fa1015-83a9-4997-9e7c-a249fe863eac', 0, '6b171a7d-d15e-4046-93ec-6a5e075c9fb7.jpg', '', 0, 0, 0, b'0', '2020-06-03 21:36:23', '2020-06-03 21:36:23', '2020-06-03 21:36:23');
INSERT INTO `frienq_post_item` VALUES ('b6b496c8-ad1d-482a-9b33-013f365e7857', '8d28a6e0-07a8-4810-bfee-b702718c72c6', 0, '5df081ef-e697-4f84-a4ff-46ac38d7d843.jpg', '', 0, 0, 0, b'0', '2020-03-24 06:18:33', '2020-03-24 06:18:33', '2020-03-24 06:18:33');
INSERT INTO `frienq_post_item` VALUES ('b71fff2c-1fa1-426b-b1b1-ef15012646f8', 'b7149ce5-2ae6-46ff-8106-9abb8d62c57d', 0, '91927e71-5c43-4318-9b49-c0527fd9cbe4.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:56', '2020-02-16 15:59:56', '2020-02-16 15:59:56');
INSERT INTO `frienq_post_item` VALUES ('b7200e1d-895e-4bfb-8ea8-e39d8a5fde49', '19939143-1706-47c8-b196-c4dfdeb36ba0', 0, 'b6ec29b5-c999-4a9f-806a-b2fcb7c92cb6.jpg', '', 0, 0, 0, b'0', '2020-02-09 22:49:47', '2020-02-09 22:49:47', '2020-02-09 22:49:47');
INSERT INTO `frienq_post_item` VALUES ('b7860d53-7bae-49b0-ad93-b9a6e4300143', '7b479a55-0618-4cdc-9783-cd7a130e97fb', 0, '3912eba1-f667-4f73-af85-29448a32c24e.jpg', '', 0, 0, 0, b'0', '2020-02-04 23:34:34', '2020-02-04 23:34:34', '2020-02-04 23:34:34');
INSERT INTO `frienq_post_item` VALUES ('b7b18807-a213-4f90-9290-924460791868', 'a91a17aa-37a1-4992-b078-8344bec849e7', 0, '8a7860e1-3c94-413e-bbac-ab68f5080d5e.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:21:57', '2020-02-06 23:21:57', '2020-02-06 23:21:57');
INSERT INTO `frienq_post_item` VALUES ('b8182ed8-30ef-4d57-9626-87008beae7f3', '02a3cd30-df64-46ef-a5f9-3f383e31f520', 0, '7112190d-514c-4f4e-9e5d-c663f0610b03.mp4', '', 0, 0, 0, b'0', '2020-03-01 22:33:30', '2020-03-01 22:33:30', '2020-03-01 22:33:30');
INSERT INTO `frienq_post_item` VALUES ('b865d833-589b-4789-9193-953bae1c7c82', '02a3cd30-df64-46ef-a5f9-3f383e31f520', 0, 'aa6429bd-3df3-40b7-879a-90d189c3bec0.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:33:30', '2020-03-01 22:33:30', '2020-03-01 22:33:30');
INSERT INTO `frienq_post_item` VALUES ('b9950625-3e62-446f-81bd-24c1900fb05f', '0d93e574-0e5d-48ee-845d-b2d898802926', 0, '7257a3ec-75aa-4be3-bc31-e4aa2fb19e86.jpg', '', 0, 0, 0, b'0', '2020-03-06 21:48:31', '2020-03-06 21:48:31', '2020-03-06 21:48:31');
INSERT INTO `frienq_post_item` VALUES ('b9d770cf-1c70-4a05-9f18-eda31cd7d3af', 'f94febba-5296-4af5-87f9-470082bed416', 0, 'e135dacc-c29d-4c69-bac5-8df79fa00d2f.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:04:23', '2020-02-06 23:04:23', '2020-02-06 23:04:23');
INSERT INTO `frienq_post_item` VALUES ('ba2f34ad-b959-47be-845b-31566e54c5ea', '591a6297-e1c8-445e-ad70-22756c5f3d83', 0, '5ab623f2-0fce-4940-b3b2-916c29f44fba.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:07:09', '2020-03-26 11:07:09', '2020-03-26 11:07:09');
INSERT INTO `frienq_post_item` VALUES ('bb02e9d4-4bdc-476b-a015-02db2e109d1c', '18e06c60-28e1-488c-a088-2fc7c993c8bd', 0, '2e8a2ec8-773d-4917-8bab-7e1561951285.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:28:38', '2020-03-13 02:28:38', '2020-03-13 02:28:38');
INSERT INTO `frienq_post_item` VALUES ('bb782ef5-ea3a-4665-9c50-2e609278ff68', 'b48ee58f-fe03-4446-a518-f876a2062e37', 0, 'd6520eb9-c1ab-4818-a2e5-5c758cf5fc81.mp4', '', 0, 0, 0, b'0', '2020-02-15 15:51:01', '2020-02-15 15:51:01', '2020-02-15 15:51:01');
INSERT INTO `frienq_post_item` VALUES ('bba02822-3cdc-410c-9e82-9c5c41d633ca', 'c44912a4-0eb1-4b85-9e5f-94652916c539', 0, '1f414317-d85e-4ce0-b9db-5d4dc63b60bb.jpg', '', 0, 0, 0, b'0', '2020-03-23 17:52:22', '2020-03-23 17:52:22', '2020-03-23 17:52:22');
INSERT INTO `frienq_post_item` VALUES ('bbc4aea5-77c2-4b55-b6fe-d7e4bbc059d6', '18e06c60-28e1-488c-a088-2fc7c993c8bd', 0, '65456e7c-5e23-4b3c-a937-d388f8a71020.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:28:38', '2020-03-13 02:28:38', '2020-03-13 02:28:38');
INSERT INTO `frienq_post_item` VALUES ('bc4df3fa-081e-4a4a-8f87-caa3281ff931', '02a52a0f-2246-4286-871f-2d38781f4e94', 0, '0f948fbe-f794-42d3-b39d-e2e6f0ee251a.jpg', '', 0, 0, 0, b'0', '2020-02-01 01:01:57', '2020-02-01 01:01:57', '2020-02-01 01:01:57');
INSERT INTO `frienq_post_item` VALUES ('bc8c2fba-4bb0-4542-ab9e-8e05e64be9ed', '591a6297-e1c8-445e-ad70-22756c5f3d83', 0, '3fce2d70-c4d0-46c0-b678-30d94f0d9281.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:07:09', '2020-03-26 11:07:09', '2020-03-26 11:07:09');
INSERT INTO `frienq_post_item` VALUES ('bdc307ea-7860-4a00-9586-4e620fe4fa42', '40e0099a-c2cb-4613-8b24-6d2ca3640c9e', 0, 'ff83761d-6647-4bd1-b9e2-f276870479ec.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:50:50', '2020-02-06 22:50:50', '2020-02-06 22:50:50');
INSERT INTO `frienq_post_item` VALUES ('be280978-4e11-42b7-b59f-2531b945eaf4', '6422d032-6ad6-49b5-8c31-aa37de23a0af', 0, '', 'etet', 0, 1, 2, b'0', '2020-06-03 19:13:53', '2020-06-03 19:13:53', '2020-06-03 19:13:53');
INSERT INTO `frienq_post_item` VALUES ('be3d2252-cadb-4211-ab2e-780ed562abb3', '2dfef1b7-a39f-4da3-9537-9ad660a80f06', 0, 'fec29b14-2d5f-4145-99da-00d52da86def.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:14:09', '2020-02-22 02:14:09', '2020-02-22 02:14:09');
INSERT INTO `frienq_post_item` VALUES ('bee371f0-8950-4a02-8258-443eb58b944b', 'eefbd577-1636-45a2-938a-59169ba261a7', 0, 'cb307790-361f-44f3-9e37-67796ba5cf00.jpg', '', 0, 0, 0, b'0', '2020-02-09 20:54:37', '2020-02-09 20:54:37', '2020-02-09 20:54:37');
INSERT INTO `frienq_post_item` VALUES ('c0affab6-9e57-4f92-9ceb-090e3feddbfc', '3042d003-da4b-44a4-a129-e21151fbedcc', 0, 'df9ab6e6-2fa5-4453-bb36-f8b09373e484.jpg', '', 0, 0, 0, b'0', '2020-02-23 22:57:37', '2020-02-23 22:57:37', '2020-02-23 22:57:37');
INSERT INTO `frienq_post_item` VALUES ('c133e7ed-ba67-4e74-afe0-0b47cd05a279', 'e49e51d9-16e7-47b0-9c50-683e6461e283', 0, '3481ed68-f4e1-4c99-964f-ee2ab078d527.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:47:07', '2020-03-01 22:47:07', '2020-03-01 22:47:07');
INSERT INTO `frienq_post_item` VALUES ('c1d7286a-a032-4db7-9bc7-1abbaf166fc9', '8893ce22-f6d9-4355-867e-0a13dcdf9b5f', 0, 'd4185031-90d8-4f6c-a8dd-2165d4aa18c8.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:34:34', '2020-02-21 23:34:34', '2020-02-21 23:34:34');
INSERT INTO `frienq_post_item` VALUES ('c25b1a1e-a696-4b18-acb4-7cda996fc072', '5319d6e6-6a6f-4857-8f64-551bab7bff8b', 0, 'd7b982d2-42f3-453b-900b-ee6e5a794518.mp4', '', 0, 0, 0, b'0', '2020-02-25 00:30:28', '2020-02-25 00:30:28', '2020-02-25 00:30:28');
INSERT INTO `frienq_post_item` VALUES ('c5f2debd-8e6b-41ea-a0e8-f328825e555c', 'fb2f6170-9374-4b48-9aa5-894027d1edfd', 0, 'e26c4772-cd1f-48b8-8044-147d74629cbb.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:45:56', '2020-02-21 23:45:56', '2020-02-21 23:45:56');
INSERT INTO `frienq_post_item` VALUES ('c7613980-906a-42fd-bd92-171fa0a8486a', 'b67169f2-7cd4-44cd-b3fa-fe37cb757f27', 0, '', 'a\n', 0, 0, 1, b'0', '2020-03-06 01:43:18', '2020-03-06 01:43:18', '2020-03-06 01:43:18');
INSERT INTO `frienq_post_item` VALUES ('c81af633-0f7f-4663-9f8e-a5ba933646b6', 'afb53026-6474-452e-814b-3e3454973665', 0, '1afa4984-f5d9-4913-8a74-64509a6b9b0a.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:00:50', '2020-02-02 01:00:50', '2020-02-02 01:00:50');
INSERT INTO `frienq_post_item` VALUES ('c884c3a2-72e3-4552-bcb2-7883fb2dd558', 'daf4c262-2739-4d6d-80ad-0859b7f0242e', 0, 'e21fa04e-411c-4918-8532-bb72dc8fa1aa.jpg', '', 0, 1, 0, b'0', '2020-02-22 00:10:21', '2020-02-22 00:10:21', '2020-02-22 00:10:21');
INSERT INTO `frienq_post_item` VALUES ('cb777375-7b79-4bf7-a089-f65530f65e5e', '5319d6e6-6a6f-4857-8f64-551bab7bff8b', 0, '990055b6-b639-49b4-979c-32ac7e855eae.jpg', '', 0, 0, 0, b'0', '2020-02-25 00:30:28', '2020-02-25 00:30:28', '2020-02-25 00:30:28');
INSERT INTO `frienq_post_item` VALUES ('cbe19216-b9f0-4730-ac90-21bdf6758176', '214f522a-5ca0-404e-a822-e84f8271c529', 0, '6148b710-99ef-4dbf-b0d5-1f71905cf7fd.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:08:16', '2020-03-26 11:08:16', '2020-03-26 11:08:16');
INSERT INTO `frienq_post_item` VALUES ('ccdb2b42-e24f-44c3-ba96-7e2ddf51dbf6', '81325651-543d-4cac-9cd1-d8c432f586b1', 0, '44965ea1-7758-4524-9db4-2b9d0979c735.jpg', '', 0, 1, 0, b'0', '2020-03-08 22:30:46', '2020-03-08 22:30:46', '2020-03-08 22:30:46');
INSERT INTO `frienq_post_item` VALUES ('ccdb525d-aa3d-4b1b-9611-c49c74d72195', '3042d003-da4b-44a4-a129-e21151fbedcc', 0, '990870d8-41b1-4b9d-9d21-655dcbf24563.jpg', '', 0, 0, 0, b'0', '2020-02-23 22:57:37', '2020-02-23 22:57:37', '2020-02-23 22:57:37');
INSERT INTO `frienq_post_item` VALUES ('cd38401d-54d4-4066-9508-a1a400e0c14f', 'dfcd9a57-96f5-4656-bd34-27027c45db6c', 0, '5c99d9a1-22ec-45d1-b5f7-b9cd574b243f.jpg', '', 0, 1, 0, b'0', '2020-03-22 19:42:47', '2020-03-22 19:42:47', '2020-03-22 19:42:47');
INSERT INTO `frienq_post_item` VALUES ('cdb77c9e-3c54-4619-a94a-d5188547fce2', '983a23a3-6e80-4825-8665-02df1697b438', 0, '', 'nabshdhd', 0, 0, 1, b'0', '2020-03-26 11:13:29', '2020-03-26 11:13:29', '2020-03-26 11:13:29');
INSERT INTO `frienq_post_item` VALUES ('ce09d8cb-8c9d-4d45-b33c-e9fed79c7fd3', '072feeab-637d-495b-8b66-0acb80e9434c', 0, 'bfbc19b7-1049-4b27-989c-88470ac77321.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:44:41', '2020-02-06 23:44:41', '2020-02-06 23:44:41');
INSERT INTO `frienq_post_item` VALUES ('ce8bff23-b1cd-4e0d-8c15-f5d9c1e83b91', 'ab98fb55-1c87-4f8b-a52b-9bb48fe2a6a8', 0, 'd1a8115c-c0ee-4b62-b97d-1240c446c8f7.jpg', '', 0, 0, 0, b'0', '2020-04-06 13:51:14', '2020-04-06 13:51:14', '2020-04-06 13:51:14');
INSERT INTO `frienq_post_item` VALUES ('cef74cb2-321c-4736-bb4c-7590795bf1d1', 'b7ee09d7-59c2-4148-bdf0-7e46f751810d', 0, '3004c56f-289f-4e4f-8153-8387d945a44e.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:52:38', '2020-03-22 19:52:38', '2020-03-22 19:52:38');
INSERT INTO `frienq_post_item` VALUES ('d1186c17-d732-456f-980e-5f363d085005', '7f80caff-cbd8-4cdd-9d23-02de599491f6', 0, '9fac684c-63c4-422b-bb16-8accc4a3370e.mp4', '', 0, 0, 0, b'0', '2020-02-13 20:32:29', '2020-02-13 20:32:29', '2020-02-13 20:32:29');
INSERT INTO `frienq_post_item` VALUES ('d16d8ef0-b93e-44c4-b5da-b4be03ff6597', 'a240a3f3-9f74-44e5-aa15-1a6ecaf7562b', 0, '', 'çl', 0, 0, 3, b'0', '2020-02-23 21:14:47', '2020-02-23 21:14:47', '2020-02-23 21:14:47');
INSERT INTO `frienq_post_item` VALUES ('d1dd7f12-77ec-474c-b016-2caa92c2a35a', '214f522a-5ca0-404e-a822-e84f8271c529', 0, '57a12690-47e9-4549-b4a8-d256dcc2a762.jpg', '', 0, 2, 0, b'0', '2020-03-26 11:08:16', '2020-03-26 11:08:16', '2020-03-26 11:08:16');
INSERT INTO `frienq_post_item` VALUES ('d1e77088-af31-4319-be87-49892ce80aa6', 'a6da7ac5-a815-4f4c-a82c-1b01965fd2be', 0, '1a8e0657-615a-4741-9ab2-1efb2dc83926.jpg', '', 0, 0, 0, b'0', '2020-02-23 22:42:54', '2020-02-23 22:42:54', '2020-02-23 22:42:54');
INSERT INTO `frienq_post_item` VALUES ('d45e9d33-1085-4653-9b3b-dd7f147dd001', '35ba6e8f-e4b1-4121-8b60-9bd127d846ef', 0, 'e0d005ac-e0ae-4c6e-9672-8110438addc7.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 15:59:58');
INSERT INTO `frienq_post_item` VALUES ('d48a86aa-7346-4315-a130-f12a5c2ae6cf', '7962a92e-db07-4458-8f5b-9abb67f0102f', 0, '74046afb-2306-4db0-9354-fbaa32845731.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:09:08', '2020-02-26 01:09:08', '2020-02-26 01:09:08');
INSERT INTO `frienq_post_item` VALUES ('d4931be3-aebd-4f62-98fb-4346127f5147', 'b7067cbc-3e4d-4560-8f42-7311bc40af8d', 0, '', 'Galatasaray', 0, 2, 2, b'0', '2020-03-13 01:34:58', '2020-03-13 01:34:58', '2020-03-13 01:34:58');
INSERT INTO `frienq_post_item` VALUES ('d518aacc-cf16-44e7-881e-b644863c4131', '7ced889f-eccc-4b8a-8049-eb96e8d967aa', 0, 'f2ea1c1e-54b6-4be4-8608-27270b55e95f.jpg', '', 0, 0, 0, b'0', '2020-02-06 23:06:44', '2020-02-06 23:06:44', '2020-02-06 23:06:44');
INSERT INTO `frienq_post_item` VALUES ('d527246f-f03c-4016-a16d-85b55f44dfda', '813f206e-5c55-45b5-b88f-595e3806563f', 0, '1d77d875-20f2-4fe7-980d-959000f607af.mp4', '', 0, 0, 0, b'0', '2020-02-24 23:41:25', '2020-02-24 23:41:25', '2020-02-24 23:41:25');
INSERT INTO `frienq_post_item` VALUES ('d543ed85-7c3d-4017-9f27-790bdb920292', '144d93f1-49dc-4cbd-8f91-b27f9a1a2105', 0, '', 'a', 0, 1, 1, b'0', '2020-03-29 10:17:38', '2020-03-29 10:17:38', '2020-03-29 10:17:38');
INSERT INTO `frienq_post_item` VALUES ('d5b1002c-c304-477b-8777-b1ee718d4a2e', '44a66d43-cfb1-4fe2-829f-23026871f3ec', 0, '9bb77af2-e475-4a5d-89a6-e61693784d7e.jpg', '', 0, 0, 0, b'0', '2020-03-23 22:38:39', '2020-03-23 22:38:39', '2020-03-23 22:38:39');
INSERT INTO `frienq_post_item` VALUES ('d8798e95-e905-4638-9304-d770bb54dc1c', 'e16da070-b651-4424-92fb-8fbacbef85e1', 0, 'da6ce16e-cf63-4259-93ab-295fcf7f30ca.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:57:20', '2020-03-22 00:57:20', '2020-03-22 00:57:20');
INSERT INTO `frienq_post_item` VALUES ('d9a3789a-eeec-408a-86e0-eaaf09f74132', 'c9311198-12ff-4549-9743-5baf493215e6', 0, '', 'öööö', 0, 0, 2, b'0', '2020-02-20 22:28:01', '2020-02-20 22:28:01', '2020-02-20 22:28:01');
INSERT INTO `frienq_post_item` VALUES ('daf67adc-e796-4673-ba68-f1d9eae4c21e', '6aefd1aa-7be8-4810-a4f2-056072ec95dd', 0, 'b348d22d-2fca-4f7c-b346-54ec312dd04f.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:49:15', '2020-02-16 15:49:15', '2020-02-16 15:49:15');
INSERT INTO `frienq_post_item` VALUES ('db2203a4-7c3e-4e5b-9a84-1bdfe26e2a01', '2dfef1b7-a39f-4da3-9537-9ad660a80f06', 0, '5270e8e5-02e8-4f3c-a416-4f5838547260.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:14:09', '2020-02-22 02:14:09', '2020-02-22 02:14:09');
INSERT INTO `frienq_post_item` VALUES ('dc2d7f85-9f5d-4057-afd6-9b05a4c63664', '8ddef3a0-e69a-48f2-8999-6641cac7d75a', 0, '6c2a482a-46ac-477a-bb42-08485f4afe09.jpg', '', 0, 1, 0, b'0', '2020-02-23 22:36:51', '2020-02-23 22:36:51', '2020-02-23 22:36:51');
INSERT INTO `frienq_post_item` VALUES ('dc9afb31-527d-4746-8ab7-fa7c506abb26', 'ab98fb55-1c87-4f8b-a52b-9bb48fe2a6a8', 0, '6974072e-402c-4266-a6ec-d62445dbc7d2.jpg', '', 0, 0, 0, b'0', '2020-04-06 13:51:14', '2020-04-06 13:51:14', '2020-04-06 13:51:14');
INSERT INTO `frienq_post_item` VALUES ('ddc4b4ac-4743-4cc1-935e-7c355b53ce20', '5ffe131f-7b22-4d36-a803-5628985e4ade', 0, '6041a4b3-aece-4344-b5df-fafbdc561b51.jpg', '', 0, 0, 0, b'0', '2020-03-29 10:28:18', '2020-03-29 10:28:18', '2020-03-29 10:28:18');
INSERT INTO `frienq_post_item` VALUES ('de66b103-3f29-4241-8296-752b32739007', 'e9c242b8-b3bc-4b65-829e-981a89394746', 0, '', 'tete', 0, 1, 1, b'0', '2020-06-03 19:13:52', '2020-06-03 19:13:52', '2020-06-03 19:13:52');
INSERT INTO `frienq_post_item` VALUES ('de746bf8-51fd-4554-849a-37ecdfbcf0b3', '798035b6-924b-4e0f-8f75-90554a188e27', 0, 'e9359e97-63b5-4fdd-b0d6-945cb107f990.jpg', '', 0, 0, 0, b'0', '2020-02-23 21:12:28', '2020-02-23 21:12:28', '2020-02-23 21:12:28');
INSERT INTO `frienq_post_item` VALUES ('dff78625-4104-47c4-9d06-b9a2c8614b37', 'd7d70c21-09db-45ea-9c95-c3bc80caa1df', 0, '470adce7-c683-4f4b-8a9e-9fa7fc1995d9.jpg', '', 0, 0, 0, b'0', '2020-02-26 01:39:07', '2020-02-26 01:39:07', '2020-02-26 01:39:07');
INSERT INTO `frienq_post_item` VALUES ('e0d43684-6f32-4e1e-bd29-2970ff02b39a', '6ca066a9-4f1b-4883-b7ee-f7801127581d', 0, '5b60b217-2b7e-4f5b-aff2-167f572c5059.jpg', '', 0, 0, 0, b'0', '2020-03-12 03:09:00', '2020-03-12 03:09:00', '2020-03-12 03:09:00');
INSERT INTO `frienq_post_item` VALUES ('e1134dab-e2a2-48eb-85c9-a873c9d45303', '2a9372e9-cf9d-4c01-8952-15064fdb43c0', 0, 'cd05f21f-b513-4782-b2b3-a974a5a4747c.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:55', '2020-02-16 15:59:55', '2020-02-16 15:59:55');
INSERT INTO `frienq_post_item` VALUES ('e1ddff5c-53b7-4d85-bfe0-de0cece62362', '5a748890-49ae-4344-a1b1-d7b53b27e8d6', 0, 'b90660e0-45b2-427c-b065-f928ca8c0eb0.jpg', '', 0, 0, 0, b'0', '2020-03-16 22:46:11', '2020-03-16 22:46:11', '2020-03-16 22:46:11');
INSERT INTO `frienq_post_item` VALUES ('e20867c7-7fc6-4769-98c4-9f82ea5e34ae', '081bf8a3-dadb-4105-9dba-6c80307ad6eb', 0, 'ae7ac57e-eb2c-4733-8a44-5ea1693fbeed.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:14:58', '2020-02-22 02:14:58', '2020-02-22 02:14:58');
INSERT INTO `frienq_post_item` VALUES ('e217684d-5a47-4000-9ada-7a94338af664', 'f8f4904b-cee6-4dd8-bf70-920353e5a054', 0, '', 'besiktas', 0, 1, 3, b'0', '2020-02-20 23:21:17', '2020-02-20 23:21:17', '2020-02-20 23:21:17');
INSERT INTO `frienq_post_item` VALUES ('e255abc1-b557-4a8a-89aa-5afe883844c4', '8893ce22-f6d9-4355-867e-0a13dcdf9b5f', 0, 'be3710e4-1564-434c-9554-cfe23b8c9edf.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:34:34', '2020-02-21 23:34:34', '2020-02-21 23:34:34');
INSERT INTO `frienq_post_item` VALUES ('e273515e-928e-4382-8a4c-038a1bf73a57', 'cc45f811-1820-4946-87ef-87cfdc728069', 0, '8d04745a-ef05-45e4-8ef7-d29e5f9a107a.jpg', '', 0, 0, 0, b'0', '2020-03-22 19:58:13', '2020-03-22 19:58:13', '2020-03-22 19:58:13');
INSERT INTO `frienq_post_item` VALUES ('e2db8525-ed4e-4629-ad74-a8193ad1b9d1', 'e49e51d9-16e7-47b0-9c50-683e6461e283', 0, '955933c9-f36a-4e65-9b74-141dec34e6d4.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:47:07', '2020-03-01 22:47:07', '2020-03-01 22:47:07');
INSERT INTO `frienq_post_item` VALUES ('e2f5dcac-bc00-4c23-9c6c-7e83443bd444', '5f6f5c5c-6fdb-4c2e-95ef-abd6ffaa5d0b', 0, '7c67e6af-f906-4033-858d-664b62a29943.jpg', '', 0, 0, 0, b'0', '2020-07-09 08:30:46', '2020-07-09 08:30:46', '2020-07-09 08:30:46');
INSERT INTO `frienq_post_item` VALUES ('e405e0fb-eced-4b9f-a490-3edcafd3bee9', '2e2340ad-b98f-41a0-920c-0794ee6556d3', 0, '67b98316-480d-476e-8c3e-ff815a4e8a46.jpg', '', 0, 0, 0, b'0', '2020-03-23 22:41:16', '2020-03-23 22:41:16', '2020-03-23 22:41:16');
INSERT INTO `frienq_post_item` VALUES ('e48a9ec1-0d5f-4679-9444-ed52ed553817', 'ac2597ce-4719-4a78-886d-b959041e9e45', 0, '4ff37c89-9cb0-4bce-a985-77604f2ada0e.jpg', '', 0, 0, 0, b'0', '2020-03-24 18:29:34', '2020-03-24 18:29:34', '2020-03-24 18:29:34');
INSERT INTO `frienq_post_item` VALUES ('e512b354-ca12-4db5-915d-3c2073f556ef', '4eed59c6-42f0-4b2c-b49c-22e1255fa83c', 0, '1054d2c1-8ba9-478d-bd7e-c9b9c0305e97.jpg', '', 0, 1, 0, b'0', '2020-03-07 00:16:31', '2020-03-07 00:16:31', '2020-03-07 00:16:31');
INSERT INTO `frienq_post_item` VALUES ('e5859a4d-3803-4ce7-9f53-60905e8395a0', '9c3dc0f3-3716-4337-819d-cd66cc93742a', 0, '4040b22e-54f9-4132-8366-e8a9bc33bb37.jpg', '', 0, 0, 0, b'0', '2020-02-09 01:19:08', '2020-02-09 01:19:08', '2020-02-09 01:19:08');
INSERT INTO `frienq_post_item` VALUES ('e5edd07a-dd11-4d7e-9793-75f0513738dd', 'aaba3901-38b4-4330-9baf-536fdf30a921', 0, '8de8fa63-7ac4-4dc7-b7a8-6853f5e73864.jpg', '', 0, 0, 0, b'0', '2020-02-26 23:27:01', '2020-02-26 23:27:01', '2020-02-26 23:27:01');
INSERT INTO `frienq_post_item` VALUES ('e60082fb-be0b-430f-9961-409d37558940', 'ccf99d03-b736-400e-9e77-136d42bfd26f', 0, '59184b1a-3a77-4ca9-af5b-88aba98f3304.jpg', '', 0, 0, 0, b'0', '2020-03-22 00:40:40', '2020-03-22 00:40:40', '2020-03-22 00:40:40');
INSERT INTO `frienq_post_item` VALUES ('e608fabe-9004-40f4-8837-3067007ce3ef', '3a9190ae-d8e2-4a32-bf4d-6b5b27ebdb49', 0, '02fc1310-dd4b-4d61-8211-c33816be6930.jpg', '', 0, 0, 0, b'0', '2020-03-25 14:50:46', '2020-03-25 14:50:46', '2020-03-25 14:50:46');
INSERT INTO `frienq_post_item` VALUES ('e60a1b06-5e17-4ff2-ae56-a3d8b043cd61', 'f8f4904b-cee6-4dd8-bf70-920353e5a054', 0, '', 'galatasaray', 0, 1, 2, b'0', '2020-02-20 23:21:17', '2020-02-20 23:21:17', '2020-02-20 23:21:17');
INSERT INTO `frienq_post_item` VALUES ('e70c6c6c-c12c-4e25-8415-5e83dc849511', 'd4794f30-b33e-49c1-b2dc-66754305fa9f', 0, 'cdc7b742-a949-4755-8c84-0833a4880311.jpg', '', 0, 0, 0, b'0', '2020-02-22 01:58:56', '2020-02-22 01:58:56', '2020-02-22 01:58:56');
INSERT INTO `frienq_post_item` VALUES ('e777b857-ec47-43c9-8bca-437b5e474dba', '17e59247-b9ad-43af-a458-5eb31b2608cb', 0, '62bb78e4-f4c2-4214-b722-d1a95d16a41c.jpg', '', 0, 0, 0, b'0', '2020-03-23 22:37:48', '2020-03-23 22:37:48', '2020-03-23 22:37:48');
INSERT INTO `frienq_post_item` VALUES ('e833ffb8-9db0-4a9d-a8f8-423d3d9bf494', '34f24ce0-cb84-47c5-9948-0c83be892743', 0, 'e3a9811a-7a47-4881-98b8-000628ef0ae9.jpg', '', 0, 0, 0, b'0', '2020-03-01 22:46:46', '2020-03-01 22:46:46', '2020-03-01 22:46:46');
INSERT INTO `frienq_post_item` VALUES ('e8eaf73d-41c3-45a5-acd5-66962ec8310f', '90ed90d3-f0dd-4944-838b-5d0d5bcbd4ef', 0, 'fdbffee2-f495-413a-8803-a0e02d47afa3.jpg', '', 0, 0, 0, b'0', '2020-03-24 06:22:37', '2020-03-24 06:22:37', '2020-03-24 06:22:37');
INSERT INTO `frienq_post_item` VALUES ('e9260535-1b02-42f5-88b2-5ca21dea6d2e', '3889d737-47d9-42a0-a8dc-5b7a424d2b7d', 0, '263b345d-da59-4a70-9a76-70aa1a3aa6a5.jpg', '', 0, 0, 0, b'0', '2020-02-01 00:50:56', '2020-02-01 00:50:56', '2020-02-01 00:50:56');
INSERT INTO `frienq_post_item` VALUES ('e9307be9-56d7-4ff3-a096-51cb12afdc1f', 'd1e3f6d6-7250-4f68-b726-2efe41a3c79b', 0, '', 'ndkd', 0, 1, 1, b'0', '2020-06-23 19:23:57', '2020-06-23 19:23:57', '2020-06-23 19:23:57');
INSERT INTO `frienq_post_item` VALUES ('e9714d16-eb42-453b-b155-08e0af5abbe0', '3d29b427-6a12-4816-92bc-5d7f469dcbc1', 0, 'f99a4c38-06f7-44ae-8738-e3b1eacc5bed.jpg', '', 0, 0, 0, b'0', '2020-04-07 20:38:07', '2020-04-07 20:38:07', '2020-04-07 20:38:07');
INSERT INTO `frienq_post_item` VALUES ('ea645a89-8341-420a-ae1e-743d9140553e', '99bf928d-cdb9-442b-a732-dd4d33140b4e', 0, '7815bcd2-7abe-400b-8f76-5279dc16e5d9.jpg', '', 0, 0, 0, b'0', '2020-02-16 15:59:58', '2020-02-16 15:59:58', '2020-02-16 15:59:58');
INSERT INTO `frienq_post_item` VALUES ('ea92f46d-ec51-4bfa-9470-17e4c0e12221', '8d0f33ac-32c8-4cc4-9bd5-cc7fc2f33c1c', 0, '', 'Yusuf', 0, 0, 1, b'0', '2020-03-13 02:15:40', '2020-03-13 02:15:40', '2020-03-13 02:15:40');
INSERT INTO `frienq_post_item` VALUES ('eb368ff4-6813-4654-8cdf-216cd8860061', '7d93a2a6-bd85-4bbc-9c66-79e00221582d', 0, '23f5dea5-a706-4a15-a711-924dd1af7c79.jpg', '', 0, 0, 0, b'0', '2020-03-25 12:49:59', '2020-03-25 12:49:59', '2020-03-25 12:49:59');
INSERT INTO `frienq_post_item` VALUES ('ebcb4398-9c43-4163-bce9-e3a0d380ae96', '02edb583-0963-4fc1-b9c0-1acd17cb2898', 0, '1a438c1e-5712-4a7c-b711-848de303e6e7.jpg', '', 0, 0, 0, b'0', '2020-02-06 22:59:30', '2020-02-06 22:59:30', '2020-02-06 22:59:30');
INSERT INTO `frienq_post_item` VALUES ('ecd2cda6-5a9c-4db3-ab08-04704e29428c', '4890bf17-3752-426b-8d68-9caa96ed0a32', 0, '', 'wer', 0, 1, 1, b'0', '2020-03-07 01:32:41', '2020-03-07 01:32:41', '2020-03-07 01:32:41');
INSERT INTO `frienq_post_item` VALUES ('edaa38e8-37e4-424e-a1d1-ff570227e8f2', '9fcde38e-92be-4a1b-901c-7b14e55cef83', 0, '', 'öööö', 0, 0, 2, b'0', '2020-02-20 22:27:55', '2020-02-20 22:27:55', '2020-02-20 22:27:55');
INSERT INTO `frienq_post_item` VALUES ('ee373461-09c9-46e5-8e59-4ced746308f5', '54afa2ab-968a-4932-a1f1-3fb0b8930141', 0, 'fcf96f69-f442-4fc4-a13a-b7fbc8e6c99d.mp4', '', 0, 0, 0, b'0', '2020-02-25 01:36:31', '2020-02-25 01:36:31', '2020-02-25 01:36:31');
INSERT INTO `frienq_post_item` VALUES ('ee572e1f-774c-4a4f-b567-f25f57fe3a1b', '12d0cae2-f0a1-46aa-b577-35972462ec82', 0, '9c31212a-f689-4ff6-b26b-0a9182b7814a.jpg', '', 0, 0, 0, b'0', '2020-03-24 23:00:31', '2020-03-24 23:00:31', '2020-03-24 23:00:31');
INSERT INTO `frienq_post_item` VALUES ('eea32252-4e5d-49d2-bbd2-2418827dbe6a', 'c2c878b4-f923-4ed5-b23a-24ceac9607c9', 0, 'a430f1a1-ae90-44fc-88fb-5ffa3e619e3c.jpg', '', 0, 0, 0, b'0', '2020-03-06 21:48:03', '2020-03-06 21:48:03', '2020-03-06 21:48:03');
INSERT INTO `frienq_post_item` VALUES ('eec1c2d6-bef8-493b-ba4a-138a2aa5dfeb', '5a16b400-0ed7-4316-90fb-669767a0ddcb', 0, '24e0c2e7-41d0-4634-890f-9f79e95a878a.jpg', '', 0, 0, 0, b'0', '2020-02-02 01:05:19', '2020-02-02 01:05:19', '2020-02-02 01:05:19');
INSERT INTO `frienq_post_item` VALUES ('ef1acc9c-10b1-4873-a39e-bf30b66e90b3', '41ab565e-f256-4983-89a8-80eb914c42a8', 0, '60d23499-0782-4062-a838-596a185dde02.jpg', '', 0, 0, 0, b'0', '2020-02-21 23:19:35', '2020-02-21 23:19:35', '2020-02-21 23:19:35');
INSERT INTO `frienq_post_item` VALUES ('efc95822-8847-432c-9389-3a2174d7aaa1', '8b46008a-a6d7-4066-80cd-0a3815408960', 0, '5a199d29-4973-4118-b0de-b8aa5ed84dc9.mp4', '', 0, 0, 0, b'0', '2020-02-24 23:42:06', '2020-02-24 23:42:06', '2020-02-24 23:42:06');
INSERT INTO `frienq_post_item` VALUES ('f158bdac-f8cc-4fc5-b744-67ec48a60883', '591a6297-e1c8-445e-ad70-22756c5f3d83', 0, '73869304-1b55-4df4-9937-64c116c82042.jpg', '', 0, 0, 0, b'0', '2020-03-26 11:07:09', '2020-03-26 11:07:09', '2020-03-26 11:07:09');
INSERT INTO `frienq_post_item` VALUES ('f25d465b-d02d-4054-9526-954c8ef28a1b', '780ba0be-5443-4ae4-a86c-4b4b64c079eb', 0, '', 'messi', 0, 2, 1, b'0', '2020-02-23 22:39:21', '2020-02-23 22:39:21', '2020-02-23 22:39:21');
INSERT INTO `frienq_post_item` VALUES ('f2eb5989-2271-4f01-83d3-e858eb8031ef', 'c2c878b4-f923-4ed5-b23a-24ceac9607c9', 0, '34fa4521-5a94-4474-bbf2-304c0b67788b.mp4', '', 0, 0, 0, b'0', '2020-03-06 21:48:03', '2020-03-06 21:48:03', '2020-03-06 21:48:03');
INSERT INTO `frienq_post_item` VALUES ('f72e4b46-7add-4cf6-b669-19e97397a51f', '54e71e0e-570f-4679-ae7b-f88c443e1180', 0, '', 'u', 0, 2, 2, b'0', '2020-03-13 02:18:11', '2020-03-13 02:18:11', '2020-03-13 02:18:11');
INSERT INTO `frienq_post_item` VALUES ('f81baf06-501a-42e5-a619-ab113fb64fab', '667c6b0b-93ef-4a42-8897-d9d65f96fb50', 0, 'ba9c7429-cf5c-4d1c-854f-bc841fb3bb21.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:08:03', '2020-03-13 02:08:03', '2020-03-13 02:08:03');
INSERT INTO `frienq_post_item` VALUES ('f84182b6-93ac-4b72-9bd4-9a192caeb821', 'bfb4fd17-a0e7-4281-b821-d85df8051527', 0, 'ede2b34d-9f35-4afb-9178-9aa59944c833.jpg', '', 0, 0, 0, b'0', '2020-03-13 02:06:21', '2020-03-13 02:06:21', '2020-03-13 02:06:21');
INSERT INTO `frienq_post_item` VALUES ('f8c4d003-51fa-4aec-bfca-0749ae297ad1', '3042d003-da4b-44a4-a129-e21151fbedcc', 0, 'e5dccdfa-3549-4796-bf6c-a8f9493b33cb.mp4', '', 0, 0, 0, b'0', '2020-02-23 22:57:37', '2020-02-23 22:57:37', '2020-02-23 22:57:37');
INSERT INTO `frienq_post_item` VALUES ('f9a30aa6-ba05-40dc-b446-2dbb6ec9c0bd', 'c881be71-d182-405e-b39d-53069019975b', 0, '4a0d6fa4-7457-4d84-a94b-3af9911845d1.jpg', '', 0, 0, 0, b'0', '2020-03-07 01:31:28', '2020-03-07 01:31:28', '2020-03-07 01:31:28');
INSERT INTO `frienq_post_item` VALUES ('f9b6d83c-3ee9-4db8-aa49-25b6699ed30d', '87415b23-0dc0-4a6f-9d71-bbf84ae16cbf', 0, '04dc374b-4aaa-4361-9bb6-179b413b921d.jpg', '', 0, 0, 0, b'0', '2020-02-09 22:52:03', '2020-02-09 22:52:03', '2020-02-09 22:52:03');
INSERT INTO `frienq_post_item` VALUES ('fab68dc7-267b-470e-8332-528ed9478b9d', 'c4eafaf1-71cc-4750-8130-290aa5ff4e82', 0, '9db4b0d8-7666-4c4f-8869-062690af3fbb.jpg', '', 0, 1, 0, b'0', '2020-03-25 07:46:27', '2020-03-25 07:46:27', '2020-03-25 07:46:27');
INSERT INTO `frienq_post_item` VALUES ('fafae4f7-ae6c-4996-8d69-a7557df8de48', '2d962eaf-47cf-40d2-94a5-6909f2b81f4b', 0, '3f686697-b684-46dc-a885-08116e6b6185.jpg', '', 0, 0, 0, b'0', '2020-02-01 01:00:52', '2020-02-01 01:00:52', '2020-02-01 01:00:52');
INSERT INTO `frienq_post_item` VALUES ('fbc05da9-786c-4660-9bd9-4590ad04d3fc', '8d7196fb-f892-48e0-b034-e7741aafe362', 0, '6991b744-a0e1-4151-b6d9-183abc49e506.jpg', '', 0, 0, 0, b'0', '2020-02-22 02:12:11', '2020-02-22 02:12:11', '2020-02-22 02:12:11');
INSERT INTO `frienq_post_item` VALUES ('fbf48c52-ada0-46b1-90da-b0868228f806', 'f3d427b4-9ee0-42a4-a405-5e452f80b11a', 0, 'a48f8bd3-e448-465c-a849-1e9f037fbc88.jpg', '', 0, 0, 0, b'0', '2020-03-24 05:53:12', '2020-03-24 05:53:12', '2020-03-24 05:53:12');
INSERT INTO `frienq_post_item` VALUES ('fbf6b70e-c003-4f4e-a6c6-6a107d88f373', 'b425614a-77f3-4d3a-b433-cb8494a558bf', 0, '51f39d9b-16a7-426c-bfe0-ea0222bf44c7.jpg', '', 0, 0, 0, b'0', '2020-02-01 02:36:27', '2020-02-01 02:36:27', '2020-02-01 02:36:27');
INSERT INTO `frienq_post_item` VALUES ('fc2cec97-b019-43e1-b365-6202c32a64aa', '9fcde38e-92be-4a1b-901c-7b14e55cef83', 0, '', 'mmm', 0, 0, 1, b'0', '2020-02-20 22:27:55', '2020-02-20 22:27:55', '2020-02-20 22:27:55');
INSERT INTO `frienq_post_item` VALUES ('fdb0a74d-dc11-41c7-ac31-1c1fc78157cf', '457e5e47-5f3a-4405-95d9-f97cddbc43d5', 0, '', 'La', 0, 3, 1, b'0', '2020-02-22 01:54:14', '2020-02-22 01:54:14', '2020-02-22 01:54:14');
INSERT INTO `frienq_post_item` VALUES ('fdd39ff3-e6ec-4cda-8eda-3d2db68f2a52', '9a41ceb6-a9e2-488c-b2a2-ca6d8a82b6ce', 0, '72533f9d-b22d-4006-83ef-c5f2cfd0c27b.jpg', '', 0, 0, 0, b'0', '2020-02-25 00:51:47', '2020-02-25 00:51:47', '2020-02-25 00:51:47');

-- ----------------------------
-- Table structure for frienq_post_item_select
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post_item_select`;
CREATE TABLE `frienq_post_item_select`  (
  `id_post` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_from` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_post_item` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_to` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_post`, `uid_member_from`) USING BTREE,
  INDEX `select_post_item`(`id_post_item`) USING BTREE,
  INDEX `select_member`(`uid_member_from`) USING BTREE,
  CONSTRAINT `select_member` FOREIGN KEY (`uid_member_from`) REFERENCES `frienq_member` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `select_post` FOREIGN KEY (`id_post`) REFERENCES `frienq_post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `select_post_item` FOREIGN KEY (`id_post_item`) REFERENCES `frienq_post_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post_item_select
-- ----------------------------
INSERT INTO `frienq_post_item_select` VALUES ('081bf8a3-dadb-4105-9dba-6c80307ad6eb', '178b5043-0be8-4dbf-8279-fb74ca676047', '777dd9dd-08b4-4fe9-b7d7-cadf7e93efa1', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('081bf8a3-dadb-4105-9dba-6c80307ad6eb', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '777dd9dd-08b4-4fe9-b7d7-cadf7e93efa1', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('0d93e574-0e5d-48ee-845d-b2d898802926', '178b5043-0be8-4dbf-8279-fb74ca676047', '22b63bc4-1402-494f-bad4-f38a0c24a56e', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('144d93f1-49dc-4cbd-8f91-b27f9a1a2105', '178b5043-0be8-4dbf-8279-fb74ca676047', '882c2960-2848-4fef-83af-984592e9c19f', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('144d93f1-49dc-4cbd-8f91-b27f9a1a2105', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'd543ed85-7c3d-4017-9f27-790bdb920292', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('154a85e8-c29b-4caa-93ee-48eb70273495', '111a6e26-815d-46aa-bd01-993d73f04a4f', 'a4b5f737-cb52-43c8-a777-0d9c648d87ee', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('154a85e8-c29b-4caa-93ee-48eb70273495', '178b5043-0be8-4dbf-8279-fb74ca676047', 'a4b5f737-cb52-43c8-a777-0d9c648d87ee', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('154a85e8-c29b-4caa-93ee-48eb70273495', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '13172a4d-7ad8-4123-8c07-c5bf3f724187', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('214f522a-5ca0-404e-a822-e84f8271c529', '178b5043-0be8-4dbf-8279-fb74ca676047', 'd1dd7f12-77ec-474c-b016-2caa92c2a35a', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_post_item_select` VALUES ('214f522a-5ca0-404e-a822-e84f8271c529', '6782d740-3551-4396-9cec-e1f023e88ecc', 'd1dd7f12-77ec-474c-b016-2caa92c2a35a', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_post_item_select` VALUES ('22fb9ec4-b757-43cf-825c-99ce2cf4df73', '178b5043-0be8-4dbf-8279-fb74ca676047', '244ba176-9749-4aa9-9841-6df71f8a5b90', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_post_item_select` VALUES ('22fb9ec4-b757-43cf-825c-99ce2cf4df73', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '014b53e1-5221-400d-a50c-6c68681534a8', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_post_item_select` VALUES ('308b2b40-8dd9-4398-9be4-eb25e09c953a', '178b5043-0be8-4dbf-8279-fb74ca676047', '29bec380-14e6-462d-a560-33f8c59f5159', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('308b2b40-8dd9-4398-9be4-eb25e09c953a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '9cc2d2c5-8d29-4eff-8dd6-e2d443069a84', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('457e5e47-5f3a-4405-95d9-f97cddbc43d5', '178b5043-0be8-4dbf-8279-fb74ca676047', 'fdb0a74d-dc11-41c7-ac31-1c1fc78157cf', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('457e5e47-5f3a-4405-95d9-f97cddbc43d5', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'fdb0a74d-dc11-41c7-ac31-1c1fc78157cf', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('457e5e47-5f3a-4405-95d9-f97cddbc43d5', '75209907-9c77-4d60-a96b-8a8cbf687e2a', 'fdb0a74d-dc11-41c7-ac31-1c1fc78157cf', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('4890bf17-3752-426b-8d68-9caa96ed0a32', '178b5043-0be8-4dbf-8279-fb74ca676047', 'ecd2cda6-5a9c-4db3-ab08-04704e29428c', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('4890bf17-3752-426b-8d68-9caa96ed0a32', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '5760e78d-361c-4862-a03e-9c8f7fc2514d', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('4eed59c6-42f0-4b2c-b49c-22e1255fa83c', '178b5043-0be8-4dbf-8279-fb74ca676047', 'e512b354-ca12-4db5-915d-3c2073f556ef', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('4f027a5e-cebc-403a-b150-d0568bcfa9b0', '178b5043-0be8-4dbf-8279-fb74ca676047', '1c9ffeaf-8068-4d33-9b82-2fc603b061da', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('54e71e0e-570f-4679-ae7b-f88c443e1180', '111a6e26-815d-46aa-bd01-993d73f04a4f', 'f72e4b46-7add-4cf6-b669-19e97397a51f', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('54e71e0e-570f-4679-ae7b-f88c443e1180', '178b5043-0be8-4dbf-8279-fb74ca676047', '394a65ba-c510-4835-aa35-5f6ba86f89b7', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('54e71e0e-570f-4679-ae7b-f88c443e1180', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'f72e4b46-7add-4cf6-b669-19e97397a51f', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('5ad94d80-0bca-4f6d-b6b9-729887129a09', '178b5043-0be8-4dbf-8279-fb74ca676047', '759f4181-2141-4ac7-b9df-84cb2b4d2a2f', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('6422d032-6ad6-49b5-8c31-aa37de23a0af', '178b5043-0be8-4dbf-8279-fb74ca676047', 'be280978-4e11-42b7-b59f-2531b945eaf4', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('6422d032-6ad6-49b5-8c31-aa37de23a0af', '535634d4-1383-4ab6-92d9-637226556da1', '151ecf44-0a92-4cc9-ab09-aee30e94bd32', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('780ba0be-5443-4ae4-a86c-4b4b64c079eb', '178b5043-0be8-4dbf-8279-fb74ca676047', '18a521d3-1584-4dda-b80d-93e955a22a47', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('780ba0be-5443-4ae4-a86c-4b4b64c079eb', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'f25d465b-d02d-4054-9526-954c8ef28a1b', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('780ba0be-5443-4ae4-a86c-4b4b64c079eb', '75209907-9c77-4d60-a96b-8a8cbf687e2a', 'f25d465b-d02d-4054-9526-954c8ef28a1b', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('798035b6-924b-4e0f-8f75-90554a188e27', '178b5043-0be8-4dbf-8279-fb74ca676047', '71d56969-3e93-4821-9747-5d8466f6fa2b', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('798035b6-924b-4e0f-8f75-90554a188e27', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '71d56969-3e93-4821-9747-5d8466f6fa2b', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('7d93a2a6-bd85-4bbc-9c66-79e00221582d', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '8f074aee-5c17-43c5-8a46-6aa75591327e', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc');
INSERT INTO `frienq_post_item_select` VALUES ('81325651-543d-4cac-9cd1-d8c432f586b1', '178b5043-0be8-4dbf-8279-fb74ca676047', '3fb56011-98cb-4037-a59c-f51b4d042dd3', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('81325651-543d-4cac-9cd1-d8c432f586b1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'ccdb2b42-e24f-44c3-ba96-7e2ddf51dbf6', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('8440747f-0f7f-44eb-865d-1eb9773a5411', '111a6e26-815d-46aa-bd01-993d73f04a4f', '847b77ab-3440-40e7-803c-b55d6b41f377', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('8440747f-0f7f-44eb-865d-1eb9773a5411', '178b5043-0be8-4dbf-8279-fb74ca676047', '847b77ab-3440-40e7-803c-b55d6b41f377', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('8440747f-0f7f-44eb-865d-1eb9773a5411', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '40b4c7d3-9dde-4b89-82f4-49f5bbd8ee51', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('8d0f33ac-32c8-4cc4-9bd5-cc7fc2f33c1c', '178b5043-0be8-4dbf-8279-fb74ca676047', 'a05290a0-fc62-4691-a20a-188cab150018', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('8d0f33ac-32c8-4cc4-9bd5-cc7fc2f33c1c', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'a05290a0-fc62-4691-a20a-188cab150018', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('8ddef3a0-e69a-48f2-8999-6641cac7d75a', '178b5043-0be8-4dbf-8279-fb74ca676047', '3b05dda8-8b8a-470a-b919-f76c43081767', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('8ddef3a0-e69a-48f2-8999-6641cac7d75a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'dc2d7f85-9f5d-4057-afd6-9b05a4c63664', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('8ddef3a0-e69a-48f2-8999-6641cac7d75a', '75209907-9c77-4d60-a96b-8a8cbf687e2a', '05a6fac0-c102-4393-a918-198e73066b12', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('8ddef3a0-e69a-48f2-8999-6641cac7d75a', 'b545b46d-3195-470e-bd62-94f6d7b8a586', '05a6fac0-c102-4393-a918-198e73066b12', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('946243f2-71bc-472f-ab9a-3ed9246ce5ee', '111a6e26-815d-46aa-bd01-993d73f04a4f', '0e361e5a-1c7d-4f3c-a3ec-9043e9043426', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('946243f2-71bc-472f-ab9a-3ed9246ce5ee', '178b5043-0be8-4dbf-8279-fb74ca676047', '8de1a80a-d276-446a-aeaa-4a5da02ef896', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('9b7181cc-16bd-4050-83c2-35503bb295be', '178b5043-0be8-4dbf-8279-fb74ca676047', '3ab0de9c-2032-4a9f-b0cb-b7ae86e08e25', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('9b7181cc-16bd-4050-83c2-35503bb295be', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'a25c5a8e-2497-48bd-9e2b-3ad7c391df93', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('9b7181cc-16bd-4050-83c2-35503bb295be', 'b545b46d-3195-470e-bd62-94f6d7b8a586', 'a25c5a8e-2497-48bd-9e2b-3ad7c391df93', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('a94adb5e-6cea-45ae-a618-573ced9b220f', '178b5043-0be8-4dbf-8279-fb74ca676047', '52a4dbc0-1cce-4bfc-aa5f-ff72463b1d19', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '178b5043-0be8-4dbf-8279-fb74ca676047', '22d759ed-60b4-4a14-a3ec-d00568f0a960', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_post_item_select` VALUES ('b1cb7133-82be-44ba-aff3-d4cedf49c6e6', '535634d4-1383-4ab6-92d9-637226556da1', '22d759ed-60b4-4a14-a3ec-d00568f0a960', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_post_item_select` VALUES ('b67169f2-7cd4-44cd-b3fa-fe37cb757f27', '111a6e26-815d-46aa-bd01-993d73f04a4f', '8119b155-c128-4350-9ee9-7f22e45b621d', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('b67169f2-7cd4-44cd-b3fa-fe37cb757f27', '178b5043-0be8-4dbf-8279-fb74ca676047', '27ec2b7e-1ec9-4d66-a4c7-653105728f62', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('b67169f2-7cd4-44cd-b3fa-fe37cb757f27', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '27ec2b7e-1ec9-4d66-a4c7-653105728f62', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('b7067cbc-3e4d-4560-8f42-7311bc40af8d', '111a6e26-815d-46aa-bd01-993d73f04a4f', 'd4931be3-aebd-4f62-98fb-4346127f5147', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('b7067cbc-3e4d-4560-8f42-7311bc40af8d', '178b5043-0be8-4dbf-8279-fb74ca676047', '6c92e60f-0a33-4329-aca7-03293227932b', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('b7067cbc-3e4d-4560-8f42-7311bc40af8d', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'd4931be3-aebd-4f62-98fb-4346127f5147', '111a6e26-815d-46aa-bd01-993d73f04a4f');
INSERT INTO `frienq_post_item_select` VALUES ('c4eafaf1-71cc-4750-8130-290aa5ff4e82', '535634d4-1383-4ab6-92d9-637226556da1', '458f5312-4f9f-40f0-b28d-3f39df8d9b8c', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_post_item_select` VALUES ('c4eafaf1-71cc-4750-8130-290aa5ff4e82', '6782d740-3551-4396-9cec-e1f023e88ecc', '458f5312-4f9f-40f0-b28d-3f39df8d9b8c', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_post_item_select` VALUES ('c4eafaf1-71cc-4750-8130-290aa5ff4e82', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'fab68dc7-267b-470e-8332-528ed9478b9d', '6782d740-3551-4396-9cec-e1f023e88ecc');
INSERT INTO `frienq_post_item_select` VALUES ('c881be71-d182-405e-b39d-53069019975b', '178b5043-0be8-4dbf-8279-fb74ca676047', '05969281-7284-4a31-aa5b-30072b5f24a5', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('cd28682b-8633-4845-9780-c3deda87175d', '178b5043-0be8-4dbf-8279-fb74ca676047', '25d67332-f0e9-42e7-9211-af038ad4871f', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('d015010e-b7e7-44e2-ab43-69ae7d760fee', '178b5043-0be8-4dbf-8279-fb74ca676047', '7c751f7e-f7ad-4c11-b13d-5544253006d8', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('d015010e-b7e7-44e2-ab43-69ae7d760fee', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '7c751f7e-f7ad-4c11-b13d-5544253006d8', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('d015010e-b7e7-44e2-ab43-69ae7d760fee', '75209907-9c77-4d60-a96b-8a8cbf687e2a', '1fc207ab-dca5-4a75-884b-c516adc1fa80', '6625344d-99ed-40ec-840b-9de4d4bc29c1');
INSERT INTO `frienq_post_item_select` VALUES ('d05eb94c-aa09-4069-9dfd-6e1e72d49fab', '178b5043-0be8-4dbf-8279-fb74ca676047', '0ac25bc5-dac1-489f-95b5-c85746ce780e', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('d05eb94c-aa09-4069-9dfd-6e1e72d49fab', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '0ac25bc5-dac1-489f-95b5-c85746ce780e', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('d05eb94c-aa09-4069-9dfd-6e1e72d49fab', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '4a7600c0-27dc-4639-ace3-be41f62c75b8', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('d1e3f6d6-7250-4f68-b726-2efe41a3c79b', '178b5043-0be8-4dbf-8279-fb74ca676047', '059fdba4-49dd-4f0f-aa1d-ba0c02d2f6ed', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_post_item_select` VALUES ('d1e3f6d6-7250-4f68-b726-2efe41a3c79b', '535634d4-1383-4ab6-92d9-637226556da1', 'e9307be9-56d7-4ff3-a096-51cb12afdc1f', 'edad7cf8-583a-4427-94a0-2f25ea9396bd');
INSERT INTO `frienq_post_item_select` VALUES ('dadf0650-5905-428f-ba9a-db854e262772', '178b5043-0be8-4dbf-8279-fb74ca676047', '368cf237-8753-45c1-a765-799805fe7eac', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('daf4c262-2739-4d6d-80ad-0859b7f0242e', '178b5043-0be8-4dbf-8279-fb74ca676047', '2ae699a0-4934-4d98-a864-1aa6de020838', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('daf4c262-2739-4d6d-80ad-0859b7f0242e', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'c884c3a2-72e3-4552-bcb2-7883fb2dd558', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('daf4c262-2739-4d6d-80ad-0859b7f0242e', 'b545b46d-3195-470e-bd62-94f6d7b8a586', '2ae699a0-4934-4d98-a864-1aa6de020838', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('dfbe7dc2-64a3-43ef-9570-47ad6c2326d9', '178b5043-0be8-4dbf-8279-fb74ca676047', '1280e4c5-7bbb-47e4-848a-59c8c31e830b', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('dfbe7dc2-64a3-43ef-9570-47ad6c2326d9', '6625344d-99ed-40ec-840b-9de4d4bc29c1', '595cceb7-f91b-40d5-8f85-723718e38b20', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('dfcd9a57-96f5-4656-bd34-27027c45db6c', '178b5043-0be8-4dbf-8279-fb74ca676047', 'cd38401d-54d4-4066-9508-a1a400e0c14f', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('e49e51d9-16e7-47b0-9c50-683e6461e283', '178b5043-0be8-4dbf-8279-fb74ca676047', '828b4922-90eb-4d36-83f6-f65248e88b9a', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('e9c242b8-b3bc-4b65-829e-981a89394746', '178b5043-0be8-4dbf-8279-fb74ca676047', '35caa50d-af4c-4352-854d-c1d35bdf0f96', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('e9c242b8-b3bc-4b65-829e-981a89394746', '535634d4-1383-4ab6-92d9-637226556da1', 'de66b103-3f29-4241-8296-752b32739007', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('eba840c2-52dc-40fe-a65e-41fe84fedad2', '178b5043-0be8-4dbf-8279-fb74ca676047', 'ad82d37e-d96b-480b-9910-7ca5ac90661c', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('eba840c2-52dc-40fe-a65e-41fe84fedad2', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'a46105c7-de27-4719-9d0f-aecb77046ed8', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f122a15c-7e82-436e-9aa9-01a13c5356d5', '178b5043-0be8-4dbf-8279-fb74ca676047', '36a8032b-5987-4b15-9776-f798dc3aa97d', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8a16331-bbe3-4c62-837d-1415230410a4', '111a6e26-815d-46aa-bd01-993d73f04a4f', '77f57579-409a-4552-80bd-3528af8e2a2b', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8a16331-bbe3-4c62-837d-1415230410a4', '178b5043-0be8-4dbf-8279-fb74ca676047', '77f57579-409a-4552-80bd-3528af8e2a2b', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', '178b5043-0be8-4dbf-8279-fb74ca676047', 'e60a1b06-5e17-4ff2-ae56-a3d8b043cd61', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'e217684d-5a47-4000-9ada-7a94338af664', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', 'b545b46d-3195-470e-bd62-94f6d7b8a586', '7be340ef-3609-49ec-862b-5b1ed11a8ecd', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_item_select` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '7be340ef-3609-49ec-862b-5b1ed11a8ecd', '178b5043-0be8-4dbf-8279-fb74ca676047');

-- ----------------------------
-- Table structure for frienq_post_member
-- ----------------------------
DROP TABLE IF EXISTS `frienq_post_member`;
CREATE TABLE `frienq_post_member`  (
  `id_post` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  INDEX `frieq_post_member_to_frienq_post`(`id_post`) USING BTREE,
  INDEX `frieq_post_member_to_frienq_member`(`uid_member`) USING BTREE,
  CONSTRAINT `frieq_post_member_to_frienq_member` FOREIGN KEY (`uid_member`) REFERENCES `frienq_member` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `frieq_post_member_to_frienq_post` FOREIGN KEY (`id_post`) REFERENCES `frienq_post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_post_member
-- ----------------------------
INSERT INTO `frienq_post_member` VALUES ('946243f2-71bc-472f-ab9a-3ed9246ce5ee', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_member` VALUES ('18e06c60-28e1-488c-a088-2fc7c993c8bd', '178b5043-0be8-4dbf-8279-fb74ca676047');
INSERT INTO `frienq_post_member` VALUES ('5a748890-49ae-4344-a1b1-d7b53b27e8d6', '6625344d-99ed-40ec-840b-9de4d4bc29c1');

-- ----------------------------
-- Table structure for frienq_rate
-- ----------------------------
DROP TABLE IF EXISTS `frienq_rate`;
CREATE TABLE `frienq_rate`  (
  `id_object` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL,
  `uid_member_from` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uid_member_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `notified` bit(1) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NOT NULL,
  `date_delete` datetime(0) NOT NULL,
  PRIMARY KEY (`id_object`, `uid_member_from`, `uid_member_to`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frienq_rate
-- ----------------------------
INSERT INTO `frienq_rate` VALUES ('02a3cd30-df64-46ef-a5f9-3f383e31f520', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-03-01 22:33:46', '2020-03-01 22:33:46', '2020-03-01 22:33:46');
INSERT INTO `frienq_rate` VALUES ('02a52a0f-2246-4286-871f-2d38781f4e94', 0, '0', '0', 5, b'0', b'0', '2020-02-04 23:14:47', '2020-02-04 23:14:52', '2020-02-04 23:14:55');
INSERT INTO `frienq_rate` VALUES ('02a52a0f-2246-4286-871f-2d38781f4e94', 0, '1', '0', 2, b'0', b'0', '2020-02-04 23:14:47', '2020-02-04 23:14:52', '2020-02-04 23:14:55');
INSERT INTO `frienq_rate` VALUES ('02a52a0f-2246-4286-871f-2d38781f4e94', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-05 00:04:00', '2020-02-05 00:04:00', '2020-02-05 00:04:00');
INSERT INTO `frienq_rate` VALUES ('02cef7e7-f36b-4ff3-9332-e2ac159ea308', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-26 01:34:53', '2020-02-26 01:34:53', '2020-02-26 01:34:53');
INSERT INTO `frienq_rate` VALUES ('02cef7e7-f36b-4ff3-9332-e2ac159ea308', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-26 01:42:04', '2020-02-26 01:42:04', '2020-02-26 01:42:04');
INSERT INTO `frienq_rate` VALUES ('02cef7e7-f36b-4ff3-9332-e2ac159ea308', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-03-01 23:27:08', '2020-03-01 23:27:08', '2020-03-01 23:27:08');
INSERT INTO `frienq_rate` VALUES ('02cef7e7-f36b-4ff3-9332-e2ac159ea308', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-04-03 22:22:11', '2020-04-03 22:22:11', '2020-04-03 22:22:11');
INSERT INTO `frienq_rate` VALUES ('02edb583-0963-4fc1-b9c0-1acd17cb2898', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-06 23:30:52', '2020-02-06 23:30:52', '2020-02-06 23:30:52');
INSERT INTO `frienq_rate` VALUES ('057cbbe9-a8f0-4ac9-bdd4-9c46beda7bdf', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-26 02:15:41', '2020-02-26 02:15:41', '2020-02-26 02:15:41');
INSERT INTO `frienq_rate` VALUES ('057cbbe9-a8f0-4ac9-bdd4-9c46beda7bdf', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-26 22:36:23', '2020-02-26 22:36:23', '2020-02-26 22:36:23');
INSERT INTO `frienq_rate` VALUES ('057cbbe9-a8f0-4ac9-bdd4-9c46beda7bdf', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-27 23:43:09', '2020-02-27 23:43:09', '2020-02-27 23:43:09');
INSERT INTO `frienq_rate` VALUES ('072feeab-637d-495b-8b66-0acb80e9434c', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-08 22:08:32', '2020-02-08 22:08:32', '2020-02-08 22:08:32');
INSERT INTO `frienq_rate` VALUES ('0910b051-cfc9-421c-aab8-cb8408288881', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 10, b'0', b'0', '2020-03-29 20:50:37', '2020-03-29 20:50:37', '2020-03-29 20:50:37');
INSERT INTO `frienq_rate` VALUES ('0a1987c0-e52e-4d56-9343-d27ccc66b254', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 7, b'0', b'0', '2020-03-29 20:27:22', '2020-03-29 20:27:22', '2020-03-29 20:27:22');
INSERT INTO `frienq_rate` VALUES ('0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-07-08 23:01:30', '2020-07-08 23:01:30', '2020-07-08 23:01:30');
INSERT INTO `frienq_rate` VALUES ('0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', 0, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-07-08 23:03:25', '2020-07-08 23:03:25', '2020-07-08 23:03:25');
INSERT INTO `frienq_rate` VALUES ('0a6d15bc-62fe-4fbf-92d5-b15bd54d7ccb', 0, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-07-09 07:18:15', '2020-07-09 07:18:15', '2020-07-09 07:18:15');
INSERT INTO `frienq_rate` VALUES ('1169ad21-d7f6-42d9-8764-9fa9105ebb44', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-03-13 15:53:52', '2020-03-13 15:53:52', '2020-03-13 15:53:52');
INSERT INTO `frienq_rate` VALUES ('1169ad21-d7f6-42d9-8764-9fa9105ebb44', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-03-13 03:05:28', '2020-03-13 03:05:28', '2020-03-13 03:05:28');
INSERT INTO `frienq_rate` VALUES ('1169ad21-d7f6-42d9-8764-9fa9105ebb44', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-04-03 22:33:35', '2020-04-03 22:33:35', '2020-04-03 22:33:35');
INSERT INTO `frienq_rate` VALUES ('129e01c6-c673-4030-9219-bfd0cf355b75', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-07 00:29:03', '2020-02-07 00:29:03', '2020-02-07 00:29:03');
INSERT INTO `frienq_rate` VALUES ('12d0cae2-f0a1-46aa-b577-35972462ec82', 0, '6782d740-3551-4396-9cec-e1f023e88ecc', '6782d740-3551-4396-9cec-e1f023e88ecc', 9, b'0', b'0', '2020-03-24 23:10:40', '2020-03-24 23:10:40', '2020-03-24 23:10:40');
INSERT INTO `frienq_rate` VALUES ('15197396-4b92-4f65-aa97-6ccc6912d902', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-02-05 22:23:43', '2020-02-05 22:23:43', '2020-02-05 22:23:43');
INSERT INTO `frienq_rate` VALUES ('17fff07e-0eb4-4d28-b17f-b360617f28fe', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-22 01:59:14', '2020-02-22 01:59:14', '2020-02-22 01:59:14');
INSERT INTO `frienq_rate` VALUES ('180ffaf8-3471-40cd-8739-5e4588d12126', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-05-16 20:32:36', '2020-05-16 20:32:36', '2020-05-16 20:32:36');
INSERT INTO `frienq_rate` VALUES ('180ffaf8-3471-40cd-8739-5e4588d12126', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-03-29 10:30:13', '2020-03-29 10:30:13', '2020-03-29 10:30:13');
INSERT INTO `frienq_rate` VALUES ('18e06c60-28e1-488c-a088-2fc7c993c8bd', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 8, b'0', b'0', '2020-03-13 22:40:24', '2020-03-13 22:40:24', '2020-03-13 22:40:24');
INSERT INTO `frienq_rate` VALUES ('19939143-1706-47c8-b196-c4dfdeb36ba0', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-02-09 22:50:12', '2020-02-09 22:50:12', '2020-02-09 22:50:12');
INSERT INTO `frienq_rate` VALUES ('19939143-1706-47c8-b196-c4dfdeb36ba0', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-02-09 22:49:59', '2020-02-09 22:49:59', '2020-02-09 22:49:59');
INSERT INTO `frienq_rate` VALUES ('2287bca7-2d3b-4c95-b292-83473d40d367', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, b'0', b'1', '2020-02-09 23:00:36', '2020-02-09 23:00:36', '2020-02-09 23:00:36');
INSERT INTO `frienq_rate` VALUES ('2287bca7-2d3b-4c95-b292-83473d40d367', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-09 23:01:32', '2020-02-09 23:01:32', '2020-02-09 23:01:32');
INSERT INTO `frienq_rate` VALUES ('22ef7131-9531-4db9-9a0b-897202838450', 0, '111a6e26-815d-46aa-bd01-993d73f04a4f', '111a6e26-815d-46aa-bd01-993d73f04a4f', 9, b'0', b'0', '2020-03-14 11:26:31', '2020-03-14 11:26:31', '2020-03-14 11:26:31');
INSERT INTO `frienq_rate` VALUES ('22ef7131-9531-4db9-9a0b-897202838450', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 10, b'0', b'0', '2020-03-14 23:14:16', '2020-03-14 23:14:16', '2020-03-14 23:14:16');
INSERT INTO `frienq_rate` VALUES ('22ef7131-9531-4db9-9a0b-897202838450', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '111a6e26-815d-46aa-bd01-993d73f04a4f', 8, b'0', b'0', '2020-03-23 21:43:23', '2020-03-23 21:43:23', '2020-03-23 21:43:23');
INSERT INTO `frienq_rate` VALUES ('247a7de1-68f5-4af8-9f27-e94b532b2369', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-23 22:46:32', '2020-02-23 22:46:32', '2020-02-23 22:46:32');
INSERT INTO `frienq_rate` VALUES ('27f0ec61-2413-4a81-b3af-ce76d47fc5d7', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-16 16:30:46', '2020-02-16 16:30:46', '2020-02-16 16:30:46');
INSERT INTO `frienq_rate` VALUES ('27f0ec61-2413-4a81-b3af-ce76d47fc5d7', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-16 18:25:24', '2020-02-16 18:25:24', '2020-02-16 18:25:24');
INSERT INTO `frienq_rate` VALUES ('2d962eaf-47cf-40d2-94a5-6909f2b81f4b', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-06 00:32:46', '2020-02-06 00:32:46', '2020-02-06 00:32:46');
INSERT INTO `frienq_rate` VALUES ('2dfef1b7-a39f-4da3-9537-9ad660a80f06', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, b'0', b'0', '2020-02-22 09:48:23', '2020-02-22 09:48:23', '2020-02-22 09:48:23');
INSERT INTO `frienq_rate` VALUES ('2dfef1b7-a39f-4da3-9537-9ad660a80f06', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-25 01:46:32', '2020-02-25 01:46:32', '2020-02-25 01:46:32');
INSERT INTO `frienq_rate` VALUES ('2e2340ad-b98f-41a0-920c-0794ee6556d3', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 6, b'0', b'0', '2020-03-23 23:05:17', '2020-03-23 23:05:17', '2020-03-23 23:05:17');
INSERT INTO `frienq_rate` VALUES ('2e2340ad-b98f-41a0-920c-0794ee6556d3', 0, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 9, b'0', b'0', '2020-03-23 22:42:29', '2020-03-23 22:42:29', '2020-03-23 22:42:29');
INSERT INTO `frienq_rate` VALUES ('3042d003-da4b-44a4-a129-e21151fbedcc', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-23 22:58:15', '2020-02-23 22:58:15', '2020-02-23 22:58:15');
INSERT INTO `frienq_rate` VALUES ('33c2499d-8779-47f7-84ca-10fd3a8814e8', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-23 22:46:29', '2020-02-23 22:46:29', '2020-02-23 22:46:29');
INSERT INTO `frienq_rate` VALUES ('34f24ce0-cb84-47c5-9948-0c83be892743', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-03-01 22:52:15', '2020-03-01 22:52:15', '2020-03-01 22:52:15');
INSERT INTO `frienq_rate` VALUES ('37e9bede-9978-4bb1-9e35-852f3ee3a237', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-16 15:57:37', '2020-02-16 15:57:37', '2020-02-16 15:57:37');
INSERT INTO `frienq_rate` VALUES ('37e9bede-9978-4bb1-9e35-852f3ee3a237', 0, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-16 18:28:43', '2020-02-16 18:28:43', '2020-02-16 18:28:43');
INSERT INTO `frienq_rate` VALUES ('37e9bede-9978-4bb1-9e35-852f3ee3a237', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-16 15:58:12', '2020-02-16 15:58:12', '2020-02-16 15:58:12');
INSERT INTO `frienq_rate` VALUES ('3889d737-47d9-42a0-a8dc-5b7a424d2b7d', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-02-05 23:05:21', '2020-02-05 23:05:21', '2020-02-05 23:05:21');
INSERT INTO `frienq_rate` VALUES ('3d29b427-6a12-4816-92bc-5d7f469dcbc1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '535634d4-1383-4ab6-92d9-637226556da1', 8, b'0', b'0', '2020-05-14 19:50:39', '2020-05-14 19:50:39', '2020-05-14 19:50:39');
INSERT INTO `frienq_rate` VALUES ('3d29b427-6a12-4816-92bc-5d7f469dcbc1', 0, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 8, b'0', b'0', '2020-06-11 21:13:37', '2020-06-11 21:13:37', '2020-06-11 21:13:37');
INSERT INTO `frienq_rate` VALUES ('3d29b427-6a12-4816-92bc-5d7f469dcbc1', 0, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '535634d4-1383-4ab6-92d9-637226556da1', 9, b'0', b'0', '2020-04-09 16:04:28', '2020-04-09 16:04:28', '2020-04-09 16:04:28');
INSERT INTO `frienq_rate` VALUES ('3ddc101b-5b1f-402f-944a-c05a92ae9d36', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-03-14 20:01:27', '2020-03-14 20:01:27', '2020-03-14 20:01:27');
INSERT INTO `frienq_rate` VALUES ('40e0099a-c2cb-4613-8b24-6d2ca3640c9e', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-06 22:59:00', '2020-02-06 22:59:00', '2020-02-06 22:59:00');
INSERT INTO `frienq_rate` VALUES ('41293e9d-572c-413e-91f7-f3795dbd38d5', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-16 16:01:12', '2020-02-16 16:01:12', '2020-02-16 16:01:12');
INSERT INTO `frienq_rate` VALUES ('41293e9d-572c-413e-91f7-f3795dbd38d5', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-16 16:01:28', '2020-02-16 16:01:28', '2020-02-16 16:01:28');
INSERT INTO `frienq_rate` VALUES ('419964aa-e13c-4571-927f-6dbfbd7b9779', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-02-05 22:24:50', '2020-02-05 22:24:50', '2020-02-05 22:24:50');
INSERT INTO `frienq_rate` VALUES ('41ab565e-f256-4983-89a8-80eb914c42a8', 0, 'b545b46d-3195-470e-bd62-94f6d7b8a586', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-22 01:49:55', '2020-02-22 01:49:55', '2020-02-22 01:49:55');
INSERT INTO `frienq_rate` VALUES ('4518073e-42db-4473-9b18-c7fab09e10a1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-07-07 12:27:01', '2020-07-07 12:27:01', '2020-07-07 12:27:01');
INSERT INTO `frienq_rate` VALUES ('4518073e-42db-4473-9b18-c7fab09e10a1', 0, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-07-07 21:25:05', '2020-07-07 21:25:05', '2020-07-07 21:25:05');
INSERT INTO `frienq_rate` VALUES ('4518073e-42db-4473-9b18-c7fab09e10a1', 0, 'f415e3c3-0659-4378-8ea8-cdd2336ea67b', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-07-10 12:32:27', '2020-07-10 12:32:27', '2020-07-10 12:32:27');
INSERT INTO `frienq_rate` VALUES ('52d3da51-379d-459c-86a3-aa8dc8756d82', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, b'0', b'0', '2020-02-05 22:20:23', '2020-02-05 22:20:23', '2020-02-05 22:20:23');
INSERT INTO `frienq_rate` VALUES ('52d3da51-379d-459c-86a3-aa8dc8756d82', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, b'0', b'0', '2020-02-06 01:12:43', '2020-02-06 01:12:43', '2020-02-06 01:12:43');
INSERT INTO `frienq_rate` VALUES ('5319d6e6-6a6f-4857-8f64-551bab7bff8b', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-25 00:30:32', '2020-02-25 00:30:32', '2020-02-25 00:30:32');
INSERT INTO `frienq_rate` VALUES ('55d0adb7-e272-428e-bec3-cac48aa150fe', 0, '111a6e26-815d-46aa-bd01-993d73f04a4f', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, b'0', b'0', '2020-03-29 20:16:43', '2020-03-29 20:16:43', '2020-03-29 20:16:43');
INSERT INTO `frienq_rate` VALUES ('55d0adb7-e272-428e-bec3-cac48aa150fe', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-05-16 22:28:55', '2020-05-16 22:28:55', '2020-05-16 22:28:55');
INSERT INTO `frienq_rate` VALUES ('55d0adb7-e272-428e-bec3-cac48aa150fe', 0, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-07-08 23:04:02', '2020-07-08 23:04:02', '2020-07-08 23:04:02');
INSERT INTO `frienq_rate` VALUES ('5a16b400-0ed7-4316-90fb-669767a0ddcb', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-05 22:18:35', '2020-02-05 22:18:35', '2020-02-05 22:18:35');
INSERT INTO `frienq_rate` VALUES ('5a16b400-0ed7-4316-90fb-669767a0ddcb', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-02-06 00:43:13', '2020-02-06 00:43:13', '2020-02-06 00:43:13');
INSERT INTO `frienq_rate` VALUES ('5a748890-49ae-4344-a1b1-d7b53b27e8d6', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-03-16 22:49:57', '2020-03-16 22:49:57', '2020-03-16 22:49:57');
INSERT INTO `frienq_rate` VALUES ('5b22d4ac-d4e4-421c-b937-f24f4b592905', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-15 15:51:04', '2020-02-15 15:51:04', '2020-02-15 15:51:04');
INSERT INTO `frienq_rate` VALUES ('5bb9e383-e6f6-4500-8c31-0e6f2cb6cd71', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-11 21:06:53', '2020-02-11 21:06:53', '2020-02-11 21:06:53');
INSERT INTO `frienq_rate` VALUES ('5f5b68f4-5948-49fa-8d70-329113388b52', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-13 01:00:33', '2020-02-13 01:00:33', '2020-02-13 01:00:33');
INSERT INTO `frienq_rate` VALUES ('5ffe131f-7b22-4d36-a803-5628985e4ade', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, b'0', b'0', '2020-03-29 10:28:38', '2020-03-29 10:28:38', '2020-03-29 10:28:38');
INSERT INTO `frienq_rate` VALUES ('6048555f-14c7-402b-abf9-ba5bf6203865', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-13 20:48:58', '2020-02-13 20:48:58', '2020-02-13 20:48:58');
INSERT INTO `frienq_rate` VALUES ('62a527d8-aa16-4e03-aaab-a366aec8fac8', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-05 22:18:28', '2020-02-05 22:18:28', '2020-02-05 22:18:28');
INSERT INTO `frienq_rate` VALUES ('667c6b0b-93ef-4a42-8897-d9d65f96fb50', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 6, b'0', b'0', '2020-03-14 20:01:01', '2020-03-14 20:01:01', '2020-03-14 20:01:01');
INSERT INTO `frienq_rate` VALUES ('6681b86f-23dd-4d49-a15c-7c559c4bfc58', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-06 00:57:57', '2020-02-06 00:57:57', '2020-02-06 00:57:57');
INSERT INTO `frienq_rate` VALUES ('6681b86f-23dd-4d49-a15c-7c559c4bfc58', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-06 01:11:22', '2020-02-06 01:11:22', '2020-02-06 01:11:22');
INSERT INTO `frienq_rate` VALUES ('6681b86f-23dd-4d49-a15c-7c559c4bfc58', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-06 01:01:40', '2020-02-06 01:01:40', '2020-02-06 01:01:40');
INSERT INTO `frienq_rate` VALUES ('6681b86f-23dd-4d49-a15c-7c559c4bfc58', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-04-03 22:40:47', '2020-04-03 22:40:47', '2020-04-03 22:40:47');
INSERT INTO `frienq_rate` VALUES ('6aefd1aa-7be8-4810-a4f2-056072ec95dd', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-16 15:51:30', '2020-02-16 15:51:30', '2020-02-16 15:51:30');
INSERT INTO `frienq_rate` VALUES ('6aefd1aa-7be8-4810-a4f2-056072ec95dd', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 4, b'0', b'0', '2020-02-16 15:49:49', '2020-02-16 15:49:49', '2020-02-16 15:49:49');
INSERT INTO `frienq_rate` VALUES ('6c2c5d3e-8930-492c-9d01-a1a4a878fda3', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 10, b'0', b'0', '2020-03-14 23:14:12', '2020-03-14 23:14:12', '2020-03-14 23:14:12');
INSERT INTO `frienq_rate` VALUES ('6ca066a9-4f1b-4883-b7ee-f7801127581d', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, b'0', b'0', '2020-03-12 03:13:18', '2020-03-12 03:13:18', '2020-03-12 03:13:18');
INSERT INTO `frienq_rate` VALUES ('70e6d4ca-a273-4fd8-97ac-830500bbcd86', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-26 02:24:53', '2020-02-26 02:24:53', '2020-02-26 02:24:53');
INSERT INTO `frienq_rate` VALUES ('70e6d4ca-a273-4fd8-97ac-830500bbcd86', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-26 22:34:24', '2020-02-26 22:34:24', '2020-02-26 22:34:24');
INSERT INTO `frienq_rate` VALUES ('70e6d4ca-a273-4fd8-97ac-830500bbcd86', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-27 23:43:05', '2020-02-27 23:43:05', '2020-02-27 23:43:05');
INSERT INTO `frienq_rate` VALUES ('714ea1c6-25b7-475f-8da9-ada0e32674a7', 0, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 9, b'0', b'0', '2020-03-24 16:24:35', '2020-03-24 16:24:35', '2020-03-24 16:24:35');
INSERT INTO `frienq_rate` VALUES ('74818591-d707-46e4-b807-1f111b5541d9', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-15 15:52:13', '2020-02-15 15:52:13', '2020-02-15 15:52:13');
INSERT INTO `frienq_rate` VALUES ('74818591-d707-46e4-b807-1f111b5541d9', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-02-15 15:53:33', '2020-02-15 15:53:33', '2020-02-15 15:53:33');
INSERT INTO `frienq_rate` VALUES ('77fa1015-83a9-4997-9e7c-a249fe863eac', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-07-07 12:27:12', '2020-07-07 12:27:12', '2020-07-07 12:27:12');
INSERT INTO `frienq_rate` VALUES ('77fa1015-83a9-4997-9e7c-a249fe863eac', 0, '535634d4-1383-4ab6-92d9-637226556da1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-06-11 21:25:31', '2020-06-11 21:25:31', '2020-06-11 21:25:31');
INSERT INTO `frienq_rate` VALUES ('77fa1015-83a9-4997-9e7c-a249fe863eac', 0, 'edad7cf8-583a-4427-94a0-2f25ea9396bd', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-06-23 18:57:33', '2020-06-23 18:57:33', '2020-06-23 18:57:33');
INSERT INTO `frienq_rate` VALUES ('7962a92e-db07-4458-8f5b-9abb67f0102f', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-26 01:10:12', '2020-02-26 01:10:12', '2020-02-26 01:10:12');
INSERT INTO `frienq_rate` VALUES ('7962a92e-db07-4458-8f5b-9abb67f0102f', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-02-29 03:56:32', '2020-02-29 03:56:32', '2020-02-29 03:56:32');
INSERT INTO `frienq_rate` VALUES ('7962a92e-db07-4458-8f5b-9abb67f0102f', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-03-02 15:14:16', '2020-03-02 15:14:16', '2020-03-02 15:14:16');
INSERT INTO `frienq_rate` VALUES ('7962a92e-db07-4458-8f5b-9abb67f0102f', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-04-03 22:28:26', '2020-04-03 22:28:26', '2020-04-03 22:28:26');
INSERT INTO `frienq_rate` VALUES ('7b3c2e7c-a54a-4178-b7c1-abcda21701d0', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-20 18:05:16', '2020-02-20 18:05:16', '2020-02-20 18:05:16');
INSERT INTO `frienq_rate` VALUES ('7b3c2e7c-a54a-4178-b7c1-abcda21701d0', 0, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-02-16 18:30:32', '2020-02-16 18:30:32', '2020-02-16 18:30:32');
INSERT INTO `frienq_rate` VALUES ('7b3c2e7c-a54a-4178-b7c1-abcda21701d0', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-16 18:32:24', '2020-02-16 18:32:24', '2020-02-16 18:32:24');
INSERT INTO `frienq_rate` VALUES ('7b3c2e7c-a54a-4178-b7c1-abcda21701d0', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-17 11:21:48', '2020-02-17 11:21:48', '2020-02-17 11:21:48');
INSERT INTO `frienq_rate` VALUES ('7b479a55-0618-4cdc-9783-cd7a130e97fb', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-05 22:18:00', '2020-02-05 22:18:00', '2020-02-05 22:18:00');
INSERT INTO `frienq_rate` VALUES ('7ced889f-eccc-4b8a-8049-eb96e8d967aa', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-06 23:06:53', '2020-02-06 23:06:53', '2020-02-06 23:06:53');
INSERT INTO `frienq_rate` VALUES ('7ced889f-eccc-4b8a-8049-eb96e8d967aa', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-06 23:30:44', '2020-02-06 23:30:44', '2020-02-06 23:30:44');
INSERT INTO `frienq_rate` VALUES ('7d56bf9d-b29b-41ef-bb71-6df6e10fe129', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-06 22:59:05', '2020-02-06 22:59:05', '2020-02-06 22:59:05');
INSERT INTO `frienq_rate` VALUES ('7d56bf9d-b29b-41ef-bb71-6df6e10fe129', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-06 23:30:58', '2020-02-06 23:30:58', '2020-02-06 23:30:58');
INSERT INTO `frienq_rate` VALUES ('7d9e57b5-1e58-4117-818a-a28b25febced', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 4, b'0', b'0', '2020-02-27 23:46:40', '2020-02-27 23:46:40', '2020-02-27 23:46:40');
INSERT INTO `frienq_rate` VALUES ('7d9e57b5-1e58-4117-818a-a28b25febced', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 2, b'0', b'0', '2020-02-29 03:55:56', '2020-02-29 03:55:56', '2020-02-29 03:55:56');
INSERT INTO `frienq_rate` VALUES ('7e8b4fc0-cdec-4420-8764-a00202961191', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 7, b'0', b'0', '2020-03-29 20:43:31', '2020-03-29 20:43:31', '2020-03-29 20:43:31');
INSERT INTO `frienq_rate` VALUES ('8036bb81-66c6-4932-b6b3-d0f34995fed6', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-14 23:32:55', '2020-02-14 23:32:55', '2020-02-14 23:32:55');
INSERT INTO `frienq_rate` VALUES ('8036bb81-66c6-4932-b6b3-d0f34995fed6', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-02-15 15:53:49', '2020-02-15 15:53:49', '2020-02-15 15:53:49');
INSERT INTO `frienq_rate` VALUES ('8205e70d-cd7a-4fc1-a446-6409dc11b86c', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-03-25 06:52:57', '2020-03-25 06:52:57', '2020-03-25 06:52:57');
INSERT INTO `frienq_rate` VALUES ('82a3c9dd-a791-4124-8b92-6c9578000567', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-08 23:07:36', '2020-02-08 23:07:36', '2020-02-08 23:07:36');
INSERT INTO `frienq_rate` VALUES ('863bf4aa-5431-4f66-bb1f-28998c0ff04e', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-13 21:00:30', '2020-02-13 21:00:30', '2020-02-13 21:00:30');
INSERT INTO `frienq_rate` VALUES ('87415b23-0dc0-4a6f-9d71-bbf84ae16cbf', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, b'0', b'1', '2020-02-09 22:53:04', '2020-02-09 22:53:04', '2020-02-09 22:53:04');
INSERT INTO `frienq_rate` VALUES ('87415b23-0dc0-4a6f-9d71-bbf84ae16cbf', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-09 22:52:59', '2020-02-09 22:52:59', '2020-02-09 22:52:59');
INSERT INTO `frienq_rate` VALUES ('8d1f2345-c4bf-480c-80a2-de75f26497d1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-02-06 23:57:41', '2020-02-06 23:57:41', '2020-02-06 23:57:41');
INSERT INTO `frienq_rate` VALUES ('90ed90d3-f0dd-4944-838b-5d0d5bcbd4ef', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-03-27 19:09:11', '2020-03-27 19:09:11', '2020-03-27 19:09:11');
INSERT INTO `frienq_rate` VALUES ('9a41ceb6-a9e2-488c-b2a2-ca6d8a82b6ce', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-25 00:51:56', '2020-02-25 00:51:56', '2020-02-25 00:51:56');
INSERT INTO `frienq_rate` VALUES ('9c3dc0f3-3716-4337-819d-cd66cc93742a', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-09 20:40:08', '2020-02-09 20:40:08', '2020-02-09 20:40:08');
INSERT INTO `frienq_rate` VALUES ('9c3dc0f3-3716-4337-819d-cd66cc93742a', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-09 20:43:08', '2020-02-09 20:43:08', '2020-02-09 20:43:08');
INSERT INTO `frienq_rate` VALUES ('a0b2cfb8-c65f-49c6-bb76-5b9a8ed15862', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-03-07 01:33:48', '2020-03-07 01:33:48', '2020-03-07 01:33:48');
INSERT INTO `frienq_rate` VALUES ('a0b2cfb8-c65f-49c6-bb76-5b9a8ed15862', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-03-07 14:08:13', '2020-03-07 14:08:13', '2020-03-07 14:08:13');
INSERT INTO `frienq_rate` VALUES ('a3fc7cb3-e3df-45e0-ae85-be6153778db7', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-08 22:10:41', '2020-02-08 22:10:41', '2020-02-08 22:10:41');
INSERT INTO `frienq_rate` VALUES ('a5002b4c-3f56-42eb-bfca-9bdb8dbc82e1', 0, '111a6e26-815d-46aa-bd01-993d73f04a4f', '111a6e26-815d-46aa-bd01-993d73f04a4f', 4, b'0', b'0', '2020-03-29 20:52:26', '2020-03-29 20:52:26', '2020-03-29 20:52:26');
INSERT INTO `frienq_rate` VALUES ('a5002b4c-3f56-42eb-bfca-9bdb8dbc82e1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 9, b'0', b'0', '2020-03-29 20:22:30', '2020-03-29 20:22:30', '2020-03-29 20:22:30');
INSERT INTO `frienq_rate` VALUES ('a6da7ac5-a815-4f4c-a82c-1b01965fd2be', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-23 22:46:03', '2020-02-23 22:46:03', '2020-02-23 22:46:03');
INSERT INTO `frienq_rate` VALUES ('a6da7ac5-a815-4f4c-a82c-1b01965fd2be', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 1, b'0', b'0', '2020-02-23 22:43:15', '2020-02-23 22:43:15', '2020-02-23 22:43:15');
INSERT INTO `frienq_rate` VALUES ('a6da7ac5-a815-4f4c-a82c-1b01965fd2be', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-04-03 22:28:59', '2020-04-03 22:28:59', '2020-04-03 22:28:59');
INSERT INTO `frienq_rate` VALUES ('a80c7f85-41e2-4643-818b-1cc43ffff71d', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 8, b'0', b'0', '2020-03-29 21:01:44', '2020-03-29 21:01:44', '2020-03-29 21:01:44');
INSERT INTO `frienq_rate` VALUES ('a80c7f85-41e2-4643-818b-1cc43ffff71d', 0, '535634d4-1383-4ab6-92d9-637226556da1', '111a6e26-815d-46aa-bd01-993d73f04a4f', 6, b'0', b'0', '2020-07-07 21:26:05', '2020-07-07 21:26:05', '2020-07-07 21:26:05');
INSERT INTO `frienq_rate` VALUES ('a80c7f85-41e2-4643-818b-1cc43ffff71d', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '111a6e26-815d-46aa-bd01-993d73f04a4f', 6, b'0', b'0', '2020-04-03 20:18:13', '2020-04-03 20:18:13', '2020-04-03 20:18:13');
INSERT INTO `frienq_rate` VALUES ('a8556fcc-9bb7-4bbe-8577-0faa30fbd5a2', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-25 01:30:25', '2020-02-25 01:30:25', '2020-02-25 01:30:25');
INSERT INTO `frienq_rate` VALUES ('a91a17aa-37a1-4992-b078-8344bec849e7', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-06 23:30:57', '2020-02-06 23:30:57', '2020-02-06 23:30:57');
INSERT INTO `frienq_rate` VALUES ('a91a17aa-37a1-4992-b078-8344bec849e7', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-06 23:30:33', '2020-02-06 23:30:33', '2020-02-06 23:30:33');
INSERT INTO `frienq_rate` VALUES ('aaba3901-38b4-4330-9baf-536fdf30a921', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-26 23:27:07', '2020-02-26 23:27:07', '2020-02-26 23:27:07');
INSERT INTO `frienq_rate` VALUES ('aaba3901-38b4-4330-9baf-536fdf30a921', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 0, b'0', b'1', '2020-02-27 00:08:16', '2020-02-27 00:08:16', '2020-02-27 00:08:16');
INSERT INTO `frienq_rate` VALUES ('ab98fb55-1c87-4f8b-a52b-9bb48fe2a6a8', 0, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 10, b'0', b'0', '2020-04-06 13:51:31', '2020-04-06 13:51:31', '2020-04-06 13:51:31');
INSERT INTO `frienq_rate` VALUES ('ac2597ce-4719-4a78-886d-b959041e9e45', 0, '535634d4-1383-4ab6-92d9-637226556da1', '535634d4-1383-4ab6-92d9-637226556da1', 9, b'0', b'0', '2020-03-24 18:29:52', '2020-03-24 18:29:52', '2020-03-24 18:29:52');
INSERT INTO `frienq_rate` VALUES ('ac2597ce-4719-4a78-886d-b959041e9e45', 0, '6782d740-3551-4396-9cec-e1f023e88ecc', '535634d4-1383-4ab6-92d9-637226556da1', 8, b'0', b'0', '2020-03-24 21:11:16', '2020-03-24 21:11:16', '2020-03-24 21:11:16');
INSERT INTO `frienq_rate` VALUES ('ac2597ce-4719-4a78-886d-b959041e9e45', 0, 'b493c8e0-01a5-413c-8b61-4fe0fbbfc067', '535634d4-1383-4ab6-92d9-637226556da1', 8, b'0', b'0', '2020-03-24 18:59:17', '2020-03-24 18:59:17', '2020-03-24 18:59:17');
INSERT INTO `frienq_rate` VALUES ('ac2597ce-4719-4a78-886d-b959041e9e45', 0, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', '535634d4-1383-4ab6-92d9-637226556da1', 9, b'0', b'0', '2020-03-26 04:41:47', '2020-03-26 04:41:47', '2020-03-26 04:41:47');
INSERT INTO `frienq_rate` VALUES ('addb159b-33e6-46a0-874d-5c84d31854f2', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 0, b'0', b'1', '2020-02-15 15:55:22', '2020-02-15 15:55:22', '2020-02-15 15:55:22');
INSERT INTO `frienq_rate` VALUES ('addb159b-33e6-46a0-874d-5c84d31854f2', 0, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-16 18:40:01', '2020-02-16 18:40:01', '2020-02-16 18:40:01');
INSERT INTO `frienq_rate` VALUES ('addb159b-33e6-46a0-874d-5c84d31854f2', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-15 15:54:51', '2020-02-15 15:54:51', '2020-02-15 15:54:51');
INSERT INTO `frienq_rate` VALUES ('afb53026-6474-452e-814b-3e3454973665', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-05 23:00:01', '2020-02-05 23:00:01', '2020-02-05 23:00:01');
INSERT INTO `frienq_rate` VALUES ('b3ae6d41-2d89-4775-888e-f2a59cfe9ef1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-02-10 17:11:28', '2020-02-10 17:11:28', '2020-02-10 17:11:28');
INSERT INTO `frienq_rate` VALUES ('b425614a-77f3-4d3a-b433-cb8494a558bf', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-05 23:00:03', '2020-02-05 23:00:03', '2020-02-05 23:00:03');
INSERT INTO `frienq_rate` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', 0, '1454500f-5054-4555-a4c7-d045f589ca92', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-26 01:22:45', '2020-02-26 01:22:45', '2020-02-26 01:22:45');
INSERT INTO `frienq_rate` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-26 01:21:00', '2020-02-26 01:21:00', '2020-02-26 01:21:00');
INSERT INTO `frienq_rate` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-02-29 03:56:15', '2020-02-29 03:56:15', '2020-02-29 03:56:15');
INSERT INTO `frienq_rate` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-03-01 23:26:49', '2020-03-01 23:26:49', '2020-03-01 23:26:49');
INSERT INTO `frienq_rate` VALUES ('b466edc1-87a4-4902-96bc-99b7202295c3', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-04-03 22:23:27', '2020-04-03 22:23:27', '2020-04-03 22:23:27');
INSERT INTO `frienq_rate` VALUES ('b9ad6dc7-f981-4729-b228-f87a85022309', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-23 20:52:42', '2020-02-23 20:52:42', '2020-02-23 20:52:42');
INSERT INTO `frienq_rate` VALUES ('b9ad6dc7-f981-4729-b228-f87a85022309', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-25 23:16:16', '2020-02-25 23:16:16', '2020-02-25 23:16:16');
INSERT INTO `frienq_rate` VALUES ('b9ad6dc7-f981-4729-b228-f87a85022309', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-02-27 23:43:26', '2020-02-27 23:43:26', '2020-02-27 23:43:26');
INSERT INTO `frienq_rate` VALUES ('bb0fc156-0dea-4bfb-8146-934a861e9c86', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 1, b'0', b'0', '2020-02-05 22:20:45', '2020-02-05 22:20:45', '2020-02-05 22:20:45');
INSERT INTO `frienq_rate` VALUES ('bb0fc156-0dea-4bfb-8146-934a861e9c86', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-06 01:01:12', '2020-02-06 01:01:12', '2020-02-06 01:01:12');
INSERT INTO `frienq_rate` VALUES ('bbb8c6bc-2f36-4a8d-8d92-b8078aacc956', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 3, b'0', b'0', '2020-02-06 23:34:26', '2020-02-06 23:34:26', '2020-02-06 23:34:26');
INSERT INTO `frienq_rate` VALUES ('bbb8c6bc-2f36-4a8d-8d92-b8078aacc956', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 5, b'0', b'0', '2020-02-16 15:53:52', '2020-02-16 15:53:52', '2020-02-16 15:53:52');
INSERT INTO `frienq_rate` VALUES ('bbb8c6bc-2f36-4a8d-8d92-b8078aacc956', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', 7, b'0', b'0', '2020-02-06 23:34:50', '2020-02-06 23:34:50', '2020-02-06 23:34:50');
INSERT INTO `frienq_rate` VALUES ('bfb4fd17-a0e7-4281-b821-d85df8051527', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 9, b'0', b'0', '2020-03-14 20:01:10', '2020-03-14 20:01:10', '2020-03-14 20:01:10');
INSERT INTO `frienq_rate` VALUES ('bfb4fd17-a0e7-4281-b821-d85df8051527', 0, '535634d4-1383-4ab6-92d9-637226556da1', '111a6e26-815d-46aa-bd01-993d73f04a4f', 8, b'0', b'0', '2020-07-07 21:24:54', '2020-07-07 21:24:54', '2020-07-07 21:24:54');
INSERT INTO `frienq_rate` VALUES ('c09baef1-e880-4536-944f-966b739ebf28', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-06 08:46:36', '2020-02-06 08:46:36', '2020-02-06 08:46:36');
INSERT INTO `frienq_rate` VALUES ('c2ab56e6-5420-48e4-a862-674f0fc3ee8f', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 7, b'0', b'0', '2020-03-29 20:36:59', '2020-03-29 20:36:59', '2020-03-29 20:36:59');
INSERT INTO `frienq_rate` VALUES ('c53adf6b-45fd-4680-93ee-e341eabbe890', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-02-26 01:16:12', '2020-02-26 01:16:12', '2020-02-26 01:16:12');
INSERT INTO `frienq_rate` VALUES ('c53adf6b-45fd-4680-93ee-e341eabbe890', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-02-26 01:15:38', '2020-02-26 01:15:38', '2020-02-26 01:15:38');
INSERT INTO `frienq_rate` VALUES ('c53adf6b-45fd-4680-93ee-e341eabbe890', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-03-01 23:26:09', '2020-03-01 23:26:09', '2020-03-01 23:26:09');
INSERT INTO `frienq_rate` VALUES ('c53adf6b-45fd-4680-93ee-e341eabbe890', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 5, b'0', b'0', '2020-04-03 22:23:52', '2020-04-03 22:23:52', '2020-04-03 22:23:52');
INSERT INTO `frienq_rate` VALUES ('c55dc1a9-1889-40c1-84e1-e3a757d28bc4', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-06 22:28:09', '2020-02-06 22:28:09', '2020-02-06 22:28:09');
INSERT INTO `frienq_rate` VALUES ('cc45f811-1820-4946-87ef-87cfdc728069', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-03-22 19:14:34', '2020-03-22 19:14:34', '2020-03-22 19:14:34');
INSERT INTO `frienq_rate` VALUES ('ce998247-8d06-4383-bebe-1ad28e7dda80', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-26 02:22:49', '2020-02-26 02:22:49', '2020-02-26 02:22:49');
INSERT INTO `frienq_rate` VALUES ('ce998247-8d06-4383-bebe-1ad28e7dda80', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-26 01:13:53', '2020-02-26 01:13:53', '2020-02-26 01:13:53');
INSERT INTO `frienq_rate` VALUES ('d02492ee-f615-4d69-82b9-1176845a2a69', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 8, b'0', b'0', '2020-07-07 19:58:35', '2020-07-07 19:58:35', '2020-07-07 19:58:35');
INSERT INTO `frienq_rate` VALUES ('d02492ee-f615-4d69-82b9-1176845a2a69', 0, '6782d740-3551-4396-9cec-e1f023e88ecc', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 9, b'0', b'0', '2020-03-26 10:48:51', '2020-03-26 10:48:51', '2020-03-26 10:48:51');
INSERT INTO `frienq_rate` VALUES ('d02492ee-f615-4d69-82b9-1176845a2a69', 0, 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 'c8b0afb7-480d-4107-9bdb-6c75aa53afbc', 10, b'0', b'0', '2020-03-26 10:47:53', '2020-03-26 10:47:53', '2020-03-26 10:47:53');
INSERT INTO `frienq_rate` VALUES ('d050aca0-c423-42ae-8017-1971c4278d7d', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 6, b'0', b'0', '2020-07-07 19:58:28', '2020-07-07 19:58:28', '2020-07-07 19:58:28');
INSERT INTO `frienq_rate` VALUES ('d050aca0-c423-42ae-8017-1971c4278d7d', 0, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', 8, b'0', b'0', '2020-02-16 18:31:27', '2020-02-16 18:31:27', '2020-02-16 18:31:27');
INSERT INTO `frienq_rate` VALUES ('d1200964-c1c7-429a-9bbc-182aa3d524ca', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 9, b'0', b'0', '2020-03-13 22:40:35', '2020-03-13 22:40:35', '2020-03-13 22:40:35');
INSERT INTO `frienq_rate` VALUES ('d3c25b94-4e0a-4522-99f3-89fdd6160a66', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 2, b'0', b'0', '2020-02-05 22:20:36', '2020-02-05 22:20:36', '2020-02-05 22:20:36');
INSERT INTO `frienq_rate` VALUES ('d3c25b94-4e0a-4522-99f3-89fdd6160a66', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-02-06 01:01:01', '2020-02-06 01:01:01', '2020-02-06 01:01:01');
INSERT INTO `frienq_rate` VALUES ('d7d70c21-09db-45ea-9c95-c3bc80caa1df', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 1, b'0', b'0', '2020-02-26 01:40:34', '2020-02-26 01:40:34', '2020-02-26 01:40:34');
INSERT INTO `frienq_rate` VALUES ('d7d70c21-09db-45ea-9c95-c3bc80caa1df', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-26 01:39:14', '2020-02-26 01:39:14', '2020-02-26 01:39:14');
INSERT INTO `frienq_rate` VALUES ('d7d70c21-09db-45ea-9c95-c3bc80caa1df', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 9, b'0', b'0', '2020-03-01 23:24:51', '2020-03-01 23:24:51', '2020-03-01 23:24:51');
INSERT INTO `frienq_rate` VALUES ('d7d70c21-09db-45ea-9c95-c3bc80caa1df', 0, 'efe73545-e213-4b54-acaa-f6014980f388', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 7, b'0', b'0', '2020-04-03 22:21:32', '2020-04-03 22:21:32', '2020-04-03 22:21:32');
INSERT INTO `frienq_rate` VALUES ('dadf0650-5905-428f-ba9a-db854e262772', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-20 22:59:21', '2020-02-20 22:59:21', '2020-02-20 22:59:21');
INSERT INTO `frienq_rate` VALUES ('dadf0650-5905-428f-ba9a-db854e262772', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-20 21:34:28', '2020-02-20 21:34:28', '2020-02-20 21:34:28');
INSERT INTO `frienq_rate` VALUES ('db50778e-183c-43be-bbf7-8f7fa1a7f60e', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-03-24 16:22:22', '2020-03-24 16:22:22', '2020-03-24 16:22:22');
INSERT INTO `frienq_rate` VALUES ('dc43d49b-3cf2-4af6-b368-84bea25ff239', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-03-13 15:54:00', '2020-03-13 15:54:00', '2020-03-13 15:54:00');
INSERT INTO `frienq_rate` VALUES ('dd248e48-a1bf-448e-93ed-a1aa9a26a122', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-07 00:28:25', '2020-02-07 00:28:25', '2020-02-07 00:28:25');
INSERT INTO `frienq_rate` VALUES ('e16da070-b651-4424-92fb-8fbacbef85e1', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 3, b'0', b'0', '2020-03-22 01:26:23', '2020-03-22 01:26:23', '2020-03-22 01:26:23');
INSERT INTO `frienq_rate` VALUES ('e1818a96-5d5a-4693-b75e-39c8f1039108', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-20 21:01:36', '2020-02-20 21:01:36', '2020-02-20 21:01:36');
INSERT INTO `frienq_rate` VALUES ('e1818a96-5d5a-4693-b75e-39c8f1039108', 0, '1fbc1fa3-5097-4d2f-a64c-3cf72ea7b4a8', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-19 23:45:43', '2020-02-19 23:45:43', '2020-02-19 23:45:43');
INSERT INTO `frienq_rate` VALUES ('e1818a96-5d5a-4693-b75e-39c8f1039108', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 6, b'0', b'0', '2020-02-26 00:51:35', '2020-02-26 00:51:35', '2020-02-26 00:51:35');
INSERT INTO `frienq_rate` VALUES ('e1818a96-5d5a-4693-b75e-39c8f1039108', 0, '75209907-9c77-4d60-a96b-8a8cbf687e2a', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 8, b'0', b'0', '2020-02-24 12:38:29', '2020-02-24 12:38:29', '2020-02-24 12:38:29');
INSERT INTO `frienq_rate` VALUES ('e3674a15-671e-4afc-97fc-8c4c58758931', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '111a6e26-815d-46aa-bd01-993d73f04a4f', 8, b'0', b'0', '2020-03-29 20:47:14', '2020-03-29 20:47:14', '2020-03-29 20:47:14');
INSERT INTO `frienq_rate` VALUES ('e5d5713c-b386-4c43-9f98-bce334bb1926', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 4, b'0', b'0', '2020-02-07 00:27:12', '2020-02-07 00:27:12', '2020-02-07 00:27:12');
INSERT INTO `frienq_rate` VALUES ('eefbd577-1636-45a2-938a-59169ba261a7', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-09 20:54:42', '2020-02-09 20:54:42', '2020-02-09 20:54:42');
INSERT INTO `frienq_rate` VALUES ('eefbd577-1636-45a2-938a-59169ba261a7', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-09 21:11:01', '2020-02-09 21:11:01', '2020-02-09 21:11:01');
INSERT INTO `frienq_rate` VALUES ('f0165d3e-114b-4369-bf60-ffa04bf813d2', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-02-26 00:57:29', '2020-02-26 00:57:29', '2020-02-26 00:57:29');
INSERT INTO `frienq_rate` VALUES ('f0165d3e-114b-4369-bf60-ffa04bf813d2', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-26 00:47:44', '2020-02-26 00:47:44', '2020-02-26 00:47:44');
INSERT INTO `frienq_rate` VALUES ('f0165d3e-114b-4369-bf60-ffa04bf813d2', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-27 23:43:20', '2020-02-27 23:43:20', '2020-02-27 23:43:20');
INSERT INTO `frienq_rate` VALUES ('f11ee528-a3cd-46bb-ae96-2d36c924cc4c', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-06 00:43:03', '2020-02-06 00:43:03', '2020-02-06 00:43:03');
INSERT INTO `frienq_rate` VALUES ('f11ee528-a3cd-46bb-ae96-2d36c924cc4c', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-02-06 01:11:50', '2020-02-06 01:11:50', '2020-02-06 01:11:50');
INSERT INTO `frienq_rate` VALUES ('f11ee528-a3cd-46bb-ae96-2d36c924cc4c', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '6625344d-99ed-40ec-840b-9de4d4bc29c1', 10, b'0', b'0', '2020-02-06 00:42:43', '2020-02-06 00:42:43', '2020-02-06 00:42:43');
INSERT INTO `frienq_rate` VALUES ('f25a4caa-efbf-4c88-b658-06e3005f05a7', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-15 00:42:19', '2020-02-15 00:42:19', '2020-02-15 00:42:19');
INSERT INTO `frienq_rate` VALUES ('f25a4caa-efbf-4c88-b658-06e3005f05a7', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-15 15:53:35', '2020-02-15 15:53:35', '2020-02-15 15:53:35');
INSERT INTO `frienq_rate` VALUES ('f8f4904b-cee6-4dd8-bf70-920353e5a054', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 6, b'0', b'0', '2020-02-21 16:43:36', '2020-02-21 16:43:36', '2020-02-21 16:43:36');
INSERT INTO `frienq_rate` VALUES ('f94febba-5296-4af5-87f9-470082bed416', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 5, b'0', b'0', '2020-02-06 23:04:25', '2020-02-06 23:04:25', '2020-02-06 23:04:25');
INSERT INTO `frienq_rate` VALUES ('f94febba-5296-4af5-87f9-470082bed416', 0, 'c8dc1fb8-7f7b-4f9a-8aed-fa8f6c249a20', '178b5043-0be8-4dbf-8279-fb74ca676047', 8, b'0', b'0', '2020-02-06 23:30:48', '2020-02-06 23:30:48', '2020-02-06 23:30:48');
INSERT INTO `frienq_rate` VALUES ('fd406708-1b07-43db-9062-b17e1c775ca5', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-13 20:59:13', '2020-02-13 20:59:13', '2020-02-13 20:59:13');
INSERT INTO `frienq_rate` VALUES ('fe29e239-87bc-495f-9e65-e71e36175b9b', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-03-22 19:49:43', '2020-03-22 19:49:43', '2020-03-22 19:49:43');
INSERT INTO `frienq_rate` VALUES ('ff92305d-b46d-4892-b319-b69ba6d344eb', 0, '178b5043-0be8-4dbf-8279-fb74ca676047', '178b5043-0be8-4dbf-8279-fb74ca676047', 9, b'0', b'0', '2020-02-21 23:43:27', '2020-02-21 23:43:27', '2020-02-21 23:43:27');
INSERT INTO `frienq_rate` VALUES ('ff92305d-b46d-4892-b319-b69ba6d344eb', 0, '6625344d-99ed-40ec-840b-9de4d4bc29c1', '178b5043-0be8-4dbf-8279-fb74ca676047', 7, b'0', b'0', '2020-02-22 01:57:04', '2020-02-22 01:57:04', '2020-02-22 01:57:04');
INSERT INTO `frienq_rate` VALUES ('ff92305d-b46d-4892-b319-b69ba6d344eb', 0, 'b545b46d-3195-470e-bd62-94f6d7b8a586', '178b5043-0be8-4dbf-8279-fb74ca676047', 10, b'0', b'0', '2020-02-22 01:50:06', '2020-02-22 01:50:06', '2020-02-22 01:50:06');

-- ----------------------------
-- Triggers structure for table frienq_member_frienq
-- ----------------------------
DROP TRIGGER IF EXISTS `trAddMemberFrienq`;
delimiter ;;
CREATE TRIGGER `trAddMemberFrienq` AFTER INSERT ON `frienq_member_frienq` FOR EACH ROW BEGIN
UPDATE frienq_member SET frienq_member.owned_frienq_count = frienq_member.owned_frienq_count + 1 where frienq_member.uid = NEW.uid_owner;
UPDATE frienq_member SET frienq_member.frienq_count = frienq_member.frienq_count + 1 where frienq_member.uid = NEW.uid_member;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_owner and uid_frienq=NEW.uid_member)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_owner and uid_frienq=NEW.uid_member;
 update frienq_notification set notified=0, date_update=NOW() where uid_owner=NEW.uid_owner and uid_frienq=NEW.uid_member and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete) values (NEW.uid_owner,NEW.uid_member,0,0,0,NOW(),NOW(),NOW());
end if;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_member_frienq
-- ----------------------------
DROP TRIGGER IF EXISTS `trRemoveMemberFrienq`;
delimiter ;;
CREATE TRIGGER `trRemoveMemberFrienq` AFTER DELETE ON `frienq_member_frienq` FOR EACH ROW BEGIN
UPDATE frienq_member SET frienq_member.owned_frienq_count = frienq_member.owned_frienq_count - 1 where frienq_member.uid = OLD.uid_owner;
UPDATE frienq_member SET frienq_member.frienq_count = frienq_member.frienq_count - 1 where frienq_member.uid = OLD.uid_member;
if(select count(*) from frienq_notification where uid_owner=OLD.uid_owner and uid_frienq=OLD.uid_member)>0
then 
 update frienq_notification set deleted=1,date_delete=NOW() where uid_owner=OLD.uid_owner and uid_frienq=OLD.uid_member and notification_type=0;
end if;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_post_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `trCommentInsert`;
delimiter ;;
CREATE TRIGGER `trCommentInsert` AFTER INSERT ON `frienq_post_comment` FOR EACH ROW begin
update frienq_post set count_comment=(select count(*) from frienq_post_comment where id_post=NEW.id_post and deleted=0) where id=NEW.id_post;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3;
 update frienq_notification set notified=0, date_update=NOW()where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3 and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data,notification_data2) values (NEW.uid_member_to,NEW.uid_member_from,3,0,0,NOW(),NOW(),NOW(),NEW.id_post,NEW.id);
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_post_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `trCommentUpdate`;
delimiter ;;
CREATE TRIGGER `trCommentUpdate` AFTER UPDATE ON `frienq_post_comment` FOR EACH ROW begin
update frienq_post set count_comment=(select count(*) from frienq_post_comment where id_post=NEW.id_post and deleted=0) where id=NEW.id_post;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3;
 update frienq_notification set notified=0, date_update=NOW()where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_data2=NEW.id and notification_type=3 and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data,notification_data2) values (NEW.uid_member_to,NEW.uid_member_from,3,0,0,NOW(),NOW(),NOW(),NEW.id_post,NEW.id);
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_post_item_select
-- ----------------------------
DROP TRIGGER IF EXISTS `trPostIntemSelectAdd`;
delimiter ;;
CREATE TRIGGER `trPostIntemSelectAdd` AFTER INSERT ON `frienq_post_item_select` FOR EACH ROW begin
update frienq_post set count_rate=(select count(*) from frienq_post_item_select where id_post=NEW.id_post) where id=NEW.id_post;
update frienq_post_item set count_rate=(select count(*) from frienq_post_item_select where id_post_item=NEW.id_post_item) where id=NEW.id_post_item;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1;
 update frienq_notification set notified=0, date_update=NOW() where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1 and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data,notification_data2) values (NEW.uid_member_to,NEW.uid_member_from,1,0,0,NOW(),NOW(),NOW(),NEW.id_post,'select');
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_post_item_select
-- ----------------------------
DROP TRIGGER IF EXISTS `trPostIntemSelectUpdate`;
delimiter ;;
CREATE TRIGGER `trPostIntemSelectUpdate` AFTER UPDATE ON `frienq_post_item_select` FOR EACH ROW begin
update frienq_post set count_rate=(select count(*) from frienq_post_item_select where id_post=NEW.id_post) where id=NEW.id_post;
update frienq_post_item set count_rate=(select count(*) from frienq_post_item_select where id_post_item=NEW.id_post_item) where id=NEW.id_post_item;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1;
 update frienq_notification set notified=0, date_update=NOW() where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_post and notification_type=1 and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data,notification_data2) values (NEW.uid_member_to,NEW.uid_member_from,1,0,0,NOW(),NOW(),NOW(),NEW.id_post,'select');
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_post_item_select
-- ----------------------------
DROP TRIGGER IF EXISTS `trPostIntemSelectDelete`;
delimiter ;;
CREATE TRIGGER `trPostIntemSelectDelete` AFTER DELETE ON `frienq_post_item_select` FOR EACH ROW begin
update frienq_post set count_rate=(select count(*) from frienq_post_item_select where id_post=OLD.id_post) where id=OLD.id_post;
update frienq_post_item set count_rate=(select count(*) from frienq_post_item_select where id_post_item=OLD.id_post_item) where id=OLD.id_post_item;
update frienq_notification set deleted=1 where uid_owner=OLD.uid_member_to and uid_frienq=OLD.uid_member_from and notification_data=OLD.id_post and notification_type=1;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_rate
-- ----------------------------
DROP TRIGGER IF EXISTS `trRateInsert`;
delimiter ;;
CREATE TRIGGER `trRateInsert` AFTER INSERT ON `frienq_rate` FOR EACH ROW begin
update frienq_post set rate = (select IFNULL(sum(rate),0)/IF(count(*)>0,count(*),1) from frienq_rate where id_object=NEW.id_object and deleted=0), count_rate=(select count(*) from frienq_rate where id_object=NEW.id_object and deleted=0) where id=NEW.id_object;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object)>0
then 
 update frienq_notification set deleted=0 where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object;
 update frienq_notification set notified=0, date_update=NOW() where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data) values (NEW.uid_member_to,NEW.uid_member_from,1,0,0,NOW(),NOW(),NOW(),NEW.id_object);
end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table frienq_rate
-- ----------------------------
DROP TRIGGER IF EXISTS `trRateUpdate`;
delimiter ;;
CREATE TRIGGER `trRateUpdate` AFTER UPDATE ON `frienq_rate` FOR EACH ROW begin
update frienq_post set rate = (select IFNULL(sum(rate),0)/IF(count(*)>0,count(*),1) from frienq_rate where id_object=NEW.id_object and deleted=0), count_rate=(select count(*) from frienq_rate where id_object=NEW.id_object and deleted=0) where id=NEW.id_object;
if(select count(*) from frienq_notification where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object)>0
then 
 update frienq_notification set deleted=case when NEW.rate>0 then 0 else 1 end where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object;
 update frienq_notification set notified=0, date_update=NOW() where uid_owner=NEW.uid_member_to and uid_frienq=NEW.uid_member_from and notification_data=NEW.id_object and DATE(date_update)<>DATE(NOW());
else
	insert into frienq_notification (uid_owner, uid_frienq, notification_type, notified, deleted, date_create, date_update, date_delete,notification_data) values (NEW.uid_member_to,NEW.uid_member_from,1,0,0,NOW(),NOW(),NOW(),NEW.id_object);
end if;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
