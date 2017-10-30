/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-30 17:17:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_shopcart
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcart`;
CREATE TABLE `t_shopcart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `cartTime` datetime NOT NULL,
  `proid` int(11) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('1', '/images/maojin.png', '柔软毛巾', '13.00', '3', '123@qq.com', 'nickname', '2017-10-27 17:04:30', '2');
INSERT INTO `t_shopcart` VALUES ('2', '/images/maojin.png', '柔软毛巾', '13.00', '1', '123@qq.com', 'nickname', '2017-10-30 15:28:34', '2');
INSERT INTO `t_shopcart` VALUES ('3', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 15:28:34', '1');
INSERT INTO `t_shopcart` VALUES ('4', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 15:28:34', '1');
INSERT INTO `t_shopcart` VALUES ('5', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 15:28:34', '1');
INSERT INTO `t_shopcart` VALUES ('6', '/images/zhentou.png', '舒适枕头', '55.00', '15', '123@qq.com', 'nickname', '2017-10-30 16:19:09', '1');
INSERT INTO `t_shopcart` VALUES ('7', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 16:20:36', '1');
INSERT INTO `t_shopcart` VALUES ('8', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 16:21:15', '1');
