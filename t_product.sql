/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-26 18:16:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `pid` int(255) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `monthCount` int(11) NOT NULL,
  `surplusCount` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '枕头', '55.00', '舒适枕头', '\\images\\images05_Pillow_@3x.png', '55', '66');
INSERT INTO `t_product` VALUES ('2', '抱枕', '66.00', '舒适抱枕', '\\images\\images08_Pillow_@3x.png', '66', '666');
INSERT INTO `t_product` VALUES ('3', '毛巾', '10.00', '舒适毛巾', '\\images\\images07_Sheet_@3x.png', '10', '100');
