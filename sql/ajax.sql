/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50401
Source Host           : localhost:3306
Source Database       : ajax

Target Server Type    : MYSQL
Target Server Version : 50401
File Encoding         : 65001

Date: 2018-07-19 14:45:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ability`
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
-- Table structure for `admin`
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
-- Table structure for `banner`
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
-- Table structure for `bill`
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
-- Table structure for `circle_dynamic`
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
-- Table structure for `classification`
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
-- Table structure for `communication`
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
-- Table structure for `communication_comment`
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
-- Table structure for `communication_image`
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
-- Table structure for `communication_praise`
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
-- Table structure for `course`
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
-- Table structure for `course_material`
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
-- Table structure for `dynamic_comment`
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
-- Table structure for `dynamic_image`
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
-- Table structure for `dynamic_praise`
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
-- Table structure for `edu_admin`
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
-- Table structure for `my_practical_training`
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
-- Table structure for `my_task`
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
-- Table structure for `platform_bill`
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
-- Table structure for `platform_course`
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
-- Table structure for `platform_image`
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
-- Table structure for `platform_information`
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
-- Table structure for `practical_training`
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
-- Table structure for `practice`
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
-- Table structure for `school`
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
-- Table structure for `school_image`
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
-- Table structure for `school_information`
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
-- Table structure for `sensitive_word`
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
-- Table structure for `student`
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
-- Table structure for `subscribe`
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
-- Table structure for `task`
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
-- Table structure for `teacher`
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
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `totalspace` varchar(200) DEFAULT NULL,
  `usedspace` varchar(200) DEFAULT NULL,
  `contribution` varchar(200) DEFAULT NULL,
  `invitecode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'rain', '123456', '784269332@qq.com', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('2', 'zfa', 'fsfsadf', '87646464@qq.com', null, null, null, null);
INSERT INTO `user` VALUES ('3', 'zg', 'asdasd', '213dsad4@qq.com', null, null, null, null);
