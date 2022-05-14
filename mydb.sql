/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-05-04 22:16:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `phone` char(50) DEFAULT '' COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `uid` int(9) NOT NULL COMMENT '用户',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `state` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '路人甲', '13812345678', '北京市朝阳区盈科中心', '11', '2020-04-10 21:55:44', '2020-05-02 22:40:15', '1');
INSERT INTO `address` VALUES ('15', '大海无量', '15012347891', '山东省济南市大明湖北', '11', '2020-05-03 00:10:07', '2020-05-03 00:12:39', '1');

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `coverImg` varchar(255) DEFAULT NULL COMMENT '图片',
  `goodsId` int(11) NOT NULL COMMENT '图书',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `state` tinyint(2) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES ('9', '红楼', 'upload/d5e90f7d0f964bd5bd4ac42df31d05d9.jpg', '17', '2020-04-10 21:50:29', '2020-04-25 20:47:33', '1');
INSERT INTO `advertisement` VALUES ('10', '美景', 'upload/a4690cee4f7e41ed95e22421f94d93bd.jpg', '16', '2020-04-10 21:50:58', '2020-05-04 12:38:34', '2');
INSERT INTO `advertisement` VALUES ('11', '西游记', 'upload/f700335f6c9c4fba9598a92c8fd537f9.jpg', '21', '2020-04-25 20:39:00', '2020-04-25 20:39:00', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `writer` varchar(50) DEFAULT NULL COMMENT '作者',
  `des` varchar(500) DEFAULT NULL COMMENT '简介',
  `coverImage` varchar(255) DEFAULT NULL COMMENT '图片',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `typeId` int(11) NOT NULL COMMENT '分类名称',
  `ishot` tinyint(2) DEFAULT '2' COMMENT '是否精品',
  `state` tinyint(2) DEFAULT '1' COMMENT '状态',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('15', '魔法手册', '梵高', '这书不错，值得推荐！', 'upload/a2110af50e2e41f08c221d652d9451ce.jpg', '25.60', '1', '1', '1', '2020-04-10 21:49:23', '2020-04-25 14:45:41');
INSERT INTO `goods` VALUES ('16', '有毒', '亚里士多德', '这本书狠毒的呢！', 'upload/d42d0dd76154479b82d7d7bb9df37d45.jpg', '130.00', '2', '2', '1', '2020-04-10 21:50:03', '2020-04-25 14:45:52');
INSERT INTO `goods` VALUES ('17', '红楼梦', '曹雪芹', '大家族的兴衰', 'upload/1d8df094fcb64ddbbac6796f8ceba816.jpg', '123.45', '3', '1', '1', '2020-04-25 12:47:47', '2020-04-25 14:43:57');
INSERT INTO `goods` VALUES ('21', '西游记', '吴承恩', '孙悟空的故事', 'upload/5eaa2f677f464051b77f0d3abe58e794.jpg', '235.60', '4', '1', '1', '2020-04-25 14:36:20', '2020-04-25 14:42:52');

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `state` tinyint(2) DEFAULT '1' COMMENT '状态',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '电子信息类', '1', '2020-02-20 15:37:49', '2020-02-21 11:40:37');
INSERT INTO `goods_type` VALUES ('2', '计算机科学类', '1', '2020-02-20 15:38:33', '2020-04-23 21:08:30');
INSERT INTO `goods_type` VALUES ('3', '其他', '1', '2020-02-20 15:38:38', '2020-02-20 15:38:38');
INSERT INTO `goods_type` VALUES ('4', '文史类', '1', '2020-04-22 21:21:43', '2020-04-22 21:21:43');
INSERT INTO `goods_type` VALUES ('5', '法律类', '2', '2020-04-22 21:21:59', '2020-05-03 21:33:18');
INSERT INTO `goods_type` VALUES ('6', '外语类', '1', '2020-04-22 21:22:04', '2020-05-03 21:32:31');
INSERT INTO `goods_type` VALUES ('7', '现代文学', '1', '2020-04-23 20:11:10', '2020-04-23 21:03:45');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `totalPrice` decimal(10,2) unsigned NOT NULL COMMENT '订单金额',
  `uid` int(11) NOT NULL COMMENT '用户姓名',
  `orderSn` varchar(100) NOT NULL COMMENT '订单编号',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单状态',
  `addressId` int(11) NOT NULL COMMENT '收货地址',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_key_orders_ordersn` (`orderSn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('32', '102.40', '15', '42cecbe7979e4af29771bb2e44345159696', '4', '15', '2020-04-10 21:56:00', '2020-05-03 13:54:08');
INSERT INTO `orders` VALUES ('33', '349.30', '11', 'cc86230b29c84e61ae9604bd21b8f7be953', '1', '1', '2020-05-03 22:13:35', '2020-05-03 22:13:35');
INSERT INTO `orders` VALUES ('34', '25.60', '11', '1d35e1281b6f4b8dbde8532a35940cc0120', '1', '15', '2020-05-03 22:28:51', '2020-05-03 22:28:51');
INSERT INTO `orders` VALUES ('35', '102.40', '11', 'c3fd3f9ead79462e99aa6003cee16a0c275', '4', '15', '2020-05-03 22:30:49', '2020-05-04 16:43:22');
INSERT INTO `orders` VALUES ('36', '25.60', '11', 'c87b76706f2b4056a9819daa6751dcf3765', '3', '1', '2020-05-03 22:41:08', '2020-05-04 19:51:49');
INSERT INTO `orders` VALUES ('37', '25.60', '11', 'cbd9583a7c874f6d9c73ef7e66de9ff3876', '2', '15', '2020-05-03 23:00:17', '2020-05-03 23:00:50');
INSERT INTO `orders` VALUES ('38', '51.20', '11', 'e390ba1e15a644ad8e891d3e7dd2ec27198', '4', '1', '2020-05-03 23:01:25', '2020-05-04 20:13:05');
INSERT INTO `orders` VALUES ('39', '123.45', '11', '4c30359f7fc0478cacc1eafcc52f0ad4807', '4', '1', '2020-05-03 23:01:51', '2020-05-04 16:43:55');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goodsId` int(11) NOT NULL COMMENT '商品名称',
  `ordersId` int(11) NOT NULL COMMENT '订单编号',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES ('32', '15', '32', '4', '25.60', '2020-04-10 21:56:00', '2020-04-10 21:56:00');
INSERT INTO `orders_detail` VALUES ('33', '15', '33', '4', '25.60', '2020-05-03 22:13:35', '2020-05-03 22:13:35');
INSERT INTO `orders_detail` VALUES ('34', '17', '33', '2', '123.45', '2020-05-03 22:13:35', '2020-05-03 22:13:35');
INSERT INTO `orders_detail` VALUES ('35', '15', '34', '1', '25.60', '2020-05-03 22:28:51', '2020-05-03 22:28:51');
INSERT INTO `orders_detail` VALUES ('36', '15', '35', '4', '25.60', '2020-05-03 22:30:49', '2020-05-03 22:30:49');
INSERT INTO `orders_detail` VALUES ('37', '15', '36', '1', '25.60', '2020-05-03 22:41:08', '2020-05-03 22:41:08');
INSERT INTO `orders_detail` VALUES ('38', '15', '37', '1', '25.60', '2020-05-03 23:00:17', '2020-05-03 23:00:17');
INSERT INTO `orders_detail` VALUES ('39', '15', '38', '2', '25.60', '2020-05-03 23:01:25', '2020-05-03 23:01:25');
INSERT INTO `orders_detail` VALUES ('40', '17', '39', '1', '123.45', '2020-05-03 23:01:52', '2020-05-03 23:01:52');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(64) NOT NULL COMMENT '登陆名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(64) DEFAULT '' COMMENT '用户名',
  `sex` tinyint(2) unsigned DEFAULT '1' COMMENT '性别',
  `age` tinyint(2) unsigned DEFAULT '0' COMMENT '年龄',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDx_user_login_name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台用户登录表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '123456', '管理员', '1', '0', '2019-06-21 16:23:39', '2019-06-21 16:23:39');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT '微信用户openid',
  `nickName` varchar(300) DEFAULT '' COMMENT '用户昵称',
  `gender` tinyint(1) DEFAULT '0' COMMENT '用户性别0未知，1男，2，女',
  `avatarUrl` varchar(200) DEFAULT '' COMMENT '用户头像图片',
  `country` char(50) DEFAULT '' COMMENT '国家',
  `province` char(50) DEFAULT '' COMMENT '省',
  `city` char(50) DEFAULT '' COMMENT '市',
  `haveGetUserInfo` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否已获取用户信息',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'oFqHn5ZwKFO0u3c140tRZSs4R9oY', 'sp', '1', '/upload//c/d/0/0/0/c/d/8/04789848769449C0BE70F73402516AD1', '中国', '山东', '济南', '1', '2020-04-28 22:00:46', '2020-04-28 22:00:46');

-- ----------------------------
-- Table structure for wx_access_token
-- ----------------------------
DROP TABLE IF EXISTS `wx_access_token`;
CREATE TABLE `wx_access_token` (
  `accessToken` varchar(300) NOT NULL COMMENT '微信access_token',
  `expiresIn` datetime NOT NULL COMMENT '过期时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wx_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for wx_template_send_log
-- ----------------------------
DROP TABLE IF EXISTS `wx_template_send_log`;
CREATE TABLE `wx_template_send_log` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userId` bigint(19) unsigned NOT NULL COMMENT '用户id',
  `templateId` varchar(200) NOT NULL COMMENT '模板id',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `errcode` int(9) DEFAULT NULL COMMENT '错误码',
  `errmsg` varchar(100) DEFAULT NULL COMMENT '失败原因',
  `sendState` enum('1','2') NOT NULL DEFAULT '1' COMMENT '发送状态 1成功 2失败',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wx_template_send_log
-- ----------------------------
