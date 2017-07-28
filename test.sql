/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-28 23:03:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `stat` tinyint(1) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('11', 'CSS 权威指南', '徐勇', '软件开发', '0.00', 'CSS 权威指南，样式表', '1');
INSERT INTO `t_book` VALUES ('12', '编程珠玑', 'Jon Bentley', '软件开发', '0.00', '《编程珠玑》很值得一读！', '4');
INSERT INTO `t_book` VALUES ('28', '陪孩子一起上幼儿园', '付小平', '亲子教育', '0.00', '陪孩子一起上幼儿园。。。', '1');
INSERT INTO `t_book` VALUES ('29', '第一行代码', '郭霖', '软件开发', '0.00', 'android 开发必读书籍!', '1');
INSERT INTO `t_book` VALUES ('30', 'android 编程权威指南', 'Bill Phillips', '软件开发', '0.00', '人邮经典书籍，非常值得一读！', '1');
INSERT INTO `t_book` VALUES ('31', 'Java 网络编程', 'Elliotte Rusty Harold', '软件开发', '0.00', '网络编程，还没有看！', '1');
INSERT INTO `t_book` VALUES ('32', 'Hibernate 实战', 'Gary Gregory', '软件开发', '0.00', '清华大学的实战类书籍，书籍纸张很好！', '3');
INSERT INTO `t_book` VALUES ('33', 'Spring MVC 学习指南', 'Paul Deck', '软件开发', '0.00', '针对 Spring MVC 初学者的详细概览和实践指南.', '1');
INSERT INTO `t_book` VALUES ('34', '趣味物理学', '谷羽', '社会认知', '0.00', '被译为十几种语言,销售量超过2000万册的经典科普名著。', '1');
INSERT INTO `t_book` VALUES ('38', '简笔画大全', '廉东星', '学前教育', '0.00', '提高想象力和动手能力的使用教学用书，全国200所重点幼儿园名师推荐必备手工书。', '0');
INSERT INTO `t_book` VALUES ('40', '优衣库', '日本', '衣服', '9.99', '试价格是不是9.99元', '2');
INSERT INTO `t_book` VALUES ('41', '小米手环', '雷军', '数码产品', '149.00', '测试物品状态 byte', '2');
