/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : neutron

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2017-09-29 12:51:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arrange
-- ----------------------------
DROP TABLE IF EXISTS `arrange`;
CREATE TABLE `arrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL COMMENT '值班安排表',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arrange
-- ----------------------------

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` varchar(255) DEFAULT NULL COMMENT 'building',
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL COMMENT '楼号',
  `floors` int(255) DEFAULT NULL COMMENT '楼层数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='building 楼';

-- ----------------------------
-- Records of building
-- ----------------------------

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '小区名称',
  `number` varchar(255) DEFAULT NULL COMMENT '小区标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='小区表';

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1', '666之地', '123');
INSERT INTO `community` VALUES ('2', '南天门', '123123');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事');
INSERT INTO `dept` VALUES ('2', '财务');
INSERT INTO `dept` VALUES ('3', '行政');
INSERT INTO `dept` VALUES ('4', '研发');
INSERT INTO `dept` VALUES ('5', '测试');
INSERT INTO `dept` VALUES ('6', '美工');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', null, null, null);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'room',
  `unit` int(11) DEFAULT NULL COMMENT '单元',
  `room_type` varchar(255) DEFAULT NULL COMMENT '户型',
  `floor` int(255) DEFAULT NULL COMMENT '楼层',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '毛毛虫', 'maomao', '12312321', '1331133113');
INSERT INTO `user` VALUES ('2', '大头儿子', 'datou', '3424ersfds', '32132131232123');
INSERT INTO `user` VALUES ('3', '草帽小子', 'caomao', '312321', '2431241243');
INSERT INTO `user` VALUES ('4', '弗罗多', 'fulouoduo', 'fasdf', '43242424324');
INSERT INTO `user` VALUES ('5', '乔布斯', 'qiaobusi', '2wrwer', '23424');
INSERT INTO `user` VALUES ('6', '傻蛋', 'shadan', '3424', '43242');
INSERT INTO `user` VALUES ('7', '唐玄奘', 'tang', '4324', '34243242');
INSERT INTO `user` VALUES ('8', '孙悟空', 'monkeySun', '3424234', '1111111111');
INSERT INTO `user` VALUES ('9', '猪八戒', 'pig@163.com', '123131', '1231333');
