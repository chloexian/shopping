/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-30 17:17:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_gain
-- ----------------------------
DROP TABLE IF EXISTS `t_gain`;
CREATE TABLE `t_gain` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gnickname` varchar(100) NOT NULL,
  `gemail` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gain
-- ----------------------------
INSERT INTO `t_gain` VALUES ('1', 'coolie', '12@qq.com', '15222222222', '广州天河区车陂');
