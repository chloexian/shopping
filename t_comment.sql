/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-27 15:56:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user` varchar(100) NOT NULL,
  `commentTime` datetime NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `did` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '柔软的毛巾', '服务很好', '947917797@qq.con', '2017-10-27 15:45:47', 'nick', '2');
INSERT INTO `t_comment` VALUES ('2', '毛巾', '很实惠', '1234@qq.com', '2017-10-27 15:48:23', 'ccc', '2');
INSERT INTO `t_comment` VALUES ('3', '抱枕', '态度差', '123@qq.com', '2017-10-27 15:49:00', 'nick', '3');
