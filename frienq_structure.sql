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

 Date: 23/07/2020 22:13:45
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
-- Table structure for frienq_def_sex
-- ----------------------------
DROP TABLE IF EXISTS `frienq_def_sex`;
CREATE TABLE `frienq_def_sex`  (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
