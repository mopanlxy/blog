/*
Navicat MySQL Data Transfer

Source Server         : mission
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : weibo

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2017-10-31 11:49:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `discuss`
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `id` int(200) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `name` varchar(200) default NULL,
  `time` varchar(200) default NULL,
  `microblogId` int(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discuss
-- ----------------------------

-- ----------------------------
-- Table structure for `microblog`
-- ----------------------------
DROP TABLE IF EXISTS `microblog`;
CREATE TABLE `microblog` (
  `id` int(4) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `time` varchar(50) default NULL,
  `image` varchar(200) default NULL,
  `content` varchar(255) default NULL,
  `prise` int(10) default NULL,
  `type` varchar(255) default NULL,
  `relay` int(10) default NULL,
  `spare1` varchar(255) default NULL,
  `spare2` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microblog
-- ----------------------------
INSERT INTO `microblog` VALUES ('1', 'zhangsan', '2017-10-31 10:48:14', '0', 'wwwww', '1', 'yule', '1', null, null);
INSERT INTO `microblog` VALUES ('2', 'lisi', '2017-10-31 10:55:57', '0', 'njiijjkll', '0', 'yule', '1', null, null);
INSERT INTO `microblog` VALUES ('3', 'zhangsan', '2017-10-31 11:10:06', '0', 'wwwww', '0', 'yule', '1', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL auto_increment,
  `username` varchar(200) default NULL,
  `password` varchar(255) default NULL,
  `attention` varchar(200) default NULL,
  `gender` varchar(10) default NULL,
  `address` varchar(200) default NULL,
  `phone` varchar(100) default NULL,
  `age` int(10) default NULL,
  `state` int(10) default NULL,
  `img` varchar(255) default NULL,
  `spare2` int(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123', null, '男', 'lxymopan@gmail.com', '1234444', '13', '1', null, null);
INSERT INTO `user` VALUES ('2', 'lisi', '111', '1;', 'boy', 'xianggang', '333', '13', '1', 'image\\lang.png', null);
INSERT INTO `user` VALUES ('3', 'lihe', '111', null, 'girl', 'dalu', '2345', '45', '1', 'image\\timo.jpg', null);
