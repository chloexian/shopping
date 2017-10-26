/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-25 18:30:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('5', '158@qq.com', '27355242', '25d55ad283aa400af464c76d713c07ad', '', null);
INSERT INTO `t_user` VALUES ('4', '12@qq.com', 'jksd', '12345678', '15811111111', null);
