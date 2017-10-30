/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-27 15:07:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) NOT NULL,
  `regtime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '947917797@qq.com', '13265358199', 'nick', '206355f280dd889dc85baad4f96192fd', null);
