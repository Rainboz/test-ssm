/*
Navicat MySQL Data Transfer

Source Server         : yzedu
Source Server Version : 50624
Source Host           : 118.89.29.44:3306
Source Database       : yzedu

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-07-09 22:10:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ability
-- ----------------------------
DROP TABLE IF EXISTS `ability`;
CREATE TABLE `ability` (
  `ability_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) unsigned NOT NULL,
  `ability_theory` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_practice` tinyint(3) NOT NULL DEFAULT '0',
  `ability_language` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_innovate` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_think` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_teamwork` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`ability_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ability
-- ----------------------------
INSERT INTO `ability` VALUES ('1', '181', '89', '92', '93', '90', '79', '89', '2018-05-22 18:18:30', '2018-05-22 18:18:33');
INSERT INTO `ability` VALUES ('2', '182', '78', '81', '91', '76', '87', '98', '2018-05-22 18:21:03', '2018-05-22 18:21:13');
INSERT INTO `ability` VALUES ('3', '183', '91', '85', '69', '79', '91', '100', '2018-05-22 18:21:36', '2018-05-22 18:21:39');
INSERT INTO `ability` VALUES ('4', '184', '85', '89', '83', '92', '90', '100', '2018-05-22 18:22:03', '2018-05-22 18:22:06');
INSERT INTO `ability` VALUES ('5', '185', '82', '92', '78', '67', '84', '100', '2018-05-22 18:22:21', '2018-05-22 18:22:24');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `admin_account` char(10) NOT NULL,
  `admin_password` char(40) NOT NULL,
  `admin_authority` varchar(6) NOT NULL DEFAULT '000000',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1219371283', 'e10adc3949ba59abbe56e057f20f883e', '000001', '2018-04-09 21:33:03', '2018-04-09 21:33:06');
INSERT INTO `admin` VALUES ('4', 'root', '1219371280', '63a9f0ea7bb98050796b649e85481845', '111111', '2018-05-14 10:40:48', '2018-05-14 10:40:48');
INSERT INTO `admin` VALUES ('5', 'admin1', '1219371285', '96e79218965eb72c92a549dd5a330112', '000111', '2018-05-14 14:14:05', '2018-05-14 22:20:49');

-- ----------------------------
-- Table structure for advice
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `advice_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(1) unsigned DEFAULT NULL,
  `advice_content` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`advice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of advice
-- ----------------------------
INSERT INTO `advice` VALUES ('1', null, 'teast', '2018-05-28 11:56:09', '2018-05-28 11:56:09');
INSERT INTO `advice` VALUES ('2', null, '这是测试的意见反馈10', '2018-05-28 11:54:46', '2018-05-28 11:54:46');
INSERT INTO `advice` VALUES ('3', null, '这是测试的意见反馈9', '2018-05-28 11:54:50', '2018-05-28 11:54:50');
INSERT INTO `advice` VALUES ('4', null, '这是测试的意见反馈8', '2018-05-28 11:54:53', '2018-05-28 11:54:53');
INSERT INTO `advice` VALUES ('5', null, '这是测试的意见反馈7', '2018-05-28 11:54:56', '2018-05-28 11:54:56');
INSERT INTO `advice` VALUES ('6', null, '这是测试的意见反馈6', '2018-05-28 11:54:58', '2018-05-28 11:54:58');
INSERT INTO `advice` VALUES ('7', null, '这是测试的意见反馈5', '2018-05-28 11:55:01', '2018-05-28 11:55:01');
INSERT INTO `advice` VALUES ('8', null, '这是测试的意见反馈4', '2018-05-28 11:55:03', '2018-05-28 11:55:03');
INSERT INTO `advice` VALUES ('9', null, '这是测试的意见反馈3', '2018-05-28 11:55:04', '2018-05-28 11:55:04');
INSERT INTO `advice` VALUES ('10', null, '这是测试的意见反馈2', '2018-05-28 11:55:07', '2018-05-28 11:55:07');
INSERT INTO `advice` VALUES ('11', null, '这是测试的意见反馈1', '2018-05-28 11:55:08', '2018-05-28 11:55:08');
INSERT INTO `advice` VALUES ('12', null, '这是测试1', '2018-05-28 16:26:05', '2018-05-28 16:26:05');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `announcement_title` varchar(50) NOT NULL,
  `announcement_content` varchar(255) NOT NULL,
  `announcement_stick` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', '305', 'test', 'aaa', '0', '0', '2018-04-02 13:14:38', '2018-04-02 13:14:44');
INSERT INTO `announcement` VALUES ('3', '485', '大三学生体测通知', '教育部将于4月17号对我校的大三学生进行体质考察抽测，希望在校大三学生引起重视，并做好充分准备', '0', '0', '2018-04-05 00:00:00', '2018-04-05 00:00:00');
INSERT INTO `announcement` VALUES ('4', '485', '停水通知', '由于学校所在路线的水管维修，明天8点到20点学校将会停水，请同学们做好准备', '0', '0', '2018-04-01 00:00:00', '2018-04-01 00:00:00');
INSERT INTO `announcement` VALUES ('5', '485', '开放选课平台通知', '第二轮选课将于3月29号到4月1号开启，希望大家核算自己的学分，参考培养计划进行选课', '0', '0', '2018-03-28 00:00:00', '2018-03-28 00:00:00');
INSERT INTO `announcement` VALUES ('6', '485', '大学生CET-4/CET-6', '大学生英语CET-4/CET-6考试报名已经开始了，请要参加考试的学生尽快完成报名', '0', '0', '2018-03-25 00:00:00', '2018-03-25 00:00:00');
INSERT INTO `announcement` VALUES ('7', '485', '省教育厅专家组莅临我院进行教学巡查', '省教育厅的专家会来我校进行巡查，包括听课，座谈会等方式，希望同学们严肃对待', '1', '0', '2018-04-25 00:00:00', '2018-04-25 00:00:00');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL DEFAULT '-1',
  `banner_image` varchar(255) NOT NULL DEFAULT '0.png',
  `banner_type` tinyint(1) NOT NULL DEFAULT '0',
  `banner_link` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '-1', 'androidkaifa.png', '2', '3300', '0', '2018-04-06 18:10:55', '2018-04-06 18:10:58');
INSERT INTO `banner` VALUES ('2', '-1', '570360ca00010eeb06000338-240-135.jpg', '2', '870', '0', '2018-04-06 18:17:59', '2018-04-06 18:18:01');
INSERT INTO `banner` VALUES ('3', '-1', 'javachenxusheji.png', '2', '3298', '0', '2018-04-06 18:18:36', '2018-04-06 18:18:39');
INSERT INTO `banner` VALUES ('4', '-1', 'springmvc.png', '2', '3299', '0', '2018-04-06 18:19:12', '2018-04-06 18:19:15');

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `bill_money` decimal(8,2) NOT NULL DEFAULT '0.00',
  `bill_details` varchar(255) NOT NULL,
  `gmt_del` int(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('1', '2', '3500.00', '初次合作test', '0', '2018-05-20 09:50:52', '2018-05-20 09:50:54');
INSERT INTO `bill` VALUES ('2', '1', '10000.00', '测试', '0', '2018-05-20 09:51:22', '2018-05-20 09:51:26');
INSERT INTO `bill` VALUES ('3', '2', '5000.00', 'test', '0', '2018-05-20 10:41:37', '2018-05-20 10:41:41');
INSERT INTO `bill` VALUES ('4', '3', '100000.00', 'test001', '0', '2018-05-20 10:42:16', '2018-05-20 10:42:19');
INSERT INTO `bill` VALUES ('5', '5', '1500.00', 'Test01', '0', '2018-05-20 10:42:41', '2018-05-20 10:42:44');

-- ----------------------------
-- Table structure for circle_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `circle_dynamic`;
CREATE TABLE `circle_dynamic` (
  `circle_dynamic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `circle_dynamic_author` int(11) unsigned NOT NULL,
  `circle_dynamic_content` varchar(255) DEFAULT NULL,
  `dynamic_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`circle_dynamic_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of circle_dynamic
-- ----------------------------
INSERT INTO `circle_dynamic` VALUES ('2', '305', '6', '这是第一条动态', '2', '0', '2018-05-27 15:05:12', '2018-05-27 15:05:12');
INSERT INTO `circle_dynamic` VALUES ('3', '485', '1340', '这是第二条动态', '2', '0', '2018-05-28 23:40:01', '2018-05-28 23:40:05');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `classification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classification_name` varchar(25) NOT NULL,
  `classification_own` int(11) NOT NULL DEFAULT '-1',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`classification_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '前端开发', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('2', '后端开发', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('3', '移动开发', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('4', '数据库', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('5', '云计算&大数据', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('6', '运维&测试', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('7', 'UI设计', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('8', '办公软件', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('9', '语言学习', '-1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('17', '网页开发/CSS', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('18', 'JavaScript', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('19', 'jQuery', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('20', 'CSS3', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('21', 'Node.Js', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('22', 'Vue.Js', '1', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('23', 'PHP', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('24', 'Java', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('25', 'Spring', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('26', 'Python', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('27', 'C#', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('28', 'GO', '2', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('29', 'Android', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('30', 'IOS', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('31', 'WebApp', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('32', 'Unity 3D', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('33', 'Cocos2d-x', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('34', 'Mysql', '4', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('35', 'MongoDB', '4', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('36', 'Oracle', '4', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('37', 'SQL Server', '4', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('38', 'nginx', '3', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('39', '大数据', '5', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('40', '云计算', '5', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('41', '测试', '6', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('42', 'linux', '6', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('43', 'AppUI设计', '7', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('44', '动画特效', '8', '2018-04-08 21:33:00', '2018-04-08 21:33:05');
INSERT INTO `classification` VALUES ('45', '等级考试', '-1', '2018-04-08 21:40:07', '2018-04-08 21:40:10');

-- ----------------------------
-- Table structure for communication
-- ----------------------------
DROP TABLE IF EXISTS `communication`;
CREATE TABLE `communication` (
  `communication_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) unsigned NOT NULL,
  `communication_author` int(11) unsigned NOT NULL,
  `communication_content` varchar(255) NOT NULL,
  `communication_image_count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication
-- ----------------------------

-- ----------------------------
-- Table structure for communication_comment
-- ----------------------------
DROP TABLE IF EXISTS `communication_comment`;
CREATE TABLE `communication_comment` (
  `communication_comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_comment_user` int(11) unsigned NOT NULL,
  `communication_reply` int(11) unsigned NOT NULL,
  `communication_comment_content` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_comment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_comment
-- ----------------------------

-- ----------------------------
-- Table structure for communication_image
-- ----------------------------
DROP TABLE IF EXISTS `communication_image`;
CREATE TABLE `communication_image` (
  `communication_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(255) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_image
-- ----------------------------

-- ----------------------------
-- Table structure for communication_praise
-- ----------------------------
DROP TABLE IF EXISTS `communication_praise`;
CREATE TABLE `communication_praise` (
  `communication_praise_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_praise_user` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_praise_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_praise
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `course_code` char(13) NOT NULL DEFAULT '0000',
  `course_name` varchar(30) NOT NULL,
  `course_introduce` varchar(255) DEFAULT NULL,
  `course_teacher` int(11) unsigned NOT NULL DEFAULT '1',
  `school_id` int(11) NOT NULL DEFAULT '-1',
  `faculty_id` int(11) NOT NULL DEFAULT '-1',
  `class_id` int(11) NOT NULL DEFAULT '-1',
  `course_classification` int(11) unsigned NOT NULL DEFAULT '4',
  `course_sum_student` int(11) NOT NULL DEFAULT '-1',
  `course_learn_student` int(11) unsigned NOT NULL DEFAULT '0',
  `course_cover` varchar(255) NOT NULL DEFAULT '0.png',
  `course_type` tinyint(1) NOT NULL DEFAULT '4',
  `course_finish` int(3) unsigned NOT NULL DEFAULT '0',
  `course_sum` int(3) unsigned NOT NULL DEFAULT '0',
  `course_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12387813 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('854', '2708', 'Linux 达人养成计划 II', 'VIM+磁盘管理+用户权限，通过学习对Linux系统有进一步的理解', '1', '305', '5826', '167', '42', '-1', '39', '57035f580001a91806000338-240-135.jpg', '4', '5', '24', '0.00', '0', '2018-01-10 08:37:20', '2018-02-12 08:36:50');
INSERT INTO `course` VALUES ('855', '2710', 'Linux达人养成计划 I', 'Linux入门视频教程，以通俗易懂的语言带你感受linux之美', '1', '305', '-1', '-1', '42', '-1', '40', '57035f110001a57906000338-240-135.jpg', '4', '7', '30', '0.00', '0', '2018-03-07 10:09:59', '2018-02-27 18:25:16');
INSERT INTO `course` VALUES ('856', '2712', 'Linux Guide for Developers', 'Linux命令行世界生存指南，让本课程成为你初 Linux世界的向导', '1', '305', '-1', '-1', '42', '-1', '21', '53fed63700018a9306000338-240-135.jpg', '4', '8', '20', '0.00', '0', '2018-02-15 17:43:00', '2018-01-27 02:57:47');
INSERT INTO `course` VALUES ('857', '2714', 'Linux中的计划任务之Crontab', '学会Crontab命令，让重复任务自动化执行，提高大家工作效率', '1', '305', '-1', '-1', '42', '-1', '15', '544f0d9500017d6306000338-240-135.jpg', '4', '8', '32', '0.00', '0', '2018-01-03 22:45:28', '2018-02-16 02:23:46');
INSERT INTO `course` VALUES ('858', '2716', '云安全的架构设计与实践之旅', '阿里云公开课，带你更加深入了解云安全架构那些事儿，干货慢慢', '1', '305', '-1', '-1', '4', '-1', '41', '5460558c0001f92506000338-240-135.jpg', '4', '10', '35', '0.00', '0', '2018-01-07 18:58:51', '2018-01-26 23:50:41');
INSERT INTO `course` VALUES ('859', '2718', 'Linux网络管理', '为你带来Linux网络环境搭建，介绍远程登录工具的使用', '1', '305', '-1', '-1', '42', '-1', '16', '5704cf8c00012c9006000338-240-135.jpg', '4', '20', '25', '0.00', '0', '2018-01-16 05:46:33', '2018-03-08 19:45:16');
INSERT INTO `course` VALUES ('860', '2720', '在线分布式数据库原理与实践', '一起学习事务与分布式事务原理与实践干货，欢迎收藏', '1', '305', '-1', '-1', '4', '-1', '37', '570779200001fde006000338-240-135.jpg', '4', '7', '20', '0.00', '0', '2018-02-28 06:03:39', '2018-01-27 02:57:20');
INSERT INTO `course` VALUES ('861', '2722', '云计算 - 引领阿里生态的技术发展之路', '简要介绍天猫云计算环境，在双11背后的技术支撑', '1', '305', '-1', '-1', '4', '-1', '19', '54b5e5af00010ec406000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-10 00:11:04', '2018-03-03 05:16:33');
INSERT INTO `course` VALUES ('862', '2724', 'openstack最新技术解析', '了解openstack最新技术动向，以及了解应用中各种问题', '1', '305', '-1', '-1', '4', '-1', '28', '54b619d70001294906000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-10 22:08:17', '2018-02-26 01:13:08');
INSERT INTO `course` VALUES ('863', '2726', '阿里云助力弹性伸缩服务', '阿里云openAPI体系、弹性伸缩以及业务水平扩展能力介绍', '1', '309', '-1', '-1', '4', '-1', '40', '57466be500018b8006000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-10 18:32:41', '2018-01-21 07:38:21');
INSERT INTO `course` VALUES ('864', '2728', '携程C4技术分享沙龙', '来自携程C4技术沙龙的现场分享，小伙伴们赶紧来尝鲜吧', '1', '-1', '-1', '-1', '4', '-1', '40', '57077a1200013d0206000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-03 16:03:35', '2018-01-16 13:31:50');
INSERT INTO `course` VALUES ('865', '2730', 'shell编程之变量', '主要介绍Linux shell编程基础中的变量，熟练使用shell中用户自定义变量', '1', '-1', '-1', '-1', '42', '-1', '40', '55063ec30001774b06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-13 02:48:07', '2018-03-10 18:50:07');
INSERT INTO `course` VALUES ('866', '2732', 'Linux系统扫描技术及安全防范', 'Linux系统下系统扫描及安全防范，规避一些安全的隐患', '1', '-1', '-1', '-1', '42', '-1', '40', '5510c2c500016e9e06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-05 14:57:16', '2018-03-21 16:04:06');
INSERT INTO `course` VALUES ('867', '2734', 'shell编程之运算符', '本课程为你介绍shell编程基础中的运算符，了解运算符详细使用', '1', '-1', '-1', '-1', '42', '-1', '40', '5704ce7700019f8706000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-03-01 04:05:54', '2018-03-12 02:54:00');
INSERT INTO `course` VALUES ('868', '2736', 'shell编程之环境变量配置文件', '为你带来shell环境变量配置文件，熟练使用环境变量配置文件', '1', '-1', '-1', '-1', '42', '-1', '40', '55237dcc0001128c06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-20 00:23:57', '2018-01-02 05:37:25');
INSERT INTO `course` VALUES ('869', '2738', 'shell编程之正则表达式', '为你带来shell编程中的正则表达式，能够熟练运用正则表达式', '1', '-1', '-1', '-1', '42', '-1', '40', '5704cea700017b9e06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-26 16:19:41', '2018-01-20 13:30:57');
INSERT INTO `course` VALUES ('870', '2740', '走近大数据之Hive入门', 'Hive是基于HDFS的数据仓库，教程将向大家介绍Hive的体系结构', '1', '-1', '-1', '-1', '26', '-1', '39', '570360ca00010eeb06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-19 08:52:13', '2018-03-13 15:58:37');
INSERT INTO `course` VALUES ('871', '2742', '用iptables搭建一套强大的安全防护盾', '如何用iptables守护好您家的前门和后院，这门课程有你想要的', '1', '-1', '-1', '-1', '4', '-1', '28', '554b17ee0001e87206000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-27 11:33:50', '2018-01-17 10:20:10');
INSERT INTO `course` VALUES ('872', '2744', 'Hadoop大数据平台架构与实践--基础篇', 'Hadoop入门视频教程，大数据人才的入门首选', '1', '-1', '-1', '-1', '39', '-1', '40', '57035f730001af5706000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-16 00:23:16', '2018-03-22 09:22:06');
INSERT INTO `course` VALUES ('873', '2746', '走近大数据之Hive进阶', 'Hive数据操作，查询及Hive编程接口，开发Hive的自定义函数', '1', '-1', '-1', '-1', '39', '-1', '40', '55b730f600017a1f06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-06 19:24:59', '2018-03-13 13:40:17');
INSERT INTO `course` VALUES ('874', '2748', 'shell编程之条件判断与流程控制', 'Linux shell实用案例学习，一定会使你Linux运维能力再次提高', '1', '-1', '-1', '-1', '42', '-1', '40', '5704ce550001ce3606000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-13 07:56:05', '2018-01-14 19:40:42');
INSERT INTO `course` VALUES ('875', '2750', 'R语言入门', 'R语言是大数据分析的强大工具之一，本课程为R语言入门教程', '1', '-1', '-1', '-1', '4', '-1', '18', '559e31c80001971406000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-21 11:48:00', '2018-03-20 00:29:18');
INSERT INTO `course` VALUES ('876', '2752', 'Linux软件安装管理', '通过本课程了解Linux中的软件如何进行安装、卸载、升级等管理', '1', '-1', '-1', '-1', '42', '-1', '40', '559f35ad00017e0006000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-28 10:23:49', '2018-03-07 23:57:54');
INSERT INTO `course` VALUES ('877', '2754', '电商大数据应用之用户画像', '真正接触大数据，接触用户画像，掌握构建用户画像的方法', '1', '-1', '-1', '-1', '39', '-1', '40', '5704a9030001e26906000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-06 19:30:28', '2018-01-21 01:27:11');
INSERT INTO `course` VALUES ('878', '2756', '走进大数据之storm流式计算基础', 'ApacheStorm的起源、原理、基础用法、集群搭建讲解', '1', '-1', '-1', '-1', '39', '-1', '40', '5704aa88000104f106000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-23 15:27:18', '2018-01-19 04:33:54');
INSERT INTO `course` VALUES ('879', '2758', 'Linux权限管理之基本权限', 'Linux的基本权限和默认权限管理，通过理论讲解与实验演示', '1', '-1', '-1', '-1', '42', '-1', '40', '55dd95220001ca4d06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-04 13:25:01', '2018-03-23 09:03:51');
INSERT INTO `course` VALUES ('880', '2760', 'OpenStack基础', 'OpenStack基础教程，介绍了OpenStack的一些基本概念，基本组件', '1', '-1', '-1', '-1', '4', '-1', '40', '572afa460001b1d806000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-14 12:00:55', '2018-03-23 07:00:06');
INSERT INTO `course` VALUES ('881', '2762', 'Linux权限管理之特殊权限', '本Linux教程一定会让你对Linux中的权限有更深刻的认识', '1', '-1', '-1', '-1', '42', '-1', '40', '55f147b400019c4d25001408-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-24 15:04:02', '2018-03-07 06:41:54');
INSERT INTO `course` VALUES ('882', '2764', 'Shell典型应用之主控脚本实现', '应用shell实现案例主控脚本，握如何编写主控脚本', '1', '-1', '-1', '-1', '42', '-1', '40', '562da5410001b40a06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-25 18:27:10', '2018-03-19 03:29:48');
INSERT INTO `course` VALUES ('883', '2766', 'OpenStack+ 企业实践论坛', 'OpenStack 企业实践论坛，对云计算感兴趣的同学都来参加哦', '1', '-1', '-1', '-1', '4', '-1', '40', '57466b000001f50d06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-03 10:46:39', '2018-01-01 13:42:40');
INSERT INTO `course` VALUES ('884', '2768', 'Linux服务管理', 'Linux的RPM包和源码包服务，定然会使小伙伴们受益匪浅', '1', '-1', '-1', '-1', '42', '-1', '40', '563b13700001ebf906000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-01 13:06:13', '2018-02-28 13:55:25');
INSERT INTO `course` VALUES ('885', '2770', 'Shell典型应用之系统信息及运行状态获取', 'Linux系统常用信息及运行状态监控，能够使用shell脚本进行分析', '1', '-1', '-1', '-1', '42', '-1', '40', '5653bd1d0001801906000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-07 10:23:35', '2018-02-08 00:30:33');
INSERT INTO `course` VALUES ('886', '2772', 'Shell典型应用之nginx和mysql应用状态分析', '如何监控nginx和mysql运行状态，本教程为您揭开谜底', '1', '-1', '-1', '-1', '42', '-1', '40', '567a67fb00013a2b06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-08 07:06:56', '2018-01-10 07:35:50');
INSERT INTO `course` VALUES ('887', '2774', 'Shell典型应用之应用日志分析', '如何应用shell脚本分析系统日志，这门视频教程会给你答案', '1', '-1', '-1', '-1', '42', '-1', '40', '563b150200019d4d06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-09 16:09:49', '2018-02-14 03:49:27');
INSERT INTO `course` VALUES ('888', '2776', 'R语言基础', '本R语言基础教程，教你如何在R中操纵自己数据，快速入门', '1', '-1', '-1', '-1', '4', '-1', '40', '570778b50001e1c406000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-08 10:56:30', '2018-02-03 18:19:40');
INSERT INTO `course` VALUES ('889', '2778', 'Linux系统管理', '进程管理+工作管理+系统定时任务，让你Linux技能提升一步', '1', '-1', '-1', '-1', '42', '-1', '40', '5697799a0001e99006000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-18 05:11:27', '2018-02-15 14:12:32');
INSERT INTO `course` VALUES ('890', '2780', 'Scala程序设计—基础篇', 'Scala基础编程入门视频教程，能够编写简单的Scala代码', '1', '-1', '-1', '-1', '4', '-1', '40', '57466a3200012d3406000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-06 02:25:54', '2018-01-28 03:43:32');
INSERT INTO `course` VALUES ('891', '2782', '最新Openstack技术和实战', '最新Openstack技术和实战，喜欢私有云的同学都来', '1', '-1', '-1', '-1', '4', '-1', '40', '56dd41cf0001599506000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-22 08:17:52', '2018-03-05 23:04:20');
INSERT INTO `course` VALUES ('892', '2784', 'Linux智能DNS服务搭建之Bind服务', 'Bind服务的安装与配置，掌握DNS正向解析客户端的相关命令', '1', '-1', '-1', '-1', '42', '-1', '40', '56e617dd0001583d06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-21 02:38:47', '2018-02-02 11:46:56');
INSERT INTO `course` VALUES ('893', '2786', 'R语言之数据可视化', 'R语言三大绘图系统，用图形直观探索数据、发现有价值信息', '1', '-1', '-1', '-1', '4', '-1', '40', '56f8a3a50001f03406000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-06 13:05:23', '2018-01-28 05:21:55');
INSERT INTO `course` VALUES ('894', '2788', 'Echarts3.0入门基础与实战', 'Echarts3.0入门视频教程，带你领略高逼格数据可视化的魅力', '1', '-1', '-1', '-1', '4', '-1', '40', '578f36fe00011d9006000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-06 05:11:38', '2018-03-18 07:18:32');
INSERT INTO `course` VALUES ('895', '2790', '软件测试基础-概念篇', '软件测试入门教程，必学课程，帮助你深入、清晰地理解软件测试', '1', '-1', '-1', '-1', '4', '-1', '40', '57a2fbab0001179b06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-23 01:24:32', '2018-02-19 00:20:16');
INSERT INTO `course` VALUES ('896', '2792', 'PHP环境LAMP/LNMP安装与配置', '本课程适于PHP初学者，手把手教你LAMP/LNMP环境安装配置', '1', '-1', '-1', '-1', '23', '-1', '40', '57eb9feb000106ec06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-16 10:03:30', '2018-01-05 09:50:49');
INSERT INTO `course` VALUES ('897', '2794', 'TesterHome2016年移动测试大会', '第二届中国移动互联网测试大会', '1', '-1', '-1', '-1', '4', '-1', '40', '57a993e30001681106000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-01 07:17:57', '2018-03-16 12:33:50');
INSERT INTO `course` VALUES ('898', '2796', 'KVM虚拟化技术', '云服务的底层技术－KVM虚拟化介绍', '1', '-1', '-1', '-1', '4', '-1', '40', '57bab0140001bdb206000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-15 07:33:45', '2018-02-23 11:13:36');
INSERT INTO `course` VALUES ('899', '2798', '美女带你走入LR性能测试框架基础', '带领大家进入LoadRunner性能测试领域', '1', '-1', '-1', '-1', '4', '-1', '40', '5800999f0001ac1106000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-11 19:01:21', '2018-02-14 12:45:01');
INSERT INTO `course` VALUES ('900', '2800', 'Linux Bind负载均衡', 'DNS转发、主从模式及传输限制，通过本课了解更多DNS知识', '1', '-1', '-1', '-1', '42', '-1', '40', '57de39800001bc6f06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-03-14 02:16:41', '2018-02-06 10:59:21');
INSERT INTO `course` VALUES ('901', '2802', 'Python在数据科学中的应用', '一门针对数据科学的Python应用教程，打下扎实python功底', '1', '-1', '-1', '-1', '26', '-1', '40', '57e8afc00001f19d06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-08 15:35:13', '2018-02-01 00:37:29');
INSERT INTO `course` VALUES ('902', '2804', 'App压力测试入门', '结合6个压力测试小案例，教你对Android App进行压力测试', '1', '-1', '-1', '-1', '4', '-1', '40', '57fb48700001289806000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-10 04:22:17', '2018-03-19 23:25:48');
INSERT INTO `course` VALUES ('903', '2806', 'JMeter性能测试入门篇', '快速入门jmeter性能测试！', '1', '-1', '-1', '-1', '4', '-1', '40', '57fca93400015baf06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-01-18 08:40:26', '2018-03-12 04:30:19');
INSERT INTO `course` VALUES ('904', '2808', 'Python-走进Requests库', 'python类库中，requests是一件利器，想深入了解一起来学吧', '1', '-1', '-1', '-1', '26', '-1', '40', '57fdb282000186df06000338-240-135.jpg', '4', '0', '0', '0.00', '0', '2018-02-07 19:02:23', '2018-01-31 15:04:55');
INSERT INTO `course` VALUES ('905', '2810', '接口测试基础之入门篇', '对接口测试说so easy！', '1', '-1', '-1', '-1', '4', '-1', '40', '57fdef6c0001ab6b06000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-02-02 22:46:06', '2018-01-22 09:56:46');
INSERT INTO `course` VALUES ('906', '2812', 'Linux 智能DNS', 'DNS学习进阶教程，智能DNS实现与安全，讲解常见攻击原理和预防手段', '1', '-1', '-1', '-1', '42', '-1', '40', '584a8b790001ed1506000338-240-135.jpg', '4', '0', '11', '0.00', '0', '2018-02-07 01:22:07', '2018-01-13 17:59:16');
INSERT INTO `course` VALUES ('907', '2814', 'JMeter之HTTP协议接口性能测试', '快速上手接口功能及性能测试', '1', '-1', '-1', '-1', '4', '-1', '40', '58733f730001a55406000338-240-135.jpg', '4', '0', '4', '0.00', '0', '2018-01-03 09:43:15', '2018-02-28 13:09:13');
INSERT INTO `course` VALUES ('908', '2816', '自动化测试之selenium工具使用', 'web自动化测试selenium从0基础开始。', '1', '-1', '-1', '-1', '4', '-1', '40', '5873534e0001ecb106000338-240-135.jpg', '4', '0', '5', '0.00', '0', '2018-01-29 18:06:50', '2018-01-21 04:10:09');
INSERT INTO `course` VALUES ('909', '2818', '重定向和伪静态在网站中的应用', '重定向和伪静态,网站安全SEO优化必学，演示各种重定向设置后效果', '1', '-1', '-1', '-1', '4', '-1', '40', '58807245000110e206000338-240-135.jpg', '4', '0', '6', '0.00', '0', '2018-01-27 22:53:33', '2018-02-25 11:39:42');
INSERT INTO `course` VALUES ('910', '2820', 'vagrant打造跨平台可移动的开发环境', 'Vgarant是开发者必备利器之一，本课程主要分为理论和实践两部分', '1', '-1', '-1', '-1', '4', '-1', '40', '58aa91850001a4f406000338-240-135.jpg', '4', '0', '8', '0.00', '0', '2018-03-10 05:34:36', '2018-03-16 20:14:39');
INSERT INTO `course` VALUES ('911', '2822', 'Spark从零开始', '本课程旨在让同学们了解Spark基础知识，掌握Spark基础开发.', '1', '-1', '-1', '-1', '4', '-1', '40', '58cf8c2e00014c8406000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-02-01 10:27:05', '2018-01-19 23:03:07');
INSERT INTO `course` VALUES ('912', '2824', 'WeTest移动测试系列沙龙-手游安全测试', '分享腾讯游戏安全测试流程方法，游戏安全测试知识干货', '1', '-1', '-1', '-1', '4', '-1', '40', '58d339b7000146bf06000338-240-135.jpg', '4', '0', '57', '0.00', '0', '2018-03-15 13:55:21', '2018-01-23 16:11:11');
INSERT INTO `course` VALUES ('913', '2826', '如何写好测试用例', '一个案例学会如何写好测试用例，如何管理测试用例', '1', '-1', '-1', '-1', '4', '-1', '40', '58d87782000175e006000338-240-135.jpg', '4', '0', '7', '0.00', '0', '2018-03-17 23:19:02', '2018-03-12 10:18:17');
INSERT INTO `course` VALUES ('914', '2828', '实例妙解Sed和Awk的秘密', 'sed和awk是很好的Linux文本处理工具，帮助你提高效率，成为Linux达人。', '1', '-1', '-1', '-1', '4', '-1', '40', '58db47420001195706000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-02-08 18:57:29', '2018-02-20 06:46:33');
INSERT INTO `course` VALUES ('915', '2830', '轻松愉快之玩转SpringData', '利用Spring Data提高开发效率，提升程序员的幸福指数', '1', '-1', '-1', '-1', '4', '-1', '40', '58e6081c00012ec206000338-240-135.jpg', '4', '0', '11', '0.00', '0', '2018-01-13 22:40:10', '2018-03-20 17:39:30');
INSERT INTO `course` VALUES ('916', '2832', '第一个docker化的java应用', '逐步学习docker相关知识，制作第一个docker化的java应用', '1', '-1', '-1', '-1', '24', '-1', '40', '58f0a2310001ea1306000338-240-135.jpg', '4', '0', '4', '0.00', '0', '2018-01-07 06:33:17', '2018-03-12 22:19:36');
INSERT INTO `course` VALUES ('917', '2834', 'R语言入门与进阶', '这门课将会带领您领略R语言的精髓,打开R语言的大门。', '1', '-1', '-1', '-1', '4', '-1', '40', '58fde05a0001014a06000338-240-135.jpg', '4', '0', '5', '0.00', '0', '2018-01-18 06:51:12', '2018-03-15 11:39:28');
INSERT INTO `course` VALUES ('918', '2836', 'Python数据分析-基础技术篇', '使用Python进行数据分析的基础模块简介', '1', '-1', '-1', '-1', '4', '-1', '40', '5922cc5800011d9e06000338-240-135.jpg', '4', '0', '6', '0.00', '0', '2018-03-03 20:34:50', '2018-03-02 08:50:12');
INSERT INTO `course` VALUES ('919', '2838', '使用java构建和维护接口自动化测试框架', '初识接口自动化框架', '1', '-1', '-1', '-1', '24', '-1', '40', '593a3b0f0001383606000338-240-135.jpg', '4', '0', '8', '0.00', '0', '2018-01-11 01:56:54', '2018-03-15 22:21:43');
INSERT INTO `course` VALUES ('920', '2840', '浅析SQLmap', '如何开发一个既稳定又安全的web系统？那来学习web安全吧.', '1', '-1', '-1', '-1', '4', '-1', '40', '5977373b0001318505910331-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-03-23 04:22:25', '2018-01-18 02:44:13');
INSERT INTO `course` VALUES ('921', '2842', 'Docker入门', '再不学点Docker你就out啦！', '1', '-1', '-1', '-1', '4', '-1', '40', '597e973600011a6e06000338-240-135.jpg', '4', '0', '57', '0.00', '0', '2018-01-14 14:10:24', '2018-03-09 13:29:05');
INSERT INTO `course` VALUES ('922', '2844', '游戏测试入门', '游戏测试就是玩游戏吗？什么是真正的游戏测试！', '1', '-1', '-1', '-1', '4', '-1', '40', '598938e20001888e06000338-240-135.jpg', '4', '0', '7', '0.00', '0', '2018-01-04 06:27:38', '2018-01-26 03:58:42');
INSERT INTO `course` VALUES ('923', '2846', 'HBase入门', 'HBase入门教程，从基础概念到实战操作，让初学者快速入门', '1', '-1', '-1', '-1', '4', '-1', '40', '598986ae0001f07706000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-01-14 21:44:21', '2018-01-23 13:32:09');
INSERT INTO `course` VALUES ('924', '2848', 'ElasticSearch入门', 'ElasticSearch轻松入门，Spring Boot集成ES', '1', '-1', '-1', '-1', '4', '-1', '40', '59b77bac0001985906000338-240-135.jpg', '4', '0', '11', '0.00', '0', '2018-01-17 23:23:50', '2018-02-08 03:13:57');
INSERT INTO `course` VALUES ('925', '2850', 'Hadoop进阶', 'MapReduce原理，并实现简单的推荐', '1', '-1', '-1', '-1', '4', '-1', '40', '59ba4b200001468906000338-240-135.jpg', '4', '0', '4', '0.00', '0', '2018-01-04 16:39:57', '2018-02-06 20:49:32');
INSERT INTO `course` VALUES ('926', '2852', 'AWS云计算—AWS云上的大数据分析', '带你了解基于AWS的大数据存储、实时计算与分析，以及机器学习相关技术。', '1', '-1', '-1', '-1', '39', '-1', '40', '59c206f500011c4006000338-240-135.jpg', '4', '0', '5', '0.00', '0', '2018-03-15 00:16:46', '2018-03-16 08:31:50');
INSERT INTO `course` VALUES ('927', '2854', 'AWS云-深度学习&机器学习的AI业务应用', '最炙手可热的前沿技术专题--人工智能技术专场。', '1', '-1', '-1', '-1', '4', '-1', '40', '59c32b540001f16f06000338-240-135.jpg', '4', '0', '6', '0.00', '0', '2018-01-04 17:31:07', '2018-02-15 13:29:52');
INSERT INTO `course` VALUES ('928', '2856', 'AWS云计算—混合架构&DevOps深度实践', 'Amazon、Musically、 Red Hat、上海数慧等架构设计技术干货分享。', '1', '-1', '-1', '-1', '4', '-1', '40', '59df1d83000141a306000338-240-135.jpg', '4', '0', '8', '0.00', '0', '2018-03-12 06:38:40', '2018-01-03 15:43:02');
INSERT INTO `course` VALUES ('929', '2858', 'AWS云服务介绍-Amazon Aurora', '本课主要讲解2017年度AWS在中国区的新服务介绍。', '1', '-1', '-1', '-1', '4', '-1', '40', '59eebe270001685606000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-02-06 05:55:33', '2018-02-14 03:32:43');
INSERT INTO `course` VALUES ('930', '2860', 'DevOps和云计算初识', '学习DevOps和云计算的初步知识', '1', '-1', '-1', '-1', '4', '-1', '40', '59f68815000169b006000338-240-135.jpg', '4', '0', '57', '0.00', '0', '2018-01-07 08:09:20', '2018-03-18 03:38:01');
INSERT INTO `course` VALUES ('931', '2862', 'AWS云计算—使用AWS实现自动化运维', '带你了解通过使用AWS自动化工具进行自动化运维，实现系统的高效可用。', '1', '-1', '-1', '-1', '4', '-1', '40', '59f6eca600016d7f06000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-01-16 13:10:15', '2018-02-13 07:04:04');
INSERT INTO `course` VALUES ('932', '2864', 'AWS云服务助力企业转型升级', '带你看企业级客户是如何利用AWS 云服务，实现传统企业转型的。', '1', '-1', '-1', '-1', '4', '-1', '40', '5a097b74000104e906000338-240-135.jpg', '4', '0', '11', '0.00', '0', '2018-02-22 02:37:57', '2018-03-04 16:59:58');
INSERT INTO `course` VALUES ('933', '2866', 'Elastic Stack入门', 'Elasticsearch、Logstash、Beats、Kibana基础知识入门', '1', '-1', '-1', '-1', '4', '-1', '40', '5a1b74b30001c61f05950337-240-135.jpg', '4', '0', '4', '0.00', '0', '2018-03-11 18:04:17', '2018-01-20 13:49:19');
INSERT INTO `course` VALUES ('934', '2868', 'AWS云计算—云服务架构深入解析', '带你看AWS资深技术大咖讲解云计算在不同应用场景下的深度实践。', '1', '-1', '-1', '-1', '4', '-1', '40', '5a1e6e0b000151e706000338-240-135.jpg', '4', '0', '5', '0.00', '0', '2018-02-25 22:39:51', '2018-01-02 11:30:26');
INSERT INTO `course` VALUES ('935', '2870', 'AWS物联网前（IoT）沿技术分享', '物联网设备、云端计算与存储，以及信息洞察力是物联网的三大支柱。', '1', '-1', '-1', '-1', '4', '-1', '40', '5a2e515200019a0306000338-240-135.jpg', '4', '0', '6', '0.00', '0', '2018-02-12 01:46:51', '2018-01-30 23:24:39');
INSERT INTO `course` VALUES ('936', '2872', 'Hadoop基础及演练', '与大数据密不可分的Hadoop框架，你值得学习', '1', '-1', '-1', '-1', '4', '-1', '40', '5a3797860001217406000338-240-135.jpg', '4', '0', '8', '0.00', '0', '2018-01-11 18:12:45', '2018-01-16 08:41:10');
INSERT INTO `course` VALUES ('937', '2874', 'AWS云计算—面向开发者的云解决方案', 'AWS资深技术大咖和技术大神们讲解云计算在不同应用场景下的使用案例。', '1', '-1', '-1', '-1', '4', '-1', '40', '5a38d8a30001bc9a06000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-02-26 15:03:56', '2018-03-13 21:15:52');
INSERT INTO `course` VALUES ('938', '2876', 'web端功能自动化定位元素', '页面元素高级定位方式,在不同的浏览器上查看元素，Xpath，CSS定位', '1', '-1', '-1', '-1', '4', '-1', '40', '5a9371160001ecb106000338-240-135.jpg', '4', '0', '12', '0.00', '0', '2018-03-09 01:17:09', '2018-03-15 02:38:41');
INSERT INTO `course` VALUES ('939', '2878', 'AWS的入门与使用', '面向初级架构师介绍AWS，帮助你的项目做初期的云平台选择。', '1', '-1', '-1', '-1', '4', '-1', '40', '5aa730f200015ced05400300-240-135.jpg', '4', '0', '11', '0.00', '0', '2018-01-19 09:02:15', '2018-03-22 18:50:56');
INSERT INTO `course` VALUES ('3298', '891238907', 'JAVA程序设计', '课程的重点包括：控制结构和语句的应用、数组及其应用、方法定义和方法调用、类的概念和应用、类的继承、封装和多态，抽象类、接口、内部类、异常处理、GUI、文件的应用、集合、反射和泛型。 本课程的难点有：方法重载和覆盖、访问控制、抽象类、内部类、接口及接口回调、泛型、反射。', '2', '-1', '-1', '-1', '24', '120', '56', 'javachenxusheji.png', '4', '6', '6', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('3299', '128901820', 'SpringMVC项目开发', '本课程先介绍了框架的基本概念和作用，然后通过一个示例讲述了在JavaWeb项目中引用SpringMVC框架的过程，接下来通过一个JSP&Servlet技术完成的UsersCenter成品项目进行重构，展示了在实际开发中加入SpringMVC框架的方法，同时以分层的方式完成了项目的dao、service的重构，解决了常见的中文乱码问题。最后，还对SpringMVC框架的内容进行了归纳，并讲述了SpringMVC控制器方法的参数和返回值、文件上传、页面跳转等内容。', '3', '-1', '-1', '-1', '25', '-1', '4', 'springmvc.png', '4', '0', '15', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('3300', '12355123', '安卓移动开发-基础篇', '本课程将详细讲解Android的应用框架、用户界面、数据存储、多媒体开发等基础知识，课程的教学重点和难点在于如何能很好的理解Android移动开发过程的注意事项，掌握Android移动开发的技巧，并且在实际项目中得到应用；提高学生综合分析问题、解决问题的能力。 本课程适合对Android开发感兴趣的同学学习，并具备一定的Java基础，熟悉类、对象、接口、监听器、包、内部类等概念。如果没有学过Java，但有C++等高级语言的基础，也可以通过以下参考书进行入门： 推荐Java入门书：Java语言程序设计基础篇', '1', '-1', '-1', '-1', '4', '-1', '12', 'androidkaifa.png', '4', '0', '12', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('3301', '12321345', 'HTML5开发实践', '新的HTML，新的开发体验', '1', '-1', '-1', '-1', '17', '40', '28', 'html5.png', '3', '0', '12', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('12091200', '12091200', '安卓移动开发-基础篇', '本课程将详细讲解Android的应用框架、用户界面、数据存储、多媒体开发等基础知识，课程的教学重点和难点在于如何能很好的理解Android移动开发过程的注意事项，掌握Android移动开发的技巧，并且在实际项目中得到应用；提高学生综合分析问题、解决问题的能力。 本课程适合对Android开发感兴趣的同学学习，并具备一定的Java基础，熟悉类、对象、接口、监听器、包、内部类等概念。如果没有学过Java，但有C++等高级语言的基础，也可以通过以下参考书进行入门： 推荐Java入门书：Java语言程序设计基础篇', '3', '-1', '-1', '-1', '4', '-1', '12', 'androidkaifa.png', '4', '0', '12', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('12315123', '12315123', '办公软件高级应用', '本课程依托WINDOWS7以上的操作系统平台，全面介绍Office2010各组件的运行环境和视窗元素，并重点介绍以下内容：\r\nWord2010的基础理论知识以及高级应用技术，特别是长文档的排版（页面设置、内容编排、样式设置、域的设置、文档修订等）；\r\nExcel2010的基础理论知识以及高级应用技术，特别是工作簿、工作表和公式（单元格引用、数组和高级函数等）的使用，以及运用Excel内置工具进行数据分析和对外部数据进行导入导出等', '1', '-1', '-1', '-1', '4', '-1', '15', 'bangongruanjiangaoji.png', '4', '0', '3', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `course` VALUES ('12387812', '12387812', 'PowerPoint 2010 得心应手', '本课程的主要学习者是希望与玩课网合作建设在线课程内容的老师。通过本课程的学习，学习者应能自如地在PowerPoint中进行基本绘图，并利用PowerPoint中的动画功能来流畅地表达、诠释想要传达的信息。', '3', '-1', '-1', '-1', '4', '-1', '11', 'ppt2010.png', '4', '0', '7', '0.00', '0', '2018-01-01 00:00:00', '2018-01-01 00:00:00');

-- ----------------------------
-- Table structure for course_material
-- ----------------------------
DROP TABLE IF EXISTS `course_material`;
CREATE TABLE `course_material` (
  `course_material_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `course_material_name` varchar(25) NOT NULL,
  `course_material_url` varchar(255) NOT NULL,
  `course_material_size` varchar(25) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`course_material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course_material
-- ----------------------------
INSERT INTO `course_material` VALUES ('1', '854', 'Linux简介', 'www.baidu.com', '64KB', '2018-04-04 09:50:58', '2018-04-04 09:51:05');
INSERT INTO `course_material` VALUES ('2', '854', 'Linux详情', 'www.baidu.com', '80KB', '2018-05-28 12:19:21', '2018-05-28 12:19:25');

-- ----------------------------
-- Table structure for dynamic_comment
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comment`;
CREATE TABLE `dynamic_comment` (
  `dynamic_comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dynamic_comment_author` int(11) unsigned NOT NULL,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `dynamic_reply_user` int(11) unsigned NOT NULL,
  `dynamic_comment_content` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_comment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_comment
-- ----------------------------
INSERT INTO `dynamic_comment` VALUES ('1', '10', '2', '0', '我来评论一下', '0', '2018-05-27 15:13:01', '2018-05-27 15:13:01');
INSERT INTO `dynamic_comment` VALUES ('2', '6', '2', '10', '那我就回复一下', '0', '2018-05-27 15:14:24', '2018-05-27 15:14:24');
INSERT INTO `dynamic_comment` VALUES ('4', '11', '2', '6', ' 老师路过', '0', '2018-05-27 18:40:43', '2018-05-27 18:40:47');
INSERT INTO `dynamic_comment` VALUES ('5', '1340', '3', '0', '给自己评论一下', '0', '2018-05-28 23:43:45', '2018-05-28 23:43:53');
INSERT INTO `dynamic_comment` VALUES ('6', '1344', '3', '1340', '学生评论', '0', '2018-05-28 23:45:56', '2018-05-28 23:46:00');
INSERT INTO `dynamic_comment` VALUES ('7', '1320', '3', '1344', '教师评论', '0', '2018-05-28 23:46:29', '2018-05-28 23:46:32');

-- ----------------------------
-- Table structure for dynamic_image
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_image`;
CREATE TABLE `dynamic_image` (
  `dynamic_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `dynamic_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_image
-- ----------------------------
INSERT INTO `dynamic_image` VALUES ('3', '2', 'school.jpg', '0', '2018-05-27 15:08:19', '2018-05-27 15:08:19');
INSERT INTO `dynamic_image` VALUES ('4', '2', '0.png', '0', '2018-05-27 15:08:32', '2018-05-27 15:08:32');
INSERT INTO `dynamic_image` VALUES ('6', '3', 'school.jpg', '0', '2018-05-28 23:41:19', '2018-05-28 23:41:21');
INSERT INTO `dynamic_image` VALUES ('7', '3', 'xiaohui.png', '0', '2018-05-28 23:41:36', '2018-05-28 23:41:39');

-- ----------------------------
-- Table structure for dynamic_praise
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_praise`;
CREATE TABLE `dynamic_praise` (
  `dynamic_praise_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dynamic_praise_user` int(11) unsigned NOT NULL,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_praise_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_praise
-- ----------------------------
INSERT INTO `dynamic_praise` VALUES ('1', '6', '2', '2018-05-27 15:10:47', '2018-05-27 15:10:47');
INSERT INTO `dynamic_praise` VALUES ('2', '10', '2', '2018-05-27 15:11:00', '2018-05-27 15:11:00');
INSERT INTO `dynamic_praise` VALUES ('3', '1340', '3', '2018-05-28 23:51:03', '2018-05-28 23:51:06');
INSERT INTO `dynamic_praise` VALUES ('4', '1320', '3', '2018-05-28 23:51:12', '2018-05-28 23:51:18');

-- ----------------------------
-- Table structure for edu_admin
-- ----------------------------
DROP TABLE IF EXISTS `edu_admin`;
CREATE TABLE `edu_admin` (
  `edu_admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `edu_admin_number` char(10) NOT NULL,
  `edu_admin_name` varchar(20) NOT NULL,
  `edu_admin_password` char(40) NOT NULL,
  `edu_admin_authority` varchar(6) NOT NULL DEFAULT '000000',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`edu_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of edu_admin
-- ----------------------------
INSERT INTO `edu_admin` VALUES ('1', '305', '7129398', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '111111', '2018-04-09 21:35:58', '2018-04-09 21:36:00');

-- ----------------------------
-- Table structure for enter
-- ----------------------------
DROP TABLE IF EXISTS `enter`;
CREATE TABLE `enter` (
  `enter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(20) NOT NULL,
  `school_type` tinyint(1) NOT NULL DEFAULT '0',
  `school_badge` varchar(255) NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) DEFAULT NULL,
  `school_city` varchar(20) DEFAULT NULL,
  `school_province` varchar(20) DEFAULT NULL,
  `school_license` varchar(255) NOT NULL,
  `applicant_user_name` varchar(20) NOT NULL,
  `applicant_user_id` char(18) NOT NULL,
  `receiver_phone` char(11) NOT NULL,
  `receiver_mail` varchar(40) NOT NULL,
  `enter_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`enter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of enter
-- ----------------------------
INSERT INTO `enter` VALUES ('1', '杭州测试学校001', '2', 'xiaohui.png', '这是第一个测试学校', '杭州', '浙江', 'school.jpg', '张三', '120136198512041295', '18512369632', 'zhangs@163.com', '1', '2018-03-24 22:10:10', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('2', '杭州测试学校002', '2', 'xiaohui.png', '2', '杭州', '浙江', 'school.jpg', '李四', '120136198811114919', '15203681239', '1235ls@126.com', '0', '2018-03-24 22:12:52', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('3', '某机构001', '3', 'xiaohui.png', '机构1', null, null, 'school.jpg', '老王', '120341199011032314', '18866661111', '15315613@qq.com', '0', '2018-03-24 22:14:47', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('4', '杭州测试小学', '1', 'xiaohui.png', '小学1', '杭州', '浙江', 'school.jpg', '孙权', '439523198612061293', '13386791025', 'sunquan@163.com', '0', '2018-03-24 22:16:28', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('5', '舟山信息学院002', '1', 'xiaohui.png', '测试介绍002', '舟山', '浙江', 'school.jpg', '韩娟', '201803281206171228', '13602127306', 'qj6bqn8rg0exrkh7ol@msn.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('6', '杭州信息小学001', '1', 'xiaohui.png', '测试介绍006', '舟山', '浙江', 'school.jpg', '习莉莉', '201803281206173684', '15904515018', 'dct5i3m7994chmz@aol.com', '1', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('7', '舟山测试学校004', '3', 'xiaohui.png', '测试介绍003', '嘉兴', '浙江', 'school.jpg', '陈发', '201803281206171070', '15706043819', '7qf9ic7mmgrlgeok6s@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('8', '台州测试学校003', '2', 'xiaohui.png', '测试介绍006', '衡州', '浙江', 'school.jpg', '苗泰', '201803281206174458', '13605594651', '1l85uv9dn109lye20b@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('9', '衡州测试学校004', '2', 'xiaohui.png', '测试介绍001', '绍兴', '浙江', 'school.jpg', '苗改', '201803281206170237', '15804788590', 'lu5vyavvtmcge@sohu.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('10', '绍兴测试学校004', '1', 'xiaohui.png', '测试介绍006', '台州', '浙江', 'school.jpg', '戴办法', '201803281206176492', '15008133987', 'o0izoe235gfujcict@aol.com', '1', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('11', '宁波通信学院001', '1', 'xiaohui.png', '测试介绍003', '丽水', '浙江', 'school.jpg', '张代发', '201803281206176650', '15304181031', 'hehyugrjouvt4j849vzs@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('12', '金华通信学院001', '1', 'xiaohui.png', '测试介绍002', '温州', '浙江', 'school.jpg', '陈美丽', '201803281206176129', '13507452924', '42o3w0ao3vuok70zk@live.com', '1', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('13', '衡州信息学院001', '3', 'xiaohui.png', '测试介绍002', '温州', '浙江', 'school.jpg', '周航空', '201803281206178945', '13301810559', 'pcxvzo3sne4h4uztrkhc@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('14', '宁波信息学院002', '1', 'xiaohui.png', '测试介绍001', '衡州', '浙江', 'school.jpg', '胡娟娟', '201803281206172155', '13804216086', '263lp1509nm3sq8ni10@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('15', '衡州测试学校004', '3', 'xiaohui.png', '测试介绍002', '绍兴', '浙江', 'school.jpg', '陈克', '201803281206171374', '13002615668', '29a955bj3mnr3@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('16', '衡州信息小学002', '2', 'xiaohui.png', '测试介绍005', '宁波', '浙江', 'school.jpg', '毛利', '201803281206176356', '13407277285', 'zyn2scyuny15znh@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('17', '衡州测试学校004', '1', 'xiaohui.png', '测试介绍004', '金华', '浙江', 'school.jpg', '韩我', '201803281206175487', '15505541747', 'gha2g9wfb36c@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('18', '杭州信息学院002', '1', 'xiaohui.png', '测试介绍002', '嘉兴', '浙江', 'school.jpg', '陈美丽', '201803281206173855', '13500971627', 'fg6kq7uf54h0y@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('19', '温州测试学校004', '3', 'xiaohui.png', '测试介绍001', '湖州', '浙江', 'school.jpg', '张胡霍', '201803281206171063', '15008083263', 'tzfajlbl866p@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('20', '衡州某机构004', '3', 'xiaohui.png', '测试介绍002', '舟山', '浙江', 'school.jpg', '苗长城', '201803281206170325', '13304654339', 'bbscccenba@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('21', '衡州信息学院001', '1', 'xiaohui.png', '测试介绍002', '宁波', '浙江', 'school.jpg', '毛层层', '201803281206178359', '13005206760', '40llg3jp0wsw2n7ciez@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('22', '金华测试学校004', '2', 'xiaohui.png', '测试介绍006', '台州', '浙江', 'school.jpg', '戴办法', '201803281206179543', '15307956358', '4n3htqc7gqhtykj55oy@sohu.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('23', '舟山通信学院001', '3', 'xiaohui.png', '测试介绍006', '宁波', '浙江', 'school.jpg', '戴长城', '201803281206170938', '13405608245', 'l118i7m0ij4wxfjgy@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('24', '宁波信息小学002', '3', 'xiaohui.png', '测试介绍004', '杭州', '浙江', 'school.jpg', '韩改', '201803281206173887', '15800750685', '0vvsn78p6s995f@sohu.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('25', '舟山测试学校004', '1', 'xiaohui.png', '测试介绍005', '台州', '浙江', 'school.jpg', '习克', '201803281206172663', '15107731160', 'cfahnd99vayyqmn5fex@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('26', '杭州测试小学', '1', 'xiaohui.png', '测试介绍007', '丽水', '浙江', 'school.jpg', '胡同', '201803281206170172', '13205280095', '5uhiuadka4eibm9@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('27', '金华信息小学002', '1', 'xiaohui.png', '测试介绍006', '绍兴', '浙江', 'school.jpg', '胡办法', '201803281206174606', '15804246954', 'c9m0fqkfpx0wc@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('28', '金华信息小学001', '3', 'xiaohui.png', '测试介绍007', '舟山', '浙江', 'school.jpg', '赵泰', '201803281206170414', '13606001980', 'vftjkcmbkgkl3p@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('29', '台州某机构004', '2', 'xiaohui.png', '测试介绍006', '舟山', '浙江', 'school.jpg', '毛胡霍', '201803281206170090', '15108867809', 'v059u5avm@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('30', '宁波信息学院002', '1', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '李我', '201803281206178885', '15903288967', 'q7kljp5zgn@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('31', '台州某机构003', '1', 'xiaohui.png', '测试介绍003', '衡州', '浙江', 'school.jpg', '武莉莉', '201803281206173012', '13706941521', 'igbs924yi@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('32', '温州测试学校003', '1', 'xiaohui.png', '测试介绍003', '衡州', '浙江', 'school.jpg', '李留', '201803281206170174', '13303857828', 'f8p9haxvd@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('33', '嘉兴某机构004', '3', 'xiaohui.png', '测试介绍001', '湖州', '浙江', 'school.jpg', '韩明', '201803281206175777', '13902798845', 'ci1b3e6cdfw2qoj4yw@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('34', '丽水信息小学001', '1', 'xiaohui.png', '测试介绍001', '宁波', '浙江', 'school.jpg', '周留', '201803281206176578', '15303916939', 's4n0how5f1@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('35', '宁波信息小学002', '3', 'xiaohui.png', '测试介绍003', '丽水', '浙江', 'school.jpg', '毛代发', '201803281206172962', '15706520163', 'jvb85ur47syxo4zht@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('36', '嘉兴信息小学001', '1', 'xiaohui.png', '测试介绍005', '金华', '浙江', 'school.jpg', '苗和', '201803281206174333', '13800226246', 'sfsfdq79rf6uia4xj5m@googlemail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('37', '宁波测试小学', '1', 'xiaohui.png', '测试介绍003', '温州', '浙江', 'school.jpg', '苗留', '201803281206174545', '15108697713', '2ech44y2ylt8iqifp0@googlemail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('38', '舟山测试学校003', '1', 'xiaohui.png', '测试介绍002', '湖州', '浙江', 'school.jpg', '武改', '201803281206175991', '15807423684', 'vxqcxupw4de76tgv@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('39', '温州信息小学001', '2', 'xiaohui.png', '测试介绍007', '丽水', '浙江', 'school.jpg', '朱层层', '201803281206173042', '13705833394', 'vsxh8vsu2@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('40', '宁波信息学院001', '1', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '王和', '201803281206179035', '13103496235', '3pf7qw5m85strsi3dphq@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('41', '丽水信息学院001', '2', 'xiaohui.png', '测试介绍006', '杭州', '浙江', 'school.jpg', '习美丽', '201803281206176583', '13306822825', 'ozpkbb6on42h@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('42', '嘉兴信息学院002', '3', 'xiaohui.png', '测试介绍006', '温州', '浙江', 'school.jpg', '张我', '201803281206178448', '15702560818', '8o4kd109dwqvaezqkdq@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('43', '宁波信息小学001', '2', 'xiaohui.png', '测试介绍001', '衡州', '浙江', 'school.jpg', '赵办法', '201803281206170155', '13104931064', 'ndpz8a2h52casitg94rz@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('44', '嘉兴某机构004', '2', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '习留', '201803281206174475', '15307955958', '3fuaic43sp4ysdcps@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('45', '宁波测试学校004', '2', 'xiaohui.png', '测试介绍007', '宁波', '浙江', 'school.jpg', '武长城', '201803281206178646', '13900763868', '9p51gamf10mu5yum3@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('46', '台州某机构004', '3', 'xiaohui.png', '测试介绍002', '台州', '浙江', 'school.jpg', '习同', '201803281206174986', '13902414704', 'nsujlfjmbn99blt@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('47', '丽水信息小学002', '1', 'xiaohui.png', '测试介绍002', '湖州', '浙江', 'school.jpg', '毛胡霍', '201803281206175154', '13005957466', 'w62qetisuqp9@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('48', '衡州测试学校004', '3', 'xiaohui.png', '测试介绍007', '杭州', '浙江', 'school.jpg', '戴同', '201803281206176577', '15807321875', 'q8zpt7wa8wt0n3j8@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('49', '温州测试小学', '1', 'xiaohui.png', '测试介绍007', '嘉兴', '浙江', 'school.jpg', '朱人', '201803281206173193', '15506331324', 'kqxrh5jgjgfn21d@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('50', '温州某机构004', '2', 'xiaohui.png', '测试介绍002', '温州', '浙江', 'school.jpg', '王发', '201803281206174892', '13805480882', 'ljwi20k0pr2vfga0@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('51', '宁波测试学校004', '2', 'xiaohui.png', '测试介绍003', '绍兴', '浙江', 'school.jpg', '张莉莉', '201803281206176241', '13307437155', 'oeil8nsanp0w@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('52', '台州信息学院002', '1', 'xiaohui.png', '测试介绍001', '舟山', '浙江', 'school.jpg', '苗莉莉', '201803281206176761', '15806938707', 'fi1unxx3h4e88fe2rvi@qq.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('53', '绍兴信息学院001', '1', 'xiaohui.png', '测试介绍007', '衡州', '浙江', 'school.jpg', '韩美丽', '201803281206179901', '15204402094', 'yodkk0icnt8f709fb8@sohu.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('54', '温州测试小学', '3', 'xiaohui.png', '测试介绍006', '丽水', '浙江', 'school.jpg', '陈娟娟', '201803281206174790', '13307068612', 'xtsx5rpc18ckmwbabm@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('55', '衡州通信学院001', '3', 'xiaohui.png', '测试介绍004', '台州', '浙江', 'school.jpg', '赵明', '201803281206178379', '13802461994', '18fte1hhzxx6wmivzz6@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('56', '嘉兴信息学院002', '1', 'xiaohui.png', '测试介绍003', '温州', '浙江', 'school.jpg', '李娟', '201803281206177770', '13000931953', 'aura5bvco@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('57', '舟山测试学校003', '1', 'xiaohui.png', '测试介绍007', '舟山', '浙江', 'school.jpg', '苗改', '201803281206176155', '13102291390', 'lhd5pt6jvtc69quzrcy@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('58', '杭州信息学院002', '3', 'xiaohui.png', '测试介绍004', '杭州', '浙江', 'school.jpg', '朱晨光', '201803281206172813', '13300737389', 'sxr9ri8iax6o9460@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('59', '衡州信息学院002', '1', 'xiaohui.png', '测试介绍004', '绍兴', '浙江', 'school.jpg', '周泰', '201803281206171381', '15301513341', '90fa8tsk3d9@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('60', '丽水测试学校004', '1', 'xiaohui.png', '测试介绍005', '台州', '浙江', 'school.jpg', '武娟', '201803281206170644', '13106387034', 'q316773ohcjb5pwccxcb@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('61', '台州信息学院001', '1', 'xiaohui.png', '测试介绍007', '宁波', '浙江', 'school.jpg', '毛晨光', '201803281206176143', '13408151586', '5f287ebo00@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('62', '舟山某机构004', '3', 'xiaohui.png', '测试介绍003', '舟山', '浙江', 'school.jpg', '胡大', '201803281206170826', '13001492675', 'tjo97lkpwsbihk0k2@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('63', '金华某机构004', '2', 'xiaohui.png', '测试介绍004', '绍兴', '浙江', 'school.jpg', '戴胡霍', '201803281206174857', '15907356711', '1sexuz0oz49w@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('64', '绍兴某机构004', '3', 'xiaohui.png', '测试介绍003', '宁波', '浙江', 'school.jpg', '王办法', '201803281206174861', '15702094133', 'd4l4xsz1mb@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('65', '衡州某机构004', '2', 'xiaohui.png', '测试介绍007', '嘉兴', '浙江', 'school.jpg', '戴娜娜', '201803281206170648', '15001673172', 'jmkm4ehda76usdesjp4d@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('66', '温州某机构003', '2', 'xiaohui.png', '测试介绍003', '台州', '浙江', 'school.jpg', '胡留', '201803281206176703', '13706881014', '39cfos78y1jwp@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('67', '丽水信息小学001', '2', 'xiaohui.png', '测试介绍006', '舟山', '浙江', 'school.jpg', '赵留', '201803281206176902', '15100038555', '8rbo3wd2sx7@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('68', '金华信息学院001', '3', 'xiaohui.png', '测试介绍006', '湖州', '浙江', 'school.jpg', '赵丽', '201803281206173129', '15906383143', 'sxnh15tg26enxgpz0@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('69', '嘉兴信息学院002', '2', 'xiaohui.png', '测试介绍004', '湖州', '浙江', 'school.jpg', '朱明', '201803281206176749', '15506770157', 'll0vaawp7by9m0klo9@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('70', '台州测试学校003', '2', 'xiaohui.png', '测试介绍003', '台州', '浙江', 'school.jpg', '李层层', '201803281206175920', '15202128025', '9vew25n57e9s5ymbn2n0@msn.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('71', '宁波测试学校004', '1', 'xiaohui.png', '测试介绍001', '湖州', '浙江', 'school.jpg', '武晨光', '201803281206170837', '15207727901', 'ltx01o1fw4hzt@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('72', '绍兴信息小学001', '2', 'xiaohui.png', '测试介绍006', '温州', '浙江', 'school.jpg', '韩娟娟', '201803281206177551', '15908660907', 'piqz0uiae@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('73', '金华信息小学001', '1', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '戴改', '201803281206177861', '13505212887', 'cwvlzttqjkafloeif2@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('74', '金华测试小学', '1', 'xiaohui.png', '测试介绍006', '宁波', '浙江', 'school.jpg', '陈层层', '201803281206174334', '15107203391', '03fs34z6a1fr@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('75', '温州测试学校003', '3', 'xiaohui.png', '测试介绍003', '嘉兴', '浙江', 'school.jpg', '赵层层', '201803281206170104', '13708695121', 'toj3ji3a0ph83m8@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('76', '金华信息学院001', '3', 'xiaohui.png', '测试介绍005', '金华', '浙江', 'school.jpg', '习陆', '201803281206174591', '15608147454', '19w1r99bzl4k7osr1is@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('77', '杭州通信学院001', '3', 'xiaohui.png', '测试介绍004', '温州', '浙江', 'school.jpg', '李留', '201803281206170443', '13500440866', 'ky67e5x0lo@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('78', '金华某机构003', '2', 'xiaohui.png', '测试介绍004', '台州', '浙江', 'school.jpg', '武和', '201803281206171066', '15103182671', 'kei49v3u7q4@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('79', '舟山测试小学', '2', 'xiaohui.png', '测试介绍006', '温州', '浙江', 'school.jpg', '李陆', '201803281206179036', '15308712109', 'b6i1lst8qmx6605@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('80', '金华某机构003', '2', 'xiaohui.png', '测试介绍001', '台州', '浙江', 'school.jpg', '张娟娟', '201803281206176178', '15102077291', 'i8za8rj9gsgj47yi0@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('81', '丽水测试学校004', '2', 'xiaohui.png', '测试介绍001', '宁波', '浙江', 'school.jpg', '王改', '201803281206177260', '15008472504', 'ape05p6dbuztfp382@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('82', '丽水信息学院001', '2', 'xiaohui.png', '测试介绍001', '衡州', '浙江', 'school.jpg', '毛长城', '201803281206174670', '13902770166', '33xf8a2e1llm3b3gdo5@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('83', '金华信息学院001', '2', 'xiaohui.png', '测试介绍004', '台州', '浙江', 'school.jpg', '张代发', '201803281206178272', '15208820332', 'zww4z1nlzokzn@googlemail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('84', '舟山信息小学001', '1', 'xiaohui.png', '测试介绍007', '杭州', '浙江', 'school.jpg', '毛陆', '201803281206174246', '13007089080', 'ixv1wdmeddipcix5t2@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('85', '温州信息小学002', '1', 'xiaohui.png', '测试介绍005', '台州', '浙江', 'school.jpg', '戴层层', '201803281206170123', '15501447974', '987bt4v713at2i@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('86', '杭州测试小学', '2', 'xiaohui.png', '测试介绍002', '丽水', '浙江', 'school.jpg', '周犯的', '201803281206176864', '13603447527', 'i89ytancl0z88d@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('87', '舟山信息学院001', '2', 'xiaohui.png', '测试介绍002', '舟山', '浙江', 'school.jpg', '朱办法', '201803281206175921', '15100048056', 'qjxnaskgy@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('88', '金华测试小学', '1', 'xiaohui.png', '测试介绍004', '金华', '浙江', 'school.jpg', '韩克', '201803281206174668', '13000556598', 'rd8ruc4ig@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('89', '嘉兴信息小学002', '2', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '张办法', '201803281206177825', '15603870323', 'f5ogzhdmjnovovgs2y4@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('90', '温州测试小学', '2', 'xiaohui.png', '测试介绍003', '衡州', '浙江', 'school.jpg', '戴克', '201803281206176424', '15504241534', '5y0n2vc2ftxos470d@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('91', '舟山信息学院001', '2', 'xiaohui.png', '测试介绍005', '湖州', '浙江', 'school.jpg', '张利', '201803281206173388', '13703025564', 't2cia3qcpb6@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('92', '宁波信息小学001', '2', 'xiaohui.png', '测试介绍004', '台州', '浙江', 'school.jpg', '习我', '201803281206178283', '15101072652', 'wosm87pucshod@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('93', '绍兴测试小学', '3', 'xiaohui.png', '测试介绍005', '丽水', '浙江', 'school.jpg', '习美丽', '201803281206175952', '15003485817', 'okz61tga7yt1094@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('94', '舟山某机构003', '1', 'xiaohui.png', '测试介绍001', '台州', '浙江', 'school.jpg', '苗长城', '201803281206171971', '15002225948', 'lyfu4nfe1@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('95', '绍兴通信学院001', '1', 'xiaohui.png', '测试介绍006', '宁波', '浙江', 'school.jpg', '李人', '201803281206178625', '15503444104', 'i66l669a7j@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('96', '绍兴测试学校004', '3', 'xiaohui.png', '测试介绍006', '丽水', '浙江', 'school.jpg', '韩娜娜', '201803281206172615', '13103683477', 'rr3trzu9ka9vzmokwr@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('97', '宁波信息小学002', '1', 'xiaohui.png', '测试介绍007', '舟山', '浙江', 'school.jpg', '武和', '201803281206173722', '13403174729', '8ehwourtdm@qq.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('98', '台州通信学院001', '3', 'xiaohui.png', '测试介绍001', '绍兴', '浙江', 'school.jpg', '李改', '201803281206173251', '13502583768', 'naqy93v4rj7lojf@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('99', '金华测试小学', '3', 'xiaohui.png', '测试介绍001', '杭州', '浙江', 'school.jpg', '毛陆', '201803281206170091', '13707056153', '0l9ahhfhsirgs@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('100', '绍兴信息小学001', '1', 'xiaohui.png', '测试介绍005', '绍兴', '浙江', 'school.jpg', '胡空间', '201803281206177622', '13208604236', '4qug9aub0ds9q8ls@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('101', '衡州测试学校004', '1', 'xiaohui.png', '测试介绍005', '温州', '浙江', 'school.jpg', '毛航空', '201803281206178629', '13903465200', 'e1qd69wx68wf6lrsh@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('102', '温州某机构003', '2', 'xiaohui.png', '测试介绍002', '杭州', '浙江', 'school.jpg', '韩克', '201803281206179163', '15800147417', 'deyo9b2j6yawq@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('103', '丽水信息学院002', '1', 'xiaohui.png', '测试介绍005', '衡州', '浙江', 'school.jpg', '毛层层', '201803281206177512', '13002538348', 'qdl112cf4qvodf@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('104', '金华通信学院001', '1', 'xiaohui.png', '测试介绍005', '嘉兴', '浙江', 'school.jpg', '毛明', '201803281206170494', '13801777485', 'j90xt9iz6tzkk@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('105', '杭州测试小学', '1', 'xiaohui.png', '测试介绍006', '丽水', '浙江', 'school.jpg', '戴泰', '201803281206170316', '15606626401', '496tipwkqfqv@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('106', '衡州测试小学', '2', 'xiaohui.png', '测试介绍002', '丽水', '浙江', 'school.jpg', '张航空', '201803281206174279', '13502337703', 'jus7ijj6wrq4p3nev4fq@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('107', '舟山信息小学002', '1', 'xiaohui.png', '测试介绍001', '金华', '浙江', 'school.jpg', '王空间', '201803281206170344', '13206960969', 'ajadokzdcu8oyfv@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('108', '杭州信息小学002', '1', 'xiaohui.png', '测试介绍001', '金华', '浙江', 'school.jpg', '陈莉莉', '201803281206179917', '13508592545', 'sma8auvquj0crabvq@sohu.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('109', '丽水信息学院001', '1', 'xiaohui.png', '测试介绍002', '绍兴', '浙江', 'school.jpg', '张莉莉', '201803281206179979', '13402900541', 'whqaxh8pw6m3fov18yiw@live.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('110', '嘉兴测试小学', '3', 'xiaohui.png', '测试介绍005', '杭州', '浙江', 'school.jpg', '胡大', '201803281206170853', '13207164347', 'hdcjfad1tz0o3vy9o@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('111', '衡州测试学校003', '1', 'xiaohui.png', '测试介绍007', '金华', '浙江', 'school.jpg', '赵代发', '201803281206178592', '13407313267', 'c0t91gjpyigo@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('112', '丽水某机构003', '1', 'xiaohui.png', '测试介绍007', '绍兴', '浙江', 'school.jpg', '习娟', '201803281206175284', '15102588289', 'k84ygr5gqkn4duh4kel9@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('113', '衡州测试学校004', '1', 'xiaohui.png', '测试介绍007', '宁波', '浙江', 'school.jpg', '苗我', '201803281206177636', '13407888567', '96gl1shcn@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('114', '杭州信息小学002', '3', 'xiaohui.png', '测试介绍004', '宁波', '浙江', 'school.jpg', '习美丽', '201803281206170529', '15808696403', 'y40lbukqgw@qq.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('115', '衡州测试学校004', '1', 'xiaohui.png', '测试介绍007', '丽水', '浙江', 'school.jpg', '戴我', '201803281206171075', '13802634532', 'rbtkumz38xfojxy3y1x@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('116', '宁波测试小学', '1', 'xiaohui.png', '测试介绍007', '湖州', '浙江', 'school.jpg', '毛和', '201803281206179395', '13803680463', 'vac56h0lm@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('117', '绍兴某机构004', '3', 'xiaohui.png', '测试介绍007', '金华', '浙江', 'school.jpg', '李留', '201803281206170330', '15007292925', '4ft6axl8hsicg@yeah.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('118', '绍兴测试学校004', '3', 'xiaohui.png', '测试介绍001', '台州', '浙江', 'school.jpg', '习长城', '201803281206178606', '13606557871', '8op4rylguli3y@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('119', '台州测试小学', '2', 'xiaohui.png', '测试介绍002', '绍兴', '浙江', 'school.jpg', '周娟', '201803281206175776', '13704157110', 'jlt8dv6oa7hqb@yahoo.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('120', '温州信息小学002', '2', 'xiaohui.png', '测试介绍001', '台州', '浙江', 'school.jpg', '毛丽', '201803281206173946', '13901301155', 'gmqq2zmwtdgezo@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('121', '杭州测试小学', '1', 'xiaohui.png', '测试介绍001', '湖州', '浙江', 'school.jpg', '朱明', '201803281206174809', '13602322791', 'ejg0ci98k2r1@qq.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('122', '宁波信息小学002', '3', 'xiaohui.png', '测试介绍007', '金华', '浙江', 'school.jpg', '习大', '201803281206173954', '15700073367', '6kiprz5ep0wtgcht1n@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('123', '舟山测试学校004', '2', 'xiaohui.png', '测试介绍005', '宁波', '浙江', 'school.jpg', '武长城', '201803281206175049', '13602868932', 'qgl5ncj6qat@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('124', '金华信息小学001', '1', 'xiaohui.png', '测试介绍001', '宁波', '浙江', 'school.jpg', '王娟', '201803281206177268', '15000385686', 'q5e0ao76o@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('125', '台州某机构004', '2', 'xiaohui.png', '测试介绍003', '绍兴', '浙江', 'school.jpg', '胡办法', '201803281206177175', '13908765183', 'c17fk4qftu@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('126', '杭州信息学院001', '1', 'xiaohui.png', '测试介绍003', '湖州', '浙江', 'school.jpg', '朱我', '201803281206175799', '13102290992', 'ns8o9plwb52c97kg21e@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('127', '衡州信息小学002', '1', 'xiaohui.png', '测试介绍007', '杭州', '浙江', 'school.jpg', '武代发', '201803281206179026', '13605652833', 'bmu9wtmhi1@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('128', '嘉兴通信学院001', '2', 'xiaohui.png', '测试介绍006', '衡州', '浙江', 'school.jpg', '陈层层', '201803281206172657', '15107225035', 'f29k1sthp5vddb0t3g@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('129', '金华测试学校003', '3', 'xiaohui.png', '测试介绍001', '衡州', '浙江', 'school.jpg', '戴改', '201803281206173021', '13901108493', 'kpalxajfya9t64jjm53@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('130', '杭州某机构004', '2', 'xiaohui.png', '测试介绍004', '台州', '浙江', 'school.jpg', '赵莉莉', '201803281206171083', '15905786168', 'j32t6yxs2jf2@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('131', '杭州测试小学', '2', 'xiaohui.png', '测试介绍002', '衡州', '浙江', 'school.jpg', '韩航空', '201803281206174872', '13407280841', '01nqqecy1bn@googlemail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('132', '丽水通信学院001', '1', 'xiaohui.png', '测试介绍002', '丽水', '浙江', 'school.jpg', '王长城', '201803281206170763', '13108365681', 'e1rmrzflt7vthttt@263.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('133', '宁波测试学校004', '3', 'xiaohui.png', '测试介绍005', '嘉兴', '浙江', 'school.jpg', '张航空', '201803281206176202', '15703777108', 'ejcfimiexj@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('134', '舟山测试学校004', '3', 'xiaohui.png', '测试介绍002', '金华', '浙江', 'school.jpg', '韩泰', '201803281206177477', '13106362078', 'xnwg0fsdxpcbrv@3721.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('135', '台州信息小学002', '2', 'xiaohui.png', '测试介绍004', '嘉兴', '浙江', 'school.jpg', '毛大', '201803281206176564', '15000247265', '386p2ipz8gknnngk@googlemail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('136', '宁波信息学院002', '3', 'xiaohui.png', '测试介绍006', '温州', '浙江', 'school.jpg', '陈克', '201803281206176305', '15603535262', 'fbdgcnakdnv0rdlii@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('137', '嘉兴某机构003', '2', 'xiaohui.png', '测试介绍003', '湖州', '浙江', 'school.jpg', '王克', '201803281206174124', '15708533204', 'ef21fepp85gdvafj7@sina.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('138', '宁波某机构003', '1', 'xiaohui.png', '测试介绍003', '丽水', '浙江', 'school.jpg', '李陆', '201803281206172578', '13104056699', 'cp2rh6qrp4h1@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('139', '衡州信息小学002', '3', 'xiaohui.png', '测试介绍001', '宁波', '浙江', 'school.jpg', '毛层层', '201803281206172478', '13705796344', '3mzo0a0ln24o5qben14@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('140', '温州通信学院001', '3', 'xiaohui.png', '测试介绍004', '丽水', '浙江', 'school.jpg', '李办法', '201803281206173974', '13004036742', '6filkqtc3o@163.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('141', '金华测试学校003', '3', 'xiaohui.png', '测试介绍002', '温州', '浙江', 'school.jpg', '王我', '201803281206179612', '15806244163', '4a3l54klj3pzsg9v@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('142', '舟山通信学院001', '1', 'xiaohui.png', '测试介绍002', '嘉兴', '浙江', 'school.jpg', '周克', '201803281206179660', '13505999054', 'zvuiuxdi8ee@126.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('143', '金华信息小学002', '3', 'xiaohui.png', '测试介绍001', '台州', '浙江', 'school.jpg', '习大', '201803281206172200', '15601436638', 'iwg0yslo0oqwc@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('144', '杭州某机构004', '2', 'xiaohui.png', '测试介绍001', '金华', '浙江', 'school.jpg', '张晨光', '201803281206171355', '15900184813', 'b6olqjobkubiilj2wgf@hotmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('145', '温州测试学校003', '2', 'xiaohui.png', '测试介绍003', '绍兴', '浙江', 'school.jpg', '苗娜娜', '201803281206173928', '13307651859', 'fy0ayg1ps@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('146', '嘉兴测试小学', '2', 'xiaohui.png', '测试介绍003', '丽水', '浙江', 'school.jpg', '王犯的', '201803281206178563', '15807052055', 'b5ngtmf1m@aol.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('147', '台州通信学院001', '1', 'xiaohui.png', '测试介绍001', '金华', '浙江', 'school.jpg', '戴克', '201803281206175027', '13405237044', 'f00ajepc731y35dd3@163.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('148', '舟山通信学院001', '3', 'xiaohui.png', '测试介绍007', '宁波', '浙江', 'school.jpg', '张改', '201803281206171213', '13702196089', 'cq22gc1odyqfy2w@ask.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('149', '丽水某机构003', '1', 'xiaohui.png', '测试介绍007', '台州', '浙江', 'school.jpg', '朱同', '201803281206174756', '13808526688', '7lqi9wv7bdzl8m@0355.net', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('150', '衡州信息学院001', '3', 'xiaohui.png', '测试介绍001', '绍兴', '浙江', 'school.jpg', '赵利', '201803281206172906', '13001087051', 'dmvh92pc4ohz@gmail.com', '0', '2017-12-30 23:37:09', '2018-05-26 20:47:18');
INSERT INTO `enter` VALUES ('151', '宁波信息小学002', '2', 'xiaohui.png', '测试介绍005', '绍兴', '浙江', 'school.jpg', '王办法', '201803281717197772', '13504820961', 'pvufmwaes3zte1a6e@ask.com', '0', '2017-11-23 18:52:19', '2018-05-26 20:47:18');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `exam_start_time` datetime NOT NULL,
  `exam_end_time` datetime NOT NULL,
  `exam_state` tinyint(2) NOT NULL DEFAULT '11',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exam
-- ----------------------------

-- ----------------------------
-- Table structure for exam_item
-- ----------------------------
DROP TABLE IF EXISTS `exam_item`;
CREATE TABLE `exam_item` (
  `exam_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exam_item_question` varchar(50) NOT NULL,
  `exam_item_score` tinyint(2) unsigned NOT NULL,
  `exam_item_type` tinyint(2) NOT NULL DEFAULT '3',
  `exam_item_option1` varchar(50) DEFAULT NULL,
  `exam_item_option2` varchar(50) DEFAULT NULL,
  `exam_item_option3` varchar(50) DEFAULT NULL,
  `exam_item_option4` varchar(50) DEFAULT NULL,
  `exam_item_answer` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exam_item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exam_item
-- ----------------------------
INSERT INTO `exam_item` VALUES ('1', 'Java属于以下哪种语言', '10', '1', '机械语言', '汇编语言', '高级语言', '以上都不对', '高级语言', '2018-05-29 18:49:37', '2018-05-29 18:49:39');
INSERT INTO `exam_item` VALUES ('2', '下面哪种类型的文件可以在Java虚拟机中运行', '10', '1', '.Java', '.jre', '.exe', '.class', '.class', '2018-05-29 20:12:33', '2018-05-29 20:12:35');
INSERT INTO `exam_item` VALUES ('3', '作为Java应用程序入口的main()方法，其声明格式可以是', '10', '1', 'public static void main(String[] args);', 'public static int main(String[] args);', 'public void main(String[] args);', 'public int main(String[] args);', 'public static void main(String[] args);', '2018-05-29 20:19:08', '2018-05-29 20:19:11');
INSERT INTO `exam_item` VALUES ('4', '一般Java程序的类体由两部分组成：一部分是____，另一部分是____', '20', '2', null, null, null, null, '属性   方法', '2018-05-29 20:19:03', '2018-05-29 20:19:05');
INSERT INTO `exam_item` VALUES ('5', '子类对父类继承来的属性重新定义称为____。子类对自身拥有的同名方法的重新定义称____', '20', '2', null, null, null, null, '重写   重载', '2018-05-29 20:20:38', '2018-05-29 20:20:40');
INSERT INTO `exam_item` VALUES ('6', '在Java程序中&和&&的区别', '30', '3', null, null, null, null, '&和&&都可以用作逻辑与的运算符，表示逻辑与（and），当运算符两边的表达式的结果都为true时，整个运算结果才为true，否则，结果为false。&&还具有短路的功能，即如果第一个表达式为false，则不再计算第二个表达式，&还可以用作位运算符，当&操作符两边的表达式不是Boolean类型时，&表示按位与操作', '2018-05-29 20:20:50', '2018-05-29 20:20:47');
INSERT INTO `exam_item` VALUES ('7', '下列关于JDK、JRE和JVM的描述。哪项正确', '10', '1', 'JDK中包含了JRE，JVM中包含了JRE', 'JRE中包含了JDK，JDK中包含了JVM', 'JRE中包含了JDK，JVM中包含了JRE', 'JDK中包含了JRE，JRE中包含了JVM', 'JDK中包含了JRE，JRE中包含了JVM', '2018-05-29 20:37:02', '2018-05-29 20:37:04');
INSERT INTO `exam_item` VALUES ('8', '下列哪个工具可以编译java源文件', '10', '1', 'javac', 'jdb', 'javadoc', 'junit', 'javac', '2018-05-29 20:37:09', '2018-05-29 20:37:08');
INSERT INTO `exam_item` VALUES ('9', 'JDK工具javadoc的作用是哪项', '10', '1', '生成Java文档', '编译Java源文件', '执行Java类文件', '测试、java代码', '生成Java文档', '2018-05-29 20:40:13', '2018-05-29 20:40:15');
INSERT INTO `exam_item` VALUES ('10', '定义一个静态方法使用的关键字是____', '20', '2', null, null, null, null, 'static', '2018-05-29 20:40:24', '2018-05-29 20:40:22');
INSERT INTO `exam_item` VALUES ('11', '接口声明有____和____。', '20', '2', null, null, null, null, '常量   抽象方法', '2018-05-29 20:42:13', '2018-05-29 20:42:16');
INSERT INTO `exam_item` VALUES ('12', '面向对象的特征有哪些方面 ', '30', '3', null, null, null, null, '1.抽象、2.继承、3.封装、4. 多态性', '2018-05-29 20:43:25', '2018-05-29 20:43:23');
INSERT INTO `exam_item` VALUES ('13', '以下关于支持Java运行平台的叙述，哪项错误', '10', '1', 'Java可以在Solaris平台上运行', 'Java可以在Windows平台上运行', 'Java语言与平台无关。Java程序的运行结果依赖于操作系统', 'Java语言与平台无关。Java程序的运行结果与操作系统无关', 'Java语言与平台无关。Java程序的运行结果依赖于操作系统', '2018-05-29 20:47:36', '2018-05-29 20:47:39');
INSERT INTO `exam_item` VALUES ('14', '环境变量PATH中含有多个路径时，路径和路径之间可以用哪项来隔开？', '10', '1', ';', ',', '*', '|', ';', '2018-05-29 20:47:47', '2018-05-29 20:47:44');
INSERT INTO `exam_item` VALUES ('15', 'CLASSPATH中的“.”的含义是哪项', '10', '1', '省略号', '当前目录', '所有目录', '上级目录', '当前目录', '2018-05-29 20:50:32', '2018-05-29 20:50:34');
INSERT INTO `exam_item` VALUES ('16', '必须在一个类中定义，类使用____关键字来定义', '20', '2', null, null, null, null, 'class', '2018-05-29 20:56:17', '2018-05-29 20:56:20');
INSERT INTO `exam_item` VALUES ('17', 'Java中的注释可以分为三种类型____、____和____', '20', '2', null, null, null, null, '单行注释   多行注释   文档注释', '2018-05-29 20:56:26', '2018-05-29 20:56:28');
INSERT INTO `exam_item` VALUES ('18', 'String 和StringBuffer的区别', '30', '3', null, null, null, null, 'JAVA平台提供了两个类：String和StringBuffer，它们可以储存和操作字符串，即包含多个字符的字符数据。这个String类提供了数值不可改变的字符串。而这个StringBuffer类提供的字符串进行修改。当你知道字符数据要改变的时候你就可以使用StringBuffer。典型地，你可以使用StringBuffers来动态构造字符数据', '2018-05-29 20:56:32', '2018-05-29 20:56:34');
INSERT INTO `exam_item` VALUES ('19', 'JVM在执行一个Java类时，大致采用以下哪个过程', '10', '1', '执行类中的代码->装载类->校验类', '校验类->装载类->执行类中的代码', '装载类->执行类中的代码->校验类', '装载类->校验类->执行中的代码', '装载类->校验类->执行中的代码', '2018-05-29 21:05:26', '2018-05-29 21:05:31');
INSERT INTO `exam_item` VALUES ('20', '当运行一个Java程序时，传递参数的格式是哪项', '10', '1', 'java类名参数1，参数2', 'javac类名参数1参数2', 'java类名参数1参数2', 'java类名参数1+参数2', 'java类名参数1参数2', '2018-05-29 21:05:29', '2018-05-29 21:05:33');
INSERT INTO `exam_item` VALUES ('21', '使用（）方法可以获得Calendar类的实例。', '10', '1', 'get（）', 'equals（）', 'getTime（）', 'getInstance（）', 'getInstance（）', '2018-05-29 21:05:37', '2018-05-29 21:05:39');
INSERT INTO `exam_item` VALUES ('22', '单行注释___，多行注释___开头。___结尾，多行注释以___开头，___结尾。', '20', '2', null, null, null, null, '//   /*   */   /**   */', '2018-05-29 21:08:43', '2018-05-29 21:08:44');
INSERT INTO `exam_item` VALUES ('23', 'Java中的变量可分为两种数据类型，分别是___和___', '20', '2', null, null, null, null, '基本数据类型  引用数据类型', '2018-05-29 21:10:26', '2018-05-29 21:10:28');
INSERT INTO `exam_item` VALUES ('24', '运行时异常与一般异常有何异同？', '30', '3', null, null, null, null, '异常表示程序运行过程中可能出现的非正常状态，运行时异常表示虚拟机的通常操作中可能遇到的异常，是一种常见运行错误。java编译器要求方法必须声明抛出可能发生的非运行时异常，但是并不要求必须声明抛出未被捕获的运行时异常。', '2018-05-29 21:11:02', '2018-05-29 21:11:04');

-- ----------------------------
-- Table structure for exercises
-- ----------------------------
DROP TABLE IF EXISTS `exercises`;
CREATE TABLE `exercises` (
  `exercises_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) unsigned NOT NULL,
  `exercises_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exercises_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exercises
-- ----------------------------

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `faculty_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL DEFAULT '0',
  `faculty_code` char(4) NOT NULL DEFAULT '',
  `faculty_name` varchar(50) NOT NULL DEFAULT '',
  `faculty_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6241 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES ('5826', '305', 'cffc', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5827', '305', '9243', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5828', '305', 'f4de', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5829', '305', 'eb04', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5830', '305', '1718', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5831', '309', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5832', '317', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5834', '329', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5835', '333', '207e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5836', '333', 'e567', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5837', '333', '72c9', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5838', '333', 'bca1', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5839', '333', '43d5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5840', '341', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5841', '345', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5842', '353', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5843', '357', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5844', '365', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5845', '369', '012c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5846', '369', '7a09', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5847', '369', 'e479', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5848', '369', 'c701', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5849', '369', 'be9b', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5850', '377', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5851', '381', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5852', '389', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5853', '393', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5854', '401', '9f3e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5855', '401', 'd99d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5856', '401', '50cf', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5857', '401', 'bac3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5858', '401', 'bc70', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5859', '405', 'ffb9', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5860', '405', '584e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5861', '405', '9d22', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5862', '405', '04a2', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5863', '405', '9692', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5864', '413', '7dac', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5865', '413', 'b543', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5866', '413', '3fe5', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5867', '413', '2043', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5868', '413', '51bf', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5869', '417', 'ff42', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5870', '417', 'ca0d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5871', '417', 'ab96', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5872', '417', '0551', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5873', '417', '16d3', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5874', '425', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5875', '429', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5876', '437', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5877', '441', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5878', '449', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5879', '453', '85a5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5880', '453', '406e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5881', '453', '3a84', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5882', '453', '29ab', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5883', '453', '7dd9', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5884', '461', 'bdbc', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5885', '461', '30fd', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5886', '461', 'a126', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5887', '461', 'cb8b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5888', '461', '9eb0', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5889', '465', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5890', '473', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5891', '477', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5892', '485', '791b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5893', '485', 'd816', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5894', '485', '270a', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5895', '485', '5cc4', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5896', '485', '73af', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5897', '489', '8959', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5898', '489', '3e29', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5899', '489', '71ab', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5900', '489', '1769', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5901', '489', '1062', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5902', '497', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5903', '501', '8d1a', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5904', '501', 'cefc', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5905', '501', 'cb83', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5906', '501', '9707', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5907', '501', '9f39', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5908', '509', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5909', '513', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5910', '521', 'cbe6', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5911', '521', '1288', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5912', '521', 'b089', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5913', '521', '37ac', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5914', '521', '6fc5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5915', '525', '4614', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5916', '525', 'e410', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5917', '525', '6247', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5918', '525', '6860', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5919', '525', 'd04a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5920', '533', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5921', '537', 'b81f', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5922', '537', 'abf4', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5923', '537', 'c214', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5924', '537', '9afb', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5925', '537', 'a854', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5926', '545', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5927', '549', 'ced7', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5928', '549', '44ee', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5929', '549', 'c0e7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5930', '549', '0984', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5931', '549', '2daa', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5932', '557', '1849', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5933', '557', 'ebe3', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5934', '557', '454f', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5935', '557', '80be', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5936', '557', 'e727', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5937', '561', '1389', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5938', '561', 'b51a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5939', '561', '9c4d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5940', '561', '726d', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5941', '561', '1e3f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5942', '569', '63f2', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5943', '569', 'd8a6', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5944', '569', '44d0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5945', '569', '8e2b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5946', '569', 'a86f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5947', '573', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5948', '581', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5949', '585', '62e4', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5950', '585', 'c3f2', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5951', '585', '37d2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5952', '585', 'f7e3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5953', '585', '87a0', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5954', '593', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5955', '597', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5956', '605', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5957', '609', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5958', '617', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5959', '621', 'a1c1', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5960', '621', 'a48f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5961', '621', 'a707', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5962', '621', 'b743', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5963', '621', 'cdcc', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5964', '629', '0093', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5965', '629', '0fa7', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5966', '629', '618d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5967', '629', '3209', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5968', '629', '6231', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5969', '633', '8a47', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5970', '633', '336f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5971', '633', 'a034', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5972', '633', '4f93', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5973', '633', '849e', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5974', '641', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5975', '645', '8d3c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5976', '645', '0558', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5977', '645', '7b47', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5978', '645', '2ce3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5979', '645', 'e542', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5980', '653', 'b563', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5981', '653', '1f2b', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5982', '653', '79c5', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5983', '653', 'ac26', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5984', '653', 'b689', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5985', '657', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5986', '665', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5987', '669', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5988', '677', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5989', '681', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5990', '689', 'dbef', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5991', '689', '58c5', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5992', '689', '9a3f', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5993', '689', '5d39', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5994', '689', '814b', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5995', '693', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5996', '701', '4e4c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5997', '701', 'dff5', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5998', '701', 'f029', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5999', '701', '4ca1', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6000', '701', '83ce', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6001', '705', '12b3', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6002', '705', 'ed22', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6003', '705', 'bc0d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6004', '705', 'abe6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6005', '705', '3af4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6006', '713', '7dfb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6007', '713', 'fc22', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6008', '713', '49ba', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6009', '713', '46f7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6010', '713', 'a527', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6011', '717', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6012', '725', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6013', '729', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6014', '737', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6015', '741', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6016', '749', '3b42', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6017', '749', '9446', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6018', '749', '1f31', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6019', '749', '63fc', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6020', '749', 'e10a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6021', '753', '59e5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6022', '753', '1916', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6023', '753', 'ffc0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6024', '753', '39df', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6025', '753', '32d6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6026', '761', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6027', '765', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6028', '773', '7b4d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6029', '773', '2ac8', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6030', '773', '3b91', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6031', '773', 'f7f3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6032', '773', '8889', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6033', '777', '62ca', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6034', '777', '854f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6035', '777', '3e38', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6036', '777', '7887', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6037', '777', 'e4fc', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6038', '785', '4b0b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6039', '785', 'e5c2', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6040', '785', '6006', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6041', '785', '2713', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6042', '785', '810f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6043', '789', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6044', '797', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6045', '801', '646a', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6046', '801', 'dfb0', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6047', '801', 'a4c0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6048', '801', '668a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6049', '801', '3fae', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6050', '809', 'b8bb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6051', '809', 'a895', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6052', '809', '1005', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6053', '809', 'de5c', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6054', '809', 'da95', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6055', '813', '6364', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6056', '813', '4014', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6057', '813', '3dad', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6058', '813', '3400', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6059', '813', '47e8', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6060', '821', '7d9e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6061', '821', '07c9', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6062', '821', 'ec21', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6063', '821', '87c9', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6064', '821', '9900', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6065', '825', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6066', '833', '8fcb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6067', '833', '5fd7', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6068', '833', '875e', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6069', '833', '1494', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6070', '833', 'fad4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6071', '837', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6072', '845', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6073', '849', '7aa0', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6074', '849', 'ad3a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6075', '849', '1f08', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6076', '849', '412f', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6077', '849', '06d7', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6078', '857', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6079', '861', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6080', '869', '7cb8', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6081', '869', 'c006', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6082', '869', '412e', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6083', '869', 'e3fe', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6084', '869', 'acc9', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6085', '873', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6086', '881', 'c94d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6087', '881', '6e3d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6088', '881', 'd5c2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6089', '881', 'd9f7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6090', '881', 'd475', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6091', '885', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6092', '893', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6093', '897', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6094', '905', 'fccd', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6095', '905', '9e07', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6096', '905', '9c2b', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6097', '905', '4976', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6098', '905', '1f09', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6099', '909', '5940', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6100', '909', 'dc74', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6101', '909', 'a348', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6102', '909', '340a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6103', '909', '0132', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6104', '917', '0363', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6105', '917', 'd25e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6106', '917', '4c66', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6107', '917', '6120', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6108', '917', 'ed97', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6109', '921', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6110', '929', '62e7', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6111', '929', '787a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6112', '929', 'c9e9', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6113', '929', '414b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6114', '929', '4b53', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6115', '933', '4d3b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6116', '933', '85f8', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6117', '933', '87ea', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6118', '933', '3334', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6119', '933', '426c', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6120', '941', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6121', '945', '237b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6122', '945', 'cdaf', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6123', '945', '2a46', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6124', '945', '8024', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6125', '945', 'a9c5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6126', '953', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6127', '957', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6128', '965', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6129', '969', '8d1b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6130', '969', 'af4e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6131', '969', 'a95c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6132', '969', 'd4dc', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6133', '969', '1a70', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6134', '977', '16a5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6135', '977', '3fac', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6136', '977', '191c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6137', '977', '74ff', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6138', '977', 'e063', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6139', '981', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6140', '989', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6141', '993', '5c58', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6142', '993', 'db1c', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6143', '993', 'f9ba', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6144', '993', '4434', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6145', '993', '5dfe', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6146', '1001', '0484', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6147', '1001', '5890', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6148', '1001', '10b2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6149', '1001', 'f87f', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6150', '1001', '0ab1', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6151', '1005', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6152', '1013', '6d57', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6153', '1013', 'daea', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6154', '1013', '2bfb', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6155', '1013', 'f1f6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6156', '1013', '52b5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6157', '1017', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6158', '1025', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6159', '1029', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6160', '1037', 'a6db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6161', '1037', '9401', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6162', '1037', '9b63', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6163', '1037', 'e6b6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6164', '1037', '7944', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6165', '1041', '0b67', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6166', '1041', '021f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6167', '1041', 'b15d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6168', '1041', 'b7b7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6169', '1041', '337a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6170', '1049', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6171', '1053', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6172', '1061', '827d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6173', '1061', '47c0', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6174', '1061', '8a21', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6175', '1061', 'fd5a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6176', '1061', '1e4d', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6177', '1065', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6178', '1073', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6179', '1077', 'd2db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6180', '1077', 'c819', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6181', '1077', '7f6c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6182', '1077', '9fd6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6183', '1077', '72b6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6184', '1085', 'ad63', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6185', '1085', '794b', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6186', '1085', 'af8a', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6187', '1085', '4453', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6188', '1085', 'ebe3', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6189', '1089', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6190', '1097', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6191', '1101', '13db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6192', '1101', '43dc', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6193', '1101', 'c6a7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6194', '1101', 'c465', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6195', '1101', '1f32', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6196', '1109', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6197', '1113', '2d4c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6198', '1113', '5444', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6199', '1113', '8800', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6200', '1113', 'bc92', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6201', '1113', 'f112', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6202', '1121', '4bfb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6203', '1121', 'f98a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6204', '1121', 'bc28', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6205', '1121', 'c95c', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6206', '1121', 'efb6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6207', '1125', 'e0a9', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6208', '1125', '5760', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6209', '1125', '0645', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6210', '1125', 'a2d9', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6211', '1125', 'c3a8', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6212', '1133', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6213', '1137', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6214', '1145', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6215', '1149', 'baea', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6216', '1149', '9911', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6217', '1149', '0065', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6218', '1149', 'bf82', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6219', '1149', '087f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6221', '1161', 'da69', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6222', '1161', 'bb3f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6223', '1161', '0734', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6224', '1161', '140d', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6225', '1161', '24c4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6226', '1169', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6227', '1173', 'e153', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6228', '1173', '4032', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6229', '1173', 'f1d7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6230', '1173', '10b7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6231', '1173', '0591', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6232', '1181', '3366', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6233', '1181', '83ad', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6234', '1181', 'df15', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6235', '1181', '42f8', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6236', '1181', '6cab', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6237', '1185', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6238', '1193', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6239', '1197', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6240', '305', '1232', '测试学院11号', 'test', '2018-05-21 00:26:41', '2018-05-21 00:54:51');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) unsigned NOT NULL,
  `grade_course` int(11) unsigned NOT NULL,
  `grade_mark` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '181', '854', '98', '2018-05-22 12:51:54', '2018-05-22 12:52:00');
INSERT INTO `grade` VALUES ('2', '181', '855', '88', '2018-05-22 13:00:41', '2018-05-22 13:00:43');
INSERT INTO `grade` VALUES ('3', '182', '854', '89', '2018-05-22 13:01:51', '2018-05-22 13:01:53');
INSERT INTO `grade` VALUES ('4', '182', '855', '95', '2018-05-22 13:02:10', '2018-05-22 13:02:12');
INSERT INTO `grade` VALUES ('5', '181', '856', '76', '2018-05-22 13:02:29', '2018-05-22 13:02:33');
INSERT INTO `grade` VALUES ('6', '191', '863', '89', '2018-05-22 13:32:01', '2018-05-22 13:32:03');

-- ----------------------------
-- Table structure for grade_class
-- ----------------------------
DROP TABLE IF EXISTS `grade_class`;
CREATE TABLE `grade_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faculty_id` int(11) unsigned NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `class_code` char(4) NOT NULL,
  `class_name` varchar(40) NOT NULL,
  `class_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1826 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grade_class
-- ----------------------------
INSERT INTO `grade_class` VALUES ('167', '5826', '305', '55c7', '测试1班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('168', '5826', '305', '55c8', '测试2班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('169', '5826', '305', '55c9', '测试3班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('170', '5826', '305', '55d1', '测试4班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('171', '5827', '305', 'cc8e', '测试1班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('172', '5827', '305', 'cc8e', '测试2班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('173', '5827', '305', 'cc8e', '测试3班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('174', '5827', '305', 'cc8e', '测试4班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('175', '5828', '305', '3b71', '测试1班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('176', '5828', '305', '3b72', '测试2班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('177', '5828', '305', '3b73', '测试3班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('178', '5828', '305', '3b74', '测试4班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('179', '5829', '305', 'c8e2', '测试1班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('180', '5829', '305', 'c8e2', '测试2班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('181', '5829', '305', 'c8e2', '测试3班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('182', '5829', '305', 'c8e2', '测试4班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('183', '5830', '305', 'cef7', '测试1班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('184', '5830', '305', 'cef7', '测试2班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('185', '5830', '305', 'cef7', '测试3班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('186', '5830', '305', 'cef7', '测试4班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('187', '5831', '309', '3025', '测试1班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('188', '5831', '309', '3025', '测试2班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('189', '5831', '309', '3025', '测试3班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('190', '5831', '309', '3025', '测试4班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('191', '5832', '317', '68ee', '测试1班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('192', '5832', '317', '68ee', '测试2班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('193', '5832', '317', '68ee', '测试3班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('194', '5832', '317', '68ee', '测试4班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('199', '5834', '329', '2796', '测试1班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('200', '5834', '329', '2796', '测试2班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('201', '5834', '329', '2796', '测试3班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('202', '5834', '329', '2796', '测试4班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('203', '5835', '333', 'd10f', '测试1班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('204', '5835', '333', 'd10f', '测试2班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('205', '5835', '333', 'd10f', '测试3班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('206', '5835', '333', 'd10f', '测试4班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('207', '5836', '333', 'f68d', '测试1班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('208', '5836', '333', 'f68d', '测试2班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('209', '5836', '333', 'f68d', '测试3班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('210', '5836', '333', 'f68d', '测试4班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('211', '5837', '333', '0776', '测试1班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('212', '5837', '333', '0776', '测试2班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('213', '5837', '333', '0776', '测试3班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('214', '5837', '333', '0776', '测试4班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('215', '5838', '333', '83dc', '测试1班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('216', '5838', '333', '83dc', '测试2班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('217', '5838', '333', '83dc', '测试3班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('218', '5838', '333', '83dc', '测试4班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('219', '5839', '333', 'b9ed', '测试1班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('220', '5839', '333', 'b9ed', '测试2班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('221', '5839', '333', 'b9ed', '测试3班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('222', '5839', '333', 'b9ed', '测试4班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('223', '5840', '341', '2fac', '测试1班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('224', '5840', '341', '2fac', '测试2班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('225', '5840', '341', '2fac', '测试3班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('226', '5840', '341', '2fac', '测试4班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('227', '5841', '345', '66b5', '测试1班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('228', '5841', '345', '66b5', '测试2班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('229', '5841', '345', '66b5', '测试3班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('230', '5841', '345', '66b5', '测试4班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('231', '5842', '353', 'ea8d', '测试1班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('232', '5842', '353', 'ea8d', '测试2班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('233', '5842', '353', 'ea8d', '测试3班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('234', '5842', '353', 'ea8d', '测试4班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('235', '5843', '357', '8e5f', '测试1班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('236', '5843', '357', '8e5f', '测试2班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('237', '5843', '357', '8e5f', '测试3班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('238', '5843', '357', '8e5f', '测试4班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('239', '5844', '365', 'de8b', '测试1班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('240', '5844', '365', 'de8b', '测试2班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('241', '5844', '365', 'de8b', '测试3班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('242', '5844', '365', 'de8b', '测试4班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('243', '5845', '369', 'a3bc', '测试1班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('244', '5845', '369', 'a3bc', '测试2班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('245', '5845', '369', 'a3bc', '测试3班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('246', '5845', '369', 'a3bc', '测试4班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('247', '5846', '369', '9939', '测试1班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('248', '5846', '369', '9939', '测试2班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('249', '5846', '369', '9939', '测试3班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('250', '5846', '369', '9939', '测试4班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('251', '5847', '369', '635b', '测试1班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('252', '5847', '369', '635b', '测试2班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('253', '5847', '369', '635b', '测试3班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('254', '5847', '369', '635b', '测试4班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('255', '5848', '369', 'e9cc', '测试1班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('256', '5848', '369', 'e9cc', '测试2班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('257', '5848', '369', 'e9cc', '测试3班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('258', '5848', '369', 'e9cc', '测试4班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('259', '5849', '369', 'b6f4', '测试1班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('260', '5849', '369', 'b6f4', '测试2班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('261', '5849', '369', 'b6f4', '测试3班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('262', '5849', '369', 'b6f4', '测试4班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('263', '5850', '377', '4082', '测试1班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('264', '5850', '377', '4082', '测试2班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('265', '5850', '377', '4082', '测试3班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('266', '5850', '377', '4082', '测试4班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('267', '5851', '381', 'ccd8', '测试1班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('268', '5851', '381', 'ccd8', '测试2班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('269', '5851', '381', 'ccd8', '测试3班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('270', '5851', '381', 'ccd8', '测试4班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('271', '5852', '389', '0f4c', '测试1班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('272', '5852', '389', '0f4c', '测试2班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('273', '5852', '389', '0f4c', '测试3班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('274', '5852', '389', '0f4c', '测试4班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('275', '5853', '393', '1a67', '测试1班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('276', '5853', '393', '1a67', '测试2班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('277', '5853', '393', '1a67', '测试3班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('278', '5853', '393', '1a67', '测试4班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('279', '5854', '401', '82d8', '测试1班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('280', '5854', '401', '82d8', '测试2班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('281', '5854', '401', '82d8', '测试3班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('282', '5854', '401', '82d8', '测试4班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('283', '5855', '401', '8fe7', '测试1班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('284', '5855', '401', '8fe7', '测试2班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('285', '5855', '401', '8fe7', '测试3班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('286', '5855', '401', '8fe7', '测试4班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('287', '5856', '401', '21b2', '测试1班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('288', '5856', '401', '21b2', '测试2班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('289', '5856', '401', '21b2', '测试3班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('290', '5856', '401', '21b2', '测试4班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('291', '5857', '401', '12ba', '测试1班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('292', '5857', '401', '12ba', '测试2班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('293', '5857', '401', '12ba', '测试3班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('294', '5857', '401', '12ba', '测试4班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('295', '5858', '401', '1af8', '测试1班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('296', '5858', '401', '1af8', '测试2班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('297', '5858', '401', '1af8', '测试3班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('298', '5858', '401', '1af8', '测试4班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('299', '5859', '405', 'a2d3', '测试1班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('300', '5859', '405', 'a2d3', '测试2班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('301', '5859', '405', 'a2d3', '测试3班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('302', '5859', '405', 'a2d3', '测试4班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('303', '5860', '405', '0268', '测试1班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('304', '5860', '405', '0268', '测试2班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('305', '5860', '405', '0268', '测试3班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('306', '5860', '405', '0268', '测试4班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('307', '5861', '405', 'db90', '测试1班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('308', '5861', '405', 'db90', '测试2班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('309', '5861', '405', 'db90', '测试3班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('310', '5861', '405', 'db90', '测试4班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('311', '5862', '405', '773e', '测试1班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('312', '5862', '405', '773e', '测试2班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('313', '5862', '405', '773e', '测试3班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('314', '5862', '405', '773e', '测试4班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('315', '5863', '405', '1f27', '测试1班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('316', '5863', '405', '1f27', '测试2班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('317', '5863', '405', '1f27', '测试3班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('318', '5863', '405', '1f27', '测试4班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('319', '5864', '413', '024b', '测试1班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('320', '5864', '413', '024b', '测试2班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('321', '5864', '413', '024b', '测试3班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('322', '5864', '413', '024b', '测试4班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('323', '5865', '413', 'e406', '测试1班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('324', '5865', '413', 'e406', '测试2班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('325', '5865', '413', 'e406', '测试3班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('326', '5865', '413', 'e406', '测试4班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('327', '5866', '413', 'ac47', '测试1班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('328', '5866', '413', 'ac47', '测试2班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('329', '5866', '413', 'ac47', '测试3班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('330', '5866', '413', 'ac47', '测试4班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('331', '5867', '413', 'f3a5', '测试1班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('332', '5867', '413', 'f3a5', '测试2班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('333', '5867', '413', 'f3a5', '测试3班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('334', '5867', '413', 'f3a5', '测试4班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('335', '5868', '413', 'c7b8', '测试1班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('336', '5868', '413', 'c7b8', '测试2班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('337', '5868', '413', 'c7b8', '测试3班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('338', '5868', '413', 'c7b8', '测试4班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('339', '5869', '417', '0cca', '测试1班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('340', '5869', '417', '0cca', '测试2班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('341', '5869', '417', '0cca', '测试3班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('342', '5869', '417', '0cca', '测试4班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('343', '5870', '417', '944f', '测试1班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('344', '5870', '417', '944f', '测试2班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('345', '5870', '417', '944f', '测试3班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('346', '5870', '417', '944f', '测试4班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('347', '5871', '417', 'b4dc', '测试1班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('348', '5871', '417', 'b4dc', '测试2班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('349', '5871', '417', 'b4dc', '测试3班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('350', '5871', '417', 'b4dc', '测试4班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('351', '5872', '417', '4be8', '测试1班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('352', '5872', '417', '4be8', '测试2班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('353', '5872', '417', '4be8', '测试3班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('354', '5872', '417', '4be8', '测试4班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('355', '5873', '417', '0f27', '测试1班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('356', '5873', '417', '0f27', '测试2班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('357', '5873', '417', '0f27', '测试3班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('358', '5873', '417', '0f27', '测试4班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('359', '5874', '425', 'bf57', '测试1班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('360', '5874', '425', 'bf57', '测试2班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('361', '5874', '425', 'bf57', '测试3班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('362', '5874', '425', 'bf57', '测试4班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('363', '5875', '429', 'c2a9', '测试1班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('364', '5875', '429', 'c2a9', '测试2班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('365', '5875', '429', 'c2a9', '测试3班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('366', '5875', '429', 'c2a9', '测试4班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('367', '5876', '437', '651b', '测试1班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('368', '5876', '437', '651b', '测试2班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('369', '5876', '437', '651b', '测试3班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('370', '5876', '437', '651b', '测试4班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('371', '5877', '441', 'ae9a', '测试1班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('372', '5877', '441', 'ae9a', '测试2班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('373', '5877', '441', 'ae9a', '测试3班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('374', '5877', '441', 'ae9a', '测试4班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('375', '5878', '449', 'a38c', '测试1班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('376', '5878', '449', 'a38c', '测试2班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('377', '5878', '449', 'a38c', '测试3班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('378', '5878', '449', 'a38c', '测试4班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('379', '5879', '453', '9657', '测试1班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('380', '5879', '453', '9657', '测试2班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('381', '5879', '453', '9657', '测试3班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('382', '5879', '453', '9657', '测试4班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('383', '5880', '453', '1d2f', '测试1班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('384', '5880', '453', '1d2f', '测试2班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('385', '5880', '453', '1d2f', '测试3班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('386', '5880', '453', '1d2f', '测试4班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('387', '5881', '453', '5cdf', '测试1班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('388', '5881', '453', '5cdf', '测试2班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('389', '5881', '453', '5cdf', '测试3班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('390', '5881', '453', '5cdf', '测试4班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('391', '5882', '453', 'ac58', '测试1班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('392', '5882', '453', 'ac58', '测试2班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('393', '5882', '453', 'ac58', '测试3班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('394', '5882', '453', 'ac58', '测试4班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('395', '5883', '453', '0b68', '测试1班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('396', '5883', '453', '0b68', '测试2班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('397', '5883', '453', '0b68', '测试3班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('398', '5883', '453', '0b68', '测试4班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('399', '5884', '461', '9c76', '测试1班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('400', '5884', '461', '9c76', '测试2班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('401', '5884', '461', '9c76', '测试3班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('402', '5884', '461', '9c76', '测试4班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('403', '5885', '461', '8688', '测试1班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('404', '5885', '461', '8688', '测试2班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('405', '5885', '461', '8688', '测试3班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('406', '5885', '461', '8688', '测试4班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('407', '5886', '461', 'f917', '测试1班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('408', '5886', '461', 'f917', '测试2班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('409', '5886', '461', 'f917', '测试3班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('410', '5886', '461', 'f917', '测试4班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('411', '5887', '461', '8090', '测试1班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('412', '5887', '461', '8090', '测试2班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('413', '5887', '461', '8090', '测试3班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('414', '5887', '461', '8090', '测试4班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('415', '5888', '461', '7446', '测试1班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('416', '5888', '461', '7446', '测试2班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('417', '5888', '461', '7446', '测试3班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('418', '5888', '461', '7446', '测试4班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('419', '5889', '465', '28ca', '测试1班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('420', '5889', '465', '28ca', '测试2班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('421', '5889', '465', '28ca', '测试3班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('422', '5889', '465', '28ca', '测试4班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('423', '5890', '473', 'd9b9', '测试1班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('424', '5890', '473', 'd9b9', '测试2班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('425', '5890', '473', 'd9b9', '测试3班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('426', '5890', '473', 'd9b9', '测试4班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('427', '5891', '477', '35ac', '测试1班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('428', '5891', '477', '35ac', '测试2班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('429', '5891', '477', '35ac', '测试3班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('430', '5891', '477', '35ac', '测试4班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('431', '5892', '485', '515b', '测试1班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('432', '5892', '485', '515b', '测试2班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('433', '5892', '485', '515b', '测试3班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('434', '5892', '485', '515b', '测试4班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('435', '5893', '485', '89cc', '测试1班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('436', '5893', '485', '89cc', '测试2班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('437', '5893', '485', '89cc', '测试3班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('438', '5893', '485', '89cc', '测试4班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('439', '5894', '485', 'e397', '测试1班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('440', '5894', '485', 'e397', '测试2班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('441', '5894', '485', 'e397', '测试3班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('442', '5894', '485', 'e397', '测试4班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('443', '5895', '485', 'e55e', '测试1班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('444', '5895', '485', 'e55e', '测试2班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('445', '5895', '485', 'e55e', '测试3班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('446', '5895', '485', 'e55e', '测试4班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('447', '5896', '485', '1d1b', '测试1班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('448', '5896', '485', '1d1b', '测试2班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('449', '5896', '485', '1d1b', '测试3班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('450', '5896', '485', '1d1b', '测试4班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('451', '5897', '489', '19f4', '测试1班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('452', '5897', '489', '19f4', '测试2班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('453', '5897', '489', '19f4', '测试3班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('454', '5897', '489', '19f4', '测试4班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('455', '5898', '489', '83a5', '测试1班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('456', '5898', '489', '83a5', '测试2班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('457', '5898', '489', '83a5', '测试3班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('458', '5898', '489', '83a5', '测试4班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('459', '5899', '489', '4154', '测试1班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('460', '5899', '489', '4154', '测试2班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('461', '5899', '489', '4154', '测试3班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('462', '5899', '489', '4154', '测试4班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('463', '5900', '489', 'e5d1', '测试1班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('464', '5900', '489', 'e5d1', '测试2班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('465', '5900', '489', 'e5d1', '测试3班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('466', '5900', '489', 'e5d1', '测试4班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('467', '5901', '489', '2719', '测试1班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('468', '5901', '489', '2719', '测试2班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('469', '5901', '489', '2719', '测试3班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('470', '5901', '489', '2719', '测试4班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('471', '5902', '497', '4086', '测试1班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('472', '5902', '497', '4086', '测试2班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('473', '5902', '497', '4086', '测试3班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('474', '5902', '497', '4086', '测试4班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('475', '5903', '501', '0019', '测试1班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('476', '5903', '501', '0019', '测试2班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('477', '5903', '501', '0019', '测试3班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('478', '5903', '501', '0019', '测试4班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('479', '5904', '501', 'c63f', '测试1班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('480', '5904', '501', 'c63f', '测试2班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('481', '5904', '501', 'c63f', '测试3班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('482', '5904', '501', 'c63f', '测试4班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('483', '5905', '501', 'd4a0', '测试1班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('484', '5905', '501', 'd4a0', '测试2班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('485', '5905', '501', 'd4a0', '测试3班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('486', '5905', '501', 'd4a0', '测试4班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('487', '5906', '501', '3d9f', '测试1班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('488', '5906', '501', '3d9f', '测试2班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('489', '5906', '501', '3d9f', '测试3班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('490', '5906', '501', '3d9f', '测试4班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('491', '5907', '501', 'e7f7', '测试1班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('492', '5907', '501', 'e7f7', '测试2班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('493', '5907', '501', 'e7f7', '测试3班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('494', '5907', '501', 'e7f7', '测试4班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('495', '5908', '509', '3ed7', '测试1班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('496', '5908', '509', '3ed7', '测试2班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('497', '5908', '509', '3ed7', '测试3班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('498', '5908', '509', '3ed7', '测试4班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('499', '5909', '513', 'b6b3', '测试1班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('500', '5909', '513', 'b6b3', '测试2班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('501', '5909', '513', 'b6b3', '测试3班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('502', '5909', '513', 'b6b3', '测试4班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('503', '5910', '521', '84f3', '测试1班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('504', '5910', '521', '84f3', '测试2班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('505', '5910', '521', '84f3', '测试3班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('506', '5910', '521', '84f3', '测试4班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('507', '5911', '521', 'd4b3', '测试1班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('508', '5911', '521', 'd4b3', '测试2班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('509', '5911', '521', 'd4b3', '测试3班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('510', '5911', '521', 'd4b3', '测试4班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('511', '5912', '521', '467a', '测试1班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('512', '5912', '521', '467a', '测试2班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('513', '5912', '521', '467a', '测试3班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('514', '5912', '521', '467a', '测试4班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('515', '5913', '521', '3ad1', '测试1班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('516', '5913', '521', '3ad1', '测试2班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('517', '5913', '521', '3ad1', '测试3班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('518', '5913', '521', '3ad1', '测试4班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('519', '5914', '521', '0b18', '测试1班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('520', '5914', '521', '0b18', '测试2班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('521', '5914', '521', '0b18', '测试3班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('522', '5914', '521', '0b18', '测试4班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('523', '5915', '525', '06c5', '测试1班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('524', '5915', '525', '06c5', '测试2班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('525', '5915', '525', '06c5', '测试3班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('526', '5915', '525', '06c5', '测试4班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('527', '5916', '525', '38af', '测试1班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('528', '5916', '525', '38af', '测试2班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('529', '5916', '525', '38af', '测试3班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('530', '5916', '525', '38af', '测试4班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('531', '5917', '525', 'f24c', '测试1班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('532', '5917', '525', 'f24c', '测试2班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('533', '5917', '525', 'f24c', '测试3班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('534', '5917', '525', 'f24c', '测试4班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('535', '5918', '525', '153f', '测试1班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('536', '5918', '525', '153f', '测试2班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('537', '5918', '525', '153f', '测试3班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('538', '5918', '525', '153f', '测试4班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('539', '5919', '525', 'bc86', '测试1班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('540', '5919', '525', 'bc86', '测试2班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('541', '5919', '525', 'bc86', '测试3班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('542', '5919', '525', 'bc86', '测试4班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('543', '5920', '533', '445a', '测试1班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('544', '5920', '533', '445a', '测试2班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('545', '5920', '533', '445a', '测试3班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('546', '5920', '533', '445a', '测试4班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('547', '5921', '537', '3528', '测试1班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('548', '5921', '537', '3528', '测试2班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('549', '5921', '537', '3528', '测试3班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('550', '5921', '537', '3528', '测试4班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('551', '5922', '537', 'e5ee', '测试1班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('552', '5922', '537', 'e5ee', '测试2班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('553', '5922', '537', 'e5ee', '测试3班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('554', '5922', '537', 'e5ee', '测试4班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('555', '5923', '537', '18fb', '测试1班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('556', '5923', '537', '18fb', '测试2班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('557', '5923', '537', '18fb', '测试3班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('558', '5923', '537', '18fb', '测试4班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('559', '5924', '537', '5a44', '测试1班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('560', '5924', '537', '5a44', '测试2班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('561', '5924', '537', '5a44', '测试3班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('562', '5924', '537', '5a44', '测试4班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('563', '5925', '537', '795b', '测试1班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('564', '5925', '537', '795b', '测试2班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('565', '5925', '537', '795b', '测试3班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('566', '5925', '537', '795b', '测试4班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('567', '5926', '545', 'e378', '测试1班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('568', '5926', '545', 'e378', '测试2班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('569', '5926', '545', 'e378', '测试3班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('570', '5926', '545', 'e378', '测试4班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('571', '5927', '549', '9cea', '测试1班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('572', '5927', '549', '9cea', '测试2班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('573', '5927', '549', '9cea', '测试3班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('574', '5927', '549', '9cea', '测试4班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('575', '5928', '549', '00da', '测试1班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('576', '5928', '549', '00da', '测试2班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('577', '5928', '549', '00da', '测试3班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('578', '5928', '549', '00da', '测试4班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('579', '5929', '549', '22b7', '测试1班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('580', '5929', '549', '22b7', '测试2班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('581', '5929', '549', '22b7', '测试3班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('582', '5929', '549', '22b7', '测试4班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('583', '5930', '549', '6066', '测试1班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('584', '5930', '549', '6066', '测试2班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('585', '5930', '549', '6066', '测试3班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('586', '5930', '549', '6066', '测试4班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('587', '5931', '549', 'd4f9', '测试1班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('588', '5931', '549', 'd4f9', '测试2班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('589', '5931', '549', 'd4f9', '测试3班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('590', '5931', '549', 'd4f9', '测试4班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('591', '5932', '557', 'b681', '测试1班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('592', '5932', '557', 'b681', '测试2班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('593', '5932', '557', 'b681', '测试3班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('594', '5932', '557', 'b681', '测试4班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('595', '5933', '557', '5a67', '测试1班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('596', '5933', '557', '5a67', '测试2班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('597', '5933', '557', '5a67', '测试3班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('598', '5933', '557', '5a67', '测试4班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('599', '5934', '557', 'f38e', '测试1班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('600', '5934', '557', 'f38e', '测试2班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('601', '5934', '557', 'f38e', '测试3班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('602', '5934', '557', 'f38e', '测试4班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('603', '5935', '557', '2609', '测试1班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('604', '5935', '557', '2609', '测试2班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('605', '5935', '557', '2609', '测试3班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('606', '5935', '557', '2609', '测试4班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('607', '5936', '557', '2681', '测试1班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('608', '5936', '557', '2681', '测试2班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('609', '5936', '557', '2681', '测试3班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('610', '5936', '557', '2681', '测试4班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('611', '5937', '561', '9443', '测试1班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('612', '5937', '561', '9443', '测试2班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('613', '5937', '561', '9443', '测试3班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('614', '5937', '561', '9443', '测试4班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('615', '5938', '561', '43e2', '测试1班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('616', '5938', '561', '43e2', '测试2班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('617', '5938', '561', '43e2', '测试3班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('618', '5938', '561', '43e2', '测试4班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('619', '5939', '561', 'bac9', '测试1班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('620', '5939', '561', 'bac9', '测试2班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('621', '5939', '561', 'bac9', '测试3班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('622', '5939', '561', 'bac9', '测试4班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('623', '5940', '561', '7a70', '测试1班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('624', '5940', '561', '7a70', '测试2班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('625', '5940', '561', '7a70', '测试3班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('626', '5940', '561', '7a70', '测试4班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('627', '5941', '561', '5645', '测试1班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('628', '5941', '561', '5645', '测试2班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('629', '5941', '561', '5645', '测试3班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('630', '5941', '561', '5645', '测试4班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('631', '5942', '569', '44a4', '测试1班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('632', '5942', '569', '44a4', '测试2班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('633', '5942', '569', '44a4', '测试3班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('634', '5942', '569', '44a4', '测试4班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('635', '5943', '569', '296c', '测试1班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('636', '5943', '569', '296c', '测试2班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('637', '5943', '569', '296c', '测试3班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('638', '5943', '569', '296c', '测试4班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('639', '5944', '569', '09d7', '测试1班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('640', '5944', '569', '09d7', '测试2班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('641', '5944', '569', '09d7', '测试3班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('642', '5944', '569', '09d7', '测试4班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('643', '5945', '569', 'dfa2', '测试1班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('644', '5945', '569', 'dfa2', '测试2班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('645', '5945', '569', 'dfa2', '测试3班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('646', '5945', '569', 'dfa2', '测试4班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('647', '5946', '569', 'c976', '测试1班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('648', '5946', '569', 'c976', '测试2班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('649', '5946', '569', 'c976', '测试3班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('650', '5946', '569', 'c976', '测试4班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('651', '5947', '573', '8f30', '测试1班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('652', '5947', '573', '8f30', '测试2班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('653', '5947', '573', '8f30', '测试3班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('654', '5947', '573', '8f30', '测试4班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('655', '5948', '581', '784b', '测试1班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('656', '5948', '581', '784b', '测试2班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('657', '5948', '581', '784b', '测试3班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('658', '5948', '581', '784b', '测试4班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('659', '5949', '585', '8ae1', '测试1班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('660', '5949', '585', '8ae1', '测试2班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('661', '5949', '585', '8ae1', '测试3班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('662', '5949', '585', '8ae1', '测试4班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('663', '5950', '585', '6cea', '测试1班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('664', '5950', '585', '6cea', '测试2班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('665', '5950', '585', '6cea', '测试3班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('666', '5950', '585', '6cea', '测试4班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('667', '5951', '585', '4148', '测试1班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('668', '5951', '585', '4148', '测试2班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('669', '5951', '585', '4148', '测试3班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('670', '5951', '585', '4148', '测试4班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('671', '5952', '585', 'ce6a', '测试1班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('672', '5952', '585', 'ce6a', '测试2班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('673', '5952', '585', 'ce6a', '测试3班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('674', '5952', '585', 'ce6a', '测试4班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('675', '5953', '585', '96f5', '测试1班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('676', '5953', '585', '96f5', '测试2班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('677', '5953', '585', '96f5', '测试3班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('678', '5953', '585', '96f5', '测试4班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('679', '5954', '593', '1ed0', '测试1班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('680', '5954', '593', '1ed0', '测试2班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('681', '5954', '593', '1ed0', '测试3班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('682', '5954', '593', '1ed0', '测试4班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('683', '5955', '597', 'db94', '测试1班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('684', '5955', '597', 'db94', '测试2班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('685', '5955', '597', 'db94', '测试3班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('686', '5955', '597', 'db94', '测试4班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('687', '5956', '605', 'c95a', '测试1班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('688', '5956', '605', 'c95a', '测试2班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('689', '5956', '605', 'c95a', '测试3班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('690', '5956', '605', 'c95a', '测试4班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('691', '5957', '609', '8cf1', '测试1班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('692', '5957', '609', '8cf1', '测试2班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('693', '5957', '609', '8cf1', '测试3班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('694', '5957', '609', '8cf1', '测试4班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('695', '5958', '617', '4bce', '测试1班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('696', '5958', '617', '4bce', '测试2班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('697', '5958', '617', '4bce', '测试3班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('698', '5958', '617', '4bce', '测试4班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('699', '5959', '621', 'a449', '测试1班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('700', '5959', '621', 'a449', '测试2班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('701', '5959', '621', 'a449', '测试3班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('702', '5959', '621', 'a449', '测试4班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1171', '6077', '849', '23de', '测试1班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1172', '6077', '849', '23de', '测试2班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1173', '6077', '849', '23de', '测试3班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1174', '6077', '849', '23de', '测试4班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1175', '6078', '857', '2e5d', '测试1班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1176', '6078', '857', '2e5d', '测试2班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1177', '6078', '857', '2e5d', '测试3班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1178', '6078', '857', '2e5d', '测试4班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1179', '6079', '861', '7b53', '测试1班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1180', '6079', '861', '7b53', '测试2班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1181', '6079', '861', '7b53', '测试3班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1182', '6079', '861', '7b53', '测试4班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1183', '6080', '869', 'fd2c', '测试1班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1184', '6080', '869', 'fd2c', '测试2班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1185', '6080', '869', 'fd2c', '测试3班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1186', '6080', '869', 'fd2c', '测试4班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1187', '6081', '869', '131e', '测试1班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1188', '6081', '869', '131e', '测试2班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1189', '6081', '869', '131e', '测试3班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1190', '6081', '869', '131e', '测试4班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1191', '6082', '869', '27bb', '测试1班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1192', '6082', '869', '27bb', '测试2班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1193', '6082', '869', '27bb', '测试3班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1194', '6082', '869', '27bb', '测试4班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1195', '6083', '869', '5d1b', '测试1班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1196', '6083', '869', '5d1b', '测试2班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1197', '6083', '869', '5d1b', '测试3班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1198', '6083', '869', '5d1b', '测试4班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1199', '6084', '869', '26e4', '测试1班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1200', '6084', '869', '26e4', '测试2班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1201', '6084', '869', '26e4', '测试3班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1202', '6084', '869', '26e4', '测试4班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1203', '6085', '873', 'fccc', '测试1班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1204', '6085', '873', 'fccc', '测试2班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1205', '6085', '873', 'fccc', '测试3班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1206', '6085', '873', 'fccc', '测试4班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1207', '6086', '881', 'fb92', '测试1班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1208', '6086', '881', 'fb92', '测试2班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1209', '6086', '881', 'fb92', '测试3班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1210', '6086', '881', 'fb92', '测试4班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1211', '6087', '881', '9d4d', '测试1班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1212', '6087', '881', '9d4d', '测试2班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1213', '6087', '881', '9d4d', '测试3班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1214', '6087', '881', '9d4d', '测试4班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1215', '6088', '881', '50a5', '测试1班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1216', '6088', '881', '50a5', '测试2班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1217', '6088', '881', '50a5', '测试3班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1218', '6088', '881', '50a5', '测试4班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1219', '6089', '881', '1eb1', '测试1班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1220', '6089', '881', '1eb1', '测试2班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1221', '6089', '881', '1eb1', '测试3班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1222', '6089', '881', '1eb1', '测试4班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1223', '6090', '881', 'fa22', '测试1班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1224', '6090', '881', 'fa22', '测试2班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1225', '6090', '881', 'fa22', '测试3班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1226', '6090', '881', 'fa22', '测试4班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1227', '6091', '885', '904f', '测试1班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1228', '6091', '885', '904f', '测试2班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1229', '6091', '885', '904f', '测试3班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1230', '6091', '885', '904f', '测试4班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1231', '6092', '893', 'f491', '测试1班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1232', '6092', '893', 'f491', '测试2班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1233', '6092', '893', 'f491', '测试3班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1234', '6092', '893', 'f491', '测试4班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1235', '6093', '897', '51ad', '测试1班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1236', '6093', '897', '51ad', '测试2班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1237', '6093', '897', '51ad', '测试3班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1238', '6093', '897', '51ad', '测试4班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1239', '6094', '905', '8490', '测试1班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1240', '6094', '905', '8490', '测试2班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1241', '6094', '905', '8490', '测试3班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1242', '6094', '905', '8490', '测试4班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1243', '6095', '905', '0da9', '测试1班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1244', '6095', '905', '0da9', '测试2班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1245', '6095', '905', '0da9', '测试3班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1246', '6095', '905', '0da9', '测试4班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1247', '6096', '905', 'b256', '测试1班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1248', '6096', '905', 'b256', '测试2班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1249', '6096', '905', 'b256', '测试3班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1250', '6096', '905', 'b256', '测试4班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1251', '6097', '905', 'd44b', '测试1班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1252', '6097', '905', 'd44b', '测试2班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1253', '6097', '905', 'd44b', '测试3班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1254', '6097', '905', 'd44b', '测试4班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1255', '6098', '905', 'bc9a', '测试1班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1256', '6098', '905', 'bc9a', '测试2班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1257', '6098', '905', 'bc9a', '测试3班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1258', '6098', '905', 'bc9a', '测试4班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1259', '6099', '909', '35d5', '测试1班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1260', '6099', '909', '35d5', '测试2班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1261', '6099', '909', '35d5', '测试3班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1262', '6099', '909', '35d5', '测试4班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1263', '6100', '909', 'fc53', '测试1班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1264', '6100', '909', 'fc53', '测试2班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1265', '6100', '909', 'fc53', '测试3班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1266', '6100', '909', 'fc53', '测试4班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1267', '6101', '909', '8fa1', '测试1班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1268', '6101', '909', '8fa1', '测试2班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1269', '6101', '909', '8fa1', '测试3班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1270', '6101', '909', '8fa1', '测试4班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1271', '6102', '909', 'eab2', '测试1班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1272', '6102', '909', 'eab2', '测试2班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1273', '6102', '909', 'eab2', '测试3班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1274', '6102', '909', 'eab2', '测试4班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1275', '6103', '909', '510a', '测试1班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1276', '6103', '909', '510a', '测试2班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1277', '6103', '909', '510a', '测试3班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1278', '6103', '909', '510a', '测试4班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1279', '6104', '917', 'acbd', '测试1班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1280', '6104', '917', 'acbd', '测试2班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1281', '6104', '917', 'acbd', '测试3班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1282', '6104', '917', 'acbd', '测试4班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1283', '6105', '917', 'e25b', '测试1班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1284', '6105', '917', 'e25b', '测试2班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1285', '6105', '917', 'e25b', '测试3班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1286', '6105', '917', 'e25b', '测试4班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1287', '6106', '917', 'f89f', '测试1班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1288', '6106', '917', 'f89f', '测试2班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1289', '6106', '917', 'f89f', '测试3班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1290', '6106', '917', 'f89f', '测试4班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1291', '6107', '917', '9b01', '测试1班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1292', '6107', '917', '9b01', '测试2班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1293', '6107', '917', '9b01', '测试3班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1294', '6107', '917', '9b01', '测试4班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1295', '6108', '917', '0f98', '测试1班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1296', '6108', '917', '0f98', '测试2班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1297', '6108', '917', '0f98', '测试3班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1298', '6108', '917', '0f98', '测试4班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1299', '6109', '921', 'a12d', '测试1班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1300', '6109', '921', 'a12d', '测试2班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1301', '6109', '921', 'a12d', '测试3班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1302', '6109', '921', 'a12d', '测试4班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1303', '6110', '929', '21bc', '测试1班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1304', '6110', '929', '21bc', '测试2班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1305', '6110', '929', '21bc', '测试3班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1306', '6110', '929', '21bc', '测试4班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1307', '6111', '929', 'eaed', '测试1班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1308', '6111', '929', 'eaed', '测试2班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1309', '6111', '929', 'eaed', '测试3班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1310', '6111', '929', 'eaed', '测试4班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1311', '6112', '929', '0bba', '测试1班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1312', '6112', '929', '0bba', '测试2班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1313', '6112', '929', '0bba', '测试3班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1314', '6112', '929', '0bba', '测试4班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1315', '6113', '929', '8709', '测试1班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1316', '6113', '929', '8709', '测试2班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1317', '6113', '929', '8709', '测试3班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1318', '6113', '929', '8709', '测试4班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1319', '6114', '929', 'b7ea', '测试1班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1320', '6114', '929', 'b7ea', '测试2班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1321', '6114', '929', 'b7ea', '测试3班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1322', '6114', '929', 'b7ea', '测试4班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1323', '6115', '933', 'd26c', '测试1班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1324', '6115', '933', 'd26c', '测试2班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1325', '6115', '933', 'd26c', '测试3班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1326', '6115', '933', 'd26c', '测试4班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1327', '6116', '933', '3d22', '测试1班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1328', '6116', '933', '3d22', '测试2班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1329', '6116', '933', '3d22', '测试3班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1330', '6116', '933', '3d22', '测试4班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1331', '6117', '933', 'cd86', '测试1班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1332', '6117', '933', 'cd86', '测试2班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1333', '6117', '933', 'cd86', '测试3班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1334', '6117', '933', 'cd86', '测试4班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1335', '6118', '933', '7f6d', '测试1班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1336', '6118', '933', '7f6d', '测试2班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1337', '6118', '933', '7f6d', '测试3班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1338', '6118', '933', '7f6d', '测试4班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1339', '6119', '933', 'fa13', '测试1班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1340', '6119', '933', 'fa13', '测试2班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1341', '6119', '933', 'fa13', '测试3班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1342', '6119', '933', 'fa13', '测试4班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1343', '6120', '941', 'd457', '测试1班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1344', '6120', '941', 'd457', '测试2班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1345', '6120', '941', 'd457', '测试3班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1346', '6120', '941', 'd457', '测试4班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1347', '6121', '945', '6c75', '测试1班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1348', '6121', '945', '6c75', '测试2班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1349', '6121', '945', '6c75', '测试3班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1350', '6121', '945', '6c75', '测试4班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1351', '6122', '945', '9dce', '测试1班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1352', '6122', '945', '9dce', '测试2班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1353', '6122', '945', '9dce', '测试3班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1354', '6122', '945', '9dce', '测试4班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1355', '6123', '945', 'efdf', '测试1班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1356', '6123', '945', 'efdf', '测试2班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1357', '6123', '945', 'efdf', '测试3班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1358', '6123', '945', 'efdf', '测试4班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1359', '6124', '945', '4cca', '测试1班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1360', '6124', '945', '4cca', '测试2班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1361', '6124', '945', '4cca', '测试3班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1362', '6124', '945', '4cca', '测试4班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1363', '6125', '945', 'be41', '测试1班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1364', '6125', '945', 'be41', '测试2班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1365', '6125', '945', 'be41', '测试3班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1366', '6125', '945', 'be41', '测试4班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1367', '6126', '953', 'b685', '测试1班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1368', '6126', '953', 'b685', '测试2班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1369', '6126', '953', 'b685', '测试3班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1370', '6126', '953', 'b685', '测试4班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1371', '6127', '957', '3552', '测试1班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1372', '6127', '957', '3552', '测试2班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1373', '6127', '957', '3552', '测试3班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1374', '6127', '957', '3552', '测试4班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1375', '6128', '965', '32b1', '测试1班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1376', '6128', '965', '32b1', '测试2班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1377', '6128', '965', '32b1', '测试3班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1378', '6128', '965', '32b1', '测试4班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1379', '6129', '969', '5343', '测试1班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1380', '6129', '969', '5343', '测试2班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1381', '6129', '969', '5343', '测试3班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1382', '6129', '969', '5343', '测试4班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1383', '6130', '969', 'eb27', '测试1班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1384', '6130', '969', 'eb27', '测试2班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1385', '6130', '969', 'eb27', '测试3班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1386', '6130', '969', 'eb27', '测试4班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1387', '6131', '969', '647c', '测试1班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1388', '6131', '969', '647c', '测试2班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1389', '6131', '969', '647c', '测试3班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1390', '6131', '969', '647c', '测试4班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1391', '6132', '969', 'c1a8', '测试1班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1392', '6132', '969', 'c1a8', '测试2班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1393', '6132', '969', 'c1a8', '测试3班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1394', '6132', '969', 'c1a8', '测试4班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1395', '6133', '969', '4d68', '测试1班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1396', '6133', '969', '4d68', '测试2班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1397', '6133', '969', '4d68', '测试3班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1398', '6133', '969', '4d68', '测试4班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1399', '6134', '977', '8069', '测试1班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1400', '6134', '977', '8069', '测试2班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1401', '6134', '977', '8069', '测试3班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1402', '6134', '977', '8069', '测试4班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1403', '6135', '977', 'e7cd', '测试1班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1404', '6135', '977', 'e7cd', '测试2班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1405', '6135', '977', 'e7cd', '测试3班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1406', '6135', '977', 'e7cd', '测试4班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1407', '6136', '977', 'a5e4', '测试1班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1408', '6136', '977', 'a5e4', '测试2班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1409', '6136', '977', 'a5e4', '测试3班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1410', '6136', '977', 'a5e4', '测试4班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1411', '6137', '977', '25d9', '测试1班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1412', '6137', '977', '25d9', '测试2班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1413', '6137', '977', '25d9', '测试3班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1414', '6137', '977', '25d9', '测试4班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1415', '6138', '977', '76f1', '测试1班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1416', '6138', '977', '76f1', '测试2班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1417', '6138', '977', '76f1', '测试3班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1418', '6138', '977', '76f1', '测试4班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1419', '6139', '981', '56d9', '测试1班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1420', '6139', '981', '56d9', '测试2班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1421', '6139', '981', '56d9', '测试3班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1422', '6139', '981', '56d9', '测试4班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1423', '6140', '989', '8ef2', '测试1班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1424', '6140', '989', '8ef2', '测试2班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1425', '6140', '989', '8ef2', '测试3班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1426', '6140', '989', '8ef2', '测试4班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1427', '6141', '993', '3a5f', '测试1班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1428', '6141', '993', '3a5f', '测试2班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1429', '6141', '993', '3a5f', '测试3班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1430', '6141', '993', '3a5f', '测试4班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1431', '6142', '993', 'c510', '测试1班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1432', '6142', '993', 'c510', '测试2班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1433', '6142', '993', 'c510', '测试3班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1434', '6142', '993', 'c510', '测试4班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1435', '6143', '993', '5056', '测试1班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1436', '6143', '993', '5056', '测试2班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1437', '6143', '993', '5056', '测试3班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1438', '6143', '993', '5056', '测试4班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1439', '6144', '993', '5b38', '测试1班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1440', '6144', '993', '5b38', '测试2班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1441', '6144', '993', '5b38', '测试3班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1442', '6144', '993', '5b38', '测试4班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1443', '6145', '993', '26d2', '测试1班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1444', '6145', '993', '26d2', '测试2班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1445', '6145', '993', '26d2', '测试3班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1446', '6145', '993', '26d2', '测试4班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1447', '6146', '1001', '49aa', '测试1班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1448', '6146', '1001', '49aa', '测试2班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1449', '6146', '1001', '49aa', '测试3班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1450', '6146', '1001', '49aa', '测试4班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1451', '6147', '1001', '1137', '测试1班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1452', '6147', '1001', '1137', '测试2班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1453', '6147', '1001', '1137', '测试3班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1454', '6147', '1001', '1137', '测试4班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1455', '6148', '1001', '8644', '测试1班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1456', '6148', '1001', '8644', '测试2班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1457', '6148', '1001', '8644', '测试3班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1458', '6148', '1001', '8644', '测试4班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1459', '6149', '1001', '5300', '测试1班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1460', '6149', '1001', '5300', '测试2班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1461', '6149', '1001', '5300', '测试3班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1462', '6149', '1001', '5300', '测试4班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1463', '6150', '1001', '404b', '测试1班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1464', '6150', '1001', '404b', '测试2班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1465', '6150', '1001', '404b', '测试3班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1466', '6150', '1001', '404b', '测试4班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1467', '6151', '1005', 'dd54', '测试1班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1468', '6151', '1005', 'dd54', '测试2班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1469', '6151', '1005', 'dd54', '测试3班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1470', '6151', '1005', 'dd54', '测试4班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1471', '6152', '1013', '961a', '测试1班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1472', '6152', '1013', '961a', '测试2班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1473', '6152', '1013', '961a', '测试3班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1474', '6152', '1013', '961a', '测试4班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1475', '6153', '1013', '3830', '测试1班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1476', '6153', '1013', '3830', '测试2班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1477', '6153', '1013', '3830', '测试3班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1478', '6153', '1013', '3830', '测试4班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1479', '6154', '1013', 'bcfb', '测试1班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1480', '6154', '1013', 'bcfb', '测试2班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1481', '6154', '1013', 'bcfb', '测试3班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1482', '6154', '1013', 'bcfb', '测试4班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1483', '6155', '1013', '49cd', '测试1班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1484', '6155', '1013', '49cd', '测试2班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1485', '6155', '1013', '49cd', '测试3班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1486', '6155', '1013', '49cd', '测试4班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1487', '6156', '1013', 'dff3', '测试1班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1488', '6156', '1013', 'dff3', '测试2班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1489', '6156', '1013', 'dff3', '测试3班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1490', '6156', '1013', 'dff3', '测试4班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1491', '6157', '1017', '237a', '测试1班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1492', '6157', '1017', '237a', '测试2班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1493', '6157', '1017', '237a', '测试3班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1494', '6157', '1017', '237a', '测试4班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1495', '6158', '1025', 'b8e8', '测试1班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1496', '6158', '1025', 'b8e8', '测试2班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1497', '6158', '1025', 'b8e8', '测试3班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1498', '6158', '1025', 'b8e8', '测试4班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1499', '6159', '1029', 'de37', '测试1班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1500', '6159', '1029', 'de37', '测试2班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1501', '6159', '1029', 'de37', '测试3班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1502', '6159', '1029', 'de37', '测试4班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1503', '6160', '1037', '575f', '测试1班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1504', '6160', '1037', '575f', '测试2班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1505', '6160', '1037', '575f', '测试3班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1506', '6160', '1037', '575f', '测试4班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1507', '6161', '1037', '24cf', '测试1班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1508', '6161', '1037', '24cf', '测试2班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1509', '6161', '1037', '24cf', '测试3班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1510', '6161', '1037', '24cf', '测试4班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1511', '6162', '1037', '0f26', '测试1班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1512', '6162', '1037', '0f26', '测试2班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1513', '6162', '1037', '0f26', '测试3班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1514', '6162', '1037', '0f26', '测试4班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1515', '6163', '1037', '89c0', '测试1班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1516', '6163', '1037', '89c0', '测试2班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1517', '6163', '1037', '89c0', '测试3班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1518', '6163', '1037', '89c0', '测试4班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1519', '6164', '1037', 'cb87', '测试1班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1520', '6164', '1037', 'cb87', '测试2班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1521', '6164', '1037', 'cb87', '测试3班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1522', '6164', '1037', 'cb87', '测试4班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1523', '6165', '1041', '0d00', '测试1班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1524', '6165', '1041', '0d00', '测试2班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1525', '6165', '1041', '0d00', '测试3班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1526', '6165', '1041', '0d00', '测试4班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1527', '6166', '1041', 'fcb3', '测试1班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1528', '6166', '1041', 'fcb3', '测试2班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1529', '6166', '1041', 'fcb3', '测试3班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1530', '6166', '1041', 'fcb3', '测试4班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1531', '6167', '1041', '5b99', '测试1班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1532', '6167', '1041', '5b99', '测试2班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1533', '6167', '1041', '5b99', '测试3班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1534', '6167', '1041', '5b99', '测试4班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1535', '6168', '1041', '0940', '测试1班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1536', '6168', '1041', '0940', '测试2班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1537', '6168', '1041', '0940', '测试3班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1538', '6168', '1041', '0940', '测试4班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1539', '6169', '1041', '4b2c', '测试1班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1540', '6169', '1041', '4b2c', '测试2班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1541', '6169', '1041', '4b2c', '测试3班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1542', '6169', '1041', '4b2c', '测试4班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1543', '6170', '1049', '33f0', '测试1班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1544', '6170', '1049', '33f0', '测试2班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1545', '6170', '1049', '33f0', '测试3班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1546', '6170', '1049', '33f0', '测试4班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1547', '6171', '1053', 'c7e2', '测试1班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1548', '6171', '1053', 'c7e2', '测试2班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1549', '6171', '1053', 'c7e2', '测试3班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1550', '6171', '1053', 'c7e2', '测试4班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1551', '6172', '1061', 'a71e', '测试1班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1552', '6172', '1061', 'a71e', '测试2班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1553', '6172', '1061', 'a71e', '测试3班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1554', '6172', '1061', 'a71e', '测试4班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1555', '6173', '1061', '4c23', '测试1班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1556', '6173', '1061', '4c23', '测试2班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1557', '6173', '1061', '4c23', '测试3班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1558', '6173', '1061', '4c23', '测试4班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1559', '6174', '1061', '06e9', '测试1班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1560', '6174', '1061', '06e9', '测试2班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1561', '6174', '1061', '06e9', '测试3班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1562', '6174', '1061', '06e9', '测试4班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1563', '6175', '1061', 'fa95', '测试1班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1564', '6175', '1061', 'fa95', '测试2班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1565', '6175', '1061', 'fa95', '测试3班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1566', '6175', '1061', 'fa95', '测试4班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1567', '6176', '1061', 'a309', '测试1班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1568', '6176', '1061', 'a309', '测试2班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1569', '6176', '1061', 'a309', '测试3班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1570', '6176', '1061', 'a309', '测试4班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1571', '6177', '1065', 'b27e', '测试1班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1572', '6177', '1065', 'b27e', '测试2班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1573', '6177', '1065', 'b27e', '测试3班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1574', '6177', '1065', 'b27e', '测试4班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1575', '6178', '1073', 'be9d', '测试1班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1576', '6178', '1073', 'be9d', '测试2班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1577', '6178', '1073', 'be9d', '测试3班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1578', '6178', '1073', 'be9d', '测试4班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1579', '6179', '1077', '3522', '测试1班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1580', '6179', '1077', '3522', '测试2班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1581', '6179', '1077', '3522', '测试3班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1582', '6179', '1077', '3522', '测试4班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1583', '6180', '1077', 'c31f', '测试1班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1584', '6180', '1077', 'c31f', '测试2班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1585', '6180', '1077', 'c31f', '测试3班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1586', '6180', '1077', 'c31f', '测试4班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1587', '6181', '1077', 'c3ef', '测试1班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1588', '6181', '1077', 'c3ef', '测试2班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1589', '6181', '1077', 'c3ef', '测试3班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1590', '6181', '1077', 'c3ef', '测试4班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1591', '6182', '1077', 'd4a8', '测试1班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1592', '6182', '1077', 'd4a8', '测试2班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1593', '6182', '1077', 'd4a8', '测试3班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1594', '6182', '1077', 'd4a8', '测试4班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1595', '6183', '1077', '307c', '测试1班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1596', '6183', '1077', '307c', '测试2班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1597', '6183', '1077', '307c', '测试3班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1598', '6183', '1077', '307c', '测试4班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1599', '6184', '1085', 'fd82', '测试1班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1600', '6184', '1085', 'fd82', '测试2班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1601', '6184', '1085', 'fd82', '测试3班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1602', '6184', '1085', 'fd82', '测试4班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1603', '6185', '1085', '2784', '测试1班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1604', '6185', '1085', '2784', '测试2班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1605', '6185', '1085', '2784', '测试3班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1606', '6185', '1085', '2784', '测试4班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1607', '6186', '1085', '8caf', '测试1班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1608', '6186', '1085', '8caf', '测试2班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1609', '6186', '1085', '8caf', '测试3班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1610', '6186', '1085', '8caf', '测试4班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1611', '6187', '1085', 'e97b', '测试1班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1612', '6187', '1085', 'e97b', '测试2班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1613', '6187', '1085', 'e97b', '测试3班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1614', '6187', '1085', 'e97b', '测试4班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1615', '6188', '1085', 'bd70', '测试1班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1616', '6188', '1085', 'bd70', '测试2班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1617', '6188', '1085', 'bd70', '测试3班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1618', '6188', '1085', 'bd70', '测试4班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1619', '6189', '1089', 'dce9', '测试1班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1620', '6189', '1089', 'dce9', '测试2班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1621', '6189', '1089', 'dce9', '测试3班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1622', '6189', '1089', 'dce9', '测试4班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1623', '6190', '1097', 'df1b', '测试1班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1624', '6190', '1097', 'df1b', '测试2班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1625', '6190', '1097', 'df1b', '测试3班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1626', '6190', '1097', 'df1b', '测试4班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1627', '6191', '1101', '3306', '测试1班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1628', '6191', '1101', '3306', '测试2班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1629', '6191', '1101', '3306', '测试3班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1630', '6191', '1101', '3306', '测试4班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1631', '6192', '1101', '9818', '测试1班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1632', '6192', '1101', '9818', '测试2班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1633', '6192', '1101', '9818', '测试3班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1634', '6192', '1101', '9818', '测试4班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1635', '6193', '1101', 'cac3', '测试1班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1636', '6193', '1101', 'cac3', '测试2班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1637', '6193', '1101', 'cac3', '测试3班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1638', '6193', '1101', 'cac3', '测试4班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1639', '6194', '1101', '0748', '测试1班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1640', '6194', '1101', '0748', '测试2班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1641', '6194', '1101', '0748', '测试3班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1642', '6194', '1101', '0748', '测试4班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1643', '6195', '1101', '78a7', '测试1班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1644', '6195', '1101', '78a7', '测试2班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1645', '6195', '1101', '78a7', '测试3班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1646', '6195', '1101', '78a7', '测试4班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1647', '6196', '1109', '141b', '测试1班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1648', '6196', '1109', '141b', '测试2班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1649', '6196', '1109', '141b', '测试3班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1650', '6196', '1109', '141b', '测试4班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1651', '6197', '1113', 'f37c', '测试1班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1652', '6197', '1113', 'f37c', '测试2班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1653', '6197', '1113', 'f37c', '测试3班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1654', '6197', '1113', 'f37c', '测试4班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1655', '6198', '1113', '78b7', '测试1班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1656', '6198', '1113', '78b7', '测试2班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1657', '6198', '1113', '78b7', '测试3班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1658', '6198', '1113', '78b7', '测试4班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1659', '6199', '1113', 'd0b4', '测试1班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1660', '6199', '1113', 'd0b4', '测试2班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1661', '6199', '1113', 'd0b4', '测试3班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1662', '6199', '1113', 'd0b4', '测试4班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1663', '6200', '1113', '8fa8', '测试1班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1664', '6200', '1113', '8fa8', '测试2班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1665', '6200', '1113', '8fa8', '测试3班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1666', '6200', '1113', '8fa8', '测试4班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1667', '6201', '1113', '0eb2', '测试1班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1668', '6201', '1113', '0eb2', '测试2班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1669', '6201', '1113', '0eb2', '测试3班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1670', '6201', '1113', '0eb2', '测试4班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1671', '6202', '1121', 'e660', '测试1班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1672', '6202', '1121', 'e660', '测试2班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1673', '6202', '1121', 'e660', '测试3班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1674', '6202', '1121', 'e660', '测试4班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1675', '6203', '1121', 'c100', '测试1班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1676', '6203', '1121', 'c100', '测试2班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1677', '6203', '1121', 'c100', '测试3班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1678', '6203', '1121', 'c100', '测试4班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1679', '6204', '1121', '5e6d', '测试1班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1680', '6204', '1121', '5e6d', '测试2班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1681', '6204', '1121', '5e6d', '测试3班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1682', '6204', '1121', '5e6d', '测试4班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1683', '6205', '1121', '349e', '测试1班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1684', '6205', '1121', '349e', '测试2班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1685', '6205', '1121', '349e', '测试3班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1686', '6205', '1121', '349e', '测试4班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1687', '6206', '1121', '6e63', '测试1班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1688', '6206', '1121', '6e63', '测试2班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1689', '6206', '1121', '6e63', '测试3班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1690', '6206', '1121', '6e63', '测试4班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1691', '6207', '1125', 'd0e0', '测试1班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1692', '6207', '1125', 'd0e0', '测试2班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1693', '6207', '1125', 'd0e0', '测试3班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1694', '6207', '1125', 'd0e0', '测试4班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1695', '6208', '1125', '2677', '测试1班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1696', '6208', '1125', '2677', '测试2班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1697', '6208', '1125', '2677', '测试3班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1698', '6208', '1125', '2677', '测试4班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1699', '6209', '1125', 'bbfb', '测试1班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1700', '6209', '1125', 'bbfb', '测试2班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1701', '6209', '1125', 'bbfb', '测试3班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1702', '6209', '1125', 'bbfb', '测试4班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1703', '6210', '1125', '78d1', '测试1班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1704', '6210', '1125', '78d1', '测试2班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1705', '6210', '1125', '78d1', '测试3班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1706', '6210', '1125', '78d1', '测试4班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1707', '6211', '1125', 'bab4', '测试1班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1708', '6211', '1125', 'bab4', '测试2班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1709', '6211', '1125', 'bab4', '测试3班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1710', '6211', '1125', 'bab4', '测试4班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1711', '6212', '1133', '68dd', '测试1班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1712', '6212', '1133', '68dd', '测试2班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1713', '6212', '1133', '68dd', '测试3班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1714', '6212', '1133', '68dd', '测试4班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1715', '6213', '1137', '98bc', '测试1班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1716', '6213', '1137', '98bc', '测试2班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1717', '6213', '1137', '98bc', '测试3班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1718', '6213', '1137', '98bc', '测试4班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1719', '6214', '1145', '58e6', '测试1班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1720', '6214', '1145', '58e6', '测试2班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1721', '6214', '1145', '58e6', '测试3班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1722', '6214', '1145', '58e6', '测试4班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1723', '6215', '1149', 'beea', '测试1班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1724', '6215', '1149', 'beea', '测试2班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1725', '6215', '1149', 'beea', '测试3班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1726', '6215', '1149', 'beea', '测试4班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1727', '6216', '1149', 'c829', '测试1班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1728', '6216', '1149', 'c829', '测试2班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1729', '6216', '1149', 'c829', '测试3班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1730', '6216', '1149', 'c829', '测试4班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1731', '6217', '1149', '9dc2', '测试1班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1732', '6217', '1149', '9dc2', '测试2班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1733', '6217', '1149', '9dc2', '测试3班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1734', '6217', '1149', '9dc2', '测试4班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1735', '6218', '1149', 'f99e', '测试1班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1736', '6218', '1149', 'f99e', '测试2班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1737', '6218', '1149', 'f99e', '测试3班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1738', '6218', '1149', 'f99e', '测试4班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1739', '6219', '1149', 'afeb', '测试1班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1740', '6219', '1149', 'afeb', '测试2班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1741', '6219', '1149', 'afeb', '测试3班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1742', '6219', '1149', 'afeb', '测试4班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1747', '6221', '1161', '3c45', '测试1班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1748', '6221', '1161', '3c45', '测试2班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1749', '6221', '1161', '3c45', '测试3班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1750', '6221', '1161', '3c45', '测试4班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1751', '6222', '1161', 'ada2', '测试1班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1752', '6222', '1161', 'ada2', '测试2班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1753', '6222', '1161', 'ada2', '测试3班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1754', '6222', '1161', 'ada2', '测试4班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1755', '6223', '1161', '2266', '测试1班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1756', '6223', '1161', '2266', '测试2班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1757', '6223', '1161', '2266', '测试3班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1758', '6223', '1161', '2266', '测试4班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1759', '6224', '1161', 'd9eb', '测试1班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1760', '6224', '1161', 'd9eb', '测试2班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1761', '6224', '1161', 'd9eb', '测试3班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1762', '6224', '1161', 'd9eb', '测试4班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1763', '6225', '1161', '33d8', '测试1班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1764', '6225', '1161', '33d8', '测试2班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1765', '6225', '1161', '33d8', '测试3班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1766', '6225', '1161', '33d8', '测试4班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1767', '6226', '1169', 'd7bd', '测试1班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1768', '6226', '1169', 'd7bd', '测试2班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1769', '6226', '1169', 'd7bd', '测试3班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1770', '6226', '1169', 'd7bd', '测试4班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1771', '6227', '1173', '153a', '测试1班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1772', '6227', '1173', '153a', '测试2班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1773', '6227', '1173', '153a', '测试3班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1774', '6227', '1173', '153a', '测试4班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1775', '6228', '1173', '0c8d', '测试1班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1776', '6228', '1173', '0c8d', '测试2班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1777', '6228', '1173', '0c8d', '测试3班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1778', '6228', '1173', '0c8d', '测试4班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1779', '6229', '1173', 'db86', '测试1班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1780', '6229', '1173', 'db86', '测试2班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1781', '6229', '1173', 'db86', '测试3班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1782', '6229', '1173', 'db86', '测试4班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1783', '6230', '1173', '9535', '测试1班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1784', '6230', '1173', '9535', '测试2班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1785', '6230', '1173', '9535', '测试3班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1786', '6230', '1173', '9535', '测试4班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1787', '6231', '1173', 'c36b', '测试1班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1788', '6231', '1173', 'c36b', '测试2班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1789', '6231', '1173', 'c36b', '测试3班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1790', '6231', '1173', 'c36b', '测试4班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1791', '6232', '1181', 'b1a4', '测试1班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1792', '6232', '1181', 'b1a4', '测试2班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1793', '6232', '1181', 'b1a4', '测试3班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1794', '6232', '1181', 'b1a4', '测试4班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1795', '6233', '1181', 'beec', '测试1班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1796', '6233', '1181', 'beec', '测试2班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1797', '6233', '1181', 'beec', '测试3班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1798', '6233', '1181', 'beec', '测试4班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1799', '6234', '1181', '05ed', '测试1班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1800', '6234', '1181', '05ed', '测试2班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1801', '6234', '1181', '05ed', '测试3班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1802', '6234', '1181', '05ed', '测试4班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1803', '6235', '1181', '1066', '测试1班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1804', '6235', '1181', '1066', '测试2班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1805', '6235', '1181', '1066', '测试3班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1806', '6235', '1181', '1066', '测试4班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1807', '6236', '1181', '1d5c', '测试1班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1808', '6236', '1181', '1d5c', '测试2班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1809', '6236', '1181', '1d5c', '测试3班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1810', '6236', '1181', '1d5c', '测试4班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1811', '6237', '1185', '18eb', '测试1班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1812', '6237', '1185', '18eb', '测试2班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1813', '6237', '1185', '18eb', '测试3班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1814', '6237', '1185', '18eb', '测试4班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1815', '6238', '1193', '4106', '测试1班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1816', '6238', '1193', '4106', '测试2班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1817', '6238', '1193', '4106', '测试3班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1818', '6238', '1193', '4106', '测试4班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1819', '6239', '1197', '023a', '测试1班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1820', '6239', '1197', '023a', '测试2班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1821', '6239', '1197', '023a', '测试3班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1822', '6239', '1197', '023a', '测试4班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1825', '5828', '305', 'qwe', 'iu', 'lk', '2018-05-21 10:36:36', '2018-05-21 10:36:36');

-- ----------------------------
-- Table structure for happy_read
-- ----------------------------
DROP TABLE IF EXISTS `happy_read`;
CREATE TABLE `happy_read` (
  `happy_read_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `happy_read_title` varchar(40) NOT NULL,
  `happy_read_content` varchar(255) DEFAULT NULL,
  `happy_read_link` varchar(255) DEFAULT NULL,
  `happy_read_img` varchar(255) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`happy_read_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of happy_read
-- ----------------------------
INSERT INTO `happy_read` VALUES ('1', '书籍是人类进步的阶梯', null, 'http://www.baidu.com', 'makalong.png', '0', '2018-05-20 13:27:57', '2018-05-20 13:28:00');
INSERT INTO `happy_read` VALUES ('2', '热水比凉水结成冰的速度还要快', null, 'http://www.baidu.com', '2018-05-31-00-36-22.png', '0', '2018-05-31 00:36:59', '2018-05-31 00:37:02');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `knowledge_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowledge_content` varchar(255) NOT NULL,
  `knowledge_rank` tinyint(1) NOT NULL DEFAULT '1',
  `lesson_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`knowledge_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1353 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('289', '这是知识点2', '3', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('290', '这是知识点3', '1', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('291', '这是知识点4', '3', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('292', '这是知识点1', '2', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('293', '这是知识点2', '1', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('294', '这是知识点3', '1', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('295', '这是知识点4', '3', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('296', '这是知识点1', '1', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('297', '这是知识点2', '4', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('298', '这是知识点3', '1', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('299', '这是知识点4', '3', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('300', '这是知识点1', '4', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('301', '这是知识点2', '4', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('302', '这是知识点3', '2', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('303', '这是知识点4', '1', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('304', '这是知识点1', '1', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('305', '这是知识点2', '2', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('306', '这是知识点3', '4', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('307', '这是知识点4', '2', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('308', '这是知识点1', '2', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('309', '这是知识点2', '3', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('310', '这是知识点3', '1', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('311', '这是知识点4', '3', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('312', '这是知识点1', '2', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('313', '这是知识点2', '4', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('314', '这是知识点3', '1', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('315', '这是知识点4', '3', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('316', '这是知识点1', '1', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('317', '这是知识点2', '1', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('318', '这是知识点3', '3', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('319', '这是知识点4', '1', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('320', '这是知识点1', '4', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('321', '这是知识点2', '1', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('322', '这是知识点3', '3', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('323', '这是知识点4', '4', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('324', '这是知识点1', '4', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('325', '这是知识点2', '4', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('326', '这是知识点3', '1', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('327', '这是知识点4', '4', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('328', '这是知识点1', '4', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('329', '这是知识点2', '2', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('330', '这是知识点3', '3', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('331', '这是知识点4', '2', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('332', '这是知识点1', '3', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('333', '这是知识点2', '3', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('334', '这是知识点3', '4', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('335', '这是知识点4', '3', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('336', '这是知识点1', '2', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('337', '这是知识点2', '4', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('338', '这是知识点3', '3', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('339', '这是知识点4', '4', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('340', '这是知识点1', '3', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('341', '这是知识点2', '3', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('342', '这是知识点3', '4', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('343', '这是知识点4', '2', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('344', '这是知识点1', '2', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('345', '这是知识点2', '1', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('346', '这是知识点3', '3', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('347', '这是知识点4', '4', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('348', '这是知识点1', '3', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('349', '这是知识点2', '2', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('350', '这是知识点3', '4', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('351', '这是知识点4', '2', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('352', '这是知识点1', '1', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('353', '这是知识点2', '4', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('354', '这是知识点3', '4', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('355', '这是知识点4', '2', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('356', '这是知识点1', '2', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('357', '这是知识点2', '4', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('358', '这是知识点3', '2', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('359', '这是知识点4', '3', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('360', '这是知识点1', '1', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('361', '这是知识点2', '3', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('362', '这是知识点3', '3', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('363', '这是知识点4', '2', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('364', '这是知识点1', '1', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('365', '这是知识点2', '3', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('366', '这是知识点3', '4', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('367', '这是知识点4', '4', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('368', '这是知识点1', '4', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('369', '这是知识点2', '2', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('370', '这是知识点3', '1', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('371', '这是知识点4', '4', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('372', '这是知识点1', '2', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('373', '这是知识点2', '2', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('374', '这是知识点3', '1', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('375', '这是知识点4', '2', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('376', '这是知识点1', '1', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('377', '这是知识点2', '1', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('378', '这是知识点3', '1', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('379', '这是知识点4', '2', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('380', '这是知识点1', '1', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('381', '这是知识点2', '4', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('382', '这是知识点3', '1', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('383', '这是知识点4', '3', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('384', '这是知识点1', '4', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('385', '这是知识点2', '3', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('386', '这是知识点3', '2', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('387', '这是知识点4', '1', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('388', '这是知识点1', '4', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('389', '这是知识点2', '3', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('390', '这是知识点3', '3', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('391', '这是知识点4', '2', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('392', '这是知识点1', '3', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('393', '这是知识点2', '3', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('394', '这是知识点3', '3', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('395', '这是知识点4', '4', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('396', '这是知识点1', '1', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('397', '这是知识点2', '4', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('398', '这是知识点3', '4', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('399', '这是知识点4', '4', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('400', '这是知识点1', '4', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('401', '这是知识点2', '4', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('402', '这是知识点3', '3', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('403', '这是知识点4', '3', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('404', '这是知识点1', '3', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('405', '这是知识点2', '3', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('406', '这是知识点3', '1', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('407', '这是知识点4', '3', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('408', '这是知识点1', '4', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('409', '这是知识点2', '2', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('410', '这是知识点3', '4', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('411', '这是知识点4', '3', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('412', '这是知识点1', '4', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('413', '这是知识点2', '2', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('414', '这是知识点3', '3', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('415', '这是知识点4', '2', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('416', '这是知识点1', '1', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('417', '这是知识点2', '2', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('418', '这是知识点3', '3', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('419', '这是知识点4', '4', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('420', '这是知识点1', '3', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('421', '这是知识点2', '1', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('422', '这是知识点3', '3', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('423', '这是知识点4', '1', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('424', '这是知识点1', '3', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('425', '这是知识点2', '3', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('426', '这是知识点3', '2', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('427', '这是知识点4', '3', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('428', '这是知识点1', '1', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('429', '这是知识点2', '4', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('430', '这是知识点3', '4', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('431', '这是知识点4', '2', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('432', '这是知识点1', '3', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('433', '这是知识点2', '1', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('434', '这是知识点3', '1', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('435', '这是知识点4', '3', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('436', '这是知识点1', '2', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('437', '这是知识点2', '1', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('438', '这是知识点3', '1', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('439', '这是知识点4', '2', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('440', '这是知识点1', '1', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('441', '这是知识点2', '3', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('442', '这是知识点3', '2', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('443', '这是知识点4', '1', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('444', '这是知识点1', '1', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('445', '这是知识点2', '1', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('446', '这是知识点3', '1', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('447', '这是知识点4', '1', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('448', '这是知识点1', '1', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('449', '这是知识点2', '3', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('450', '这是知识点3', '1', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('451', '这是知识点4', '2', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('452', '这是知识点1', '2', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('453', '这是知识点2', '3', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('454', '这是知识点3', '2', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('455', '这是知识点4', '1', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('456', '这是知识点1', '2', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('457', '这是知识点2', '3', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('458', '这是知识点3', '4', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('459', '这是知识点4', '4', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('460', '这是知识点1', '1', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('461', '这是知识点2', '2', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('462', '这是知识点3', '4', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('463', '这是知识点4', '1', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('464', '这是知识点1', '3', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('465', '这是知识点2', '2', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('466', '这是知识点3', '2', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('467', '这是知识点4', '2', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('468', '这是知识点1', '1', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('469', '这是知识点2', '1', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('470', '这是知识点3', '4', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('471', '这是知识点4', '4', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('472', '这是知识点1', '2', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('473', '这是知识点2', '1', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('474', '这是知识点3', '1', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('475', '这是知识点4', '4', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('476', '这是知识点1', '3', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('477', '这是知识点2', '2', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('478', '这是知识点3', '2', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('479', '这是知识点4', '4', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('480', '这是知识点1', '3', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('481', '这是知识点2', '2', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('482', '这是知识点3', '2', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('483', '这是知识点4', '4', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('484', '这是知识点1', '1', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('485', '这是知识点2', '4', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('486', '这是知识点3', '3', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('487', '这是知识点4', '1', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('488', '这是知识点1', '4', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('489', '这是知识点2', '2', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('490', '这是知识点3', '2', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('491', '这是知识点4', '1', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('492', '这是知识点1', '3', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('493', '这是知识点2', '2', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('494', '这是知识点3', '2', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('495', '这是知识点4', '2', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('496', '这是知识点1', '1', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('497', '这是知识点2', '4', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('498', '这是知识点3', '4', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('499', '这是知识点4', '1', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('500', '这是知识点1', '2', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('501', '这是知识点2', '1', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('502', '这是知识点3', '1', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('503', '这是知识点4', '1', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('504', '这是知识点1', '4', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('505', '这是知识点2', '3', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('506', '这是知识点3', '4', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('507', '这是知识点4', '3', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('508', '这是知识点1', '4', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('509', '这是知识点2', '4', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('510', '这是知识点3', '3', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('511', '这是知识点4', '2', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('512', '这是知识点1', '4', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('513', '这是知识点2', '3', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('514', '这是知识点3', '1', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('515', '这是知识点4', '2', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('516', '这是知识点1', '4', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('517', '这是知识点2', '2', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('518', '这是知识点3', '4', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('519', '这是知识点4', '1', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('520', '这是知识点1', '1', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('521', '这是知识点2', '1', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('522', '这是知识点3', '3', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('523', '这是知识点4', '2', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('524', '这是知识点1', '4', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('525', '这是知识点2', '4', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('526', '这是知识点3', '1', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('527', '这是知识点4', '1', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('528', '这是知识点1', '3', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('529', '这是知识点2', '3', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('530', '这是知识点3', '1', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('531', '这是知识点4', '1', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('532', '这是知识点1', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('533', '这是知识点2', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('534', '这是知识点3', '2', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('535', '这是知识点4', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('536', '这是知识点1', '4', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('537', '这是知识点2', '4', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('538', '这是知识点3', '1', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('539', '这是知识点4', '1', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('540', '这是知识点1', '1', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('541', '这是知识点2', '1', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('542', '这是知识点3', '3', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('543', '这是知识点4', '3', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('544', '这是知识点1', '1', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('545', '这是知识点2', '3', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('546', '这是知识点3', '2', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('547', '这是知识点4', '3', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('548', '这是知识点1', '1', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('549', '这是知识点2', '2', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('550', '这是知识点3', '1', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('551', '这是知识点4', '3', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('552', '这是知识点1', '3', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('553', '这是知识点2', '2', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('554', '这是知识点3', '1', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('555', '这是知识点4', '4', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('556', '这是知识点1', '2', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('557', '这是知识点2', '1', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('558', '这是知识点3', '3', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('559', '这是知识点4', '4', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('560', '这是知识点1', '3', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('561', '这是知识点2', '4', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('562', '这是知识点3', '4', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('563', '这是知识点4', '4', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('564', '这是知识点1', '2', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('565', '这是知识点2', '4', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('566', '这是知识点3', '3', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('567', '这是知识点4', '1', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('568', '这是知识点1', '4', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('569', '这是知识点2', '1', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('570', '这是知识点3', '2', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('571', '这是知识点4', '4', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('572', '这是知识点1', '1', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('573', '这是知识点2', '3', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('574', '这是知识点3', '3', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('575', '这是知识点4', '3', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('576', '这是知识点1', '2', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('577', '这是知识点2', '1', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('578', '这是知识点3', '2', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('579', '这是知识点4', '3', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('580', '这是知识点1', '4', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('581', '这是知识点2', '2', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('582', '这是知识点3', '1', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('583', '这是知识点4', '3', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('584', '这是知识点1', '3', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('585', '这是知识点2', '1', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('586', '这是知识点3', '2', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('587', '这是知识点4', '3', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('588', '这是知识点1', '4', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('589', '这是知识点2', '2', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('590', '这是知识点3', '2', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('591', '这是知识点4', '3', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('592', '这是知识点1', '1', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('593', '这是知识点2', '3', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('594', '这是知识点3', '3', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('595', '这是知识点4', '1', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('596', '这是知识点1', '1', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('597', '这是知识点2', '3', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('598', '这是知识点3', '3', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('599', '这是知识点4', '4', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('600', '这是知识点1', '1', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('601', '这是知识点2', '4', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('602', '这是知识点3', '3', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('603', '这是知识点4', '1', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('604', '这是知识点1', '4', '1', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('605', '这是知识点2', '3', '1', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('606', '这是知识点3', '4', '1', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('607', '这是知识点4', '1', '1', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('608', '这是知识点1', '4', '2', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('609', '这是知识点2', '2', '2', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('610', '这是知识点3', '3', '2', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('611', '这是知识点4', '2', '2', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('612', '这是知识点1', '4', '3', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('613', '这是知识点2', '3', '3', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('614', '这是知识点3', '4', '3', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('615', '这是知识点4', '1', '3', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('616', '这是知识点1', '2', '4', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('617', '这是知识点2', '3', '4', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('618', '这是知识点3', '1', '4', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('619', '这是知识点4', '1', '4', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('620', '这是知识点1', '1', '5', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('621', '这是知识点2', '1', '5', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('622', '这是知识点3', '2', '5', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('623', '这是知识点4', '3', '5', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('624', '这是知识点1', '3', '6', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('625', '这是知识点2', '1', '6', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('626', '这是知识点3', '2', '6', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('627', '这是知识点4', '1', '6', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('628', '这是知识点1', '3', '7', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('629', '这是知识点2', '1', '7', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('630', '这是知识点3', '2', '7', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('631', '这是知识点4', '1', '7', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('632', '这是知识点1', '4', '8', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('633', '这是知识点2', '2', '8', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('634', '这是知识点3', '1', '8', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('635', '这是知识点4', '3', '8', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('636', '这是知识点1', '3', '9', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('637', '这是知识点2', '4', '9', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('638', '这是知识点3', '3', '9', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('639', '这是知识点4', '2', '9', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('640', '这是知识点1', '2', '10', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('641', '这是知识点2', '3', '10', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('642', '这是知识点3', '3', '10', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('643', '这是知识点4', '2', '10', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('644', '这是知识点1', '1', '11', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('645', '这是知识点2', '1', '11', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('646', '这是知识点3', '4', '11', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('647', '这是知识点4', '3', '11', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('648', '这是知识点1', '2', '12', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('649', '这是知识点2', '1', '12', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('650', '这是知识点3', '2', '12', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('651', '这是知识点4', '2', '12', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('652', '这是知识点1', '3', '13', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('653', '这是知识点2', '4', '13', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('654', '这是知识点3', '1', '13', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('655', '这是知识点4', '4', '13', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('656', '这是知识点1', '4', '452', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('657', '这是知识点2', '1', '452', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('658', '这是知识点3', '1', '452', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('659', '这是知识点4', '2', '452', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('660', '这是知识点1', '3', '453', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('661', '这是知识点2', '4', '453', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('662', '这是知识点3', '3', '453', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('663', '这是知识点4', '2', '453', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('664', '这是知识点1', '1', '454', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('665', '这是知识点2', '1', '454', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('666', '这是知识点3', '4', '454', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('667', '这是知识点4', '3', '454', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('668', '这是知识点1', '2', '455', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('669', '这是知识点2', '1', '455', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('670', '这是知识点3', '1', '455', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('671', '这是知识点4', '4', '455', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('672', '这是知识点1', '1', '456', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('673', '这是知识点2', '3', '456', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('674', '这是知识点3', '3', '456', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('675', '这是知识点4', '4', '456', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('676', '这是知识点1', '4', '457', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('677', '这是知识点2', '4', '457', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('678', '这是知识点3', '2', '457', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('679', '这是知识点4', '3', '457', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('680', '这是知识点1', '2', '458', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('681', '这是知识点2', '2', '458', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('682', '这是知识点3', '2', '458', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('683', '这是知识点4', '4', '458', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('684', '这是知识点1', '1', '459', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('685', '这是知识点2', '2', '459', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('686', '这是知识点3', '2', '459', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('687', '这是知识点4', '2', '459', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('688', '这是知识点1', '1', '460', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('689', '这是知识点2', '2', '460', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('690', '这是知识点3', '4', '460', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('691', '这是知识点4', '1', '460', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('692', '这是知识点1', '4', '461', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('693', '这是知识点2', '3', '461', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('694', '这是知识点3', '3', '461', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('695', '这是知识点4', '4', '461', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('696', '这是知识点1', '1', '462', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('697', '这是知识点2', '2', '462', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('698', '这是知识点3', '3', '462', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('699', '这是知识点4', '2', '462', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('700', '这是知识点1', '3', '463', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('701', '这是知识点2', '3', '463', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('702', '这是知识点3', '2', '463', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('703', '这是知识点4', '4', '463', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('704', '这是知识点1', '1', '464', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('705', '这是知识点2', '4', '464', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('706', '这是知识点3', '3', '464', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('707', '这是知识点4', '2', '464', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('708', '这是知识点1', '1', '465', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('709', '这是知识点2', '1', '465', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('710', '这是知识点3', '4', '465', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('711', '这是知识点4', '1', '465', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('712', '这是知识点1', '1', '466', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('713', '这是知识点2', '1', '466', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('714', '这是知识点3', '2', '466', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('715', '这是知识点4', '2', '466', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('716', '这是知识点1', '1', '467', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('717', '这是知识点2', '3', '467', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('718', '这是知识点3', '2', '467', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('719', '这是知识点4', '2', '467', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('720', '这是知识点1', '1', '468', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('721', '这是知识点2', '2', '468', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('722', '这是知识点3', '2', '468', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('723', '这是知识点4', '4', '468', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('724', '这是知识点1', '2', '469', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('725', '这是知识点2', '4', '469', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('726', '这是知识点3', '4', '469', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('727', '这是知识点4', '1', '469', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('728', '这是知识点1', '2', '470', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('729', '这是知识点2', '4', '470', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('730', '这是知识点3', '4', '470', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('731', '这是知识点4', '3', '470', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('732', '这是知识点1', '4', '471', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('733', '这是知识点2', '4', '471', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('734', '这是知识点3', '2', '471', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('735', '这是知识点4', '4', '471', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('736', '这是知识点1', '4', '472', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('737', '这是知识点2', '2', '472', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('738', '这是知识点3', '3', '472', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('739', '这是知识点4', '2', '472', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('740', '这是知识点1', '2', '473', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('741', '这是知识点2', '2', '473', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('742', '这是知识点3', '4', '473', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('743', '这是知识点4', '1', '473', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('744', '这是知识点1', '2', '474', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('745', '这是知识点2', '1', '474', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('746', '这是知识点3', '2', '474', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('747', '这是知识点4', '2', '474', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('748', '这是知识点1', '1', '475', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('749', '这是知识点2', '4', '475', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('750', '这是知识点3', '4', '475', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('751', '这是知识点4', '4', '475', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('752', '这是知识点1', '3', '476', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('753', '这是知识点2', '2', '476', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('754', '这是知识点3', '3', '476', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('755', '这是知识点4', '2', '476', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('756', '这是知识点1', '1', '477', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('757', '这是知识点2', '4', '477', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('758', '这是知识点3', '4', '477', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('759', '这是知识点4', '3', '477', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('760', '这是知识点1', '4', '478', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('761', '这是知识点2', '1', '478', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('762', '这是知识点3', '3', '478', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('763', '这是知识点4', '4', '478', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('764', '这是知识点1', '2', '479', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('765', '这是知识点2', '3', '479', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('766', '这是知识点3', '4', '479', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('767', '这是知识点4', '3', '479', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('768', '这是知识点1', '3', '480', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('769', '这是知识点2', '2', '480', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('770', '这是知识点3', '2', '480', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('771', '这是知识点4', '2', '480', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('772', '这是知识点1', '3', '481', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('773', '这是知识点2', '2', '481', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('774', '这是知识点3', '2', '481', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('775', '这是知识点4', '4', '481', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('776', '这是知识点1', '1', '482', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('777', '这是知识点2', '2', '482', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('778', '这是知识点3', '1', '482', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('779', '这是知识点4', '2', '482', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('780', '这是知识点1', '2', '483', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('781', '这是知识点2', '4', '483', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('782', '这是知识点3', '1', '483', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('783', '这是知识点4', '2', '483', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('784', '这是知识点1', '2', '484', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('785', '这是知识点2', '2', '484', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('786', '这是知识点3', '1', '484', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('787', '这是知识点4', '3', '484', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('788', '这是知识点1', '2', '485', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('789', '这是知识点2', '4', '485', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('790', '这是知识点3', '2', '485', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('791', '这是知识点4', '3', '485', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('792', '这是知识点1', '4', '486', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('793', '这是知识点2', '2', '486', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('794', '这是知识点3', '3', '486', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('795', '这是知识点4', '1', '486', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('796', '这是知识点1', '3', '487', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('797', '这是知识点2', '4', '487', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('798', '这是知识点3', '4', '487', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('799', '这是知识点4', '2', '487', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('800', '这是知识点1', '1', '488', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('801', '这是知识点2', '3', '488', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('802', '这是知识点3', '2', '488', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('803', '这是知识点4', '3', '488', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('804', '这是知识点1', '4', '489', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('805', '这是知识点2', '1', '489', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('806', '这是知识点3', '2', '489', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('807', '这是知识点4', '4', '489', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('808', '这是知识点1', '1', '490', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('809', '这是知识点2', '3', '490', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('810', '这是知识点3', '1', '490', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('811', '这是知识点4', '4', '490', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('812', '这是知识点1', '1', '491', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('813', '这是知识点2', '1', '491', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('814', '这是知识点3', '1', '491', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('815', '这是知识点4', '4', '491', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('816', '这是知识点1', '3', '492', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('817', '这是知识点2', '4', '492', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('818', '这是知识点3', '3', '492', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('819', '这是知识点4', '3', '492', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('820', '这是知识点1', '3', '493', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('821', '这是知识点2', '4', '493', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('822', '这是知识点3', '1', '493', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('823', '这是知识点4', '1', '493', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('824', '这是知识点1', '4', '494', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('825', '这是知识点2', '2', '494', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('826', '这是知识点3', '4', '494', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('827', '这是知识点4', '3', '494', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('828', '这是知识点1', '3', '495', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('829', '这是知识点2', '1', '495', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('830', '这是知识点3', '1', '495', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('831', '这是知识点4', '4', '495', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('832', '这是知识点1', '4', '496', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('833', '这是知识点2', '4', '496', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('834', '这是知识点3', '3', '496', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('835', '这是知识点4', '3', '496', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('836', '这是知识点1', '4', '497', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('837', '这是知识点2', '4', '497', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('838', '这是知识点3', '1', '497', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('839', '这是知识点4', '2', '497', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('840', '这是知识点1', '4', '498', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('841', '这是知识点2', '3', '498', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('842', '这是知识点3', '2', '498', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('843', '这是知识点4', '4', '498', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('844', '这是知识点1', '4', '499', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('845', '这是知识点2', '3', '499', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('846', '这是知识点3', '1', '499', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('847', '这是知识点4', '3', '499', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('848', '这是知识点1', '3', '500', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('849', '这是知识点2', '4', '500', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('850', '这是知识点3', '1', '500', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('851', '这是知识点4', '4', '500', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('852', '这是知识点1', '4', '501', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('853', '这是知识点2', '3', '501', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('854', '这是知识点3', '3', '501', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('855', '这是知识点4', '1', '501', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('856', '这是知识点1', '3', '502', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('857', '这是知识点2', '4', '502', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('858', '这是知识点3', '4', '502', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('859', '这是知识点4', '2', '502', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('860', '这是知识点1', '2', '503', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('861', '这是知识点2', '2', '503', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('862', '这是知识点3', '2', '503', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('863', '这是知识点4', '1', '503', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('864', '这是知识点1', '1', '504', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('865', '这是知识点2', '1', '504', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('866', '这是知识点3', '3', '504', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('867', '这是知识点4', '4', '504', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('868', '这是知识点1', '1', '505', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('869', '这是知识点2', '2', '505', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('870', '这是知识点3', '1', '505', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('871', '这是知识点4', '3', '505', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('872', '这是知识点1', '2', '506', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('873', '这是知识点2', '3', '506', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('874', '这是知识点3', '3', '506', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('875', '这是知识点4', '2', '506', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('876', '这是知识点1', '3', '507', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('877', '这是知识点2', '3', '507', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('878', '这是知识点3', '2', '507', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('879', '这是知识点4', '4', '507', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('880', '这是知识点1', '2', '508', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('881', '这是知识点2', '3', '508', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('882', '这是知识点3', '2', '508', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('883', '这是知识点4', '1', '508', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('884', '这是知识点1', '1', '509', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('885', '这是知识点2', '2', '509', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('886', '这是知识点3', '1', '509', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('887', '这是知识点4', '3', '509', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('888', '这是知识点1', '3', '510', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('889', '这是知识点2', '2', '510', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('890', '这是知识点3', '2', '510', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('891', '这是知识点4', '2', '510', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('892', '这是知识点1', '1', '511', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('893', '这是知识点2', '3', '511', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('894', '这是知识点3', '4', '511', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('895', '这是知识点4', '3', '511', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('896', '这是知识点1', '3', '512', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('897', '这是知识点2', '4', '512', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('898', '这是知识点3', '2', '512', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('899', '这是知识点4', '1', '512', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('900', '这是知识点1', '3', '513', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('901', '这是知识点2', '2', '513', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('902', '这是知识点3', '1', '513', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('903', '这是知识点4', '3', '513', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('904', '这是知识点1', '2', '514', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('905', '这是知识点2', '2', '514', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('906', '这是知识点3', '2', '514', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('907', '这是知识点4', '3', '514', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('908', '这是知识点1', '2', '515', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('909', '这是知识点2', '3', '515', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('910', '这是知识点3', '1', '515', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('911', '这是知识点4', '1', '515', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('912', '这是知识点1', '2', '516', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('913', '这是知识点2', '2', '516', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('914', '这是知识点3', '2', '516', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('915', '这是知识点4', '3', '516', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('916', '这是知识点1', '2', '517', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('917', '这是知识点2', '2', '517', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('918', '这是知识点3', '4', '517', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('919', '这是知识点4', '3', '517', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('920', '这是知识点1', '2', '518', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('921', '这是知识点2', '3', '518', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('922', '这是知识点3', '2', '518', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('923', '这是知识点4', '2', '518', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('924', '这是知识点1', '3', '519', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('925', '这是知识点2', '4', '519', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('926', '这是知识点3', '1', '519', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('927', '这是知识点4', '1', '519', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('928', '这是知识点1', '2', '520', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('929', '这是知识点2', '3', '520', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('930', '这是知识点3', '4', '520', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('931', '这是知识点4', '1', '520', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('932', '这是知识点1', '4', '521', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('933', '这是知识点2', '4', '521', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('934', '这是知识点3', '2', '521', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('935', '这是知识点4', '3', '521', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('936', '这是知识点1', '4', '522', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('937', '这是知识点2', '4', '522', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('938', '这是知识点3', '4', '522', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('939', '这是知识点4', '4', '522', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('940', '这是知识点1', '2', '523', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('941', '这是知识点2', '3', '523', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('942', '这是知识点3', '1', '523', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('943', '这是知识点4', '4', '523', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('944', '这是知识点1', '4', '524', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('945', '这是知识点2', '1', '524', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('946', '这是知识点3', '4', '524', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('947', '这是知识点4', '1', '524', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('948', '这是知识点1', '3', '525', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('949', '这是知识点2', '2', '525', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('950', '这是知识点3', '3', '525', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('951', '这是知识点4', '3', '525', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('952', '这是知识点1', '3', '526', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('953', '这是知识点2', '4', '526', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('955', '这是知识点4', '3', '526', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('956', '这是知识点1', '3', '527', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('957', '这是知识点2', '2', '527', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('958', '这是知识点3', '4', '527', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('959', '这是知识点4', '2', '527', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('960', '这是知识点1', '3', '528', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('961', '这是知识点2', '3', '528', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('962', '这是知识点3', '4', '528', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('963', '这是知识点4', '3', '528', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('964', '这是知识点1', '3', '529', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('965', '这是知识点2', '3', '529', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('966', '这是知识点3', '1', '529', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('967', '这是知识点4', '1', '529', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('968', '这是知识点1', '2', '530', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('969', '这是知识点2', '2', '530', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('970', '这是知识点3', '2', '530', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('971', '这是知识点4', '3', '530', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('972', '这是知识点1', '3', '531', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('973', '这是知识点2', '2', '531', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('974', '这是知识点3', '4', '531', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('975', '这是知识点4', '3', '531', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('976', '这是知识点1', '3', '532', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('977', '这是知识点2', '4', '532', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('978', '这是知识点3', '2', '532', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('979', '这是知识点4', '4', '532', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('980', '这是知识点1', '4', '533', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('981', '这是知识点2', '1', '533', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('982', '这是知识点3', '4', '533', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('983', '这是知识点4', '4', '533', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('984', '这是知识点1', '4', '534', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('985', '这是知识点2', '4', '534', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('986', '这是知识点3', '4', '534', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('987', '这是知识点4', '2', '534', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('988', '这是知识点1', '4', '535', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('989', '这是知识点2', '3', '535', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('990', '这是知识点3', '1', '535', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('991', '这是知识点4', '1', '535', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('992', '这是知识点1', '1', '536', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('993', '这是知识点2', '1', '536', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('994', '这是知识点3', '3', '536', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('995', '这是知识点4', '2', '536', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('996', '这是知识点1', '3', '537', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('997', '这是知识点2', '3', '537', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('998', '这是知识点3', '2', '537', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('999', '这是知识点4', '4', '537', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1000', '这是知识点1', '2', '538', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1001', '这是知识点2', '2', '538', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1002', '这是知识点3', '4', '538', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1003', '这是知识点4', '4', '538', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1004', '这是知识点1', '1', '539', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1005', '这是知识点2', '4', '539', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1006', '这是知识点3', '3', '539', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1007', '这是知识点4', '2', '539', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1008', '这是知识点1', '4', '540', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1009', '这是知识点2', '3', '540', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1010', '这是知识点3', '1', '540', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1011', '这是知识点4', '3', '540', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1012', '这是知识点1', '3', '541', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1013', '这是知识点2', '4', '541', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1014', '这是知识点3', '1', '541', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1015', '这是知识点4', '1', '541', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1016', '这是知识点1', '2', '542', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1017', '这是知识点2', '4', '542', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1018', '这是知识点3', '1', '542', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1019', '这是知识点4', '1', '542', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1020', '这是知识点1', '2', '543', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1021', '这是知识点2', '2', '543', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1022', '这是知识点3', '2', '543', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1023', '这是知识点4', '3', '543', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1024', '这是知识点1', '1', '544', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1025', '这是知识点2', '1', '544', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1026', '这是知识点3', '1', '544', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1027', '这是知识点4', '3', '544', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1028', '这是知识点1', '4', '545', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1029', '这是知识点2', '3', '545', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1030', '这是知识点3', '3', '545', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1031', '这是知识点4', '4', '545', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1032', '这是知识点1', '1', '546', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1033', '这是知识点2', '2', '546', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1034', '这是知识点3', '1', '546', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1035', '这是知识点4', '4', '546', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1036', '这是知识点1', '3', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1037', '这是知识点2', '3', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1038', '这是知识点3', '2', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1039', '这是知识点4', '4', '547', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1040', '这是知识点1', '4', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1041', '这是知识点2', '4', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1042', '这是知识点3', '4', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1043', '这是知识点4', '4', '548', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1044', '这是知识点1', '2', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1045', '这是知识点2', '1', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1046', '这是知识点3', '4', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1047', '这是知识点4', '2', '549', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1048', '这是知识点1', '3', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1049', '这是知识点2', '1', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1050', '这是知识点3', '1', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1051', '这是知识点4', '2', '550', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1052', '这是知识点1', '3', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1053', '这是知识点2', '1', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1054', '这是知识点3', '1', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1055', '这是知识点4', '1', '551', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1056', '这是知识点1', '4', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1057', '这是知识点2', '3', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1058', '这是知识点3', '3', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1059', '这是知识点4', '3', '552', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1060', '这是知识点1', '2', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1061', '这是知识点2', '2', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1062', '这是知识点3', '2', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1063', '这是知识点4', '2', '553', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1064', '这是知识点1', '3', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1065', '这是知识点2', '2', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1066', '这是知识点3', '3', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1067', '这是知识点4', '2', '554', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1068', '这是知识点1', '2', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1069', '这是知识点2', '1', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1070', '这是知识点3', '3', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1071', '这是知识点4', '4', '555', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1072', '这是知识点1', '3', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1073', '这是知识点2', '3', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1074', '这是知识点3', '4', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1075', '这是知识点4', '1', '556', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1076', '这是知识点1', '4', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1077', '这是知识点2', '3', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1078', '这是知识点3', '3', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1079', '这是知识点4', '1', '557', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1080', '这是知识点1', '1', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1081', '这是知识点2', '3', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1082', '这是知识点3', '1', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1083', '这是知识点4', '3', '558', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1084', '这是知识点1', '4', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1085', '这是知识点2', '1', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1086', '这是知识点3', '1', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1087', '这是知识点4', '2', '559', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1088', '这是知识点1', '4', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1089', '这是知识点2', '2', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1090', '这是知识点3', '2', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1091', '这是知识点4', '2', '560', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1092', '这是知识点1', '4', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1093', '这是知识点2', '2', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1094', '这是知识点3', '4', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1095', '这是知识点4', '4', '561', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1096', '这是知识点1', '3', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1097', '这是知识点2', '2', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1098', '这是知识点3', '3', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1099', '这是知识点4', '2', '562', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1100', '这是知识点1', '1', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1101', '这是知识点2', '4', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1102', '这是知识点3', '2', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1103', '这是知识点4', '2', '563', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1104', '这是知识点1', '2', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1105', '这是知识点2', '3', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1106', '这是知识点3', '3', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1107', '这是知识点4', '1', '564', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1108', '这是知识点1', '1', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1109', '这是知识点2', '3', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1110', '这是知识点3', '1', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1111', '这是知识点4', '4', '565', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1112', '这是知识点1', '2', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1113', '这是知识点2', '4', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1114', '这是知识点3', '4', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1115', '这是知识点4', '2', '566', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1116', '这是知识点1', '2', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1117', '这是知识点2', '1', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1118', '这是知识点3', '4', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1119', '这是知识点4', '4', '567', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1120', '这是知识点1', '2', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1121', '这是知识点2', '1', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1122', '这是知识点3', '2', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1123', '这是知识点4', '4', '568', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1124', '这是知识点1', '3', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1125', '这是知识点2', '1', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1126', '这是知识点3', '3', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1127', '这是知识点4', '1', '569', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1128', '这是知识点1', '3', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1129', '这是知识点2', '2', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1130', '这是知识点3', '2', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1131', '这是知识点4', '3', '570', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1132', '这是知识点1', '4', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1133', '这是知识点2', '4', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1134', '这是知识点3', '3', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1135', '这是知识点4', '3', '571', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1136', '这是知识点1', '3', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1137', '这是知识点2', '3', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1138', '这是知识点3', '1', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1139', '这是知识点4', '4', '572', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1140', '这是知识点1', '1', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1141', '这是知识点2', '4', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1142', '这是知识点3', '4', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1143', '这是知识点4', '1', '573', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1144', '这是知识点1', '3', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1145', '这是知识点2', '2', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1146', '这是知识点3', '2', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1147', '这是知识点4', '1', '574', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1148', '这是知识点1', '4', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1149', '这是知识点2', '2', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1150', '这是知识点3', '4', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1151', '这是知识点4', '3', '575', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1152', '这是知识点1', '2', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1153', '这是知识点2', '1', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1154', '这是知识点3', '3', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1155', '这是知识点4', '2', '576', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1156', '这是知识点1', '1', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1157', '这是知识点2', '3', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1158', '这是知识点3', '4', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1159', '这是知识点4', '2', '577', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1160', '这是知识点1', '4', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1161', '这是知识点2', '3', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1162', '这是知识点3', '2', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1163', '这是知识点4', '3', '578', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1164', '这是知识点1', '1', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1165', '这是知识点2', '2', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1166', '这是知识点3', '4', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1167', '这是知识点4', '4', '579', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1168', '这是知识点1', '2', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1169', '这是知识点2', '1', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1170', '这是知识点3', '4', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1171', '这是知识点4', '2', '580', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1172', '这是知识点1', '2', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1173', '这是知识点2', '3', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1174', '这是知识点3', '1', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1175', '这是知识点4', '3', '581', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1176', '这是知识点1', '1', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1177', '这是知识点2', '2', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1178', '这是知识点3', '3', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1179', '这是知识点4', '4', '582', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1180', '这是知识点1', '1', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1181', '这是知识点2', '2', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1182', '这是知识点3', '2', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1183', '这是知识点4', '3', '583', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1184', '这是知识点1', '3', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1185', '这是知识点2', '3', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1186', '这是知识点3', '1', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1187', '这是知识点4', '1', '584', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1188', '这是知识点1', '3', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1189', '这是知识点2', '1', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1190', '这是知识点3', '3', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1191', '这是知识点4', '1', '585', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1192', '这是知识点1', '2', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1193', '这是知识点2', '4', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1194', '这是知识点3', '1', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1195', '这是知识点4', '3', '586', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1196', '这是知识点1', '3', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1197', '这是知识点2', '3', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1198', '这是知识点3', '2', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1199', '这是知识点4', '3', '587', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1200', '这是知识点1', '1', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1201', '这是知识点2', '1', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1202', '这是知识点3', '4', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1203', '这是知识点4', '2', '588', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1204', '这是知识点1', '3', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1205', '这是知识点2', '4', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1206', '这是知识点3', '3', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1207', '这是知识点4', '1', '589', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1208', '这是知识点1', '3', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1209', '这是知识点2', '1', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1210', '这是知识点3', '4', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1211', '这是知识点4', '2', '590', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1212', '这是知识点1', '2', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1213', '这是知识点2', '4', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1214', '这是知识点3', '3', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1215', '这是知识点4', '3', '591', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1216', '这是知识点1', '4', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1217', '这是知识点2', '4', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1218', '这是知识点3', '3', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1219', '这是知识点4', '4', '592', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1220', '这是知识点1', '3', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1221', '这是知识点2', '3', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1222', '这是知识点3', '4', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1223', '这是知识点4', '2', '593', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1224', '这是知识点1', '4', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1225', '这是知识点2', '1', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1226', '这是知识点3', '1', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1227', '这是知识点4', '2', '594', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1228', '这是知识点1', '3', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1229', '这是知识点2', '2', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1230', '这是知识点3', '2', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1231', '这是知识点4', '1', '595', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1232', '这是知识点1', '4', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1233', '这是知识点2', '3', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1234', '这是知识点3', '4', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1235', '这是知识点4', '4', '596', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1236', '这是知识点1', '4', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1237', '这是知识点2', '2', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1238', '这是知识点3', '1', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1239', '这是知识点4', '3', '597', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1240', '这是知识点1', '3', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1241', '这是知识点2', '4', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1242', '这是知识点3', '3', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1243', '这是知识点4', '4', '598', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1244', '这是知识点1', '1', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1245', '这是知识点2', '3', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1246', '这是知识点3', '4', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1247', '这是知识点4', '4', '599', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1248', '这是知识点1', '4', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1249', '这是知识点2', '2', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1250', '这是知识点3', '3', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1251', '这是知识点4', '3', '600', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1252', '这是知识点1', '2', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1253', '这是知识点2', '2', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1254', '这是知识点3', '4', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1255', '这是知识点4', '1', '601', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1256', '这是知识点1', '3', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1257', '这是知识点2', '4', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1258', '这是知识点3', '1', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1259', '这是知识点4', '2', '602', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1260', '这是知识点1', '4', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1261', '这是知识点2', '1', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1262', '这是知识点3', '4', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1263', '这是知识点4', '4', '603', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1264', '这是知识点1', '3', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1265', '这是知识点2', '1', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1266', '这是知识点3', '3', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1267', '这是知识点4', '1', '604', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1268', '这是知识点1', '1', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1269', '这是知识点2', '2', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1270', '这是知识点3', '2', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1271', '这是知识点4', '2', '605', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1272', '这是知识点1', '1', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1273', '这是知识点2', '4', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1274', '这是知识点3', '2', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1275', '这是知识点4', '3', '606', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1276', '这是知识点1', '3', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1277', '这是知识点2', '2', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1278', '这是知识点3', '3', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1279', '这是知识点4', '4', '607', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1280', '这是知识点1', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1281', '这是知识点2', '1', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1282', '这是知识点3', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1283', '这是知识点4', '4', '608', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1284', '这是知识点1', '4', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1285', '这是知识点2', '1', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1286', '这是知识点3', '2', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1287', '这是知识点4', '1', '609', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1288', '这是知识点1', '4', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1289', '这是知识点2', '4', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1290', '这是知识点3', '1', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1291', '这是知识点4', '3', '610', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1292', '这是知识点1', '1', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1293', '这是知识点2', '1', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1294', '这是知识点3', '1', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1295', '这是知识点4', '1', '611', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1296', '这是知识点1', '3', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1297', '这是知识点2', '2', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1298', '这是知识点3', '2', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1299', '这是知识点4', '4', '612', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1300', '这是知识点1', '1', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1301', '这是知识点2', '3', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1302', '这是知识点3', '3', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1303', '这是知识点4', '4', '613', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1304', '这是知识点1', '4', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1305', '这是知识点2', '2', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1306', '这是知识点3', '2', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1307', '这是知识点4', '3', '614', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1308', '这是知识点1', '4', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1309', '这是知识点2', '3', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1310', '这是知识点3', '1', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1311', '这是知识点4', '4', '615', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1312', '这是知识点1', '4', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1313', '这是知识点2', '3', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1314', '这是知识点3', '3', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1315', '这是知识点4', '2', '616', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1316', '这是知识点1', '1', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1317', '这是知识点2', '1', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1318', '这是知识点3', '4', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1319', '这是知识点4', '3', '617', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1320', '这是知识点1', '2', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1321', '这是知识点2', '1', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1322', '这是知识点3', '4', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1323', '这是知识点4', '2', '618', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1324', '这是知识点1', '4', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1325', '这是知识点2', '1', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1326', '这是知识点3', '3', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1327', '这是知识点4', '2', '619', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1328', '这是知识点1', '3', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1329', '这是知识点2', '4', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1330', '这是知识点3', '1', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1331', '这是知识点4', '4', '620', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1332', '这是知识点1', '2', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1333', '这是知识点2', '2', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1334', '这是知识点3', '3', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1335', '这是知识点4', '4', '621', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1336', '这是知识点1', '4', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1337', '这是知识点2', '3', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1338', '这是知识点3', '3', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1339', '这是知识点4', '2', '622', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1340', '这是知识点1', '1', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1341', '这是知识点2', '3', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1342', '这是知识点3', '3', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1343', '这是知识点4', '3', '623', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1344', '这是知识点1', '4', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1345', '这是知识点2', '3', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1346', '这是知识点3', '1', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1347', '这是知识点4', '2', '624', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1348', '这是知识点1', '3', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1349', '这是知识点2', '3', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1350', '这是知识点3', '4', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1351', '这是知识点4', '1', '625', '2018-01-01 00:00:00', '2018-05-20 23:53:56');
INSERT INTO `knowledge` VALUES ('1352', '11111111', '1', '954', '2018-05-29 15:31:14', '2018-05-29 15:31:14');

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `lesson_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `lesson_title` varchar(200) NOT NULL,
  `lesson_video_url` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`lesson_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=630 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('1', '854', 'Linux简介', 'www.baidu.com', '2018-04-03 09:37:08', '2018-04-03 09:37:21');
INSERT INTO `lesson` VALUES ('2', '854', 'Linux详解', 'www.baidu.com', '2018-04-03 09:37:08', '2018-04-03 09:37:21');
INSERT INTO `lesson` VALUES ('3', '3298', '1.1认识JAVA', 'Java1-1-1.mp4', '2018-04-08 20:08:38', '2018-04-08 20:08:44');
INSERT INTO `lesson` VALUES ('4', '3298', '1.2JAVA开发工具', 'Java1-1-2.mp4', '2018-04-08 20:09:10', '2018-04-08 20:09:13');
INSERT INTO `lesson` VALUES ('5', '3298', '2.1基本数据类型', 'Java1-2.mp4', '2018-04-08 20:09:34', '2018-04-08 20:09:37');
INSERT INTO `lesson` VALUES ('6', '3298', '3.1表达式', 'Java1-3-1.mp4', '2018-04-08 20:09:56', '2018-04-08 20:09:59');
INSERT INTO `lesson` VALUES ('7', '3298', '3.2运算符优先级与类型转换', 'Java1-3-2.mp4', '2018-04-08 20:10:21', '2018-04-08 20:10:23');
INSERT INTO `lesson` VALUES ('8', '3298', '4.1基本输入、输出', 'Java1-4.mp4', '2018-04-08 20:10:49', '2018-04-08 20:10:52');
INSERT INTO `lesson` VALUES ('9', '3300', '1.1走进Android世界', 'Java1-1-1.mp4', '2018-04-13 14:07:11', '2018-04-13 14:07:14');
INSERT INTO `lesson` VALUES ('10', '3300', '1.2安卓系统的发展历程', 'Java1-1-1.mp4', '2018-04-13 14:07:51', '2018-04-13 14:07:53');
INSERT INTO `lesson` VALUES ('11', '3300', '2.1Android开发环境的搭建', 'Java1-1-1.mp4', '2018-04-13 14:08:17', '2018-04-13 14:08:21');
INSERT INTO `lesson` VALUES ('12', '3300', '2.2第一个安卓应用', 'Java1-1-1.mp4', '2018-04-13 14:09:13', '2018-04-13 14:09:15');
INSERT INTO `lesson` VALUES ('13', '3300', '2.3模拟器的使用', 'Java1-1-1.mp4', '2018-04-13 14:10:35', '2018-04-13 14:10:38');
INSERT INTO `lesson` VALUES ('452', '854', '1.1Linux 达人养成计划 II简介', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('453', '854', '1.2Linux 达人养成计划 II详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('454', '855', '1.1Linux达人养成计划 I详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('455', '855', '1.2Linux达人养成计划 I详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('456', '856', '1.1Linux Guide for Developers详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('457', '856', '1.2Linux Guide for Developers详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('458', '857', '1.1Linux中的计划任务之Crontab详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('459', '857', '1.2Linux中的计划任务之Crontab详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('460', '858', '1.1云安全的架构设计与实践之旅详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('461', '858', '1.2云安全的架构设计与实践之旅详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('462', '859', '1.1Linux网络管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('463', '859', '1.2Linux网络管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('464', '860', '1.1在线分布式数据库原理与实践详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('465', '860', '1.2在线分布式数据库原理与实践详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('466', '861', '1.1云计算 - 引领阿里生态的技术发展之路详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('467', '861', '1.2云计算 - 引领阿里生态的技术发展之路详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('468', '862', '1.1openstack最新技术解析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('469', '862', '1.2openstack最新技术解析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('470', '863', '1.1阿里云助力弹性伸缩服务详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('471', '863', '1.2阿里云助力弹性伸缩服务详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('472', '864', '1.1携程C4技术分享沙龙详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('473', '864', '1.2携程C4技术分享沙龙详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('474', '865', '1.1shell编程之变量详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('475', '865', '1.2shell编程之变量详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('476', '866', '1.1Linux系统扫描技术及安全防范详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('477', '866', '1.2Linux系统扫描技术及安全防范详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('478', '867', '1.1shell编程之运算符详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('479', '867', '1.2shell编程之运算符详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('480', '868', '1.1shell编程之环境变量配置文件详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('481', '868', '1.2shell编程之环境变量配置文件详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('482', '869', '1.1shell编程之正则表达式详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('483', '869', '1.2shell编程之正则表达式详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('484', '870', '1.1走近大数据之Hive入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('485', '870', '1.2走近大数据之Hive入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('486', '871', '1.1用iptables搭建一套强大的安全防护盾详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('487', '871', '1.2用iptables搭建一套强大的安全防护盾详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('488', '872', '1.1Hadoop大数据平台架构与实践--基础篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('489', '872', '1.2Hadoop大数据平台架构与实践--基础篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('490', '873', '1.1走近大数据之Hive进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('491', '873', '1.2走近大数据之Hive进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('492', '874', '1.1shell编程之条件判断与流程控制详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('493', '874', '1.2shell编程之条件判断与流程控制详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('494', '875', '1.1R语言入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('495', '875', '1.2R语言入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('496', '876', '1.1Linux软件安装管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('497', '876', '1.2Linux软件安装管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('498', '877', '1.1电商大数据应用之用户画像详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('499', '877', '1.2电商大数据应用之用户画像详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('500', '878', '1.1走进大数据之storm流式计算基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('501', '878', '1.2走进大数据之storm流式计算基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('502', '879', '1.1Linux权限管理之基本权限详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('503', '879', '1.2Linux权限管理之基本权限详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('504', '880', '1.1OpenStack基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('505', '880', '1.2OpenStack基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('506', '881', '1.1Linux权限管理之特殊权限详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('507', '881', '1.2Linux权限管理之特殊权限详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('508', '882', '1.1Shell典型应用之主控脚本实现详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('509', '882', '1.2Shell典型应用之主控脚本实现详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('510', '883', '1.1OpenStack+ 企业实践论坛详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('511', '883', '1.2OpenStack+ 企业实践论坛详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('512', '884', '1.1Linux服务管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('513', '884', '1.2Linux服务管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('514', '885', '1.1Shell典型应用之系统信息及运行状态获取详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('515', '885', '1.2Shell典型应用之系统信息及运行状态获取详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('516', '886', '1.1Shell典型应用之nginx和mysql应用状态分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('517', '886', '1.2Shell典型应用之nginx和mysql应用状态分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('518', '887', '1.1Shell典型应用之应用日志分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('519', '887', '1.2Shell典型应用之应用日志分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('520', '888', '1.1R语言基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('521', '888', '1.2R语言基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('522', '889', '1.1Linux系统管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('523', '889', '1.2Linux系统管理详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('524', '890', '1.1Scala程序设计—基础篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('525', '890', '1.2Scala程序设计—基础篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('526', '891', '1.1最新Openstack技术和实战详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('527', '891', '1.2最新Openstack技术和实战详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('528', '892', '1.1Linux智能DNS服务搭建之Bind服务详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('529', '892', '1.2Linux智能DNS服务搭建之Bind服务详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('530', '893', '1.1R语言之数据可视化详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('531', '893', '1.2R语言之数据可视化详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('532', '894', '1.1Echarts3.0入门基础与实战详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('533', '894', '1.2Echarts3.0入门基础与实战详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('534', '895', '1.1软件测试基础-概念篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('535', '895', '1.2软件测试基础-概念篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('536', '896', '1.1PHP环境LAMP/LNMP安装与配置详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('537', '896', '1.2PHP环境LAMP/LNMP安装与配置详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('538', '897', '1.1TesterHome2016年移动测试大会详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('539', '897', '1.2TesterHome2016年移动测试大会详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('540', '898', '1.1KVM虚拟化技术详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('541', '898', '1.2KVM虚拟化技术详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('542', '899', '1.1美女带你走入LR性能测试框架基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('543', '899', '1.2美女带你走入LR性能测试框架基础详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('544', '900', '1.1Linux Bind负载均衡详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('545', '900', '1.2Linux Bind负载均衡详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('546', '901', '1.1Python在数据科学中的应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('547', '901', '1.2Python在数据科学中的应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('548', '902', '1.1App压力测试入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('549', '902', '1.2App压力测试入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('550', '903', '1.1JMeter性能测试入门篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('551', '903', '1.2JMeter性能测试入门篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('552', '904', '1.1Python-走进Requests库详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('553', '904', '1.2Python-走进Requests库详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('554', '905', '1.1接口测试基础之入门篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('555', '905', '1.2接口测试基础之入门篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('556', '906', '1.1Linux 智能DNS详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('557', '906', '1.2Linux 智能DNS详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('558', '907', '1.1JMeter之HTTP协议接口性能测试详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('559', '907', '1.2JMeter之HTTP协议接口性能测试详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('560', '908', '1.1自动化测试之selenium工具使用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('561', '908', '1.2自动化测试之selenium工具使用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('562', '909', '1.1重定向和伪静态在网站中的应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('563', '909', '1.2重定向和伪静态在网站中的应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('564', '910', '1.1vagrant打造跨平台可移动的开发环境详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('565', '910', '1.2vagrant打造跨平台可移动的开发环境详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('566', '911', '1.1Spark从零开始详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('567', '911', '1.2Spark从零开始详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('568', '912', '1.1WeTest移动测试系列沙龙-手游安全测试详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('569', '912', '1.2WeTest移动测试系列沙龙-手游安全测试详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('570', '913', '1.1如何写好测试用例详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('571', '913', '1.2如何写好测试用例详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('572', '914', '1.1实例妙解Sed和Awk的秘密详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('573', '914', '1.2实例妙解Sed和Awk的秘密详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('574', '915', '1.1轻松愉快之玩转SpringData详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('575', '915', '1.2轻松愉快之玩转SpringData详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('576', '916', '1.1第一个docker化的java应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('577', '916', '1.2第一个docker化的java应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('578', '917', '1.1R语言入门与进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('579', '917', '1.2R语言入门与进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('580', '918', '1.1Python数据分析-基础技术篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('581', '918', '1.2Python数据分析-基础技术篇详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('582', '919', '1.1使用java构建和维护接口自动化测试框架详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('583', '919', '1.2使用java构建和维护接口自动化测试框架详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('584', '920', '1.1浅析SQLmap详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('585', '920', '1.2浅析SQLmap详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('586', '921', '1.1Docker入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('587', '921', '1.2Docker入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('588', '922', '1.1游戏测试入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('589', '922', '1.2游戏测试入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('590', '923', '1.1HBase入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('591', '923', '1.2HBase入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('592', '924', '1.1ElasticSearch入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('593', '924', '1.2ElasticSearch入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('594', '925', '1.1Hadoop进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('595', '925', '1.2Hadoop进阶详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('596', '926', '1.1AWS云计算—AWS云上的大数据分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('597', '926', '1.2AWS云计算—AWS云上的大数据分析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('598', '927', '1.1AWS云-深度学习&机器学习的AI业务应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('599', '927', '1.2AWS云-深度学习&机器学习的AI业务应用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('600', '928', '1.1AWS云计算—混合架构&DevOps深度实践详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('601', '928', '1.2AWS云计算—混合架构&DevOps深度实践详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('602', '929', '1.1AWS云服务介绍-Amazon Aurora详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('603', '929', '1.2AWS云服务介绍-Amazon Aurora详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('604', '930', '1.1DevOps和云计算初识详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('605', '930', '1.2DevOps和云计算初识详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('606', '931', '1.1AWS云计算—使用AWS实现自动化运维详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('607', '931', '1.2AWS云计算—使用AWS实现自动化运维详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('608', '932', '1.1AWS云服务助力企业转型升级详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('609', '932', '1.2AWS云服务助力企业转型升级详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('610', '933', '1.1Elastic Stack入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('611', '933', '1.2Elastic Stack入门详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('612', '934', '1.1AWS云计算—云服务架构深入解析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('613', '934', '1.2AWS云计算—云服务架构深入解析详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('614', '935', '1.1AWS物联网前（IoT）沿技术分享详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('615', '935', '1.2AWS物联网前（IoT）沿技术分享详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('616', '936', '1.1Hadoop基础及演练详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('617', '936', '1.2Hadoop基础及演练详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('618', '937', '1.1AWS云计算—面向开发者的云解决方案详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('619', '937', '1.2AWS云计算—面向开发者的云解决方案详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('620', '938', '1.1web端功能自动化定位元素详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('621', '938', '1.2web端功能自动化定位元素详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('622', '939', '1.1AWS的入门与使用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('623', '939', '1.2AWS的入门与使用详解', 'Java1-1-1.mp4', '2018-04-15 20:37:55', '2018-04-15 20:37:55');
INSERT INTO `lesson` VALUES ('624', '3301', '1.1一个简单的网页', 'Java1-1-1.mp4', '2018-04-16 23:00:41', '2018-04-16 23:00:44');
INSERT INTO `lesson` VALUES ('625', '3301', '1.2超链接，网页间跳转', 'Java1-1-1.mp4', '2018-04-16 23:01:21', '2018-04-16 23:01:24');
INSERT INTO `lesson` VALUES ('627', '954', 'test0528', '', '2018-05-28 19:10:59', '2018-05-28 19:10:59');
INSERT INTO `lesson` VALUES ('628', '954', 'test0528', '', '2018-05-28 19:18:46', '2018-05-28 19:18:46');
INSERT INTO `lesson` VALUES ('629', '954', '121', 's', '2018-05-29 15:27:34', '2018-05-29 15:27:34');

-- ----------------------------
-- Table structure for live_announcement
-- ----------------------------
DROP TABLE IF EXISTS `live_announcement`;
CREATE TABLE `live_announcement` (
  `live_announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `live_room_id` int(11) unsigned NOT NULL,
  `live_announcement_content` varchar(255) NOT NULL,
  `live_announcement_stick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`live_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of live_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for live_room
-- ----------------------------
DROP TABLE IF EXISTS `live_room`;
CREATE TABLE `live_room` (
  `live_room_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `live_room_number` varchar(25) NOT NULL,
  `teacher_id` int(11) unsigned NOT NULL,
  `live_room_name` varchar(255) NOT NULL,
  `live_room_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `live_room_image` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`live_room_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of live_room
-- ----------------------------
INSERT INTO `live_room` VALUES ('1', '9600f698', '1', '生活中的数学', '1', '0.png', '2018-04-07 11:34:45', '2018-04-07 11:34:49');
INSERT INTO `live_room` VALUES ('2', '723203c2', '2', '趣味计算机', '1', '0.png', '2018-04-07 11:37:58', '2018-04-07 11:38:01');
INSERT INTO `live_room` VALUES ('3', 'c4a3c846', '3', '廖老师的直播间', '1', '0.png', '2018-04-07 11:39:55', '2018-04-07 11:39:58');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_type` tinyint(1) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `message_link` varchar(255) NOT NULL,
  `message_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '你成功报名了Linux 达人养成计划 II的课程', 'course_id= 854user_id= 1', '1', '1', '1', '2018-05-26 15:46:15', '2018-05-26 15:46:15');
INSERT INTO `message` VALUES ('2', '1', '你成功报名了null的课程', 'course_id= 845user_id= 1', '0', '1', '1', '2018-05-27 19:05:58', '2018-05-27 19:05:58');
INSERT INTO `message` VALUES ('3', '1', '你成功报名了Linux 达人养成计划 II的课程', 'course_id= 854user_id= 1', '0', '1', '1', '2018-05-27 19:09:40', '2018-05-27 19:09:40');
INSERT INTO `message` VALUES ('4', '1', '你成功报名了null的课程', 'course_id= 845user_id= 2', '0', '2', '1', '2018-05-27 19:50:49', '2018-05-27 19:50:49');
INSERT INTO `message` VALUES ('5', '1', '你成功报名了Linux 达人养成计划 II的课程', 'course_id= 854user_id= 1', '0', '1', '1', '2018-05-27 19:53:18', '2018-05-27 19:53:18');

-- ----------------------------
-- Table structure for mistake
-- ----------------------------
DROP TABLE IF EXISTS `mistake`;
CREATE TABLE `mistake` (
  `mistake_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `exam_item_id` int(11) unsigned NOT NULL,
  `student_id` int(11) unsigned NOT NULL,
  `student_answer` varchar(255) NOT NULL,
  `mistake_note` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`mistake_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mistake
-- ----------------------------

-- ----------------------------
-- Table structure for mycourse
-- ----------------------------
DROP TABLE IF EXISTS `mycourse`;
CREATE TABLE `mycourse` (
  `mycourse_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `course_id` int(11) unsigned NOT NULL,
  `learn_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`mycourse_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mycourse
-- ----------------------------
INSERT INTO `mycourse` VALUES ('1', '6', '854', '1', '2018-05-22 14:13:20', '2018-05-22 14:13:23');
INSERT INTO `mycourse` VALUES ('2', '7', '854', '1', '2018-05-22 14:18:22', '2018-05-22 14:18:25');
INSERT INTO `mycourse` VALUES ('3', '6', '855', '1', '2018-05-22 14:18:44', '2018-05-22 14:18:48');
INSERT INTO `mycourse` VALUES ('4', '7', '855', '1', '2018-05-22 14:19:02', '2018-05-22 14:19:04');
INSERT INTO `mycourse` VALUES ('5', '8', '854', '1', '2018-05-22 14:19:18', '2018-05-22 14:19:25');
INSERT INTO `mycourse` VALUES ('6', '11', '863', '1', '2018-05-22 14:20:44', '2018-05-22 14:20:46');
INSERT INTO `mycourse` VALUES ('12', '1', '845', '1', '2018-05-27 19:05:58', '2018-05-27 19:05:58');
INSERT INTO `mycourse` VALUES ('14', '2', '845', '1', '2018-05-27 19:50:48', '2018-05-27 19:50:48');
INSERT INTO `mycourse` VALUES ('15', '1', '854', '1', '2018-05-27 19:53:18', '2018-05-27 19:53:18');

-- ----------------------------
-- Table structure for my_practical_training
-- ----------------------------
DROP TABLE IF EXISTS `my_practical_training`;
CREATE TABLE `my_practical_training` (
  `my_practical_training_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `practical_training_id` int(10) unsigned NOT NULL,
  `my_practical_training_file` varchar(255) DEFAULT NULL,
  `my_practical_training_grade` int(3) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`my_practical_training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_practical_training
-- ----------------------------

-- ----------------------------
-- Table structure for my_task
-- ----------------------------
DROP TABLE IF EXISTS `my_task`;
CREATE TABLE `my_task` (
  `my_task_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL,
  `student_id` int(11) NOT NULL,
  `my_task_state` tinyint(4) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` date NOT NULL,
  PRIMARY KEY (`my_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_task
-- ----------------------------

-- ----------------------------
-- Table structure for platform_bill
-- ----------------------------
DROP TABLE IF EXISTS `platform_bill`;
CREATE TABLE `platform_bill` (
  `platform_bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_bill_title` varchar(40) NOT NULL,
  `platform_bill_detail` varchar(255) DEFAULT NULL,
  `platform_bill_money` decimal(10,2) NOT NULL,
  `platform_bill_balance` decimal(14,2) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platform_bill
-- ----------------------------

-- ----------------------------
-- Table structure for platform_course
-- ----------------------------
DROP TABLE IF EXISTS `platform_course`;
CREATE TABLE `platform_course` (
  `platform_course_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_course
-- ----------------------------
INSERT INTO `platform_course` VALUES ('1', '854', '2018-05-18 08:36:35', '2018-05-18 08:36:39');
INSERT INTO `platform_course` VALUES ('2', '855', '2018-05-18 08:36:49', '2018-05-18 08:36:52');
INSERT INTO `platform_course` VALUES ('3', '856', '2018-05-18 09:40:10', '2018-05-18 09:40:10');
INSERT INTO `platform_course` VALUES ('4', '857', '2018-05-18 22:50:48', '2018-05-18 22:50:48');
INSERT INTO `platform_course` VALUES ('5', '858', '2018-05-18 23:57:53', '2018-05-18 23:57:53');
INSERT INTO `platform_course` VALUES ('8', '859', '2018-05-21 22:24:15', '2018-05-21 22:24:15');
INSERT INTO `platform_course` VALUES ('9', '866', '2018-05-21 22:24:20', '2018-05-21 22:24:20');
INSERT INTO `platform_course` VALUES ('10', '869', '2018-05-21 22:24:26', '2018-05-21 22:24:26');

-- ----------------------------
-- Table structure for platform_image
-- ----------------------------
DROP TABLE IF EXISTS `platform_image`;
CREATE TABLE `platform_image` (
  `platform_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_information_id` int(11) unsigned NOT NULL,
  `platform_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_image
-- ----------------------------
INSERT INTO `platform_image` VALUES ('1', '1', '5a1e6e0b000151e706000338-240-135.jpg', '0', '2018-04-02 21:26:32', '2018-04-02 21:26:49');
INSERT INTO `platform_image` VALUES ('3', '2', '57035f730001af5706000338-240-135.jpg', '0', '2018-04-02 21:47:28', '2018-04-02 21:50:37');
INSERT INTO `platform_image` VALUES ('4', '7', '55063ec30001774b06000338-240-135.jpg', '0', '2018-04-02 21:50:05', '2018-04-02 21:50:40');
INSERT INTO `platform_image` VALUES ('5', '6', '563b13700001ebf906000338-240-135.jpg', '0', '2018-04-02 21:50:33', '2018-04-02 21:50:42');
INSERT INTO `platform_image` VALUES ('6', '5', '56dd41cf0001599506000338-240-135.jpg', '0', '2018-04-02 21:51:13', '2018-04-02 21:51:16');
INSERT INTO `platform_image` VALUES ('7', '8', '559e31c80001971406000338-240-135.jpg', '0', '2018-04-02 21:52:44', '2018-04-02 21:52:47');
INSERT INTO `platform_image` VALUES ('8', '9', '5704aa88000104f106000338-240-135.jpg', '0', '2018-04-02 21:54:02', '0000-00-00 00:00:00');
INSERT INTO `platform_image` VALUES ('9', '10', '5873534e0001ecb106000338-240-135.jpg', '0', '2018-04-02 21:55:41', '2018-04-02 21:55:44');
INSERT INTO `platform_image` VALUES ('10', '11', '55f147b400019c4d25001408-240-135.jpg', '0', '2018-04-02 21:57:05', '2018-04-02 21:57:42');
INSERT INTO `platform_image` VALUES ('11', '1', '59649da5000190ed06000338.jpg', '0', '2018-05-25 11:12:05', '2018-05-25 11:12:38');
INSERT INTO `platform_image` VALUES ('12', '2', '131878376988685203417-576x324.png', '0', '2018-05-25 11:12:09', '2018-05-25 11:12:41');
INSERT INTO `platform_image` VALUES ('13', '12', '59649da5000190ed06000338.jpg', '0', '2018-05-25 11:12:11', '2018-05-25 11:12:45');
INSERT INTO `platform_image` VALUES ('14', '13', '131877795117794398162-576x324.png', '0', '2018-05-25 11:12:14', '2018-05-25 11:12:47');
INSERT INTO `platform_image` VALUES ('15', '14', '131878167888541027831-576x324.png', '0', '2018-05-25 11:12:16', '2018-05-25 11:12:50');
INSERT INTO `platform_image` VALUES ('16', '15', '131878376988685203417-576x324.png', '0', '2018-05-25 11:12:19', '2018-05-25 11:12:52');
INSERT INTO `platform_image` VALUES ('17', '16', '131878574988578484812-576x324.png', '0', '2018-05-25 11:12:21', '2018-05-25 11:12:55');
INSERT INTO `platform_image` VALUES ('18', '17', '131879491482614357318-576x324.png', '0', '2018-05-25 11:12:22', '2018-05-25 11:12:57');
INSERT INTO `platform_image` VALUES ('19', '18', '132003831750938576934-576x324.png', '0', '2018-05-25 11:12:25', '2018-05-25 11:12:59');
INSERT INTO `platform_image` VALUES ('20', '19', '167265468302411611009-576x324.jpg', '0', '2018-05-25 11:12:27', '2018-05-25 11:13:01');
INSERT INTO `platform_image` VALUES ('21', '20', '172527089924545596021-576x324.jpg', '0', '2018-05-25 11:12:29', '2018-05-25 11:13:03');
INSERT INTO `platform_image` VALUES ('22', '21', '193352190643535036697-576x324.png', '0', '2018-05-25 11:12:31', '2018-05-25 11:13:05');
INSERT INTO `platform_image` VALUES ('23', '22', '234163724144373006351-576x324.png', '0', '2018-05-25 11:12:33', '2018-05-25 11:13:07');
INSERT INTO `platform_image` VALUES ('24', '23', '31585201103424163937-576x324.png', '0', '2018-05-25 11:12:36', '2018-05-25 11:13:11');

-- ----------------------------
-- Table structure for platform_information
-- ----------------------------
DROP TABLE IF EXISTS `platform_information`;
CREATE TABLE `platform_information` (
  `platform_information_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_information_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `platform_information_content` varchar(255) NOT NULL,
  `platform_information_author` varchar(20) NOT NULL,
  `information_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`platform_information_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_information
-- ----------------------------
INSERT INTO `platform_information` VALUES ('1', '开通云智教育平台', '“云智教育”平台定位为一个通过互联网将院校/机构、课程资源、学生、教师关联起来的教育平台。不同与其他在线教育平台，它可以提供最新的科学学习方法和个性化学习体验，面向更广的用户群体，拥有更为丰富的课程体系和授课模式，使得教育可以随时、随地、分享、共享，也将成为新的经济时代下互联网教育的最佳实践。', '云智教育', '2', '0', '2018-04-02 21:25:17', '2018-04-02 21:26:37');
INSERT INTO `platform_information` VALUES ('2', 'Hadoop', '大数据培训课程，大数据时代的到来，带给我们的不仅仅是生活上的巨大改观，还有技术上的不断革新，\n										抓住大数据行业的机遇，去千锋大数据培训班学习大数据，未来的前途将不可估量。我们应该都知道，\n										大数据主要的问题就是大数据的存储与计算问题。作为能够对大量数据进行分布式处理的\n										软件框架——hadoop目前已经发展成为分析大数据的领先平台，它能够以一种可靠、高效、可伸缩的方式进行数据处理。', '云智教育', '1', '0', '2018-04-02 21:46:49', '2018-04-02 21:52:01');
INSERT INTO `platform_information` VALUES ('5', 'OpenStack', '前几天，按照OpenStack版本的更新惯例，最新版本的OpenStack Queens又和大众见面了。相应的，stackalytics.com网站提供的社区贡献统计排名也新鲜出炉。\n\n在Queens代码贡献中，榜单选取了目前业内公认的最能体现社区贡献含金量的指标——Commits（提交代码次数）、Completed Blueprints（完成蓝图数）、Resolved Bugs（修复缺陷数）、Reviews（代码审阅数）等共四项指标进行对比分析。', '测试用户', '1', '0', '2018-04-02 21:48:09', '2018-04-02 21:52:04');
INSERT INTO `platform_information` VALUES ('6', 'Linux云计算', '如何在 Linux 上安装应用程序?因为有许多操作系统，这个问题不止有一个答案。应用程序可以可以来自许多来源 —— 几乎不可能数的清，并且每个开发团队都可以以他们认为最好的方式提供软件。知道如何安装你所得到的软件是成为操作系统高级用户的一部分。', '测试用户', '1', '0', '2018-04-02 21:49:00', '2018-04-02 21:52:06');
INSERT INTO `platform_information` VALUES ('7', 'Shell', 'GNOME Shell 被发现存在内存泄露的问题，现在官方开发团队已确认导致这个问题的原因 —— 忘记进行垃圾回收……GNOME 称目前正在修复该问题。“触发垃圾回收能够将 GNOME Shell 使用的内存量减少到正常水平”GNOME 开发者花了大约一周的时间来定位问题的根源，不过谢天谢地，内存泄漏的原因（看起来）已经确定。', '测试用户', '1', '0', '2018-04-02 21:52:11', '2018-04-02 21:55:08');
INSERT INTO `platform_information` VALUES ('8', 'R语言', '据了解，Mondly AR是一款关于语言的教育类应用程序，它通过AR技术替代了传统学习所需要的课本。并通过与谷歌的合作，这款应用中的AI角色能够通过各种有趣的视觉效果和3D模型，引导用户学习多达33种不同的语言基础。\n										据悉，应用中的AI教师还会向学习者提出问题，学习者需要口头回答该问题的答案，这样不仅可以增加用户理解该语言的能力，还能够锻炼用户的口语。值得一提的是，如果用户回答错误，这款应用程序并不只是简单的纠正错误，而会通过一种视觉效果让用户认识到自己的错误从而纠正它。', '测试用户', '1', '0', '2018-04-02 21:51:58', '2018-04-02 21:52:14');
INSERT INTO `platform_information` VALUES ('9', '大数据', '贵阳市交管局发布清明出行预测及交通安全提示。大数据分析预测今年清明节期间，贵阳市周边公墓车都将迎来较大车流，花溪公园、湿地公园、森林公园、黔灵山公园、青岩古镇等近郊旅游景区将会成为旅游热点，提醒广大市民部分公墓和景区存在停车位不足，请错峰出行或选择公交出行、步行等绿色方式文明出游。', '云智教育', '1', '0', '2018-04-02 21:53:42', '2018-04-02 21:54:09');
INSERT INTO `platform_information` VALUES ('10', '人工智能', '2018年4月1日，国际比赛日后五大联赛相继回归，红彩众专家也已经就周末的比赛做出了分析。昨日已经结束的比赛中，有的比分令人信服，有的场次令人费解，足球很奇妙，看完比分真是几家欢喜几家愁。昨天晚上意甲结束一场争夺，尤文图斯主场3-1击败AC米兰，巩固了自己的榜首位置，网易红彩推出的人工智能-澳彩五星指数单选准确命中本场比赛，昨日的澳彩五星指数已经完成了10场连中。', '云智教育', '1', '0', '2018-04-02 21:55:16', '2018-04-02 21:55:19');
INSERT INTO `platform_information` VALUES ('11', 'Linux权限管理', '本课程是《Linux权限管理之基本权限》的后续篇，为小伙伴们带来了Linux中常用的一些特殊权限命令，包括ACL权限、sudo权限、文件特殊权限和不可改变位权限。通过@Tony老师的精彩讲解，一定会让你对Linux中的权限有更深刻的认识。', '云智教育', '1', '0', '2018-04-02 21:57:10', '2018-04-02 21:57:36');
INSERT INTO `platform_information` VALUES ('12', 'JAVA', '测试', '测试 ', '0', '0', '2018-04-03 10:48:52', '2018-04-03 10:48:59');
INSERT INTO `platform_information` VALUES ('13', 'PHP', '测试', '测试', '1', '0', '2018-05-16 22:00:49', '2018-05-17 13:20:33');
INSERT INTO `platform_information` VALUES ('14', 'Web全栈视频', '\r\n开课吧作为慧科集团的在线教育平台，依托其得天独厚的行业优势，在2018年1月完成线上业务、人员重组后，短短四个月的时间服务学员2000+。开课吧蓬勃发展之际，更添一员领军大将——IT 界，廖雪峰（老师），作为开课吧的独家内容合伙人、研发战略顾问，让开课吧团队如虎添翼！\r\n', '开课吧', '0', '0', '2018-05-23 20:40:17', '2018-05-24 20:40:21');
INSERT INTO `platform_information` VALUES ('15', '嗨课堂', '教育行业注入的鲜活动力和家长们对教育目标的改变，让K12教育市场迎来变局。传统的大班化集体授课形式的课外辅导机构热度下降，K12阶段的在线授课模式成为家长们考虑的对象。据速途网旗下的基础数据研究机构，速途研究院发布的《2018年Q1中国K12在线教育行业研究报告》显示，2014年至2018年K12在线教育用户规模呈稳步上升状态，且从增长速度上来看，具有良好的发展前景。根据其增长趋势，速途研究院认为2018年我国K12在线教育用户规模有望达到1967万人。', '嗨课堂', '0', '0', '2018-05-24 20:46:51', '2018-05-24 20:55:58');
INSERT INTO `platform_information` VALUES ('16', '情感联结才是在线教育的未来', '五年时间，产品迭代升级与资本运作共同发生，一方面是落寞者被兼并消亡，另一方面是独角兽企业的显现。现在，已无人质疑在线教育的行业规模和市场前景，外界更为关心的是，在经过一轮淘汰赛后，已有巨头之姿的在线玩家们，如何能在这胶着的竞争态势下快人一步。', '在线教育', '0', '0', '2018-05-24 20:54:14', '2018-05-24 20:57:06');
INSERT INTO `platform_information` VALUES ('17', '上海科技节隆重开幕，掌门1对1成上海科技节唯一受邀在线教育企业', '5月19日，以“预见未来·人工智能的时代”为主题的2018年上海科技节主场活动在上海科技馆拉开帷幕。在线一对一辅导品牌掌门1对1作为上海科技节唯一受邀在线教育企业入驻“未来教育”展区。其创始人兼CEO张翼在科技节的论坛中提出，随着人工智能技术手段的研究和发展,在教育领域将逐步实现“AI in all”的互动教学新模式。', '掌门1对1', '0', '0', '2018-05-24 20:55:56', '2018-05-24 20:57:08');
INSERT INTO `platform_information` VALUES ('18', '在线教育小程序风头正劲，格子匠为你量身定制', '小程序对于教育行业，尤其是一些小的教育创业公司来说是十分划算的，既不需要花费太多的时间和精力去进行技术开发，也不需要后续的维护费用和时间，还可以碎片化的进行学习。出于经济成本的考虑，公司可以把小程序功能做得简单一点。微信小程序还适合预习、做作业等场景。微信小程序为移动学习增添了一种渠道，更适合‘碎片化’学习和分知识点学习，应用前景广阔。', '互联网', '0', '0', '2018-05-24 20:58:24', '2018-05-24 21:01:15');
INSERT INTO `platform_information` VALUES ('19', '在线教育PK传统教育', '在移动互联网，大数据，O2O等迅速崛起的新的网络形式下，传统教育和单纯的把课程移到线上的所谓的“线上教育”必定迎来改革。谁能真正的抓住新型在线教育的本质，完成“以老师为中心”到“以学生为中心”的转变，利用新型互联网的特征去帮助学生完成有效学习，谁就可能在这个大市场有机会和胜出！', '在线教育', '0', '0', '2018-05-24 20:58:29', '2018-05-24 21:01:18');
INSERT INTO `platform_information` VALUES ('20', '在线教育迎来直播时代，公考独角兽或将浮现', '随着在线直播技术的发展和教育观念的转变，随着越来越多的线上用户转入线上学习平台，以及越来越多的互联网企业布局在线教育领域，在线教育行业将会进入爆发式的增长。数据显示，目前中国在线教育市场规模在1700亿元左右，预计2020年将超过2000亿元。\r\n\r\n然而，在线教育行业的发展也意味着竞争的加剧，面对大浪淘沙的竞争，唯有解决用户的痛点，保证学习体验和教学质量的平台才能在竞争中胜出。公务员在线教育平台步知公考，就以其优质的学习体验和教学质量，赢得了考生们的支持。\r\n\r\n', '在线教育', '0', '0', '2018-05-24 21:01:12', '2018-05-24 21:01:20');
INSERT INTO `platform_information` VALUES ('21', '海风教育引领k12在线教育千亿市场', '从今年1月4日正式宣布成功完成与好未来集团、源码资本的数千万美元规模C论融资到3月28日发布家委会APP和智能学习硬件海风智学派再到4月23日公布新的slogan并发布K12在线教育领域首个落地AI应用好望角系统，海风教育除了在传统春节假期所在的2月没有大动作外，几乎保持了每月都有重磅消息公布的节奏。', '在线教育', '0', '0', '2018-05-24 21:02:11', '2018-05-24 21:02:13');
INSERT INTO `platform_information` VALUES ('22', '极客学院', '极客学院作为中国专业IT职业在线教育平台,拥有海量高清IT职业课程,涵盖30+个技术领域,如Android,iOS ,Flash,Java,Python,HTML5,Swift,Cocos2dx等视频教程.', '极客学院', '0', '0', '2018-05-24 21:14:40', '2018-05-24 21:28:21');
INSERT INTO `platform_information` VALUES ('23', '智慧树在线教育_全球大型的学分课程运营服务平台', '智慧树是全球大型的学分课程运营服务平台,在线教育平台拥有海量大学高品质课程,网络教育在线完美支持跨校授课,学分认证,名师名课名校,在线互动教育学堂,体验VIP级课程...', '智慧树在线教育', '0', '0', '2018-05-24 21:14:43', '2018-05-24 21:28:23');

-- ----------------------------
-- Table structure for practical_training
-- ----------------------------
DROP TABLE IF EXISTS `practical_training`;
CREATE TABLE `practical_training` (
  `practical_training_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `practical_training_describe` varchar(255) DEFAULT NULL,
  `practical_training_plan` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`practical_training_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of practical_training
-- ----------------------------
INSERT INTO `practical_training` VALUES ('2', '665', 'safas', 'safas', '2018-05-28 19:27:40', '2018-05-28 19:27:40');

-- ----------------------------
-- Table structure for practice
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `practice_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `exam_item_id` int(11) unsigned NOT NULL,
  `practice_answer` varchar(255) NOT NULL,
  `practice_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`practice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of practice
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `school_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_code` char(5) NOT NULL DEFAULT '',
  `school_name` varchar(50) NOT NULL DEFAULT '',
  `school_badge` varchar(255) NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) DEFAULT NULL,
  `school_background` varchar(255) NOT NULL DEFAULT '',
  `school_city` varchar(255) DEFAULT NULL,
  `school_province` varchar(255) DEFAULT NULL,
  `school_type` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1198 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('305', '8edb0', '杭州信息大学001', 'xiaohui.png', '测试介绍007', 'school.jpg', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('309', 'ff7dd', '丽水某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '丽水', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('317', 'e6a1c', '衡州信息小学002', 'xiaohui.png', '测试介绍002', 'school.jpg', '衡州', '江苏', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('329', 'c6a35', '金华某机构003', 'xiaohui.png', '测试介绍007', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('333', '83782', '台州测试学校004', 'xiaohui.png', '测试介绍007', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('341', 'fbc46', '杭州信息小学002', 'xiaohui.png', '测试介绍001', 'school.jpg', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-05-16 00:19:02');
INSERT INTO `school` VALUES ('345', 'b8fe4', '温州信息小学001', 'xiaohui.png', '测试介绍006', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('353', '78fc6', '金华某机构004', 'xiaohui.png', '测试介绍005', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('357', 'dec09', '衡州某机构004', 'xiaohui.png', '测试介绍004', 'school.jpg', '衡州', '江苏', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('365', 'eefd7', '台州某机构004', 'xiaohui.png', '测试介绍007', 'school.jpg', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('369', 'ac38f', '衡州信息学院002', 'xiaohui.png', '测试介绍004', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('377', '008f7', '嘉兴某机构004', 'xiaohui.png', '测试介绍006', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('381', '6ec32', '舟山某机构003', 'xiaohui.png', '测试介绍003', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('389', 'f2c52', '绍兴某机构003', 'xiaohui.png', '测试介绍003', 'school.jpg', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('393', 'aad0d', '丽水信息小学002', 'xiaohui.png', '测试介绍001', 'school.jpg', '丽水', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('401', '37698', '衡州信息学院001', 'xiaohui.png', '测试介绍005', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('405', 'f8c09', '台州信息学院002', 'xiaohui.png', '测试介绍005', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('413', 'b0ee3', '丽水信息学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('417', 'a304e', '丽水测试学校003', 'xiaohui.png', '测试介绍001', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('425', 'd17e6', '台州信息小学001', 'xiaohui.png', '测试介绍003', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('429', '395b3', '衡州某机构003', 'xiaohui.png', '测试介绍005', 'school.jpg', '衡州', '江苏', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('437', '75135', '金华测试小学', 'xiaohui.png', '测试介绍003', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('441', '75963', '温州测试小学', 'xiaohui.png', '测试介绍002', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('449', '410fa', '舟山信息小学001', 'xiaohui.png', '测试介绍003', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('453', 'a7f16', '嘉兴测试学校004', 'xiaohui.png', '测试介绍004', 'school.jpg', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('461', '8908b', '杭州信息学院002', 'xiaohui.png', '测试介绍007', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('465', '506ef', '金华测试小学', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('473', 'c1ce7', '台州信息小学002', 'xiaohui.png', '测试介绍002', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('477', 'ac4c4', '温州某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('485', '77013', '杭州测试学校003', 'xiaohui.png', '测试介绍003', 'school.jpg', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('489', '77892', '嘉兴测试学校003', 'xiaohui.png', '测试介绍004', 'school.jpg', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('497', '9c5e3', '丽水测试小学', 'xiaohui.png', '测试介绍005', 'school.jpg', '丽水', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('501', '53f28', '金华通信学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('509', '73026', '台州某机构003', 'xiaohui.png', '测试介绍001', 'school.jpg', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('513', '90740', '台州信息小学002', 'xiaohui.png', '测试介绍004', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('521', 'd26bc', '宁波测试学校003', 'xiaohui.png', '测试介绍005', 'school.jpg', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('525', '85d70', '台州通信学院001', 'xiaohui.png', '测试介绍004', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('533', '02e98', '台州信息小学001', 'xiaohui.png', '测试介绍005', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('537', 'ba537', '舟山信息学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('545', '8e944', '衡州测试小学', 'xiaohui.png', '测试介绍007', 'school.jpg', '衡州', '江苏', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('549', 'c9ca6', '丽水测试学校004', 'xiaohui.png', '测试介绍003', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('557', 'fa68e', '温州信息学院002', 'xiaohui.png', '测试介绍002', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('561', 'a807e', '杭州信息学院002', 'xiaohui.png', '测试介绍004', 'school.jpg', '湖州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('569', '8dd08', '舟山信息学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('573', '52844', '嘉兴某机构003', 'xiaohui.png', '测试介绍002', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('581', '73019', '宁波某机构004', 'xiaohui.png', '测试介绍003', 'school.jpg', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('585', '874a6', '舟山测试学校004', 'xiaohui.png', '测试介绍006', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('593', '5668a', '杭州测试小学', 'xiaohui.png', '测试介绍001', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('597', '18f51', '舟山信息小学001', 'xiaohui.png', '测试介绍002', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('605', '4556e', '台州信息小学001', 'xiaohui.png', '测试介绍004', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('609', 'edc4e', '衡州测试小学', 'xiaohui.png', '测试介绍004', 'school.jpg', '衡州', '江苏', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('617', '61e85', '绍兴某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('621', 'b9998', '丽水测试学校003', 'xiaohui.png', '测试介绍004', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('629', '82779', '舟山测试学校004', 'xiaohui.png', '测试介绍001', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('633', '66c81', '衡州测试学校003', 'xiaohui.png', '测试介绍002', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('641', 'bd7c1', '温州信息小学001', 'xiaohui.png', '测试介绍007', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('645', '27034', '温州测试学校004', 'xiaohui.png', '测试介绍003', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('653', '915fd', '杭州测试学校003', 'xiaohui.png', '测试介绍001', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('657', '581e9', '舟山某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('665', '1d5d3', '金华信息小学002', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('669', 'd8f81', '绍兴信息小学001', 'xiaohui.png', '测试介绍003', 'school.jpg', '绍兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('677', 'e3d37', '温州信息小学001', 'xiaohui.png', '测试介绍002', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('681', '3c30e', '宁波信息小学001', 'xiaohui.png', '测试介绍005', 'school.jpg', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('689', '4ff15', '丽水信息学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('693', '4114d', '丽水信息小学001', 'xiaohui.png', '测试介绍002', 'school.jpg', '丽水', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('701', 'c808a', '宁波信息学院002', 'xiaohui.png', '测试介绍007', 'school.jpg', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('705', '811f1', '宁波信息学院001', 'xiaohui.png', '测试介绍005', 'school.jpg', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('713', 'aadfd', '绍兴测试学校003', 'xiaohui.png', '测试介绍004', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('717', '96ec0', '嘉兴某机构004', 'xiaohui.png', '测试介绍003', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('725', 'de2ed', '舟山信息小学002', 'xiaohui.png', '测试介绍003', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('729', '05d50', '舟山某机构004', 'xiaohui.png', '测试介绍005', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('737', '958d4', '金华某机构004', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('741', '06cb5', '丽水测试小学', 'xiaohui.png', '测试介绍005', 'school.jpg', '丽水', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('749', '80cb2', '绍兴信息学院002', 'xiaohui.png', '测试介绍005', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('753', 'de244', '温州测试学校003', 'xiaohui.png', '测试介绍004', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('761', 'cfda1', '金华某机构003', 'xiaohui.png', '测试介绍006', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('765', '5d678', '台州某机构003', 'xiaohui.png', '测试介绍006', 'school.jpg', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('773', '44b7f', '杭州通信学院001', 'xiaohui.png', '测试介绍004', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('777', '1d2f6', '杭州通信学院001', 'xiaohui.png', '测试介绍002', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('785', 'fc42a', '衡州测试学校004', 'xiaohui.png', '测试介绍003', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('789', '6d3ea', '杭州信息小学001', 'xiaohui.png', '测试介绍004', 'school.jpg', '杭州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('797', '44f9b', '杭州测试小学', 'xiaohui.png', '测试介绍004', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('801', '15f1c', '金华测试学校003', 'xiaohui.png', '测试介绍007', 'school.jpg', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('809', '230da', '衡州信息学院001', 'xiaohui.png', '测试介绍002', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('813', '58412', '衡州通信学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('821', 'f6c82', '舟山信息学院002', 'xiaohui.png', '测试介绍003', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('825', 'e6d1c', '温州信息小学002', 'xiaohui.png', '测试介绍003', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('833', '9a7da', '台州信息学院002', 'xiaohui.png', '测试介绍006', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('837', 'e859d', '舟山测试小学', 'xiaohui.png', '测试介绍004', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('845', '3e617', '宁波某机构004', 'xiaohui.png', '测试介绍002', 'school.jpg', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('849', '4b549', '衡州信息学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('857', 'bc11e', '台州某机构004', 'xiaohui.png', '测试介绍003', 'school.jpg', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('861', '49c87', '绍兴信息小学002', 'xiaohui.png', '测试介绍003', 'school.jpg', '绍兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('869', 'bb37e', '杭州信息学院002', 'xiaohui.png', '测试介绍003', 'school.jpg', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('873', '1ba1d', '宁波某机构004', 'xiaohui.png', '测试介绍007', 'school.jpg', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('881', 'c97ce', '金华通信学院001', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('885', 'c5294', '绍兴信息小学002', 'xiaohui.png', '测试介绍002', 'school.jpg', '绍兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('893', 'd2e41', '舟山某机构004', 'xiaohui.png', '测试介绍002', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('897', 'd13dc', '温州信息小学002', 'xiaohui.png', '测试介绍003', 'school.jpg', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('905', '0b68f', '杭州测试学校004', 'xiaohui.png', '测试介绍005', 'school.jpg', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('909', 'cf539', '金华信息学院002', 'xiaohui.png', '测试介绍005', 'school.jpg', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('917', '193f9', '丽水测试学校003', 'xiaohui.png', '测试介绍005', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('921', '0fa78', '绍兴某机构004', 'xiaohui.png', '测试介绍005', 'school.jpg', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('929', '54b03', '台州通信学院001', 'xiaohui.png', '测试介绍002', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('933', '554ad', '杭州测试学校004', 'xiaohui.png', '测试介绍007', 'school.jpg', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('941', 'cc658', '嘉兴某机构004', 'xiaohui.png', '测试介绍005', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('945', '949c2', '绍兴信息学院002', 'xiaohui.png', '测试介绍005', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('953', '49e9c', '宁波某机构003', 'xiaohui.png', '测试介绍006', 'school.jpg', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('957', '5714b', '舟山某机构004', 'xiaohui.png', '测试介绍006', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('965', '55479', '金华某机构004', 'xiaohui.png', '测试介绍005', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('969', 'c6195', '丽水测试学校003', 'xiaohui.png', '测试介绍006', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('977', '81bd1', '金华信息学院002', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('981', '6b10c', '杭州某机构003', 'xiaohui.png', '测试介绍001', 'school.jpg', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('989', '4035b', '嘉兴某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('993', 'd6052', '衡州通信学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1001', '2d5cd', '绍兴通信学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1005', '05838', '金华信息小学001', 'xiaohui.png', '测试介绍006', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1013', '7b222', '台州测试学校004', 'xiaohui.png', '测试介绍001', 'school.jpg', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1017', '0f1db', '丽水测试小学', 'xiaohui.png', '测试介绍003', 'school.jpg', '丽水', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1025', 'f97f4', '舟山某机构003', 'xiaohui.png', '测试介绍004', 'school.jpg', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1029', '8684e', '台州测试小学', 'xiaohui.png', '测试介绍001', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1037', 'ed2f1', '舟山测试学校003', 'xiaohui.png', '测试介绍002', 'school.jpg', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1041', 'bb8da', '丽水通信学院001', 'xiaohui.png', '测试介绍004', 'school.jpg', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1049', '476be', '衡州某机构004', 'xiaohui.png', '测试介绍001', 'school.jpg', '衡州', '江苏', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1053', 'e64a4', '金华信息小学001', 'xiaohui.png', '测试介绍007', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1061', 'f826c', '嘉兴信息学院001', 'xiaohui.png', '测试介绍007', 'school.jpg', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1065', '7b751', '舟山信息小学001', 'xiaohui.png', '测试介绍006', 'school.jpg', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1073', '3d72f', '金华某机构003', 'xiaohui.png', '测试介绍001', 'school.jpg', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1077', '07e95', '绍兴信息学院001', 'xiaohui.png', '测试介绍002', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1085', '04a44', '宁波信息学院001', 'xiaohui.png', '测试介绍005', 'school.jpg', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1089', 'ec82d', '台州测试小学', 'xiaohui.png', '测试介绍005', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1097', 'cba83', '金华测试小学', 'xiaohui.png', '测试介绍005', 'school.jpg', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1101', '7f677', '温州测试学校003', 'xiaohui.png', '测试介绍001', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1109', 'cb1de', '台州信息小学002', 'xiaohui.png', '测试介绍006', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1113', '6656e', '杭州信息学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1121', '33841', '温州测试学校004', 'xiaohui.png', '测试介绍003', 'school.jpg', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1125', 'cd31d', '衡州通信学院001', 'xiaohui.png', '测试介绍003', 'school.jpg', '衡州', '江苏', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1133', '593d7', '台州信息小学002', 'xiaohui.png', '测试介绍006', 'school.jpg', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1137', 'bb037', '绍兴某机构003', 'xiaohui.png', '测试介绍007', 'school.jpg', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1145', '9e3ce', '台州信息小学001', 'xiaohui.png', '测试介绍003', 'school.jpg', '台州', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1149', '19999', '宁波测试学校004', 'xiaohui.png', '测试介绍004', 'school.jpg', '宁波', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1161', '3b020', '金华信息学院001', 'xiaohui.png', '测试介绍005', 'school.jpg', '金华', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1169', 'ac759', '嘉兴某机构003', 'xiaohui.png', '测试介绍001', 'school.jpg', '嘉兴', '浙江', '3', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1173', '74e35', '金华信息学院002', 'xiaohui.png', '测试介绍002', 'school.jpg', '金华', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1181', '10ea6', '绍兴测试学校004', 'xiaohui.png', '测试介绍001', 'school.jpg', '绍兴', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1193', '72b0c', '丽水测试小学', 'xiaohui.png', '测试介绍003', 'school.jpg', '丽水', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1197', 'bc9ed', '温州信息小学001', 'xiaohui.png', '测试介绍001', 'school.jpg', '温州', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');

-- ----------------------------
-- Table structure for school_image
-- ----------------------------
DROP TABLE IF EXISTS `school_image`;
CREATE TABLE `school_image` (
  `school_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_information_id` int(11) unsigned NOT NULL,
  `school_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`school_image_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school_image
-- ----------------------------
INSERT INTO `school_image` VALUES ('1', '1', '5a2e515200019a0306000338-240-135.jpg', '0', '2018-04-02 21:36:25', '2018-04-02 21:36:31');
INSERT INTO `school_image` VALUES ('2', '2', '131877795117794398162-576x324.png', '0', '2018-04-05 13:26:30', '2018-04-07 13:26:34');
INSERT INTO `school_image` VALUES ('3', '3', '59649da5000190ed06000338.jpg', '0', '2018-05-25 13:36:13', '2018-05-25 13:36:27');
INSERT INTO `school_image` VALUES ('4', '4', '131878167888541027831-576x324.png', '0', '2018-05-25 13:36:16', '2018-05-25 13:36:30');
INSERT INTO `school_image` VALUES ('5', '5', '131879491482614357318-576x324.png', '0', '2018-05-25 13:36:18', '2018-05-25 13:36:32');
INSERT INTO `school_image` VALUES ('6', '6', '193352190643535036697-576x324.png', '0', '2018-05-25 13:36:20', '2018-05-25 13:36:35');
INSERT INTO `school_image` VALUES ('7', '7', '167265468302411611009-576x324.jpg', '0', '2018-05-25 13:36:24', '2018-05-25 13:36:37');

-- ----------------------------
-- Table structure for school_information
-- ----------------------------
DROP TABLE IF EXISTS `school_information`;
CREATE TABLE `school_information` (
  `school_information_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_information_title` varchar(50) NOT NULL,
  `school_information_author` varchar(20) NOT NULL,
  `school_information_content` varchar(255) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `information_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`school_information_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school_information
-- ----------------------------
INSERT INTO `school_information` VALUES ('1', '开通杭州测试学院', '杭州测试学院', '杭州测试学院在软硬件方面为莘莘学子创造良好条件。为适应社会经济发展的需要，培养基层技术应用型人才，学校坚持学生基本素质的培养。注重学生在知识、能力、实践等各方面的发展，强调基础学科知识的理解与掌握。', '485', '1', '0', '2018-04-02 21:35:16', '2018-04-02 21:36:05');
INSERT INTO `school_information` VALUES ('2', '实验测试', '测试学院', '测试', '485', '2', '0', '2018-05-22 00:53:13', '2018-05-22 00:53:18');
INSERT INTO `school_information` VALUES ('3', 'EnglishTest', '测试外国语学院', 'Test', '485', '0', '0', '2018-05-22 00:54:00', '2018-05-22 00:54:02');
INSERT INTO `school_information` VALUES ('4', '开课吧-互联网人学习成长社群| 学有所成 ', '开课吧学院', '开课吧是慧科集团倾力打造的互联网人学习成长社群,致力于通过创新科技,提供智慧学习服务,高效链接人与知识。专注为大学生及互联网人提供优质的产品经理、产品运营、...', '485', '0', '0', '2018-05-25 13:13:51', '2018-05-25 13:14:00');
INSERT INTO `school_information` VALUES ('5', '快速搭建新一代智慧教育平台 -短书平台', '在线教育', '短书支持图文、视频和直播课程，无需开发即可使用，丰富的营销能力，移动端开课更轻松', '485', '0', '0', '2018-05-25 13:37:00', '2018-05-25 13:37:08');
INSERT INTO `school_information` VALUES ('6', '云教育,助力新课改,让教学更高效「锐捷网络」', '云教育', '锐捷云教育信息化技术助力降低教学管理成本，提升教学质量.创新教学方式，用教育信息化构建现代化教学环境', '485', '0', '0', '2018-05-25 13:37:03', '2018-05-25 13:37:11');
INSERT INTO `school_information` VALUES ('7', '在线教育_在线学习，上学而思网校！', '学而思学院', '在线教育，学而思网校为3-18岁孩子提供小初高全学科教学，“直播+辅导”双师教学模式,实时互动,随堂测试,及时答疑,超过600万中小学生正在网校高效学习!', '485', '0', '0', '2018-05-25 13:37:05', '2018-05-25 13:37:13');

-- ----------------------------
-- Table structure for sensitive_word
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_word`;
CREATE TABLE `sensitive_word` (
  `sensitive_word_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `sensitive_word` varchar(255) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`sensitive_word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_word
-- ----------------------------
INSERT INTO `sensitive_word` VALUES ('1', '305', '尼玛', '0', '2018-05-19 14:00:48', '2018-05-19 14:00:50');
INSERT INTO `sensitive_word` VALUES ('2', '309', 'sb', '0', '2018-05-19 19:09:40', '2018-05-19 19:09:40');
INSERT INTO `sensitive_word` VALUES ('3', '317', '代考', '0', '2018-05-19 19:26:59', '2018-05-19 19:26:59');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) NOT NULL,
  `student_number` char(10) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `faculty_id` int(11) unsigned NOT NULL,
  `class_id` int(11) unsigned NOT NULL,
  `student_password` char(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('181', '张陆', '5826167000', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('182', '武改', '5826167001', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '12', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('183', '习发', '5826167002', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '9', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('184', '戴陆', '5826167003', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '10', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('185', '张改', '5826167004', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '8', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('186', '朱陆', '5826167005', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '2', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('187', '李我', '5826167006', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('188', '朱娟', '5826167007', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('189', '苗办法', '5826167008', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('190', '朱犯的', '5826167009', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('191', '苗胡霍', '5831187000', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '11', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('192', '苗我', '5831187001', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('193', '苗晨光', '5831187002', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('194', '周娟', '5831187003', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('195', '周层层', '5831187004', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('196', '朱人', '5831187005', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('197', '习和', '5831187006', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('198', '苗美丽', '5831187007', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('199', '赵空间', '5831187008', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('200', '周办法', '5831187009', '309', '5831', '187', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('201', '李胡霍', '5832191000', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('202', '周明', '5832191001', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('203', '韩娜娜', '5832191002', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('204', '戴莉莉', '5832191003', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('205', '习丽', '5832191004', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('206', '戴美丽', '5832191005', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('207', '张陆', '5832191006', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('208', '习莉莉', '5832191007', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('209', '王长城', '5832191008', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('210', '周和', '5832191009', '317', '5832', '191', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:11:26');
INSERT INTO `student` VALUES ('211', '学生120', '621311120', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '120', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('212', '学生121', '621311121', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '121', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('213', '学生122', '621311122', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '122', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('214', '学生123', '621311123', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '123', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('215', '学生124', '621311124', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '124', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('216', '学生125', '621311125', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '125', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('217', '学生126', '621311126', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '126', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('218', '学生127', '621311127', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '127', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('219', '学生128', '621311128', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '128', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('220', '学生129', '621311129', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '129', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('221', '学生130', '621311130', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '130', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('222', '学生131', '621311131', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '131', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('223', '学生132', '621311132', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '132', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('224', '学生133', '621311133', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '133', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('225', '学生134', '621311134', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '134', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('226', '学生135', '621311135', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '135', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('227', '学生136', '621311136', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '136', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('228', '学生137', '621311137', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '137', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('229', '学生138', '621311138', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '138', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('230', '学生139', '621311139', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '139', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('231', '学生140', '621311140', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '140', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('232', '学生141', '621311141', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '141', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('233', '学生142', '621311142', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '142', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('234', '学生143', '621311143', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '143', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('235', '学生144', '621311144', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '144', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('236', '学生145', '621311145', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '145', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('237', '学生146', '621311146', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '146', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('238', '学生147', '621311147', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '147', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('239', '学生148', '621311148', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '148', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('240', '学生149', '621311149', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '149', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('241', '学生150', '621311150', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '150', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('242', '学生151', '621311151', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '151', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('243', '学生152', '621311152', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '152', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('244', '学生153', '621311153', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '153', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('245', '学生154', '621311154', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '154', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('246', '学生155', '621311155', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '155', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('247', '学生156', '621311156', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '156', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('248', '学生157', '621311157', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '157', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('249', '学生158', '621311158', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '158', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('250', '学生159', '621311159', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '159', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('251', '学生160', '621311160', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '160', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('252', '学生161', '621311161', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '161', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('253', '学生162', '621311162', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '162', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('254', '学生163', '621311163', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '163', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('255', '学生164', '621311164', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '164', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('256', '学生165', '621311165', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '165', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('257', '学生166', '621311166', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '166', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('258', '学生167', '621311167', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '167', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('259', '学生168', '621311168', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '168', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('260', '学生169', '621311169', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '169', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('261', '学生170', '621311170', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '170', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('262', '学生171', '621311171', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '171', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('263', '学生172', '621311172', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '172', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('264', '学生173', '621311173', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '173', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('265', '学生174', '621311174', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '174', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('266', '学生175', '621311175', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '175', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('267', '学生176', '621311176', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '176', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('268', '学生177', '621311177', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '177', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('269', '学生178', '621311178', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '178', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('270', '学生179', '621311179', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '179', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('271', '学生180', '621311180', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '180', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('272', '学生181', '621311181', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '181', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('273', '学生182', '621311182', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '182', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('274', '学生183', '621311183', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '183', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('275', '学生184', '621311184', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '184', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('276', '学生185', '621311185', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '185', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('277', '学生186', '621311186', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '186', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('278', '学生187', '621311187', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '187', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('279', '学生188', '621311188', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '188', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('280', '学生189', '621311189', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '189', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('281', '学生190', '621311190', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '190', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('282', '学生191', '621311191', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '191', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('283', '学生192', '621311192', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '192', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('284', '学生193', '621311193', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '193', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('285', '学生194', '621311194', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '194', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('286', '学生195', '621311195', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '195', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('287', '学生196', '621311196', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '196', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('288', '学生197', '621311197', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '197', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('289', '学生198', '621311198', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '198', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('290', '学生199', '621311199', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '199', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('291', '学生200', '621311200', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '200', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('292', '学生201', '621311201', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '201', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('293', '学生202', '621311202', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '202', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('294', '学生203', '621311203', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '203', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('295', '学生204', '621311204', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '204', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('296', '学生205', '621311205', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '205', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('297', '学生206', '621311206', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '206', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('298', '学生207', '621311207', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '207', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('299', '学生208', '621311208', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '208', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('300', '学生209', '621311209', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '209', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('301', '学生210', '621311210', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '210', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('302', '学生211', '621311211', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '211', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('303', '学生212', '621311212', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '212', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('304', '学生213', '621311213', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '213', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('305', '学生214', '621311214', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '214', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('306', '学生215', '621311215', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '215', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('307', '学生216', '621311216', '305', '5826', '167', 'e10adc3949ba59abbe56e057f20f883e', '216', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('308', '学生217', '621311217', '305', '5826', '168', 'e10adc3949ba59abbe56e057f20f883e', '217', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('309', '学生218', '621311218', '305', '5826', '169', 'e10adc3949ba59abbe56e057f20f883e', '218', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('310', '学生219', '621311219', '305', '5826', '170', 'e10adc3949ba59abbe56e057f20f883e', '219', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `student` VALUES ('331', '子龙', '621311340', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1340', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('332', '学生1341', '621311341', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1341', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('333', '学生1342', '621311342', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1342', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('334', '学生1343', '621311343', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1343', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('335', '韩飞', '621311344', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1344', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('336', '学生1345', '621311345', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1345', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('337', '学生1346', '621311346', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1346', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('338', '学生1347', '621311347', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1347', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('339', '章凉', '621311348', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1348', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('340', '学生1349', '621311349', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1349', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('341', '学生1350', '621311350', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1350', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('342', '学生1351', '621311351', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1351', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('343', '红莲', '621311352', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1352', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('344', '学生1353', '621311353', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1353', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('345', '学生1354', '621311354', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1354', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('346', '学生1355', '621311355', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1355', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('347', '孟离', '621311356', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1356', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('348', '学生1357', '621311357', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1357', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('349', '学生1358', '621311358', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1358', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('350', '学生1359', '621311359', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1359', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('351', '华英', '621311360', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1360', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('352', '学生1361', '621311361', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1361', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('353', '学生1362', '621311362', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1362', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('354', '学生1363', '621311363', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1363', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('355', '空冥', '621311364', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1364', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('356', '学生1365', '621311365', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1365', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('357', '学生1366', '621311366', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1366', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('358', '学生1367', '621311367', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1367', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('359', '烙泽', '621311368', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1368', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('360', '学生1369', '621311369', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1369', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('361', '学生1370', '621311370', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1370', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('362', '学生1371', '621311371', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1371', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('363', '学生1372', '621311372', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1372', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('364', '学生1373', '621311373', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1373', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('365', '学生1374', '621311374', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1374', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('366', '学生1375', '621311375', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1375', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('367', '学生1376', '621311376', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1376', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('368', '学生1377', '621311377', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1377', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('369', '学生1378', '621311378', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1378', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('370', '学生1379', '621311379', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1379', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('371', '学生1380', '621311380', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1380', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('372', '学生1381', '621311381', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1381', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('373', '学生1382', '621311382', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1382', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('374', '学生1383', '621311383', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1383', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('375', '学生1384', '621311384', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1384', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('376', '学生1385', '621311385', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1385', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('377', '学生1386', '621311386', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1386', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('378', '学生1387', '621311387', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1387', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('379', '学生1388', '621311388', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1388', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('380', '学生1389', '621311389', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1389', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('381', '学生1390', '621311390', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1390', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('382', '学生1391', '621311391', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1391', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('383', '学生1392', '621311392', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1392', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('384', '学生1393', '621311393', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1393', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('385', '学生1394', '621311394', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1394', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('386', '学生1395', '621311395', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1395', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('387', '学生1396', '621311396', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1396', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('388', '学生1397', '621311397', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1397', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('389', '学生1398', '621311398', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1398', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('390', '学生1399', '621311399', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1399', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('391', '学生1400', '621311400', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1400', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('392', '学生1401', '621311401', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1401', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('393', '学生1402', '621311402', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1402', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('394', '学生1403', '621311403', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1403', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('395', '学生1404', '621311404', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1404', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('396', '学生1405', '621311405', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1405', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('397', '学生1406', '621311406', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1406', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('398', '学生1407', '621311407', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1407', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('399', '学生1408', '621311408', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1408', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('400', '学生1409', '621311409', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1409', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('401', '学生1410', '621311410', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1410', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('402', '学生1411', '621311411', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1411', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('403', '学生1412', '621311412', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1412', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('404', '学生1413', '621311413', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1413', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('405', '学生1414', '621311414', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1414', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('406', '学生1415', '621311415', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1415', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('407', '学生1416', '621311416', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1416', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('408', '学生1417', '621311417', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1417', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('409', '学生1418', '621311418', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1418', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('410', '学生1419', '621311419', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1419', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('411', '学生1420', '621311420', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1420', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('412', '学生1421', '621311421', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1421', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('413', '学生1422', '621311422', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1422', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('414', '学生1423', '621311423', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1423', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('415', '学生1424', '621311424', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1424', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('416', '学生1425', '621311425', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1425', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('417', '学生1426', '621311426', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1426', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('418', '学生1427', '621311427', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1427', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('419', '学生1428', '621311428', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1428', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('420', '学生1429', '621311429', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1429', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('421', '学生1430', '621311430', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1430', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('422', '学生1431', '621311431', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1431', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('423', '学生1432', '621311432', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1432', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('424', '学生1433', '621311433', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1433', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('425', '学生1434', '621311434', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1434', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('426', '学生1435', '621311435', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1435', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('427', '学生1436', '621311436', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1436', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('428', '学生1437', '621311437', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1437', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('429', '学生1438', '621311438', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1438', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('430', '学生1439', '621311439', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1439', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('431', '学生1440', '621311440', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1440', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('432', '学生1441', '621311441', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1441', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('433', '学生1442', '621311442', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1442', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('434', '学生1443', '621311443', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1443', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('435', '学生1444', '621311444', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1444', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('436', '学生1445', '621311445', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1445', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('437', '学生1446', '621311446', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1446', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('438', '学生1447', '621311447', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1447', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('439', '学生1448', '621311448', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1448', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('440', '学生1449', '621311449', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1449', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('441', '学生1450', '621311450', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1450', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('442', '学生1451', '621311451', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1451', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('443', '学生1452', '621311452', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1452', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('444', '学生1453', '621311453', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1453', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('445', '学生1454', '621311454', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1454', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('446', '学生1455', '621311455', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1455', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('447', '学生1456', '621311456', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1456', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('448', '学生1457', '621311457', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1457', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('449', '学生1458', '621311458', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1458', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('450', '学生1459', '621311459', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1459', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('451', '学生1460', '621311460', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1460', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('452', '学生1461', '621311461', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1461', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('453', '学生1462', '621311462', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1462', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('454', '学生1463', '621311463', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1463', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('455', '学生1464', '621311464', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1464', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('456', '学生1465', '621311465', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1465', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('457', '学生1466', '621311466', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1466', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('458', '学生1467', '621311467', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1467', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('459', '学生1468', '621311468', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1468', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('460', '学生1469', '621311469', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1469', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('461', '学生1470', '621311470', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1470', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('462', '学生1471', '621311471', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1471', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('463', '学生1472', '621311472', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1472', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('464', '学生1473', '621311473', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1473', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('465', '学生1474', '621311474', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1474', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('466', '学生1475', '621311475', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1475', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('467', '学生1476', '621311476', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1476', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('468', '学生1477', '621311477', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1477', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('469', '学生1478', '621311478', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1478', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('470', '学生1479', '621311479', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1479', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('471', '学生1480', '621311480', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1480', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('472', '学生1481', '621311481', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1481', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('473', '学生1482', '621311482', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1482', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('474', '学生1483', '621311483', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1483', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('475', '学生1484', '621311484', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1484', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('476', '学生1485', '621311485', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1485', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('477', '学生1486', '621311486', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1486', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('478', '学生1487', '621311487', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1487', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('479', '学生1488', '621311488', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1488', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('480', '学生1489', '621311489', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1489', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('481', '学生1490', '621311490', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1490', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('482', '学生1491', '621311491', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1491', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('483', '学生1492', '621311492', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1492', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('484', '学生1493', '621311493', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1493', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('485', '学生1494', '621311494', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1494', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('486', '学生1495', '621311495', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1495', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('487', '学生1496', '621311496', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1496', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('488', '学生1497', '621311497', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1497', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('489', '学生1498', '621311498', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1498', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('490', '学生1499', '621311499', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1499', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('491', '学生1500', '621311500', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1500', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('492', '学生1501', '621311501', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1501', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('493', '学生1502', '621311502', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1502', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('494', '学生1503', '621311503', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1503', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('495', '学生1504', '621311504', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1504', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('496', '学生1505', '621311505', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1505', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('497', '学生1506', '621311506', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1506', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('498', '学生1507', '621311507', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1507', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('499', '学生1508', '621311508', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1508', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('500', '学生1509', '621311509', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1509', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('501', '学生1510', '621311510', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1510', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('502', '学生1511', '621311511', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1511', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('503', '学生1512', '621311512', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1512', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('504', '学生1513', '621311513', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1513', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('505', '学生1514', '621311514', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1514', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('506', '学生1515', '621311515', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1515', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('507', '学生1516', '621311516', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1516', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('508', '学生1517', '621311517', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1517', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('509', '学生1518', '621311518', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1518', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('510', '学生1519', '621311519', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1519', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('511', '学生1520', '621311520', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1520', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('512', '学生1521', '621311521', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1521', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('513', '学生1522', '621311522', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1522', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('514', '学生1523', '621311523', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1523', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('515', '学生1524', '621311524', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1524', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('516', '学生1525', '621311525', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1525', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('517', '学生1526', '621311526', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1526', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('518', '学生1527', '621311527', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1527', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('519', '学生1528', '621311528', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1528', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('520', '学生1529', '621311529', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1529', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('521', '学生1530', '621311530', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1530', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('522', '学生1531', '621311531', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1531', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('523', '学生1532', '621311532', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1532', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('524', '学生1533', '621311533', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1533', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('525', '学生1534', '621311534', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1534', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('526', '学生1535', '621311535', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1535', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('527', '学生1536', '621311536', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1536', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('528', '学生1537', '621311537', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1537', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('529', '学生1538', '621311538', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1538', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('530', '学生1539', '621311539', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1539', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('531', '学生1540', '621311540', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1540', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('532', '学生1541', '621311541', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1541', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('533', '学生1542', '621311542', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1542', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('534', '学生1543', '621311543', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1543', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('535', '学生1544', '621311544', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1544', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('536', '学生1545', '621311545', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1545', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('537', '学生1546', '621311546', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1546', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('538', '学生1547', '621311547', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1547', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('539', '学生1548', '621311548', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1548', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('540', '学生1549', '621311549', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1549', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('541', '学生1550', '621311550', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1550', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('542', '学生1551', '621311551', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1551', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('543', '学生1552', '621311552', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1552', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('544', '学生1553', '621311553', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1553', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('545', '学生1554', '621311554', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1554', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('546', '学生1555', '621311555', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1555', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('547', '学生1556', '621311556', '485', '5892', '431', 'e10adc3949ba59abbe56e057f20f883e', '1556', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('548', '学生1557', '621311557', '485', '5892', '432', 'e10adc3949ba59abbe56e057f20f883e', '1557', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('549', '学生1558', '621311558', '485', '5892', '433', 'e10adc3949ba59abbe56e057f20f883e', '1558', '2018-01-01 00:00:00', '2018-05-27 23:46:18');
INSERT INTO `student` VALUES ('550', '学生1559', '621311559', '485', '5892', '434', 'e10adc3949ba59abbe56e057f20f883e', '1559', '2018-01-01 00:00:00', '2018-05-27 23:46:18');

-- ----------------------------
-- Table structure for subscribe
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `subscribe_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `live_room_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`subscribe_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) NOT NULL,
  `task_type` tinyint(1) NOT NULL DEFAULT '1',
  `course_id` int(11) unsigned NOT NULL,
  `task_start_time` datetime NOT NULL,
  `task_end_time` datetime NOT NULL,
  `task_state` tinyint(1) NOT NULL DEFAULT '1',
  `task_publish` int(11) unsigned NOT NULL,
  `task_link` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of task
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(20) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `teacher_number` char(10) NOT NULL,
  `teacher_password` char(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张小兰', '305', '305172', 'e10adc3949ba59abbe56e057f20f883e', '1', '2018-04-02 22:00:19', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('2', '章笑笑', '309', '300012', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-04-02 22:01:48', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('3', '廖家辉', '333', '321890', 'e10adc3949ba59abbe56e057f20f883e', '3', '2018-04-02 22:02:21', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('4', '何晓欢', '345', '521989', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-04-02 22:03:15', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('5', '渣渣辉', '305', '310908', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-04-02 22:03:31', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('36', '胡层层', '305', '305001', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('37', '戴发', '305', '305002', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('38', '戴同', '305', '305003', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('39', '张长城', '305', '305004', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('40', '张克', '305', '305005', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('41', '朱层层', '309', '309001', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('42', '苗娟', '309', '309002', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('43', '毛大', '309', '309003', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('44', '王克', '309', '309004', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('45', '周利', '309', '309005', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('46', '赵航空', '317', '317001', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('47', '朱晨光', '317', '317002', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('48', '朱和', '317', '317003', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('49', '朱娟娟', '317', '317004', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('50', '毛犯的', '317', '317005', 'e10adc3949ba59abbe56e057f20f883e', '0', '2018-01-01 00:00:00', '2018-05-20 22:44:02');
INSERT INTO `teacher` VALUES ('52', '教师220', '305', '561220', 'e10adc3949ba59abbe56e057f20f883e', '220', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('53', '教师221', '305', '561221', 'e10adc3949ba59abbe56e057f20f883e', '221', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('54', '教师222', '305', '561222', 'e10adc3949ba59abbe56e057f20f883e', '222', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('55', '教师223', '305', '561223', 'e10adc3949ba59abbe56e057f20f883e', '223', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('56', '教师224', '305', '561224', 'e10adc3949ba59abbe56e057f20f883e', '224', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('57', '教师225', '305', '561225', 'e10adc3949ba59abbe56e057f20f883e', '225', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('58', '教师226', '305', '561226', 'e10adc3949ba59abbe56e057f20f883e', '226', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('59', '教师227', '305', '561227', 'e10adc3949ba59abbe56e057f20f883e', '227', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('60', '教师228', '305', '561228', 'e10adc3949ba59abbe56e057f20f883e', '228', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('61', '教师229', '305', '561229', 'e10adc3949ba59abbe56e057f20f883e', '229', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `teacher` VALUES ('122', '荀况', '485', '571320', 'e10adc3949ba59abbe56e057f20f883e', '1320', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('123', '伏念', '485', '571321', 'e10adc3949ba59abbe56e057f20f883e', '1321', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('124', '闫璐', '485', '571322', 'e10adc3949ba59abbe56e057f20f883e', '1322', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('125', '王柏', '485', '571323', 'e10adc3949ba59abbe56e057f20f883e', '1323', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('126', '教师1324', '485', '571324', 'e10adc3949ba59abbe56e057f20f883e', '1324', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('127', '教师1325', '485', '571325', 'e10adc3949ba59abbe56e057f20f883e', '1325', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('128', '教师1326', '485', '571326', 'e10adc3949ba59abbe56e057f20f883e', '1326', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('129', '教师1327', '485', '571327', 'e10adc3949ba59abbe56e057f20f883e', '1327', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('130', '教师1328', '485', '571328', 'e10adc3949ba59abbe56e057f20f883e', '1328', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('131', '教师1329', '485', '571329', 'e10adc3949ba59abbe56e057f20f883e', '1329', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('132', '教师1330', '485', '571330', 'e10adc3949ba59abbe56e057f20f883e', '1330', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('133', '教师1331', '485', '571331', 'e10adc3949ba59abbe56e057f20f883e', '1331', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('134', '教师1332', '485', '571332', 'e10adc3949ba59abbe56e057f20f883e', '1332', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('135', '教师1333', '485', '571333', 'e10adc3949ba59abbe56e057f20f883e', '1333', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('136', '教师1334', '485', '571334', 'e10adc3949ba59abbe56e057f20f883e', '1334', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('137', '教师1335', '485', '571335', 'e10adc3949ba59abbe56e057f20f883e', '1335', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('138', '教师1336', '485', '571336', 'e10adc3949ba59abbe56e057f20f883e', '1336', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('139', '教师1337', '485', '571337', 'e10adc3949ba59abbe56e057f20f883e', '1337', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('140', '教师1338', '485', '571338', 'e10adc3949ba59abbe56e057f20f883e', '1338', '2018-01-01 00:00:00', '2018-05-27 23:46:24');
INSERT INTO `teacher` VALUES ('141', '教师1339', '485', '571339', 'e10adc3949ba59abbe56e057f20f883e', '1339', '2018-01-01 00:00:00', '2018-05-27 23:46:24');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_account` char(12) NOT NULL,
  `user_password` char(40) NOT NULL,
  `user_phone` char(11) DEFAULT NULL,
  `user_sex` char(2) NOT NULL DEFAULT '男',
  `user_age` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_avatar` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1561 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '120110040225', 'e10adc3949ba59abbe56e057f20f883e', '18758576147', '男', '22', '0.png', '2018-03-24 22:20:05', '2018-03-24 22:20:09');
INSERT INTO `user` VALUES ('2', '120110056987', 'e10adc3949ba59abbe56e057f20f883e', '18758576148', '女', '20', '0.png', '2018-03-24 22:20:37', '2018-03-24 22:20:39');
INSERT INTO `user` VALUES ('3', '156156561667', 'e10adc3949ba59abbe56e057f20f883e', '18758576149', '男', '21', '0.png', '2018-03-24 22:20:59', '2018-03-24 22:21:03');
INSERT INTO `user` VALUES ('4', '326265894981', 'e10adc3949ba59abbe56e057f20f883e', '18758576150', '女', '32', '1.png', '2018-03-24 22:21:32', '2018-03-24 22:21:36');
INSERT INTO `user` VALUES ('5', '121156106417', 'e10adc3949ba59abbe56e057f20f883e', '15012345678', '男', '35', '0.png', '2018-03-24 22:22:08', '2018-03-24 22:22:11');
INSERT INTO `user` VALUES ('6', '315468879643', 'e10adc3949ba59abbe56e057f20f883e', '18758580552', '男', '22', '0.png', '2018-05-21 13:01:13', '2018-05-21 13:01:16');
INSERT INTO `user` VALUES ('7', '654879465132', 'e10adc3949ba59abbe56e057f20f883e', '18756595632', '女', '23', '0.png', '2018-05-21 13:01:56', '2018-05-21 13:01:59');
INSERT INTO `user` VALUES ('8', '123546897569', 'e10adc3949ba59abbe56e057f20f883e', '15652369856', '男', '55', '0.png', '2018-05-21 13:03:38', '2018-05-21 13:03:43');
INSERT INTO `user` VALUES ('9', '879465461313', 'e10adc3949ba59abbe56e057f20f883e', '15265239865', '男', '56', '0.png', '2018-05-21 13:04:01', '2018-05-21 13:03:57');
INSERT INTO `user` VALUES ('10', '134564654987', 'e10adc3949ba59abbe56e057f20f883e', '13256456879', '男', '55', '0.png', '2018-05-21 13:08:28', '2018-05-21 13:08:31');
INSERT INTO `user` VALUES ('11', '127938789189', 'e10adc3949ba59abbe56e057f20f883e', '18237891478', '男', '35', '0.png', '2018-05-27 18:39:29', '2018-05-27 18:39:32');
INSERT INTO `user` VALUES ('120', '232641117553', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:37', '2018-05-27 22:42:37');
INSERT INTO `user` VALUES ('121', '232747117558', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:38', '2018-05-27 22:42:38');
INSERT INTO `user` VALUES ('122', '232848117558', 'e10adc3949ba59abbe56e057f20f883e', '18023814912', '男', '1', '0.png', '2018-05-27 22:42:39', '2018-05-27 22:42:39');
INSERT INTO `user` VALUES ('123', '232948117559', 'e10adc3949ba59abbe56e057f20f883e', '18023814913', '女', '1', '0.png', '2018-05-27 22:42:40', '2018-05-27 22:42:40');
INSERT INTO `user` VALUES ('124', '232048117569', 'e10adc3949ba59abbe56e057f20f883e', '18023814914', '男', '1', '0.png', '2018-05-27 22:42:41', '2018-05-27 22:42:41');
INSERT INTO `user` VALUES ('125', '232148117567', 'e10adc3949ba59abbe56e057f20f883e', '18023814915', '女', '1', '0.png', '2018-05-27 22:42:42', '2018-05-27 22:42:42');
INSERT INTO `user` VALUES ('126', '232248117568', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:43', '2018-05-27 22:42:43');
INSERT INTO `user` VALUES ('127', '232348117567', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:44', '2018-05-27 22:42:44');
INSERT INTO `user` VALUES ('128', '232540117561', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:45', '2018-05-27 22:42:45');
INSERT INTO `user` VALUES ('129', '232641117566', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:46', '2018-05-27 22:42:46');
INSERT INTO `user` VALUES ('130', '232741117560', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:47', '2018-05-27 22:42:47');
INSERT INTO `user` VALUES ('131', '232841117562', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:48', '2018-05-27 22:42:48');
INSERT INTO `user` VALUES ('132', '232942117563', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:49', '2018-05-27 22:42:49');
INSERT INTO `user` VALUES ('133', '232043117570', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:50', '2018-05-27 22:42:50');
INSERT INTO `user` VALUES ('134', '232143117575', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:51', '2018-05-27 22:42:51');
INSERT INTO `user` VALUES ('135', '232243117570', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:52', '2018-05-27 22:42:52');
INSERT INTO `user` VALUES ('136', '232343117577', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:53', '2018-05-27 22:42:53');
INSERT INTO `user` VALUES ('137', '232443117573', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:54', '2018-05-27 22:42:54');
INSERT INTO `user` VALUES ('138', '232543117573', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:55', '2018-05-27 22:42:55');
INSERT INTO `user` VALUES ('139', '232644117570', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:56', '2018-05-27 22:42:56');
INSERT INTO `user` VALUES ('140', '232744117576', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:57', '2018-05-27 22:42:57');
INSERT INTO `user` VALUES ('141', '232845117571', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:58', '2018-05-27 22:42:58');
INSERT INTO `user` VALUES ('142', '232946117570', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:42:59', '2018-05-27 22:42:59');
INSERT INTO `user` VALUES ('143', '232047117580', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:00', '2018-05-27 22:43:00');
INSERT INTO `user` VALUES ('144', '232147117580', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:01', '2018-05-27 22:43:01');
INSERT INTO `user` VALUES ('145', '232246117588', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:02', '2018-05-27 22:43:02');
INSERT INTO `user` VALUES ('146', '232346117588', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:03', '2018-05-27 22:43:03');
INSERT INTO `user` VALUES ('147', '232447117584', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:05', '2018-05-27 22:43:05');
INSERT INTO `user` VALUES ('148', '232547117584', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:06', '2018-05-27 22:43:06');
INSERT INTO `user` VALUES ('149', '232647117589', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:07', '2018-05-27 22:43:07');
INSERT INTO `user` VALUES ('150', '232747117587', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:08', '2018-05-27 22:43:08');
INSERT INTO `user` VALUES ('151', '232847117586', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:09', '2018-05-27 22:43:09');
INSERT INTO `user` VALUES ('152', '232948117583', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:10', '2018-05-27 22:43:10');
INSERT INTO `user` VALUES ('153', '232048117597', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:11', '2018-05-27 22:43:11');
INSERT INTO `user` VALUES ('154', '232148117593', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:12', '2018-05-27 22:43:12');
INSERT INTO `user` VALUES ('155', '232248117593', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:13', '2018-05-27 22:43:13');
INSERT INTO `user` VALUES ('156', '232348117591', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:14', '2018-05-27 22:43:14');
INSERT INTO `user` VALUES ('157', '232448117593', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:15', '2018-05-27 22:43:15');
INSERT INTO `user` VALUES ('158', '232549117592', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:16', '2018-05-27 22:43:16');
INSERT INTO `user` VALUES ('159', '232649117594', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:17', '2018-05-27 22:43:17');
INSERT INTO `user` VALUES ('160', '232748117592', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:18', '2018-05-27 22:43:18');
INSERT INTO `user` VALUES ('161', '232849117594', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:19', '2018-05-27 22:43:19');
INSERT INTO `user` VALUES ('162', '232949117598', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:20', '2018-05-27 22:43:20');
INSERT INTO `user` VALUES ('163', '232140127504', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:21', '2018-05-27 22:43:21');
INSERT INTO `user` VALUES ('164', '232240127508', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:22', '2018-05-27 22:43:22');
INSERT INTO `user` VALUES ('165', '232340127509', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:23', '2018-05-27 22:43:23');
INSERT INTO `user` VALUES ('166', '232441127508', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:24', '2018-05-27 22:43:24');
INSERT INTO `user` VALUES ('167', '232542127505', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:25', '2018-05-27 22:43:25');
INSERT INTO `user` VALUES ('168', '232643127506', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:26', '2018-05-27 22:43:26');
INSERT INTO `user` VALUES ('169', '232743127506', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:27', '2018-05-27 22:43:27');
INSERT INTO `user` VALUES ('170', '232844127507', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:28', '2018-05-27 22:43:28');
INSERT INTO `user` VALUES ('171', '232945127508', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:29', '2018-05-27 22:43:29');
INSERT INTO `user` VALUES ('172', '232045127518', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:30', '2018-05-27 22:43:30');
INSERT INTO `user` VALUES ('173', '232147127510', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:32', '2018-05-27 22:43:32');
INSERT INTO `user` VALUES ('174', '232248127512', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:33', '2018-05-27 22:43:33');
INSERT INTO `user` VALUES ('175', '232349127513', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:34', '2018-05-27 22:43:34');
INSERT INTO `user` VALUES ('176', '232449127518', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:35', '2018-05-27 22:43:35');
INSERT INTO `user` VALUES ('177', '232640127515', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:36', '2018-05-27 22:43:36');
INSERT INTO `user` VALUES ('178', '232740127518', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:37', '2018-05-27 22:43:37');
INSERT INTO `user` VALUES ('179', '232840127510', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:38', '2018-05-27 22:43:38');
INSERT INTO `user` VALUES ('180', '232940127516', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:39', '2018-05-27 22:43:39');
INSERT INTO `user` VALUES ('181', '232040127525', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:40', '2018-05-27 22:43:40');
INSERT INTO `user` VALUES ('182', '232141127520', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:41', '2018-05-27 22:43:41');
INSERT INTO `user` VALUES ('183', '232242127523', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:42', '2018-05-27 22:43:42');
INSERT INTO `user` VALUES ('184', '232342127526', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:43', '2018-05-27 22:43:43');
INSERT INTO `user` VALUES ('185', '232443127524', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:44', '2018-05-27 22:43:44');
INSERT INTO `user` VALUES ('186', '232543127524', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:45', '2018-05-27 22:43:45');
INSERT INTO `user` VALUES ('187', '232643127523', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:46', '2018-05-27 22:43:46');
INSERT INTO `user` VALUES ('188', '232744127526', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:47', '2018-05-27 22:43:47');
INSERT INTO `user` VALUES ('189', '232845127520', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:48', '2018-05-27 22:43:48');
INSERT INTO `user` VALUES ('190', '232946127524', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:50', '2018-05-27 22:43:50');
INSERT INTO `user` VALUES ('191', '232047127532', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:51', '2018-05-27 22:43:51');
INSERT INTO `user` VALUES ('192', '232147127534', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:52', '2018-05-27 22:43:52');
INSERT INTO `user` VALUES ('193', '232248127530', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:53', '2018-05-27 22:43:53');
INSERT INTO `user` VALUES ('194', '232349127531', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:54', '2018-05-27 22:43:54');
INSERT INTO `user` VALUES ('195', '232448127538', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:55', '2018-05-27 22:43:55');
INSERT INTO `user` VALUES ('196', '232549127530', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:56', '2018-05-27 22:43:56');
INSERT INTO `user` VALUES ('197', '232648127537', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:57', '2018-05-27 22:43:57');
INSERT INTO `user` VALUES ('198', '232748127537', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:58', '2018-05-27 22:43:58');
INSERT INTO `user` VALUES ('199', '232849127531', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:43:59', '2018-05-27 22:43:59');
INSERT INTO `user` VALUES ('200', '232949127534', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:00', '2018-05-27 22:44:00');
INSERT INTO `user` VALUES ('201', '232140127542', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:01', '2018-05-27 22:44:01');
INSERT INTO `user` VALUES ('202', '232149127548', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:02', '2018-05-27 22:44:02');
INSERT INTO `user` VALUES ('203', '232249127549', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:03', '2018-05-27 22:44:03');
INSERT INTO `user` VALUES ('204', '232349127549', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:04', '2018-05-27 22:44:04');
INSERT INTO `user` VALUES ('205', '232540127546', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:05', '2018-05-27 22:44:05');
INSERT INTO `user` VALUES ('206', '232640127546', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:06', '2018-05-27 22:44:06');
INSERT INTO `user` VALUES ('207', '232742127543', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:07', '2018-05-27 22:44:07');
INSERT INTO `user` VALUES ('208', '232843127547', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:08', '2018-05-27 22:44:08');
INSERT INTO `user` VALUES ('209', '232943127546', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:09', '2018-05-27 22:44:09');
INSERT INTO `user` VALUES ('210', '232043127558', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:10', '2018-05-27 22:44:10');
INSERT INTO `user` VALUES ('211', '232143127553', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:11', '2018-05-27 22:44:11');
INSERT INTO `user` VALUES ('212', '232244127555', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:12', '2018-05-27 22:44:12');
INSERT INTO `user` VALUES ('213', '232345127554', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:13', '2018-05-27 22:44:13');
INSERT INTO `user` VALUES ('214', '232446127553', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:15', '2018-05-27 22:44:15');
INSERT INTO `user` VALUES ('215', '232548127553', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:16', '2018-05-27 22:44:16');
INSERT INTO `user` VALUES ('216', '232648127559', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:17', '2018-05-27 22:44:17');
INSERT INTO `user` VALUES ('217', '232748127559', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:18', '2018-05-27 22:44:18');
INSERT INTO `user` VALUES ('218', '232849127554', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:19', '2018-05-27 22:44:19');
INSERT INTO `user` VALUES ('219', '232040127561', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:44:20', '2018-05-27 22:44:20');
INSERT INTO `user` VALUES ('220', '232141177500', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:40', '2018-05-27 22:51:40');
INSERT INTO `user` VALUES ('221', '232248177503', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:41', '2018-05-27 22:51:41');
INSERT INTO `user` VALUES ('222', '232349177500', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:42', '2018-05-27 22:51:42');
INSERT INTO `user` VALUES ('223', '232449177501', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:43', '2018-05-27 22:51:43');
INSERT INTO `user` VALUES ('224', '232640177501', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:44', '2018-05-27 22:51:44');
INSERT INTO `user` VALUES ('225', '232741177501', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:46', '2018-05-27 22:51:46');
INSERT INTO `user` VALUES ('226', '232842177502', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:47', '2018-05-27 22:51:47');
INSERT INTO `user` VALUES ('227', '232942177503', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:48', '2018-05-27 22:51:48');
INSERT INTO `user` VALUES ('228', '232043177513', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:49', '2018-05-27 22:51:49');
INSERT INTO `user` VALUES ('229', '232143177518', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '1', '0.png', '2018-05-27 22:51:50', '2018-05-27 22:51:50');
INSERT INTO `user` VALUES ('1320', '234541197510', 'e10adc3949ba59abbe56e057f20f883e', '18017821320', '男', '35', '0.png', '2018-05-27 23:28:35', '2018-05-27 23:28:35');
INSERT INTO `user` VALUES ('1321', '234648197519', 'e10adc3949ba59abbe56e057f20f883e', '18017821321', '男', '42', '0.png', '2018-05-27 23:28:36', '2018-05-27 23:28:36');
INSERT INTO `user` VALUES ('1322', '234749197519', 'e10adc3949ba59abbe56e057f20f883e', '18017821322', '女', '27', '0.png', '2018-05-27 23:28:37', '2018-05-27 23:28:37');
INSERT INTO `user` VALUES ('1323', '234849197518', 'e10adc3949ba59abbe56e057f20f883e', '18017821323', '女', '25', '0.png', '2018-05-27 23:28:38', '2018-05-27 23:28:38');
INSERT INTO `user` VALUES ('1324', '234040197527', 'e10adc3949ba59abbe56e057f20f883e', '18017821324', '男', '31', '0.png', '2018-05-27 23:28:39', '2018-05-27 23:28:39');
INSERT INTO `user` VALUES ('1325', '234141197521', 'e10adc3949ba59abbe56e057f20f883e', '18017821325', '女', '36', '0.png', '2018-05-27 23:28:40', '2018-05-27 23:28:40');
INSERT INTO `user` VALUES ('1326', '234241197520', 'e10adc3949ba59abbe56e057f20f883e', '18017821326', '男', '28', '0.png', '2018-05-27 23:28:41', '2018-05-27 23:28:41');
INSERT INTO `user` VALUES ('1327', '234341197521', 'e10adc3949ba59abbe56e057f20f883e', '18017821327', '女', '35', '0.png', '2018-05-27 23:28:43', '2018-05-27 23:28:43');
INSERT INTO `user` VALUES ('1328', '234441197529', 'e10adc3949ba59abbe56e057f20f883e', '18017821328', '男', '35', '0.png', '2018-05-27 23:28:44', '2018-05-27 23:28:44');
INSERT INTO `user` VALUES ('1329', '234542197526', 'e10adc3949ba59abbe56e057f20f883e', '18017821329', '女', '42', '0.png', '2018-05-27 23:28:45', '2018-05-27 23:28:45');
INSERT INTO `user` VALUES ('1330', '234643197521', 'e10adc3949ba59abbe56e057f20f883e', '18017821330', '男', '27', '0.png', '2018-05-27 23:28:46', '2018-05-27 23:28:46');
INSERT INTO `user` VALUES ('1331', '234744197520', 'e10adc3949ba59abbe56e057f20f883e', '18017821331', '女', '25', '0.png', '2018-05-27 23:28:47', '2018-05-27 23:28:47');
INSERT INTO `user` VALUES ('1332', '234845197521', 'e10adc3949ba59abbe56e057f20f883e', '18017821332', '男', '31', '0.png', '2018-05-27 23:28:48', '2018-05-27 23:28:48');
INSERT INTO `user` VALUES ('1333', '234945197524', 'e10adc3949ba59abbe56e057f20f883e', '18017821333', '女', '36', '0.png', '2018-05-27 23:28:49', '2018-05-27 23:28:49');
INSERT INTO `user` VALUES ('1334', '234045197538', 'e10adc3949ba59abbe56e057f20f883e', '18017821334', '男', '28', '0.png', '2018-05-27 23:28:50', '2018-05-27 23:28:50');
INSERT INTO `user` VALUES ('1335', '234145197534', 'e10adc3949ba59abbe56e057f20f883e', '18017821335', '女', '35', '0.png', '2018-05-27 23:28:51', '2018-05-27 23:28:51');
INSERT INTO `user` VALUES ('1336', '234246197530', 'e10adc3949ba59abbe56e057f20f883e', '18017821336', '男', '35', '0.png', '2018-05-27 23:28:52', '2018-05-27 23:28:52');
INSERT INTO `user` VALUES ('1337', '234345197537', 'e10adc3949ba59abbe56e057f20f883e', '18017821337', '女', '42', '0.png', '2018-05-27 23:28:53', '2018-05-27 23:28:53');
INSERT INTO `user` VALUES ('1338', '234446197535', 'e10adc3949ba59abbe56e057f20f883e', '18017821338', '男', '27', '0.png', '2018-05-27 23:28:54', '2018-05-27 23:28:54');
INSERT INTO `user` VALUES ('1339', '234545197539', 'e10adc3949ba59abbe56e057f20f883e', '18017821339', '女', '25', '0.png', '2018-05-27 23:28:55', '2018-05-27 23:28:55');
INSERT INTO `user` VALUES ('1340', '235849107555', 'e10adc3949ba59abbe56e057f20f883e', '18017821340', '男', '19', 'zilong.jpg', '2018-05-27 23:30:57', '2018-05-27 23:30:57');
INSERT INTO `user` VALUES ('1341', '235046107565', 'e10adc3949ba59abbe56e057f20f883e', '18017821341', '女', '20', '0.png', '2018-05-27 23:30:58', '2018-05-27 23:30:58');
INSERT INTO `user` VALUES ('1342', '235147107560', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:30:59', '2018-05-27 23:30:59');
INSERT INTO `user` VALUES ('1343', '235247107562', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:00', '2018-05-27 23:31:00');
INSERT INTO `user` VALUES ('1344', '235347107567', 'e10adc3949ba59abbe56e057f20f883e', '18017821344', '男', '19', '0.png', '2018-05-27 23:31:01', '2018-05-27 23:31:01');
INSERT INTO `user` VALUES ('1345', '235448107567', 'e10adc3949ba59abbe56e057f20f883e', '18017821345', '女', '20', '0.png', '2018-05-27 23:31:02', '2018-05-27 23:31:02');
INSERT INTO `user` VALUES ('1346', '235549107560', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:03', '2018-05-27 23:31:03');
INSERT INTO `user` VALUES ('1347', '235648107560', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:04', '2018-05-27 23:31:04');
INSERT INTO `user` VALUES ('1348', '235749107563', 'e10adc3949ba59abbe56e057f20f883e', '18017821348', '男', '19', '0.png', '2018-05-27 23:31:05', '2018-05-27 23:31:05');
INSERT INTO `user` VALUES ('1349', '235849107564', 'e10adc3949ba59abbe56e057f20f883e', '18017821349', '男', '20', '0.png', '2018-05-27 23:31:06', '2018-05-27 23:31:06');
INSERT INTO `user` VALUES ('1350', '235949107568', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:07', '2018-05-27 23:31:07');
INSERT INTO `user` VALUES ('1351', '235140107573', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:09', '2018-05-27 23:31:09');
INSERT INTO `user` VALUES ('1352', '235240107578', 'e10adc3949ba59abbe56e057f20f883e', '18017821352', '女', '19', '0.png', '2018-05-27 23:31:10', '2018-05-27 23:31:10');
INSERT INTO `user` VALUES ('1353', '235340107578', 'e10adc3949ba59abbe56e057f20f883e', '18017821353', '男', '20', '0.png', '2018-05-27 23:31:11', '2018-05-27 23:31:11');
INSERT INTO `user` VALUES ('1354', '235441107578', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:12', '2018-05-27 23:31:12');
INSERT INTO `user` VALUES ('1355', '235542107574', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:13', '2018-05-27 23:31:13');
INSERT INTO `user` VALUES ('1356', '235643107575', 'e10adc3949ba59abbe56e057f20f883e', '18017821356', '男', '19', '0.png', '2018-05-27 23:31:14', '2018-05-27 23:31:14');
INSERT INTO `user` VALUES ('1357', '235743107578', 'e10adc3949ba59abbe56e057f20f883e', '18017821357', '男', '20', '0.png', '2018-05-27 23:31:15', '2018-05-27 23:31:15');
INSERT INTO `user` VALUES ('1358', '235844107570', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:16', '2018-05-27 23:31:16');
INSERT INTO `user` VALUES ('1359', '235944107573', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:17', '2018-05-27 23:31:17');
INSERT INTO `user` VALUES ('1360', '235045107586', 'e10adc3949ba59abbe56e057f20f883e', '18017821360', '女', '19', '0.png', '2018-05-27 23:31:18', '2018-05-27 23:31:18');
INSERT INTO `user` VALUES ('1361', '235146107584', 'e10adc3949ba59abbe56e057f20f883e', '18017821361', '男', '20', '0.png', '2018-05-27 23:31:19', '2018-05-27 23:31:19');
INSERT INTO `user` VALUES ('1362', '235246107587', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:20', '2018-05-27 23:31:20');
INSERT INTO `user` VALUES ('1363', '235347107582', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:21', '2018-05-27 23:31:21');
INSERT INTO `user` VALUES ('1364', '235448107585', 'e10adc3949ba59abbe56e057f20f883e', '18017821364', '男', '19', '0.png', '2018-05-27 23:31:22', '2018-05-27 23:31:22');
INSERT INTO `user` VALUES ('1365', '235549107583', 'e10adc3949ba59abbe56e057f20f883e', '18017821365', '女', '20', '0.png', '2018-05-27 23:31:24', '2018-05-27 23:31:24');
INSERT INTO `user` VALUES ('1366', '235649107589', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:25', '2018-05-27 23:31:25');
INSERT INTO `user` VALUES ('1367', '235840107581', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:25', '2018-05-27 23:31:25');
INSERT INTO `user` VALUES ('1368', '235849107585', 'e10adc3949ba59abbe56e057f20f883e', '18017821368', '男', '19', '0.png', '2018-05-27 23:31:27', '2018-05-27 23:31:27');
INSERT INTO `user` VALUES ('1369', '235040107595', 'e10adc3949ba59abbe56e057f20f883e', '18017821369', '女', '20', '0.png', '2018-05-27 23:31:28', '2018-05-27 23:31:28');
INSERT INTO `user` VALUES ('1370', '235140107592', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:29', '2018-05-27 23:31:29');
INSERT INTO `user` VALUES ('1371', '235240107591', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:30', '2018-05-27 23:31:30');
INSERT INTO `user` VALUES ('1372', '235340107594', 'e10adc3949ba59abbe56e057f20f883e', '18017821372', '女', '19', '0.png', '2018-05-27 23:31:31', '2018-05-27 23:31:31');
INSERT INTO `user` VALUES ('1373', '235440107594', 'e10adc3949ba59abbe56e057f20f883e', '18017821373', '男', '20', '0.png', '2018-05-27 23:31:32', '2018-05-27 23:31:32');
INSERT INTO `user` VALUES ('1374', '235541107599', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:33', '2018-05-27 23:31:33');
INSERT INTO `user` VALUES ('1375', '235642107592', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:34', '2018-05-27 23:31:34');
INSERT INTO `user` VALUES ('1376', '235742107593', 'e10adc3949ba59abbe56e057f20f883e', '18017821376', '男', '19', '0.png', '2018-05-27 23:31:35', '2018-05-27 23:31:35');
INSERT INTO `user` VALUES ('1377', '235843107592', 'e10adc3949ba59abbe56e057f20f883e', '18017821377', '男', '20', '0.png', '2018-05-27 23:31:36', '2018-05-27 23:31:36');
INSERT INTO `user` VALUES ('1378', '235943107592', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:37', '2018-05-27 23:31:37');
INSERT INTO `user` VALUES ('1379', '235043117503', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:38', '2018-05-27 23:31:38');
INSERT INTO `user` VALUES ('1380', '235144117506', 'e10adc3949ba59abbe56e057f20f883e', '18017821380', '女', '19', '0.png', '2018-05-27 23:31:39', '2018-05-27 23:31:39');
INSERT INTO `user` VALUES ('1381', '235245117501', 'e10adc3949ba59abbe56e057f20f883e', '18017821381', '女', '20', '0.png', '2018-05-27 23:31:40', '2018-05-27 23:31:40');
INSERT INTO `user` VALUES ('1382', '235346117505', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:41', '2018-05-27 23:31:41');
INSERT INTO `user` VALUES ('1383', '235447117503', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:42', '2018-05-27 23:31:42');
INSERT INTO `user` VALUES ('1384', '235547117507', 'e10adc3949ba59abbe56e057f20f883e', '18017821384', '男', '19', '0.png', '2018-05-27 23:31:43', '2018-05-27 23:31:43');
INSERT INTO `user` VALUES ('1385', '235648117501', 'e10adc3949ba59abbe56e057f20f883e', '18017821385', '女', '20', '0.png', '2018-05-27 23:31:44', '2018-05-27 23:31:44');
INSERT INTO `user` VALUES ('1386', '235749117501', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:46', '2018-05-27 23:31:46');
INSERT INTO `user` VALUES ('1387', '235940117503', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:47', '2018-05-27 23:31:47');
INSERT INTO `user` VALUES ('1388', '235040117511', 'e10adc3949ba59abbe56e057f20f883e', '18017821388', '男', '19', '0.png', '2018-05-27 23:31:48', '2018-05-27 23:31:48');
INSERT INTO `user` VALUES ('1389', '235140117513', 'e10adc3949ba59abbe56e057f20f883e', '18017821389', '女', '20', '0.png', '2018-05-27 23:31:49', '2018-05-27 23:31:49');
INSERT INTO `user` VALUES ('1390', '235240117510', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:31:50', '2018-05-27 23:31:50');
INSERT INTO `user` VALUES ('1391', '235340117510', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:51', '2018-05-27 23:31:51');
INSERT INTO `user` VALUES ('1392', '235440117515', 'e10adc3949ba59abbe56e057f20f883e', '18017821392', '男', '19', '0.png', '2018-05-27 23:31:52', '2018-05-27 23:31:52');
INSERT INTO `user` VALUES ('1393', '235540117519', 'e10adc3949ba59abbe56e057f20f883e', '18017821393', '女', '20', '0.png', '2018-05-27 23:31:53', '2018-05-27 23:31:53');
INSERT INTO `user` VALUES ('1394', '235641117519', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:54', '2018-05-27 23:31:54');
INSERT INTO `user` VALUES ('1395', '235742117517', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:31:55', '2018-05-27 23:31:55');
INSERT INTO `user` VALUES ('1396', '235842117514', 'e10adc3949ba59abbe56e057f20f883e', '18017821396', '女', '19', '0.png', '2018-05-27 23:31:56', '2018-05-27 23:31:56');
INSERT INTO `user` VALUES ('1397', '235942117515', 'e10adc3949ba59abbe56e057f20f883e', '18017821397', '女', '20', '0.png', '2018-05-27 23:31:57', '2018-05-27 23:31:57');
INSERT INTO `user` VALUES ('1398', '235042117525', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:31:58', '2018-05-27 23:31:58');
INSERT INTO `user` VALUES ('1399', '235143117522', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:31:59', '2018-05-27 23:31:59');
INSERT INTO `user` VALUES ('1400', '235243117522', 'e10adc3949ba59abbe56e057f20f883e', '18017821400', '女', '19', '0.png', '2018-05-27 23:32:00', '2018-05-27 23:32:00');
INSERT INTO `user` VALUES ('1401', '235345117520', 'e10adc3949ba59abbe56e057f20f883e', '18017821401', '男', '20', '0.png', '2018-05-27 23:32:01', '2018-05-27 23:32:01');
INSERT INTO `user` VALUES ('1402', '235444117524', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:02', '2018-05-27 23:32:02');
INSERT INTO `user` VALUES ('1403', '235546117520', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:03', '2018-05-27 23:32:03');
INSERT INTO `user` VALUES ('1404', '235645117529', 'e10adc3949ba59abbe56e057f20f883e', '18017821404', '男', '19', '0.png', '2018-05-27 23:32:04', '2018-05-27 23:32:04');
INSERT INTO `user` VALUES ('1405', '235746117522', 'e10adc3949ba59abbe56e057f20f883e', '18017821405', '男', '20', '0.png', '2018-05-27 23:32:05', '2018-05-27 23:32:05');
INSERT INTO `user` VALUES ('1406', '235845117528', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:06', '2018-05-27 23:32:06');
INSERT INTO `user` VALUES ('1407', '235947117520', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:07', '2018-05-27 23:32:07');
INSERT INTO `user` VALUES ('1408', '235048117530', 'e10adc3949ba59abbe56e057f20f883e', '18017821408', '女', '19', '0.png', '2018-05-27 23:32:08', '2018-05-27 23:32:08');
INSERT INTO `user` VALUES ('1409', '235148117539', 'e10adc3949ba59abbe56e057f20f883e', '18017821409', '女', '20', '0.png', '2018-05-27 23:32:09', '2018-05-27 23:32:09');
INSERT INTO `user` VALUES ('1410', '235248117534', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:10', '2018-05-27 23:32:10');
INSERT INTO `user` VALUES ('1411', '235348117537', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:11', '2018-05-27 23:32:11');
INSERT INTO `user` VALUES ('1412', '235448117533', 'e10adc3949ba59abbe56e057f20f883e', '18017821412', '男', '19', '0.png', '2018-05-27 23:32:12', '2018-05-27 23:32:12');
INSERT INTO `user` VALUES ('1413', '235548117531', 'e10adc3949ba59abbe56e057f20f883e', '18017821413', '女', '20', '0.png', '2018-05-27 23:32:13', '2018-05-27 23:32:13');
INSERT INTO `user` VALUES ('1414', '235648117536', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:14', '2018-05-27 23:32:14');
INSERT INTO `user` VALUES ('1415', '235749117535', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:16', '2018-05-27 23:32:16');
INSERT INTO `user` VALUES ('1416', '235940117530', 'e10adc3949ba59abbe56e057f20f883e', '18017821416', '女', '19', '0.png', '2018-05-27 23:32:17', '2018-05-27 23:32:17');
INSERT INTO `user` VALUES ('1417', '235949117537', 'e10adc3949ba59abbe56e057f20f883e', '18017821417', '女', '20', '0.png', '2018-05-27 23:32:18', '2018-05-27 23:32:18');
INSERT INTO `user` VALUES ('1418', '235140117545', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:19', '2018-05-27 23:32:19');
INSERT INTO `user` VALUES ('1419', '235240117545', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:20', '2018-05-27 23:32:20');
INSERT INTO `user` VALUES ('1420', '235340117540', 'e10adc3949ba59abbe56e057f20f883e', '18017821420', '女', '19', '0.png', '2018-05-27 23:32:21', '2018-05-27 23:32:21');
INSERT INTO `user` VALUES ('1421', '235440117549', 'e10adc3949ba59abbe56e057f20f883e', '18017821421', '女', '20', '0.png', '2018-05-27 23:32:22', '2018-05-27 23:32:22');
INSERT INTO `user` VALUES ('1422', '235541117544', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:23', '2018-05-27 23:32:23');
INSERT INTO `user` VALUES ('1423', '235642117540', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:24', '2018-05-27 23:32:24');
INSERT INTO `user` VALUES ('1424', '235741117549', 'e10adc3949ba59abbe56e057f20f883e', '18017821424', '男', '19', '0.png', '2018-05-27 23:32:25', '2018-05-27 23:32:25');
INSERT INTO `user` VALUES ('1425', '235841117549', 'e10adc3949ba59abbe56e057f20f883e', '18017821425', '女', '20', '0.png', '2018-05-27 23:32:26', '2018-05-27 23:32:26');
INSERT INTO `user` VALUES ('1426', '235942117547', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:27', '2018-05-27 23:32:27');
INSERT INTO `user` VALUES ('1427', '235042117558', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:28', '2018-05-27 23:32:28');
INSERT INTO `user` VALUES ('1428', '235142117554', 'e10adc3949ba59abbe56e057f20f883e', '18017821428', '女', '19', '0.png', '2018-05-27 23:32:29', '2018-05-27 23:32:29');
INSERT INTO `user` VALUES ('1429', '235242117551', 'e10adc3949ba59abbe56e057f20f883e', '18017821429', '女', '20', '0.png', '2018-05-27 23:32:30', '2018-05-27 23:32:30');
INSERT INTO `user` VALUES ('1430', '235343117558', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:31', '2018-05-27 23:32:31');
INSERT INTO `user` VALUES ('1431', '235444117557', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:32', '2018-05-27 23:32:32');
INSERT INTO `user` VALUES ('1432', '235545117558', 'e10adc3949ba59abbe56e057f20f883e', '18017821432', '女', '19', '0.png', '2018-05-27 23:32:33', '2018-05-27 23:32:33');
INSERT INTO `user` VALUES ('1433', '235645117559', 'e10adc3949ba59abbe56e057f20f883e', '18017821433', '女', '20', '0.png', '2018-05-27 23:32:34', '2018-05-27 23:32:34');
INSERT INTO `user` VALUES ('1434', '235745117559', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:35', '2018-05-27 23:32:35');
INSERT INTO `user` VALUES ('1435', '235845117559', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:36', '2018-05-27 23:32:36');
INSERT INTO `user` VALUES ('1436', '235946117558', 'e10adc3949ba59abbe56e057f20f883e', '18017821436', '女', '19', '0.png', '2018-05-27 23:32:37', '2018-05-27 23:32:37');
INSERT INTO `user` VALUES ('1437', '235046117567', 'e10adc3949ba59abbe56e057f20f883e', '18017821437', '女', '20', '0.png', '2018-05-27 23:32:38', '2018-05-27 23:32:38');
INSERT INTO `user` VALUES ('1438', '235146117568', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:39', '2018-05-27 23:32:39');
INSERT INTO `user` VALUES ('1439', '235248117560', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:40', '2018-05-27 23:32:40');
INSERT INTO `user` VALUES ('1440', '235347117569', 'e10adc3949ba59abbe56e057f20f883e', '18017821440', '男', '19', '0.png', '2018-05-27 23:32:41', '2018-05-27 23:32:41');
INSERT INTO `user` VALUES ('1441', '235448117565', 'e10adc3949ba59abbe56e057f20f883e', '18017821441', '女', '20', '0.png', '2018-05-27 23:32:42', '2018-05-27 23:32:42');
INSERT INTO `user` VALUES ('1442', '235549117561', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:44', '2018-05-27 23:32:44');
INSERT INTO `user` VALUES ('1443', '235649117564', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:45', '2018-05-27 23:32:45');
INSERT INTO `user` VALUES ('1444', '235749117569', 'e10adc3949ba59abbe56e057f20f883e', '18017821444', '男', '19', '0.png', '2018-05-27 23:32:46', '2018-05-27 23:32:46');
INSERT INTO `user` VALUES ('1445', '235940117566', 'e10adc3949ba59abbe56e057f20f883e', '18017821445', '男', '20', '0.png', '2018-05-27 23:32:47', '2018-05-27 23:32:47');
INSERT INTO `user` VALUES ('1446', '235041117572', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:32:48', '2018-05-27 23:32:48');
INSERT INTO `user` VALUES ('1447', '235141117573', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:49', '2018-05-27 23:32:49');
INSERT INTO `user` VALUES ('1448', '235241117579', 'e10adc3949ba59abbe56e057f20f883e', '18017821448', '男', '19', '0.png', '2018-05-27 23:32:50', '2018-05-27 23:32:50');
INSERT INTO `user` VALUES ('1449', '235341117570', 'e10adc3949ba59abbe56e057f20f883e', '18017821449', '男', '20', '0.png', '2018-05-27 23:32:51', '2018-05-27 23:32:51');
INSERT INTO `user` VALUES ('1450', '235441117571', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:52', '2018-05-27 23:32:52');
INSERT INTO `user` VALUES ('1451', '235540117574', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:32:53', '2018-05-27 23:32:53');
INSERT INTO `user` VALUES ('1452', '235640117576', 'e10adc3949ba59abbe56e057f20f883e', '18017821452', '女', '19', '0.png', '2018-05-27 23:32:54', '2018-05-27 23:32:54');
INSERT INTO `user` VALUES ('1453', '235741117579', 'e10adc3949ba59abbe56e057f20f883e', '18017821453', '女', '20', '0.png', '2018-05-27 23:32:55', '2018-05-27 23:32:55');
INSERT INTO `user` VALUES ('1454', '235842117575', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:32:56', '2018-05-27 23:32:56');
INSERT INTO `user` VALUES ('1455', '235943117573', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:32:57', '2018-05-27 23:32:57');
INSERT INTO `user` VALUES ('1456', '235042117586', 'e10adc3949ba59abbe56e057f20f883e', '18017821456', '女', '19', '0.png', '2018-05-27 23:32:58', '2018-05-27 23:32:58');
INSERT INTO `user` VALUES ('1457', '235142117587', 'e10adc3949ba59abbe56e057f20f883e', '18017821457', '女', '20', '0.png', '2018-05-27 23:32:59', '2018-05-27 23:32:59');
INSERT INTO `user` VALUES ('1458', '235244117581', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:00', '2018-05-27 23:33:00');
INSERT INTO `user` VALUES ('1459', '235344117588', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:01', '2018-05-27 23:33:01');
INSERT INTO `user` VALUES ('1460', '235445117582', 'e10adc3949ba59abbe56e057f20f883e', '18017821460', '女', '19', '0.png', '2018-05-27 23:33:02', '2018-05-27 23:33:02');
INSERT INTO `user` VALUES ('1461', '235544117587', 'e10adc3949ba59abbe56e057f20f883e', '18017821461', '女', '20', '0.png', '2018-05-27 23:33:03', '2018-05-27 23:33:03');
INSERT INTO `user` VALUES ('1462', '235645117583', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:04', '2018-05-27 23:33:04');
INSERT INTO `user` VALUES ('1463', '235745117586', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:05', '2018-05-27 23:33:05');
INSERT INTO `user` VALUES ('1464', '235845117582', 'e10adc3949ba59abbe56e057f20f883e', '18017821464', '女', '19', '0.png', '2018-05-27 23:33:06', '2018-05-27 23:33:06');
INSERT INTO `user` VALUES ('1465', '235945117582', 'e10adc3949ba59abbe56e057f20f883e', '18017821465', '男', '20', '0.png', '2018-05-27 23:33:07', '2018-05-27 23:33:07');
INSERT INTO `user` VALUES ('1466', '235045117599', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:08', '2018-05-27 23:33:08');
INSERT INTO `user` VALUES ('1467', '235146117595', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:09', '2018-05-27 23:33:09');
INSERT INTO `user` VALUES ('1468', '235247117590', 'e10adc3949ba59abbe56e057f20f883e', '18017821468', '女', '19', '0.png', '2018-05-27 23:33:10', '2018-05-27 23:33:10');
INSERT INTO `user` VALUES ('1469', '235347117598', 'e10adc3949ba59abbe56e057f20f883e', '18017821469', '男', '20', '0.png', '2018-05-27 23:33:12', '2018-05-27 23:33:12');
INSERT INTO `user` VALUES ('1470', '235448117599', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:13', '2018-05-27 23:33:13');
INSERT INTO `user` VALUES ('1471', '235549117592', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:14', '2018-05-27 23:33:14');
INSERT INTO `user` VALUES ('1472', '235649117595', 'e10adc3949ba59abbe56e057f20f883e', '18017821472', '男', '19', '0.png', '2018-05-27 23:33:15', '2018-05-27 23:33:15');
INSERT INTO `user` VALUES ('1473', '235749117591', 'e10adc3949ba59abbe56e057f20f883e', '18017821473', '女', '20', '0.png', '2018-05-27 23:33:16', '2018-05-27 23:33:16');
INSERT INTO `user` VALUES ('1474', '235849117596', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:33:17', '2018-05-27 23:33:17');
INSERT INTO `user` VALUES ('1475', '235949117593', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:18', '2018-05-27 23:33:18');
INSERT INTO `user` VALUES ('1476', '235140127501', 'e10adc3949ba59abbe56e057f20f883e', '18017821476', '男', '19', '0.png', '2018-05-27 23:33:19', '2018-05-27 23:33:19');
INSERT INTO `user` VALUES ('1477', '235149127505', 'e10adc3949ba59abbe56e057f20f883e', '18017821477', '女', '20', '0.png', '2018-05-27 23:33:20', '2018-05-27 23:33:20');
INSERT INTO `user` VALUES ('1478', '235340127501', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:21', '2018-05-27 23:33:21');
INSERT INTO `user` VALUES ('1479', '235440127508', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:22', '2018-05-27 23:33:22');
INSERT INTO `user` VALUES ('1480', '235541127504', 'e10adc3949ba59abbe56e057f20f883e', '18017821480', '女', '19', '0.png', '2018-05-27 23:33:23', '2018-05-27 23:33:23');
INSERT INTO `user` VALUES ('1481', '235641127506', 'e10adc3949ba59abbe56e057f20f883e', '18017821481', '男', '20', '0.png', '2018-05-27 23:33:24', '2018-05-27 23:33:24');
INSERT INTO `user` VALUES ('1482', '235741127509', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:25', '2018-05-27 23:33:25');
INSERT INTO `user` VALUES ('1483', '235841127506', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:26', '2018-05-27 23:33:26');
INSERT INTO `user` VALUES ('1484', '235941127508', 'e10adc3949ba59abbe56e057f20f883e', '18017821484', '女', '19', '0.png', '2018-05-27 23:33:27', '2018-05-27 23:33:27');
INSERT INTO `user` VALUES ('1485', '235041127517', 'e10adc3949ba59abbe56e057f20f883e', '18017821485', '女', '20', '0.png', '2018-05-27 23:33:28', '2018-05-27 23:33:28');
INSERT INTO `user` VALUES ('1486', '235142127513', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:29', '2018-05-27 23:33:29');
INSERT INTO `user` VALUES ('1487', '235242127514', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:30', '2018-05-27 23:33:30');
INSERT INTO `user` VALUES ('1488', '235341127518', 'e10adc3949ba59abbe56e057f20f883e', '18017821488', '女', '19', '0.png', '2018-05-27 23:33:31', '2018-05-27 23:33:31');
INSERT INTO `user` VALUES ('1489', '235442127511', 'e10adc3949ba59abbe56e057f20f883e', '18017821489', '女', '20', '0.png', '2018-05-27 23:33:32', '2018-05-27 23:33:32');
INSERT INTO `user` VALUES ('1490', '235542127511', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:33', '2018-05-27 23:33:33');
INSERT INTO `user` VALUES ('1491', '235642127518', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:34', '2018-05-27 23:33:34');
INSERT INTO `user` VALUES ('1492', '235742127519', 'e10adc3949ba59abbe56e057f20f883e', '18017821492', '男', '19', '0.png', '2018-05-27 23:33:35', '2018-05-27 23:33:35');
INSERT INTO `user` VALUES ('1493', '235843127514', 'e10adc3949ba59abbe56e057f20f883e', '18017821493', '男', '20', '0.png', '2018-05-27 23:33:36', '2018-05-27 23:33:36');
INSERT INTO `user` VALUES ('1494', '235943127517', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:37', '2018-05-27 23:33:37');
INSERT INTO `user` VALUES ('1495', '235044127521', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:38', '2018-05-27 23:33:38');
INSERT INTO `user` VALUES ('1496', '235144127529', 'e10adc3949ba59abbe56e057f20f883e', '18017821496', '男', '19', '0.png', '2018-05-27 23:33:39', '2018-05-27 23:33:39');
INSERT INTO `user` VALUES ('1497', '235246127520', 'e10adc3949ba59abbe56e057f20f883e', '18017821497', '男', '20', '0.png', '2018-05-27 23:33:40', '2018-05-27 23:33:40');
INSERT INTO `user` VALUES ('1498', '235346127523', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:41', '2018-05-27 23:33:41');
INSERT INTO `user` VALUES ('1499', '235446127524', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:42', '2018-05-27 23:33:42');
INSERT INTO `user` VALUES ('1500', '235546127528', 'e10adc3949ba59abbe56e057f20f883e', '18017821500', '女', '19', '0.png', '2018-05-27 23:33:43', '2018-05-27 23:33:43');
INSERT INTO `user` VALUES ('1501', '235647127529', 'e10adc3949ba59abbe56e057f20f883e', '18017821501', '女', '20', '0.png', '2018-05-27 23:33:45', '2018-05-27 23:33:45');
INSERT INTO `user` VALUES ('1502', '235749127521', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:46', '2018-05-27 23:33:46');
INSERT INTO `user` VALUES ('1503', '235848127529', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:47', '2018-05-27 23:33:47');
INSERT INTO `user` VALUES ('1504', '235949127529', 'e10adc3949ba59abbe56e057f20f883e', '18017821504', '男', '19', '0.png', '2018-05-27 23:33:48', '2018-05-27 23:33:48');
INSERT INTO `user` VALUES ('1505', '235140127535', 'e10adc3949ba59abbe56e057f20f883e', '18017821505', '女', '20', '0.png', '2018-05-27 23:33:49', '2018-05-27 23:33:49');
INSERT INTO `user` VALUES ('1506', '235242127533', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:50', '2018-05-27 23:33:50');
INSERT INTO `user` VALUES ('1507', '235342127537', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:51', '2018-05-27 23:33:51');
INSERT INTO `user` VALUES ('1508', '235443127534', 'e10adc3949ba59abbe56e057f20f883e', '18017821508', '女', '19', '0.png', '2018-05-27 23:33:52', '2018-05-27 23:33:52');
INSERT INTO `user` VALUES ('1509', '235542127535', 'e10adc3949ba59abbe56e057f20f883e', '18017821509', '女', '20', '0.png', '2018-05-27 23:33:53', '2018-05-27 23:33:53');
INSERT INTO `user` VALUES ('1510', '235643127531', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:54', '2018-05-27 23:33:54');
INSERT INTO `user` VALUES ('1511', '235743127535', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:33:55', '2018-05-27 23:33:55');
INSERT INTO `user` VALUES ('1512', '235842127535', 'e10adc3949ba59abbe56e057f20f883e', '18017821512', '男', '19', '0.png', '2018-05-27 23:33:56', '2018-05-27 23:33:56');
INSERT INTO `user` VALUES ('1513', '235943127531', 'e10adc3949ba59abbe56e057f20f883e', '18017821513', '女', '20', '0.png', '2018-05-27 23:33:57', '2018-05-27 23:33:57');
INSERT INTO `user` VALUES ('1514', '235042127549', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:33:58', '2018-05-27 23:33:58');
INSERT INTO `user` VALUES ('1515', '235143127544', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:33:59', '2018-05-27 23:33:59');
INSERT INTO `user` VALUES ('1516', '235244127543', 'e10adc3949ba59abbe56e057f20f883e', '18017821516', '男', '19', '0.png', '2018-05-27 23:34:00', '2018-05-27 23:34:00');
INSERT INTO `user` VALUES ('1517', '235344127547', 'e10adc3949ba59abbe56e057f20f883e', '18017821517', '女', '20', '0.png', '2018-05-27 23:34:01', '2018-05-27 23:34:01');
INSERT INTO `user` VALUES ('1518', '235445127545', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:34:02', '2018-05-27 23:34:02');
INSERT INTO `user` VALUES ('1519', '235545127542', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:34:03', '2018-05-27 23:34:03');
INSERT INTO `user` VALUES ('1520', '235645127546', 'e10adc3949ba59abbe56e057f20f883e', '18017821520', '女', '19', '0.png', '2018-05-27 23:34:04', '2018-05-27 23:34:04');
INSERT INTO `user` VALUES ('1521', '235746127546', 'e10adc3949ba59abbe56e057f20f883e', '18017821521', '男', '20', '0.png', '2018-05-27 23:34:05', '2018-05-27 23:34:05');
INSERT INTO `user` VALUES ('1522', '235846127548', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:06', '2018-05-27 23:34:06');
INSERT INTO `user` VALUES ('1523', '235947127548', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:34:08', '2018-05-27 23:34:08');
INSERT INTO `user` VALUES ('1524', '235049127551', 'e10adc3949ba59abbe56e057f20f883e', '18017821524', '男', '19', '0.png', '2018-05-27 23:34:09', '2018-05-27 23:34:09');
INSERT INTO `user` VALUES ('1525', '235149127554', 'e10adc3949ba59abbe56e057f20f883e', '18017821525', '男', '20', '0.png', '2018-05-27 23:34:10', '2018-05-27 23:34:10');
INSERT INTO `user` VALUES ('1526', '235249127555', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:34:11', '2018-05-27 23:34:11');
INSERT INTO `user` VALUES ('1527', '235440127555', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:12', '2018-05-27 23:34:12');
INSERT INTO `user` VALUES ('1528', '235541127557', 'e10adc3949ba59abbe56e057f20f883e', '18017821528', '男', '19', '0.png', '2018-05-27 23:34:13', '2018-05-27 23:34:13');
INSERT INTO `user` VALUES ('1529', '235642127554', 'e10adc3949ba59abbe56e057f20f883e', '18017821529', '男', '20', '0.png', '2018-05-27 23:34:14', '2018-05-27 23:34:14');
INSERT INTO `user` VALUES ('1530', '235742127552', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:15', '2018-05-27 23:34:15');
INSERT INTO `user` VALUES ('1531', '235841127559', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:16', '2018-05-27 23:34:16');
INSERT INTO `user` VALUES ('1532', '235942127550', 'e10adc3949ba59abbe56e057f20f883e', '18017821532', '女', '19', '0.png', '2018-05-27 23:34:17', '2018-05-27 23:34:17');
INSERT INTO `user` VALUES ('1533', '235042127564', 'e10adc3949ba59abbe56e057f20f883e', '18017821533', '男', '20', '0.png', '2018-05-27 23:34:18', '2018-05-27 23:34:18');
INSERT INTO `user` VALUES ('1534', '235142127567', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:34:19', '2018-05-27 23:34:19');
INSERT INTO `user` VALUES ('1535', '235243127563', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:20', '2018-05-27 23:34:20');
INSERT INTO `user` VALUES ('1536', '235344127561', 'e10adc3949ba59abbe56e057f20f883e', '18017821536', '男', '19', '0.png', '2018-05-27 23:34:21', '2018-05-27 23:34:21');
INSERT INTO `user` VALUES ('1537', '235444127565', 'e10adc3949ba59abbe56e057f20f883e', '18017821537', '女', '20', '0.png', '2018-05-27 23:34:22', '2018-05-27 23:34:22');
INSERT INTO `user` VALUES ('1538', '235544127562', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:23', '2018-05-27 23:34:23');
INSERT INTO `user` VALUES ('1539', '235645127561', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:24', '2018-05-27 23:34:24');
INSERT INTO `user` VALUES ('1540', '235745127560', 'e10adc3949ba59abbe56e057f20f883e', '18017821540', '女', '19', '0.png', '2018-05-27 23:34:25', '2018-05-27 23:34:25');
INSERT INTO `user` VALUES ('1541', '235845127566', 'e10adc3949ba59abbe56e057f20f883e', '18017821541', '男', '20', '0.png', '2018-05-27 23:34:26', '2018-05-27 23:34:26');
INSERT INTO `user` VALUES ('1542', '235946127564', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:27', '2018-05-27 23:34:27');
INSERT INTO `user` VALUES ('1543', '235046127574', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '22', '0.png', '2018-05-27 23:34:28', '2018-05-27 23:34:28');
INSERT INTO `user` VALUES ('1544', '235146127577', 'e10adc3949ba59abbe56e057f20f883e', '18017821544', '男', '19', '0.png', '2018-05-27 23:34:30', '2018-05-27 23:34:30');
INSERT INTO `user` VALUES ('1545', '235247127577', 'e10adc3949ba59abbe56e057f20f883e', '18017821545', '女', '20', '0.png', '2018-05-27 23:34:31', '2018-05-27 23:34:31');
INSERT INTO `user` VALUES ('1546', '235348127570', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:32', '2018-05-27 23:34:32');
INSERT INTO `user` VALUES ('1547', '235447127577', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:33', '2018-05-27 23:34:33');
INSERT INTO `user` VALUES ('1548', '235548127575', 'e10adc3949ba59abbe56e057f20f883e', '18017821548', '男', '19', '0.png', '2018-05-27 23:34:34', '2018-05-27 23:34:34');
INSERT INTO `user` VALUES ('1549', '235649127574', 'e10adc3949ba59abbe56e057f20f883e', '18017821549', '男', '20', '0.png', '2018-05-27 23:34:35', '2018-05-27 23:34:35');
INSERT INTO `user` VALUES ('1550', '235840127574', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '21', '0.png', '2018-05-27 23:34:36', '2018-05-27 23:34:36');
INSERT INTO `user` VALUES ('1551', '235940127573', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:37', '2018-05-27 23:34:37');
INSERT INTO `user` VALUES ('1552', '235041127581', 'e10adc3949ba59abbe56e057f20f883e', '18017821552', '男', '19', '0.png', '2018-05-27 23:34:38', '2018-05-27 23:34:38');
INSERT INTO `user` VALUES ('1553', '235141127584', 'e10adc3949ba59abbe56e057f20f883e', '18017821553', '男', '20', '0.png', '2018-05-27 23:34:39', '2018-05-27 23:34:39');
INSERT INTO `user` VALUES ('1554', '235241127589', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:34:40', '2018-05-27 23:34:40');
INSERT INTO `user` VALUES ('1555', '235342127581', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:41', '2018-05-27 23:34:41');
INSERT INTO `user` VALUES ('1556', '235442127585', 'e10adc3949ba59abbe56e057f20f883e', '18017821556', '男', '19', '0.png', '2018-05-27 23:34:42', '2018-05-27 23:34:42');
INSERT INTO `user` VALUES ('1557', '235543127581', 'e10adc3949ba59abbe56e057f20f883e', '18017821557', '女', '20', '0.png', '2018-05-27 23:34:43', '2018-05-27 23:34:43');
INSERT INTO `user` VALUES ('1558', '235643127589', 'e10adc3949ba59abbe56e057f20f883e', null, '男', '21', '0.png', '2018-05-27 23:34:44', '2018-05-27 23:34:44');
INSERT INTO `user` VALUES ('1559', '235743127587', 'e10adc3949ba59abbe56e057f20f883e', null, '女', '22', '0.png', '2018-05-27 23:34:45', '2018-05-27 23:34:45');
INSERT INTO `user` VALUES ('1560', '88855185037', '123456', '18758585030', '男', '22', '0.png', '2018-05-28 21:54:10', '2018-05-28 21:54:10');

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `wallet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `wallet_password` char(40) NOT NULL,
  `wallet_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wallet
-- ----------------------------
