/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-27 15:06:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_details
-- ----------------------------
DROP TABLE IF EXISTS `t_details`;
CREATE TABLE `t_details` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `monthCount` int(11) NOT NULL,
  `surplusCount` int(11) NOT NULL,
  `like` int(11) DEFAULT NULL,
  `notike` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_details
-- ----------------------------
INSERT INTO `t_details` VALUES ('1', '舒适枕头', '55.00', '有枕头好梦', '/images/zhentou.png', '2', '60', '15', '88', '1');
INSERT INTO `t_details` VALUES ('2', '柔软毛巾', '13.00', '舒服', '/images/maojin.png', '21', '136', '11', '11', '2');
INSERT INTO `t_details` VALUES ('3', '抱枕', '25.00', '大大的', '/images/baozhen.png', '35', '45', '44', '8', '3');
