/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : sunhotel

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2020-12-24 13:25:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `chk_no` varchar(50) NOT NULL COMMENT '结算单号',
  `in_no` varchar(50) NOT NULL COMMENT '入住单号',
  `days` int(11) NOT NULL COMMENT '入住天数',
  `money` double NOT NULL COMMENT '总金额',
  `chk_time` varchar(50) NOT NULL COMMENT '结算时间',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO `checkout` VALUES ('1608394128000', 'YD202012200001', 'RZ202012190062', '1', '150', '2020-12-20 0:08:48', '', '0', null, null);

-- ----------------------------
-- Table structure for checkout_temp
-- ----------------------------
DROP TABLE IF EXISTS `checkout_temp`;
CREATE TABLE `checkout_temp` (
  `pk` decimal(18,0) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `dis_price` double DEFAULT NULL,
  `account` double DEFAULT NULL,
  `money` double DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  KEY `IX_checkout_temp` (`r_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkout_temp
-- ----------------------------
INSERT INTO `checkout_temp` VALUES ('1608388587000', 'LX0002', 'BS2001', '160', '10', '160', '2.5', '400', '2020-12-19 22:36:27');

-- ----------------------------
-- Table structure for customertype
-- ----------------------------
DROP TABLE IF EXISTS `customertype`;
CREATE TABLE `customertype` (
  `pk` decimal(20,0) NOT NULL,
  `id` varchar(50) NOT NULL,
  `c_type` varchar(50) NOT NULL,
  `dis_attr` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '10',
  `price` double NOT NULL,
  `dis_price` double NOT NULL DEFAULT '0',
  `remark` varchar(50) DEFAULT NULL,
  `delmark` int(11) NOT NULL DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  KEY `IX_customertype` (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customertype
-- ----------------------------
INSERT INTO `customertype` VALUES ('0', 'sunhotel', 'sunhotel', 'sunhotel', '0', '0', '0', 'sunhotel', '1', null, null);
INSERT INTO `customertype` VALUES ('0', 'sunhotel', 'sunhotel', 'sunhotel', '0', '0', '0', 'sunhotel', '1', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0001', '10', '100', '100', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0002', '10', '160', '160', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', '购物折扣', '10', '0', '0', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0003', '10', '150', '150', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0004', '10', '260', '260', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0005', '10', '780', '780', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0006', '10', '880', '880', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0001', '10', '100', '80', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0002', '8', '160', '128', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', '购物折扣', '8', '0', '0', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0003', '8', '150', '120', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0004', '8', '260', '208', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0005', '8', '780', '624', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0006', '8', '880', '704', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0001', '8', '100', '80', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0002', '8', '160', '48', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', '购物折扣', '3', '0', '0', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0003', '8', '150', '120', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0004', '3', '260', '78', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0005', '3', '780', '234', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0006', '3', '880', '264', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0001', '6', '100', '60', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0002', '9', '160', '96', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', '购物折扣', '6', '0', '0', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0003', '6', '150', '90', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0004', '6', '260', '156', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0005', '6', '780', '468', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0006', '6', '880', '528', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0001', '9', '100', '90', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0002', '9', '160', '144', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0003', '9', '150', '135', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0004', '9', '260', '234', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0005', '9', '780', '702', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0006', '9', '880', '792', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', '购物折扣', '9', '0', '0', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0001', '10', '100', '100', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0002', '10', '160', '160', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0003', '10', '150', '150', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0004', '10', '260', '260', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0005', '10', '780', '780', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', 'LX0006', '10', '880', '880', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1522734957000', '9999', '一般客户', '购物折扣', '10', '0', '0', null, '1', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0007', '10', '128', '128', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0007', '10', '128', '128', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0007', '10', '128', '128', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0007', '10', '128', '128', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1522734516000', 'KH004', '网络会员', 'LX0007', '10', '128', '128', null, '0', null, null);

-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
DROP TABLE IF EXISTS `dtproperties`;
CREATE TABLE `dtproperties` (
  `id` int(11) NOT NULL,
  `objectid` int(11) DEFAULT NULL,
  `property` varchar(64) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `uvalue` varchar(255) DEFAULT NULL,
  `lvalue` longblob,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`,`property`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dtproperties
-- ----------------------------

-- ----------------------------
-- Table structure for engage
-- ----------------------------
DROP TABLE IF EXISTS `engage`;
CREATE TABLE `engage` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `c_name` varchar(50) NOT NULL COMMENT '客户名称',
  `c_jp` varchar(50) DEFAULT NULL COMMENT '客户名称简拼',
  `c_tel` varchar(50) NOT NULL COMMENT '客户电话',
  `r_type_id` varchar(50) NOT NULL COMMENT '房间类型编号',
  `r_no` varchar(50) NOT NULL COMMENT '房间号',
  `pa_time` varchar(50) NOT NULL COMMENT '预抵时间',
  `keep_time` varchar(50) NOT NULL COMMENT '保留时间',
  `eng_time` varchar(50) NOT NULL COMMENT '预定时间',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `engagemark` int(11) NOT NULL DEFAULT '2' COMMENT '预定状态标志',
  `cluemark` int(11) NOT NULL DEFAULT '0' COMMENT '提醒标志',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage
-- ----------------------------
INSERT INTO `engage` VALUES ('1608384445000', 'jzq', null, '123456', 'LX0001', 'BD1002', '2020-11-30', '2020-12-02', '2020-12-19 21:27:25', '', '1', '0', '0', null, null);
INSERT INTO `engage` VALUES ('1608386105000', 'bbb', null, '111', 'LX0001', 'BD1003', '2020-11-01', '2020-11-07', '2020-12-19 21:55:05', '', '0', '1', '1', null, null);
INSERT INTO `engage` VALUES ('1608392796000', 'tc', null, '1777777', 'LX0001', 'BD1002', '2020-12-12', '2020-12-13', '2020-12-19 23:46:36', '', '2', '0', '0', null, null);

-- ----------------------------
-- Table structure for engage1
-- ----------------------------
DROP TABLE IF EXISTS `engage1`;
CREATE TABLE `engage1` (
  `pk` decimal(20,0) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `c_jp` varchar(50) DEFAULT NULL,
  `c_tel` varchar(50) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `pa_time` varchar(50) DEFAULT NULL,
  `keep_time` varchar(50) DEFAULT NULL,
  `eng_time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `engagemark` int(11) DEFAULT NULL,
  `cluemark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage1
-- ----------------------------

-- ----------------------------
-- Table structure for expense_temp
-- ----------------------------
DROP TABLE IF EXISTS `expense_temp`;
CREATE TABLE `expense_temp` (
  `pk` varchar(50) DEFAULT NULL,
  `in_no` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `delmark` varchar(50) DEFAULT NULL,
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expense_temp
-- ----------------------------
INSERT INTO `expense_temp` VALUES ('', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `expense_temp` VALUES ('', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `expense_temp` VALUES ('', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `expense_temp` VALUES ('', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `expense_temp` VALUES ('', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for livein
-- ----------------------------
DROP TABLE IF EXISTS `livein`;
CREATE TABLE `livein` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `in_no` varchar(50) NOT NULL COMMENT '入住单号',
  `r_no` varchar(50) NOT NULL COMMENT '房间号',
  `r_type_id` varchar(50) NOT NULL COMMENT '房间类型编号',
  `main_room` varchar(50) NOT NULL COMMENT '主房间号',
  `main_pk` decimal(20,0) NOT NULL COMMENT '主房间PK',
  `c_type_id` varchar(50) NOT NULL COMMENT '客户类型编号',
  `c_name` varchar(50) NOT NULL COMMENT '客户名称',
  `c_jp` varchar(50) DEFAULT NULL COMMENT '客户名称简拼',
  `sex` varchar(50) NOT NULL COMMENT '性别',
  `zj_type` varchar(50) NOT NULL COMMENT '证件类型',
  `zj_no` varchar(50) NOT NULL COMMENT '证件编号',
  `address` text NOT NULL COMMENT '地址信息',
  `renshu` int(11) NOT NULL DEFAULT '1' COMMENT '人数',
  `in_time` varchar(50) NOT NULL COMMENT '入住时间',
  `account` double NOT NULL DEFAULT '0' COMMENT '消费数量',
  `days` int(11) NOT NULL COMMENT '预住天数',
  `foregift` double NOT NULL COMMENT '押金',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `m_id` varchar(50) DEFAULT NULL COMMENT '会员编号',
  `chk_no` varchar(50) DEFAULT NULL COMMENT '结算单号',
  `chk_time` varchar(50) DEFAULT NULL COMMENT '结算时间',
  `userid` varchar(50) DEFAULT NULL,
  `statemark` varchar(50) DEFAULT NULL COMMENT '状态标志',
  `cluemark` int(11) NOT NULL DEFAULT '0' COMMENT '提醒标志',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of livein
-- ----------------------------
INSERT INTO `livein` VALUES ('1608384797000', 'RZ202012190056', 'BD1002', 'LX0001', 'BD1002', '1608384797000', 'SYSMARK', 'jzq', null, '男', '身份证', '111111', '山西省', '1', '2020-12-19 21:33:17', '0', '1', '200', '', null, null, null, 'admin', '正在消费', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608388587000', 'RZ202012190057', 'BS2001', 'LX0002', 'BS2001', '1608388587000', 'SYSMARK', 'meg', null, '男', '身份证', '11', '卡隆', '2', '2020-12-19 22:36:27', '0', '1', '500', '', null, null, null, 'admin', '正在消费', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608392100000', 'RZ202012190060', 'HD3001', 'LX0003', 'HD3001', '1608392100000', 'SYSMARK', 'med', null, '男', '身份证', '111111111111', '陕西', '1', '2020-12-19 23:35:00', '0', '1', '500', '', null, null, null, 'admin', '正在消费', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608392180000', 'RZ202012190061', 'SW6004', 'LX0005', 'SW6004', '1608392180000', 'SYSMARK', 'ato', null, '男', '身份证', '123444445', '铁堡', '4', '2020-12-19 23:36:20', '0', '3', '4000', '', null, null, null, 'admin', null, '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608392349000', 'RZ202012190062', 'HD3002', 'LX0003', 'HD3002', '1608392349000', 'SYSMARK', 'star', null, '男', '身份证', '3333333333', '青丘', '1', '2020-12-19 23:39:09', '0', '1', '500', '', null, null, null, 'admin', '已结算', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608392428000', 'RZ202012190063', 'SW6003', 'LX0005', 'SW6003', '1608392428000', 'SYSMARK', 'dec', null, '男', '身份证', '12222222222222222', '卡隆', '4', '2020-12-19 23:40:28', '0', '1', '4000', '', null, null, null, 'admin', null, '1', '0', null, null);
INSERT INTO `livein` VALUES ('1608392584000', 'RZ202012190064', 'SW6008', 'LX0005', 'SW6008', '1608392584000', 'SYSMARK', 'dec', null, '男', '身份证', '122222222222222222', '卡隆', '4', '2020-12-19 23:43:04', '0', '2', '4000', '', null, null, null, 'admin', null, '1', '0', null, null);

-- ----------------------------
-- Table structure for pwd
-- ----------------------------
DROP TABLE IF EXISTS `pwd`;
CREATE TABLE `pwd` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `userid` varchar(50) NOT NULL COMMENT '用户登录ID',
  `pwd` varchar(50) NOT NULL COMMENT '登录密码',
  `puis` varchar(50) NOT NULL COMMENT '用户权限',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL COMMENT '保留1',
  `other2` varchar(50) DEFAULT NULL COMMENT '保留2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pwd
-- ----------------------------
INSERT INTO `pwd` VALUES ('234567', 'admin', '123456', '管理员', '0', null, null);
INSERT INTO `pwd` VALUES ('1146336534967', 'jzq', '123456', '管理员', '0', null, null);
INSERT INTO `pwd` VALUES ('1146336592763', 'ko', '123456', '普通操作员', '0', null, null);
INSERT INTO `pwd` VALUES ('11', '44', '1', '22', '1', null, null);
INSERT INTO `pwd` VALUES ('1522730590000', '测试', '11', '普通操作员', '0', null, null);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `pk` decimal(18,0) NOT NULL COMMENT '主键',
  `time` datetime NOT NULL COMMENT '操作时间',
  `operator` varchar(50) NOT NULL COMMENT '操作员',
  `brief` varchar(50) NOT NULL COMMENT '内容摘要',
  `content` varchar(200) NOT NULL COMMENT '内容',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1608181782000', '2020-12-17 13:09:42', 'admin', '操作员登录', 'admin 在 2020-12-17 13:09:42 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608181799000', '2020-12-17 13:09:59', 'admin', '操作员登录', 'admin 在 2020-12-17 13:09:59 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608181802000', '2020-12-17 13:10:02', 'admin', '操作员登录', 'admin 在 2020-12-17 13:10:02 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608181850000', '2020-12-17 13:10:50', 'admin', '操作员登录', 'admin 在 2020-12-17 13:10:50 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608181873000', '2020-12-17 13:11:13', 'admin', '操作员登录', 'admin 在 2020-12-17 13:11:13 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608191709000', '2020-12-17 15:55:09', 'admin', '操作员登录', 'admin 在 2020-12-17 15:55:09 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608211543000', '2020-12-17 21:25:43', 'admin', '操作员登录', 'admin 在 2020-12-17 21:25:43 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608211567000', '2020-12-17 21:26:07', 'admin', '操作员登录', 'admin 在 2020-12-17 21:26:07 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608213020000', '2020-12-17 21:50:20', 'feexc', '操作员登录', 'feexc 在 2020-12-17 21:50:20 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608213074000', '2020-12-17 21:51:14', 'feexc', '操作员登录', 'feexc 在 2020-12-17 21:51:14 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608213101000', '2020-12-17 21:51:41', 'admin', '操作员登录', 'admin 在 2020-12-17 21:51:41 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608213119000', '2020-12-17 21:51:59', 'admin', '操作员登录', 'admin 在 2020-12-17 21:51:59 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608213485000', '2020-12-17 21:58:05', 'admin', '操作员登录', 'admin 在 2020-12-17 21:58:05 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608213493000', '2020-12-17 21:58:13', 'admin', '操作员登录', 'admin 在 2020-12-17 21:58:13 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608251534000', '2020-12-18 08:32:14', 'admin', '操作员登录', 'admin 在 2020-12-18 8:32:14 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608251615000', '2020-12-18 08:33:35', 'admin', '操作员登录', 'admin 在 2020-12-18 8:33:35 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608265948000', '2020-12-18 12:32:28', 'admin', '操作员登录', 'admin 在 2020-12-18 12:32:28 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267216000', '2020-12-18 12:53:36', 'admin', '操作员登录', 'admin 在 2020-12-18 12:53:36 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267224000', '2020-12-18 12:53:44', 'admin', '操作员登录', 'admin 在 2020-12-18 12:53:44 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608267423000', '2020-12-18 12:57:03', 'admin', '操作员登录', 'admin 在 2020-12-18 12:57:03 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267471000', '2020-12-18 12:57:51', 'admin', '操作员登录', 'admin 在 2020-12-18 12:57:51 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267507000', '2020-12-18 12:58:27', 'admin', '操作员登录', 'admin 在 2020-12-18 12:58:27 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267537000', '2020-12-18 12:58:57', 'admin', '操作员登录', 'admin 在 2020-12-18 12:58:57 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267567000', '2020-12-18 12:59:27', 'admin', '操作员登录', 'admin 在 2020-12-18 12:59:27 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608267584000', '2020-12-18 12:59:44', 'admin', '操作员登录', 'admin 在 2020-12-18 12:59:44 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608300244000', '2020-12-18 22:04:04', 'admin', '操作员登录', 'admin 在 2020-12-18 22:04:04 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608300254000', '2020-12-18 22:04:14', 'admin', '操作员登录', 'admin 在 2020-12-18 22:04:14 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608303124000', '2020-12-18 22:52:04', 'admin', '操作员登录', 'admin 在 2020-12-18 22:52:04 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608303161000', '2020-12-18 22:52:41', 'admin', '操作员登录', 'admin 在 2020-12-18 22:52:41 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608383744000', '2020-12-19 21:15:44', 'ko', '操作员登录', 'ko 在 2020-12-19 21:15:44 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608383824000', '2020-12-19 21:17:04', 'ko', '操作员登录', 'ko 在 2020-12-19 21:17:04 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608384257000', '2020-12-19 21:24:17', 'admin', '操作员登录', 'admin 在 2020-12-19 21:24:17 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608384899000', '2020-12-19 21:34:59', 'admin', '操作员登录', 'admin 在 2020-12-19 21:34:59 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608385540000', '2020-12-19 21:45:40', 'admin', '操作员登录', 'admin 在 2020-12-19 21:45:40 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608385555000', '2020-12-19 21:45:55', 'admin', '操作员登录', 'admin 在 2020-12-19 21:45:55 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608385792000', '2020-12-19 21:49:52', 'admin', '操作员登录', 'admin 在 2020-12-19 21:49:52 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608385808000', '2020-12-19 21:50:08', 'admin', '操作员登录', 'admin 在 2020-12-19 21:50:08 退出本系统', '1', null);
INSERT INTO `record` VALUES ('1608385839000', '2020-12-19 21:50:39', 'admin', '操作员登录', 'admin 在 2020-12-19 21:50:39 登录本系统', '1', null);
INSERT INTO `record` VALUES ('1608385921000', '2020-12-19 21:52:01', 'admin', '操作员登录', 'admin 在 2020-12-19 21:52:01 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608386061000', '2020-12-19 21:54:21', 'admin', '操作员登录', 'admin 在 2020-12-19 21:54:21 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608387893000', '2020-12-19 22:24:53', 'admin', '操作员登录', 'admin 在 2020-12-19 22:24:53 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608387899000', '2020-12-19 22:24:59', 'admin', '操作员登录', 'admin 在 2020-12-19 22:24:59 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608387968000', '2020-12-19 22:26:08', 'admin', '操作员登录', 'admin 在 2020-12-19 22:26:08 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608387992000', '2020-12-19 22:26:32', 'admin', '操作员登录', 'admin 在 2020-12-19 22:26:32 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608388147000', '2020-12-19 22:29:07', 'admin', '操作员登录', 'admin 在 2020-12-19 22:29:07 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608388262000', '2020-12-19 22:31:02', 'admin', '操作员登录', 'admin 在 2020-12-19 22:31:02 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608388455000', '2020-12-19 22:34:15', 'admin', '操作员登录', 'admin 在 2020-12-19 22:34:15 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608388467000', '2020-12-19 22:34:27', 'admin', '操作员登录', 'admin 在 2020-12-19 22:34:27 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608388837000', '2020-12-19 22:40:37', 'admin', '操作员登录', 'admin 在 2020-12-19 22:40:37 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608388957000', '2020-12-19 22:42:37', 'admin', '操作员登录', 'admin 在 2020-12-19 22:42:37 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608388958000', '2020-12-19 22:42:38', 'admin', '操作员登录', 'admin 在 2020-12-19 22:42:38 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608388965000', '2020-12-19 22:42:45', 'admin', '操作员登录', 'admin 在 2020-12-19 22:42:45 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608388973000', '2020-12-19 22:42:53', 'admin', '操作员登录', 'admin 在 2020-12-19 22:42:53 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608391642000', '2020-12-19 23:27:22', 'admin', '操作员登录', 'admin 在 2020-12-19 23:27:22 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608391653000', '2020-12-19 23:27:33', 'admin', '操作员登录', 'admin 在 2020-12-19 23:27:33 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608391772000', '2020-12-19 23:29:32', 'admin', '操作员登录', 'admin 在 2020-12-19 23:29:32 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608391783000', '2020-12-19 23:29:43', 'admin', '操作员登录', 'admin 在 2020-12-19 23:29:43 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608391803000', '2020-12-19 23:30:03', 'admin', '操作员登录', 'admin 在 2020-12-19 23:30:03 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608391823000', '2020-12-19 23:30:23', 'admin', '操作员登录', 'admin 在 2020-12-19 23:30:23 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608391856000', '2020-12-19 23:30:56', 'admin', '操作员登录', 'admin 在 2020-12-19 23:30:56 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608391876000', '2020-12-19 23:31:16', 'admin', '操作员登录', 'admin 在 2020-12-19 23:31:16 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608394090000', '2020-12-20 00:08:10', 'admin', '操作员登录', 'admin 在 2020-12-20 0:08:10 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608394115000', '2020-12-20 00:08:35', 'admin', '操作员登录', 'admin 在 2020-12-20 0:08:35 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608394255000', '2020-12-20 00:10:55', 'admin', '操作员登录', 'admin 在 2020-12-20 0:10:55 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608394643000', '2020-12-20 00:17:23', 'admin', '操作员登录', 'admin 在 2020-12-20 0:17:23 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608400525000', '2020-12-20 01:55:25', 'admin', '操作员登录', 'admin 在 2020-12-20 1:55:25 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608400542000', '2020-12-20 01:55:42', 'admin', '操作员登录', 'admin 在 2020-12-20 1:55:42 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608400643000', '2020-12-20 01:57:23', 'admin', '操作员登录', 'admin 在 2020-12-20 1:57:23 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608402528000', '2020-12-20 02:28:48', 'admin', '操作员登录', 'admin 在 2020-12-20 2:28:48 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608402543000', '2020-12-20 02:29:03', 'admin', '操作员登录', 'admin 在 2020-12-20 2:29:03 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608402595000', '2020-12-20 02:29:55', 'admin', '操作员登录', 'admin 在 2020-12-20 2:29:55 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608402610000', '2020-12-20 02:30:10', 'admin', '操作员登录', 'admin 在 2020-12-20 2:30:10 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608402782000', '2020-12-20 02:33:02', 'admin', '操作员登录', 'admin 在 2020-12-20 2:33:02 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608402790000', '2020-12-20 02:33:10', 'admin', '操作员登录', 'admin 在 2020-12-20 2:33:10 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403061000', '2020-12-20 02:37:41', 'admin', '操作员登录', 'admin 在 2020-12-20 2:37:41 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403078000', '2020-12-20 02:37:58', 'admin', '操作员登录', 'admin 在 2020-12-20 2:37:58 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403139000', '2020-12-20 02:38:59', 'admin', '操作员登录', 'admin 在 2020-12-20 2:38:59 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403155000', '2020-12-20 02:39:15', 'admin', '操作员登录', 'admin 在 2020-12-20 2:39:15 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403217000', '2020-12-20 02:40:17', 'admin', '操作员登录', 'admin 在 2020-12-20 2:40:17 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403238000', '2020-12-20 02:40:38', 'admin', '操作员登录', 'admin 在 2020-12-20 2:40:38 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403252000', '2020-12-20 02:40:52', 'admin', '操作员登录', 'admin 在 2020-12-20 2:40:52 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403261000', '2020-12-20 02:41:01', 'admin', '操作员登录', 'admin 在 2020-12-20 2:41:01 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403624000', '2020-12-20 02:47:04', 'admin', '操作员登录', 'admin 在 2020-12-20 2:47:04 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403651000', '2020-12-20 02:47:31', 'admin', '操作员登录', 'admin 在 2020-12-20 2:47:31 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608403910000', '2020-12-20 02:51:50', 'admin', '操作员登录', 'admin 在 2020-12-20 2:51:50 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608403969000', '2020-12-20 02:52:49', 'admin', '操作员登录', 'admin 在 2020-12-20 2:52:49 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608404044000', '2020-12-20 02:54:04', 'admin', '操作员登录', 'admin 在 2020-12-20 2:54:04 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404051000', '2020-12-20 02:54:11', 'admin', '操作员登录', 'admin 在 2020-12-20 2:54:11 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608404151000', '2020-12-20 02:55:51', 'admin', '操作员登录', 'admin 在 2020-12-20 2:55:51 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404178000', '2020-12-20 02:56:18', 'admin', '操作员登录', 'admin 在 2020-12-20 2:56:18 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608404311000', '2020-12-20 02:58:31', 'admin', '操作员登录', 'admin 在 2020-12-20 2:58:31 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404343000', '2020-12-20 02:59:03', 'admin', '操作员登录', 'admin 在 2020-12-20 2:59:03 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404361000', '2020-12-20 02:59:21', 'admin', '操作员登录', 'admin 在 2020-12-20 2:59:21 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608404378000', '2020-12-20 02:59:38', 'admin', '操作员登录', 'admin 在 2020-12-20 2:59:38 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404394000', '2020-12-20 02:59:54', 'admin', '操作员登录', 'admin 在 2020-12-20 2:59:54 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608404415000', '2020-12-20 03:00:15', 'admin', '操作员登录', 'admin 在 2020-12-20 3:00:15 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608404438000', '2020-12-20 03:00:38', 'admin', '操作员登录', 'admin 在 2020-12-20 3:00:38 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608406448000', '2020-12-20 03:34:08', 'admin', '操作员登录', 'admin 在 2020-12-20 3:34:08 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608473219000', '2020-12-20 22:06:59', 'admin', '操作员登录', 'admin 在 2020-12-20 22:06:59 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608473226000', '2020-12-20 22:07:06', 'admin', '操作员登录', 'admin 在 2020-12-20 22:07:06 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608473286000', '2020-12-20 22:08:06', 'admin', '操作员登录', 'admin 在 2020-12-20 22:08:06 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608473293000', '2020-12-20 22:08:13', 'admin', '操作员登录', 'admin 在 2020-12-20 22:08:13 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608476454000', '2020-12-20 23:00:54', 'admin', '操作员登录', 'admin 在 2020-12-20 23:00:54 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608476507000', '2020-12-20 23:01:47', 'admin', '操作员登录', 'admin 在 2020-12-20 23:01:47 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608520821000', '2020-12-21 11:20:21', 'admin', '操作员登录', 'admin 在 2020-12-21 11:20:21 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608523246000', '2020-12-21 12:00:46', 'admin', '操作员登录', 'admin 在 2020-12-21 12:00:46 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608523293000', '2020-12-21 12:01:33', 'admin', '操作员登录', 'admin 在 2020-12-21 12:01:33 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608535616000', '2020-12-21 15:26:56', 'admin', '操作员登录', 'admin 在 2020-12-21 15:26:56 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608535775000', '2020-12-21 15:29:35', 'admin', '操作员登录', 'admin 在 2020-12-21 15:29:35 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608535782000', '2020-12-21 15:29:42', 'admin', '操作员登录', 'admin 在 2020-12-21 15:29:42 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608536003000', '2020-12-21 15:33:23', 'admin', '操作员登录', 'admin 在 2020-12-21 15:33:23 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608536033000', '2020-12-21 15:33:53', 'admin', '操作员登录', 'admin 在 2020-12-21 15:33:53 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608537859000', '2020-12-21 16:04:19', 'admin', '操作员登录', 'admin 在 2020-12-21 16:04:19 登录本系统', '0', null);
INSERT INTO `record` VALUES ('1608688124000', '2020-12-23 09:48:44', 'admin', '操作员登录', 'admin 在 2020-12-23 9:48:44 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608702174000', '2020-12-23 13:42:54', 'admin', '操作员登录', 'admin 在 2020-12-23 13:42:54 退出本系统', '0', null);
INSERT INTO `record` VALUES ('1608702213000', '2020-12-23 13:43:33', 'admin', '操作员登录', 'admin 在 2020-12-23 13:43:33 登录本系统', '0', null);

-- ----------------------------
-- Table structure for roominfo
-- ----------------------------
DROP TABLE IF EXISTS `roominfo`;
CREATE TABLE `roominfo` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `id` varchar(50) NOT NULL COMMENT '房间号',
  `r_type_id` varchar(50) NOT NULL COMMENT '房间类型编号',
  `state` varchar(50) NOT NULL COMMENT '房间状态',
  `location` varchar(50) NOT NULL COMMENT '所处位置',
  `r_tel` varchar(50) NOT NULL COMMENT '房间电话',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `statetime` int(11) NOT NULL DEFAULT '0' COMMENT '状态计时',
  `indimark` int(11) NOT NULL DEFAULT '0' COMMENT '开单标记',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`),
  KEY `IX_roominfo` (`state`),
  KEY `IX_roominfo_1` (`statetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roominfo
-- ----------------------------
INSERT INTO `roominfo` VALUES ('0', 'sunhotel', 'sunhotel', '可供', 'sunhotel', 'sunhotel', 'sunhotel', '0', '0', '1', null, null);
INSERT INTO `roominfo` VALUES ('1146336620700', 'BD1001', 'LX0001', '预订', '一楼', '1001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620701', 'BD1002', 'LX0001', '预订', '一楼', '1002', null, '0', '1', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620702', 'BD1003', 'LX0001', '可供', '一楼', '1003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620703', 'BD1004', 'LX0001', '可供', '一楼', '1004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620704', 'BD1005', 'LX0001', '可供', '一楼', '1005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620705', 'BD1006', 'LX0001', '可供', '一楼', '1006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620706', 'BD1007', 'LX0001', '可供', '一楼', '1007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620707', 'BD1008', 'LX0001', '可供', '一楼', '1008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620708', 'BD1009', 'LX0001', '可供', '一楼', '1009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620709', 'BD1010', 'LX0001', '可供', '一楼', '1010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620710', 'BD1011', 'LX0001', '可供', '一楼', '1011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620711', 'BD1012', 'LX0001', '可供', '一楼', '1012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620712', 'BD1013', 'LX0001', '可供', '一楼', '1013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620713', 'BD1014', 'LX0001', '可供', '一楼', '1014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620714', 'BD1015', 'LX0001', '停用', '一楼', '1015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620715', 'BD1016', 'LX0001', '停用', '一楼', '1016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638763', 'BS2001', 'LX0002', '占用', '二楼', '2001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638764', 'BS2002', 'LX0002', '可供', '二楼', '2002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638765', 'BS2003', 'LX0002', '可供', '二楼', '2003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638766', 'BS2004', 'LX0002', '可供', '二楼', '2004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638767', 'BS2005', 'LX0002', '可供', '二楼', '2005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638768', 'BS2006', 'LX0002', '可供', '二楼', '2006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638769', 'BS2007', 'LX0002', '可供', '二楼', '2007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638770', 'BS2008', 'LX0002', '可供', '二楼', '2008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638771', 'BS2009', 'LX0002', '可供', '二楼', '2009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638772', 'BS2010', 'LX0002', '可供', '二楼', '2010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638773', 'BS2011', 'LX0002', '可供', '二楼', '2011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638774', 'BS2012', 'LX0002', '可供', '二楼', '2012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638775', 'BS2013', 'LX0002', '停用', '二楼', '2013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638776', 'BS2014', 'LX0002', '可供', '二楼', '2014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638777', 'BS2015', 'LX0002', '停用', '二楼', '2015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638778', 'BS2016', 'LX0002', '可供', '二楼', '2016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638779', 'BS2017', 'LX0002', '可供', '二楼', '2017', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638780', 'BS2018', 'LX0002', '可供', '二楼', '2018', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669060', 'HD3001', 'LX0003', '占用', '三楼', '3001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669061', 'HD3002', 'LX0003', '可供', '三楼', '3002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669062', 'HD3003', 'LX0003', '可供', '三楼', '3003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669063', 'HD3004', 'LX0003', '可供', '三楼', '3004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669064', 'HD3005', 'LX0003', '可供', '三楼', '3005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669065', 'HD3006', 'LX0003', '停用', '三楼', '3006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669066', 'HD3007', 'LX0003', '可供', '三楼', '3007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669067', 'HD3008', 'LX0003', '可供', '三楼', '3008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669068', 'HD3009', 'LX0003', '可供', '三楼', '3009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669069', 'HD3010', 'LX0003', '可供', '三楼', '3010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669070', 'HD3011', 'LX0003', '停用', '三楼', '3011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669071', 'HD3012', 'LX0003', '可供', '三楼', '3012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693827', 'HS5001', 'LX0004', '可供', '五楼', '5001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693828', 'HS5002', 'LX0004', '可供', '五楼', '5002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693829', 'HS5003', 'LX0004', '可供', '五楼', '5003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693830', 'HS5004', 'LX0004', '可供', '五楼', '5004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693831', 'HS5005', 'LX0004', '可供', '五楼', '5005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693832', 'HS5006', 'LX0004', '可供', '五楼', '5006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693833', 'HS5007', 'LX0004', '可供', '五楼', '5007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693834', 'HS5008', 'LX0004', '可供', '五楼', '5008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693835', 'HS5009', 'LX0004', '可供', '五楼', '5009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693836', 'HS5010', 'LX0004', '可供', '五楼', '5010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693837', 'HS5011', 'LX0004', '可供', '五楼', '5011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693838', 'HS5012', 'LX0004', '可供', '五楼', '5012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693839', 'HS5013', 'LX0004', '可供', '五楼', '5013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693840', 'HS5014', 'LX0004', '停用', '五楼', '5014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693841', 'HS5015', 'LX0004', '可供', '五楼', '5015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726497', 'SW6001', 'LX0005', '预订', '六楼', '6001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726498', 'SW6002', 'LX0005', '可供', '六楼', '6002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726499', 'SW6003', 'LX0005', '占用', '六楼', '6003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726500', 'SW6004', 'LX0005', '占用', '六楼', '6004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726501', 'SW6005', 'LX0005', '可供', '六楼', '6005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726502', 'SW6006', 'LX0005', '可供', '六楼', '6006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726503', 'SW6007', 'LX0005', '可供', '六楼', '6007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726504', 'SW6008', 'LX0005', '占用', '六楼', '6008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726505', 'SW6009', 'LX0005', '可供', '六楼', '6009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726506', 'SW6010', 'LX0005', '可供', '六楼', '6010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726507', 'SW6011', 'LX0005', '可供', '六楼', '6011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726508', 'SW6012', 'LX0005', '可供', '六楼', '6012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726509', 'SW6013', 'LX0005', '可供', '六楼', '6013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726510', 'SW6014', 'LX0005', '可供', '六楼', '6014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726511', 'SW6015', 'LX0005', '可供', '六楼', '6015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726512', 'SW6016', 'LX0005', '停用', '六楼', '6016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726513', 'SW6017', 'LX0005', '停用', '六楼', '6017', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726514', 'SW6018', 'LX0005', '可供', '六楼', '6018', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756340', 'ZT8001', 'LX0006', '可供', '八楼', '8001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756341', 'ZT8002', 'LX0006', '可供', '八楼', '8002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756342', 'ZT8003', 'LX0006', '可供', '八楼', '8003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756343', 'ZT8004', 'LX0006', '可供', '八楼', '8004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756344', 'ZT8005', 'LX0006', '可供', '八楼', '8005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756345', 'ZT8006', 'LX0006', '可供', '八楼', '8006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756346', 'ZT8007', 'LX0006', '可供', '八楼', '8007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756347', 'ZT8008', 'LX0006', '可供', '八楼', '8008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756348', 'ZT8009', 'LX0006', '停用', '八楼', '8009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756349', 'ZT8010', 'LX0006', '停用', '八楼', '8010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756350', 'ZT8011', 'LX0006', '可供', '八楼', '8011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756351', 'ZT8012', 'LX0006', '可供', '八楼', '8012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736037000', 'TJ0001', 'LX0001', '可供', '一楼', '1101', null, '0', '0', '1', null, null);
INSERT INTO `roominfo` VALUES ('1522736069000', 'TJ0001', 'LX0007', '可供', '一楼', '1101', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123000', 'TJ1000', 'LX0007', '可供', '二楼', '1000', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123001', 'TJ1001', 'LX0007', '可供', '二楼', '1001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123002', 'TJ1002', 'LX0007', '可供', '二楼', '1002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123003', 'TJ1003', 'LX0007', '可供', '二楼', '1003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123004', 'TJ1004', 'LX0007', '可供', '二楼', '1004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123005', 'TJ1005', 'LX0007', '可供', '二楼', '1005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123006', 'TJ1006', 'LX0007', '可供', '二楼', '1006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123007', 'TJ1007', 'LX0007', '可供', '二楼', '1007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123008', 'TJ1008', 'LX0007', '可供', '二楼', '1008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1522736123009', 'TJ1009', 'LX0007', '可供', '二楼', '1019', null, '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for roomnum
-- ----------------------------
DROP TABLE IF EXISTS `roomnum`;
CREATE TABLE `roomnum` (
  `roomid` varchar(50) NOT NULL COMMENT '房间编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomnum
-- ----------------------------
INSERT INTO `roomnum` VALUES ('BD1002');

-- ----------------------------
-- Table structure for roomnums
-- ----------------------------
DROP TABLE IF EXISTS `roomnums`;
CREATE TABLE `roomnums` (
  `rr_type` varchar(50) DEFAULT NULL,
  `roomid` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  KEY `IX_roomnums` (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomnums
-- ----------------------------

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `pk` decimal(20,0) NOT NULL COMMENT '主键',
  `id` varchar(50) NOT NULL COMMENT '房间类型编号',
  `r_type` varchar(50) NOT NULL COMMENT '房间类型',
  `bed` varchar(50) NOT NULL COMMENT '床位数',
  `price` double NOT NULL COMMENT '单价',
  `foregift` double NOT NULL COMMENT '押金',
  `cl_room` varchar(50) NOT NULL COMMENT '是否钟点房',
  `cl_price` double NOT NULL COMMENT '钟点房价格',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `sysmark` int(11) NOT NULL DEFAULT '0',
  `delmark` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1145855029280', 'LX0001', '标准单人间', '1', '100', '500', 'Y', '20', null, '1', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145855058873', 'LX0002', '标准双人间', '2', '160', '500', 'Y', '50', null, '1', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856188500', 'LX0003', '豪华单人间', '1', '150', '500', 'Y', '50', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856218563', 'LX0004', '豪华双人间', '2', '260', '500', 'Y', '100', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856258393', 'LX0005', '商务套房', '1', '780', '1000', 'N', '0', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856293673', 'LX0006', '总统套房', '2', '880', '1000', 'N', '0', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1522735688000', 'LX0007', '特价单人房', '1', '128', '200', 'Y', '30', null, '0', '0', null, null);

-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE `sysdiagrams` (
  `name` varchar(0) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
DROP TRIGGER IF EXISTS `set_dis_price`;
DELIMITER ;;
CREATE TRIGGER `set_dis_price` BEFORE INSERT ON `customertype` FOR EACH ROW set NEW.dis_price = NEW.price*NEW.discount/10
;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_dis_price`;
DELIMITER ;;
CREATE TRIGGER `update_dis_price` BEFORE UPDATE ON `customertype` FOR EACH ROW set NEW.dis_price = NEW.price*NEW.discount/10
;;
DELIMITER ;
