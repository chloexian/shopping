/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-27 15:07:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `monthCount` int(11) NOT NULL,
  `surplusCount` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '舒适枕头', '55.00', '/images/zhentou.png', '有枕头好梦', '2', '60');
INSERT INTO `t_product` VALUES ('2', '柔软毛巾', '13.00', '/images/maojin.png', '舒服', '21', '136');
INSERT INTO `t_product` VALUES ('3', '抱抱枕', '21.00', '/images/baozhen.png', '大大的', '3', '24');
