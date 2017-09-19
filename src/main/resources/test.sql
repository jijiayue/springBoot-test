/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-09-19 12:58:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `menu_number` int(11) NOT NULL COMMENT '目录级别',
  `menu_name` varchar(20) NOT NULL DEFAULT '' COMMENT '目录名称',
  `permission_code` varchar(255) DEFAULT '' COMMENT '权限标识',
  `menu_type` tinyint(11) NOT NULL DEFAULT '1' COMMENT '类别 1目录 2页面 3按钮',
  `menu_img` varchar(255) DEFAULT '' COMMENT '目录图标',
  `menu_url` varchar(100) DEFAULT '' COMMENT '目录地址',
  `sort` int(10) DEFAULT NULL COMMENT '目录顺序',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级菜单',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除标示 1删除 0正常',
  `create_by` bigint(11) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(11) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '1', '系统管理', 'sys:view', '1', 'fa-cog', '', '10', '3', '1', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('3', '0', '菜单管理', 'sys:*', '1', '', '', '144', null, '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('17', '2', '角色管理', 'user:view', '2', '', '/sys/role', '1', '1', '1', null, '2017-02-24 03:53:45', null, null);
INSERT INTO `sys_menu` VALUES ('18', '3', '查看', 'user:ck', '3', '', '/user', '1', '17', '1', null, '2017-02-25 03:59:44', null, null);
INSERT INTO `sys_menu` VALUES ('19', '3', '角色修改', 'role:up', '3', '', '/role', '33', '17', '1', null, '2017-02-25 04:02:17', null, null);
INSERT INTO `sys_menu` VALUES ('20', '3', '角色添加', 'role:save', '3', '', '222', '44', '17', '1', null, '2017-02-25 04:02:50', null, null);
INSERT INTO `sys_menu` VALUES ('21', '2', '部门管理', 'department:view', '2', '', '/sys/department', '2', '1', '1', null, '2017-02-27 06:21:22', null, null);
INSERT INTO `sys_menu` VALUES ('22', '3', '部门添加', 'department:save', '3', '', '', '1', '21', '1', null, '2017-02-27 06:22:22', null, null);
INSERT INTO `sys_menu` VALUES ('23', '3', '部门编辑', 'department:up', '3', '', '', '2', '21', '1', null, '2017-02-27 06:22:46', null, null);
INSERT INTO `sys_menu` VALUES ('24', '2', '登录账号', 'user:view', '2', '', '/sys/carousel', '3', '1', '1', null, '2017-02-27 06:25:40', null, null);
INSERT INTO `sys_menu` VALUES ('25', '3', '账号添加', 'user:save', '3', '', '', null, '24', '1', null, '2017-02-27 06:26:22', null, null);
INSERT INTO `sys_menu` VALUES ('26', '3', '账号编辑', 'user:up', '3', '', '', '2', '24', '1', null, '2017-02-27 06:26:50', null, null);
INSERT INTO `sys_menu` VALUES ('27', '3', '账号删除', 'user:delete', '3', '', '', '3', '24', '1', null, '2017-02-27 06:27:16', null, null);
INSERT INTO `sys_menu` VALUES ('28', '2', '数据字典', 'dict:view', '2', '', '/sys/dict', '4', '1', '1', null, '2017-02-27 06:28:08', null, null);
INSERT INTO `sys_menu` VALUES ('29', '3', '字典添加', 'dict:save', '3', '', '', '1', '28', '1', null, '2017-02-27 06:28:38', null, null);
INSERT INTO `sys_menu` VALUES ('30', '3', '字典修改', 'dict:up', '3', '', '', '2', '28', '1', null, '2017-02-27 06:29:05', null, null);
INSERT INTO `sys_menu` VALUES ('31', '3', '字典删除', 'dict:delete', '3', '', '', '3', '28', '1', null, '2017-02-27 06:29:33', null, null);
INSERT INTO `sys_menu` VALUES ('32', '2', '操作日志', 'log:view', '2', '', '/sys/log', '5', '1', '1', null, '2017-02-27 06:30:14', null, null);
INSERT INTO `sys_menu` VALUES ('33', '2', '菜单管理', 'menu:view', '2', '', '/sys/menu', '6', '1', '1', null, '2017-02-27 06:30:43', null, null);
INSERT INTO `sys_menu` VALUES ('34', '3', '菜单添加', 'menu:save', '3', '', '', '1', '33', '1', null, '2017-02-27 06:31:09', null, null);
INSERT INTO `sys_menu` VALUES ('35', '3', '菜单编辑', 'menu:up', '3', '', '', '2', '33', '1', null, '2017-02-27 06:31:41', null, null);
INSERT INTO `sys_menu` VALUES ('36', '3', '菜单删除', 'menu:delete', '3', '', '', '3', '33', '1', null, '2017-02-27 06:32:15', null, null);
INSERT INTO `sys_menu` VALUES ('47', '1', '财务管理', 'finance:*', '1', 'fa-credit-card', '', '8', '3', '1', null, '2017-02-28 01:04:51', null, null);
INSERT INTO `sys_menu` VALUES ('48', '2', '财务设置', 'finace:view', '2', '', '/sys/dict/finace', '15', '47', '1', null, '2017-02-28 01:05:38', null, null);
INSERT INTO `sys_menu` VALUES ('49', '1', '合同管理', 'hetong', '1', '', '', '1', '3', '1', null, '2017-02-28 01:09:15', null, null);
INSERT INTO `sys_menu` VALUES ('50', '1', '客户管理', 'search:*', '1', 'fa-address-card-o', '', '5', '3', '1', null, '2017-02-28 01:12:59', null, null);
INSERT INTO `sys_menu` VALUES ('51', '2', '客户资料', 'customer:view', '2', '', '/customer/search', '1', '50', '1', null, '2017-02-28 01:13:44', null, null);
INSERT INTO `sys_menu` VALUES ('52', '2', '合同管理', 'rentContract:view', '2', '', '/rentContract/search', '3', '50', '1', null, '2017-02-28 01:14:29', null, null);
INSERT INTO `sys_menu` VALUES ('53', '2', '门禁卡管理', 'elevatorCard:view', '2', '', '/elevatorCard/search', '5', '50', '1', null, '2017-02-28 01:15:18', null, null);
INSERT INTO `sys_menu` VALUES ('54', '2', '门禁卡押金', 'elevatorCardDeposit:view', '2', '', '/elevatorCardDeposit/search', '7', '50', '1', null, '2017-02-28 01:15:50', null, null);
INSERT INTO `sys_menu` VALUES ('55', '2', '测试页面', 'ssss', '2', '', '', '111', '1', '1', null, '2017-02-28 05:38:13', null, null);
INSERT INTO `sys_menu` VALUES ('56', '1', '收费管理', 'charge:*', '1', 'fa-calendar-check-o', '', '1', '3', '1', null, '2017-02-28 09:10:34', null, null);
INSERT INTO `sys_menu` VALUES ('57', '2', '抄表水费', 'read:*', '2', '', '/water/waterbill', '7', '56', '1', null, '2017-02-28 09:12:23', null, null);
INSERT INTO `sys_menu` VALUES ('58', '3', '水费查询', 'aterrates:view', '2', '', '/water/waterFee', '1', '57', '1', null, '2017-02-28 09:13:57', null, null);
INSERT INTO `sys_menu` VALUES ('59', '3', '水费记录', 'water:ist:view', '2', '', '/water/waterFeeList', '2', '57', '1', null, '2017-02-28 09:14:43', null, null);
INSERT INTO `sys_menu` VALUES ('60', '3', '水表录入', 'meter:view', '2', '', '/water/waterMeter', '3', '57', '1', null, '2017-02-28 09:16:00', null, null);
INSERT INTO `sys_menu` VALUES ('61', '1', '抄表人', 'chaobiaoren', '3', '', '', '12', '3', '1', null, '2017-03-02 05:00:18', null, null);
INSERT INTO `sys_menu` VALUES ('64', '2', '物业审核', 'property', '1', '', '', '3', '47', '1', null, '2017-03-04 09:26:28', null, null);
INSERT INTO `sys_menu` VALUES ('65', '3', '水费审核', 'shuifei', '2', '', '/water/waterBillReviewed', '9', '47', '1', null, '2017-03-04 09:27:02', null, null);
INSERT INTO `sys_menu` VALUES ('66', '1', '房产管理', 'abc', '1', 'fa-bank', '', '3', '3', '1', null, '2017-03-07 02:57:57', null, null);
INSERT INTO `sys_menu` VALUES ('67', '2', '楼宇管理', 'www', '2', '', '/building/search', '3', '66', '1', null, '2017-03-07 03:04:55', null, null);
INSERT INTO `sys_menu` VALUES ('68', '2', '房间管理', 'rrr', '2', '', '/room/layout', '1', '66', '1', null, '2017-03-07 03:05:36', null, null);
INSERT INTO `sys_menu` VALUES ('69', '2', '注册公司', 'ddd', '2', '', '/company/layout', '7', '66', '1', null, '2017-03-07 03:06:05', null, null);
INSERT INTO `sys_menu` VALUES ('70', '2', '租金审核', 'rrrt', '2', '', 'collectRent/searchFinance', '1', '47', '1', null, '2017-03-07 03:06:46', null, null);
INSERT INTO `sys_menu` VALUES ('71', '2', '租赁保证金审核', 'fsgd', '2', '', '/cashDeposit/cashDepositRentAudit', '11', '47', '1', null, '2017-03-07 03:13:07', null, null);
INSERT INTO `sys_menu` VALUES ('72', '2', '能源管理押金审核', 'rwer', '2', '', '/cashDeposit/cashDepositPmAudit', '12', '47', '1', null, '2017-03-07 03:14:08', null, null);
INSERT INTO `sys_menu` VALUES ('73', '2', '保证金管理', 'cfsf', '2', '', '/cashDeposit/searchCashDeposit', '9', '50', '1', null, '2017-03-07 03:15:10', null, null);
INSERT INTO `sys_menu` VALUES ('74', '2', '应收租金', 'asfa', '2', '', '/collectRent/search', '3', '56', '1', null, '2017-03-07 03:15:56', null, null);
INSERT INTO `sys_menu` VALUES ('75', '3', '应收租金', 'wer', '2', '', '/collectRent/search', '1', '74', '1', null, '2017-03-07 03:16:40', null, null);
INSERT INTO `sys_menu` VALUES ('76', '3', '租金记录', 'asdfas', '2', '', '/collectRent/layout', '2', '74', '1', null, '2017-03-07 03:17:16', null, null);
INSERT INTO `sys_menu` VALUES ('77', '2', '应收物业费', 'propertyFee:view', '2', '', '/propertyFee/search', '2', '56', '1', null, '2017-03-07 05:10:09', null, null);
INSERT INTO `sys_menu` VALUES ('78', '3', '应收物业费', '/propertyFee/search', '1', '', '/propertyFee/search', '1', '77', '1', null, '2017-03-07 05:17:16', null, null);
INSERT INTO `sys_menu` VALUES ('79', '3', '物业费记录', 'ass', '1', '', '/propertyFee/layout', '2', '77', '1', null, '2017-03-07 08:39:32', null, null);
INSERT INTO `sys_menu` VALUES ('80', '2', '物业费审核', 'sss', '2', '', '/propertyFee/searchFinance', '5', '47', '1', null, '2017-03-07 11:01:42', null, null);
INSERT INTO `sys_menu` VALUES ('81', '2', '抄表电费', 'chaobiaodianfei', '2', '', '/electricityFees/electricityFees', '5', '56', '1', null, '2017-03-15 05:41:38', null, null);
INSERT INTO `sys_menu` VALUES ('82', '3', '电费查询', 'dianfeichaxun', '2', '', '/electricityFees/electricityFees', '1', '81', '1', null, '2017-03-15 05:42:35', null, null);
INSERT INTO `sys_menu` VALUES ('83', '3', '电费记录', 'dfjl', '2', '', '/electricityFees/electricityFeesAll', '2', '81', '1', null, '2017-03-18 05:03:40', null, null);
INSERT INTO `sys_menu` VALUES ('84', '2', '电费审核', 'dfsh', '2', '', '/electricityFees/electricityFeesExamine', '7', '47', '1', null, '2017-03-18 05:18:49', null, null);
INSERT INTO `sys_menu` VALUES ('86', '4', '审核中', 'waterAudit', '2', '', '', '2', '58', '1', null, '2017-03-28 02:07:03', null, null);
INSERT INTO `sys_menu` VALUES ('87', '4', '审核失败', 'waterAuditFailure', '2', '', '', '3', '58', '1', null, '2017-03-28 02:07:38', null, null);
INSERT INTO `sys_menu` VALUES ('88', '4', '审核成功', 'waterAuditSuccess', '2', '', '', '4', '58', '1', null, '2017-03-28 02:08:16', null, null);
INSERT INTO `sys_menu` VALUES ('89', '2', '二次装修', 'rer', '2', '', '/secondDecorate/search', '9', '56', '1', null, '2017-03-29 02:38:46', null, null);
INSERT INTO `sys_menu` VALUES ('90', '4', '待发起', 'waterPendingLaunch', '2', '', '', '1', '58', '1', null, '2017-03-29 05:18:10', null, null);
INSERT INTO `sys_menu` VALUES ('91', '5', '添加电费', 'addWater', '3', '', '', '1', '90', '1', null, '2017-03-29 05:20:54', null, null);
INSERT INTO `sys_menu` VALUES ('92', '5', '重新发起', 'waterLaunch', '3', '', '', '2', '90', '1', null, '2017-03-29 05:22:08', null, null);
INSERT INTO `sys_menu` VALUES ('93', '5', '发起审核', 'waterLaunchExamine', '3', '', '', '4', '90', '1', null, '2017-03-29 05:23:32', null, null);
INSERT INTO `sys_menu` VALUES ('94', '5', '重新发起', 'waterLaunchtwo', '3', '', '', '1', '87', '1', null, '2017-03-29 05:24:51', null, null);
INSERT INTO `sys_menu` VALUES ('95', '4', '待发起', 'electricPendingLaunch', '2', '', '', '1', '82', '1', null, '2017-03-29 05:29:08', null, null);
INSERT INTO `sys_menu` VALUES ('96', '4', '审核中', 'electricAudit', '2', '', '', '2', '82', '1', null, '2017-03-29 05:32:05', null, null);
INSERT INTO `sys_menu` VALUES ('97', '4', '审核失败', 'electricAuditFailure', '2', '', '', '3', '82', '1', null, '2017-03-29 05:40:54', null, null);
INSERT INTO `sys_menu` VALUES ('98', '4', '审核成功', 'electricAuditSuccess', '2', '', '', '4', '82', '1', null, '2017-03-29 05:41:58', null, null);
INSERT INTO `sys_menu` VALUES ('99', '5', '添加电费', 'addElectric', '3', '', '', '1', '95', '1', null, '2017-03-29 05:43:54', null, null);
INSERT INTO `sys_menu` VALUES ('100', '5', '重新发起', 'electricLaunch', '3', '', '', '3', '95', '1', null, '2017-03-29 05:45:02', null, null);
INSERT INTO `sys_menu` VALUES ('101', '5', '发起审核', 'electricExamine', '3', '', '', '4', '95', '1', null, '2017-03-29 05:45:56', null, null);
INSERT INTO `sys_menu` VALUES ('102', '5', '重新发起', 'electricLaunchtwo', '3', '', '', '1', '97', '1', null, '2017-03-29 05:46:26', null, null);
INSERT INTO `sys_menu` VALUES ('103', '2', '二次装修审核', 'fdfd', '2', '', 'secondDecorate/searchFinance', '10', '47', '1', null, '2017-03-29 08:55:30', null, null);
INSERT INTO `sys_menu` VALUES ('104', '3', '添加合同', 'addContract', '3', '', '', null, '52', '1', null, '2017-03-31 07:06:59', null, null);
INSERT INTO `sys_menu` VALUES ('105', '3', '修改合同', 'enditContract', '3', '', '', null, '52', '1', null, '2017-03-31 07:10:03', null, null);
INSERT INTO `sys_menu` VALUES ('106', '3', '编辑转租信息', 'editSublet', '3', '', '', null, '52', '1', null, '2017-03-31 07:22:18', null, null);
INSERT INTO `sys_menu` VALUES ('107', '3', '添加转租信息', 'addSublet', '3', '', '', null, '52', '1', null, '2017-03-31 07:23:30', null, null);
INSERT INTO `sys_menu` VALUES ('108', '3', '删除转租信息', 'deleteSublet', '3', '', '', null, '52', '1', null, '2017-03-31 07:23:43', null, null);
INSERT INTO `sys_menu` VALUES ('109', '3', '终止合同', 'stopContract', '3', '', '', null, '52', '1', null, '2017-03-31 07:29:51', null, null);
INSERT INTO `sys_menu` VALUES ('110', '3', '添加门禁卡', 'addETcard', '3', '', '', null, '53', '1', null, '2017-03-31 07:33:03', null, null);
INSERT INTO `sys_menu` VALUES ('111', '3', '修改门禁卡', 'editETcard', '3', '', '', null, '53', '1', null, '2017-03-31 07:33:30', null, null);
INSERT INTO `sys_menu` VALUES ('112', '3', '退门禁卡', 'deleteETcard', '3', '', '', null, '53', '1', null, '2017-03-31 07:33:58', null, null);
INSERT INTO `sys_menu` VALUES ('113', '1', '统计报表', 'statistical', '1', 'fa-bar-chart', '', '7', '3', '1', null, '2017-04-05 06:02:50', null, null);
INSERT INTO `sys_menu` VALUES ('114', '2', '水费汇总', 'water:form', '2', '', '/water/waterBillList', '7', '113', '1', null, '2017-04-05 06:05:18', null, null);
INSERT INTO `sys_menu` VALUES ('115', '2', '电费汇总', 'electric:form', '2', '', '/electricityFees/electricityFeesAll', '5', '113', '1', null, '2017-04-05 06:28:44', null, null);
INSERT INTO `sys_menu` VALUES ('116', '2', '租金汇总', 'fdf', '2', '', '/collectRent/auditSuccessAll', '1', '113', '1', null, '2017-04-06 02:26:18', null, null);
INSERT INTO `sys_menu` VALUES ('117', '2', '物业费汇总', 'ggg', '2', '', '/propertyFee/auditSuccessAll', '3', '113', '1', null, '2017-04-06 02:27:07', null, null);
INSERT INTO `sys_menu` VALUES ('118', '4', '收租', 'openRentPaidWind', '3', '', '', null, '75', '1', null, '2017-04-06 09:02:54', null, null);
INSERT INTO `sys_menu` VALUES ('119', '4', '重新收租', 'openRentPaidWindAgain', '3', '', '', null, '75', '1', null, '2017-04-06 09:11:02', null, null);
INSERT INTO `sys_menu` VALUES ('120', '4', '收物业费', 'openPropertyPaidWind', '3', '', '', null, '78', '1', null, '2017-04-06 09:15:09', null, null);
INSERT INTO `sys_menu` VALUES ('121', '4', '重新收物业费', 'openPropertyPaidWindAgain', '3', '', '', null, '78', '1', null, '2017-04-06 09:16:29', null, null);
INSERT INTO `sys_menu` VALUES ('122', '3', '房间添加', 'addRoom', '3', '', '', null, '68', '1', null, '2017-04-06 09:18:26', null, null);
INSERT INTO `sys_menu` VALUES ('123', '3', '房间编辑', 'editRoom', '3', '', '', null, '68', '1', null, '2017-04-06 09:20:06', null, null);
INSERT INTO `sys_menu` VALUES ('124', '3', '公司编辑', 'editCompany', '3', '', '', null, '69', '1', null, '2017-04-06 09:27:13', null, null);
INSERT INTO `sys_menu` VALUES ('125', '3', '添加公司', 'addCompany', '3', '', '', null, '69', '1', null, '2017-04-06 09:28:21', null, null);
INSERT INTO `sys_menu` VALUES ('126', '3', '保证金扣款', 'chargeCashDeposit', '1', '', '', null, '73', '1', null, '2017-04-06 09:35:49', null, null);
INSERT INTO `sys_menu` VALUES ('127', '3', '保证金退款', 'refundCashDeposit', '3', '', '', null, '73', '1', null, '2017-04-06 09:38:03', null, null);
INSERT INTO `sys_menu` VALUES ('128', '3', '添加二次装修', 'addSecondDecorate', '3', '', '', null, '89', '1', null, '2017-04-06 09:41:52', null, null);
INSERT INTO `sys_menu` VALUES ('129', '3', '二次装修扣款', 'chargeSecondDecorate', '3', '', '', null, '89', '1', null, '2017-04-06 09:43:24', null, null);
INSERT INTO `sys_menu` VALUES ('130', '3', '二次装修退款', 'refundSecondDecorate', '3', '', '', null, '89', '1', null, '2017-04-06 09:43:48', null, null);
INSERT INTO `sys_menu` VALUES ('131', '3', '物业费作废', 'cancellation', '3', '', '', null, '80', '1', null, '2017-04-06 09:45:07', null, null);
INSERT INTO `sys_menu` VALUES ('132', '4', '提交到财务审核', 'updatePmPaid', '3', '', '', null, '78', '1', null, '2017-04-10 06:04:14', null, null);
INSERT INTO `sys_menu` VALUES ('133', '3', '添加楼宇', 'addBuild', '3', '', '', null, '68', '1', null, '2017-04-14 06:49:52', null, null);
INSERT INTO `sys_menu` VALUES ('134', '3', '添加楼宇', 'addBuild', '3', '', '', '1', '67', '1', null, '2017-04-14 06:51:15', null, null);
INSERT INTO `sys_menu` VALUES ('135', '3', '编辑楼宇', 'editBuild', '3', '', '', '2', '67', '1', null, '2017-04-14 06:53:00', null, null);
INSERT INTO `sys_menu` VALUES ('136', '3', '添加客户', 'addCustomer', '3', '', '', '1', '51', '1', null, '2017-04-14 07:01:42', null, null);
INSERT INTO `sys_menu` VALUES ('137', '3', '修改客户', 'editCustomer', '3', '', '', '2', '51', '1', null, '2017-04-14 07:02:10', null, null);
INSERT INTO `sys_menu` VALUES ('138', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:28', null, null);
INSERT INTO `sys_menu` VALUES ('139', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:28', null, null);
INSERT INTO `sys_menu` VALUES ('140', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:30', null, null);
INSERT INTO `sys_menu` VALUES ('141', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:30', null, null);
INSERT INTO `sys_menu` VALUES ('142', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:30', null, null);
INSERT INTO `sys_menu` VALUES ('143', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('144', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('145', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('146', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('147', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('148', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('149', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:32', null, null);
INSERT INTO `sys_menu` VALUES ('150', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:32', null, null);
INSERT INTO `sys_menu` VALUES ('151', '3', '删除客户', 'deleteCustomer', '1', '', '', '3', '51', '1', null, '2017-04-14 07:03:32', null, null);
INSERT INTO `sys_menu` VALUES ('152', '3', '删除客户', 'deleteCustomer', '3', '', '', '3', '51', '1', null, '2017-04-14 07:03:43', null, null);
INSERT INTO `sys_menu` VALUES ('153', '3', '删除客户', 'deleteCustomer', '3', '', '', '3', '51', '1', null, '2017-04-14 07:03:44', null, null);
INSERT INTO `sys_menu` VALUES ('154', '3', '删除客户', 'deleteCustomer', '3', '', '', '3', '51', '1', null, '2017-04-14 07:03:45', null, null);
INSERT INTO `sys_menu` VALUES ('155', '3', '删除', 'deleteCustomer', '3', '', '', '3', '51', '1', null, '2017-04-14 07:04:31', null, null);
INSERT INTO `sys_menu` VALUES ('156', '3', '历史租户合同详情', 'customerContractDetail', '3', '', '', null, '68', '1', null, '2017-04-14 08:29:17', null, null);
INSERT INTO `sys_menu` VALUES ('157', '3', '物业收款', 'propertyPaid', '3', '', '', null, '80', '1', null, '2017-04-14 09:01:56', null, null);
INSERT INTO `sys_menu` VALUES ('158', '3', '租金收款', 'collectRentPaid', '3', '', '', null, '70', '1', null, '2017-04-14 09:21:43', null, null);
INSERT INTO `sys_menu` VALUES ('159', '2', '抄表水费2', 'shuifei:2', '2', '', '/water/waterbill', '7', '56', '1', null, '2017-04-19 05:15:19', null, null);
INSERT INTO `sys_menu` VALUES ('160', '2', '水费审核2', 'shuifei:shenhe', '2', '', '/water/waterBillReviewed', '12', '47', '1', null, '2017-04-20 01:34:36', null, null);
INSERT INTO `sys_menu` VALUES ('161', '2', '水费汇总2', 'shuifeihuizong', '2', '', '/water/waterBillList', '5', '113', '1', null, '2017-04-20 06:19:28', null, null);
INSERT INTO `sys_menu` VALUES ('162', '2', '房间图示', 'room:histogram', '2', '', '/room/histogramAll', '5', '66', '1', null, '2017-04-25 06:25:22', null, null);
INSERT INTO `sys_menu` VALUES ('163', '3', '收费', 'electricity:receivables', '3', '', '', '1', '84', '1', null, '2017-05-12 11:27:28', null, null);
INSERT INTO `sys_menu` VALUES ('164', '3', '开票', 'electricity:billing', '3', '', '', '2', '84', '1', null, '2017-05-12 11:28:22', null, null);
INSERT INTO `sys_menu` VALUES ('165', '4', '收款', 'water:receivables', '3', '', '', '1', '65', '1', null, '2017-05-12 11:29:24', null, null);
INSERT INTO `sys_menu` VALUES ('166', '4', '开票', 'water:billing', '3', '', '', '2', '65', '1', null, '2017-05-12 11:30:31', null, null);
INSERT INTO `sys_menu` VALUES ('167', '3', '违约金收款', 'electricity:penaltyReceivables', '3', '', '', '3', '84', '1', null, '2017-05-12 11:33:58', null, null);
INSERT INTO `sys_menu` VALUES ('168', '3', '违约金开票', 'electricity:penaltybilling', '3', '', '', '4', '84', '1', null, '2017-05-12 11:35:30', null, null);
INSERT INTO `sys_menu` VALUES ('169', '4', '违约金收款', 'water:penaltyReceivables', '3', '', '', '3', '65', '1', null, '2017-05-12 11:36:40', null, null);
INSERT INTO `sys_menu` VALUES ('170', '4', '违约金开票', 'water:penaltybilling', '3', '', '', '4', '65', '1', null, '2017-05-12 11:37:38', null, '2017-05-16 10:59:17');
INSERT INTO `sys_menu` VALUES ('171', '3', '物业费开票', 'propertyInvoice', '3', '', '', null, '80', '1', null, '2017-05-15 01:34:58', null, '2017-05-16 10:59:13');
INSERT INTO `sys_menu` VALUES ('172', '3', '物业费违约金收费', 'propertyLatePaid', '3', '', '', null, '80', '1', null, '2017-05-15 01:36:34', null, '2017-05-16 10:59:22');
INSERT INTO `sys_menu` VALUES ('173', '3', '物业费违约金开票', 'propertyLateInvoice', '3', '', '', null, '80', '1', null, '2017-05-15 01:37:06', null, '2017-05-16 10:59:26');
INSERT INTO `sys_menu` VALUES ('174', '3', '租金开票', 'collectRentInvoice', '3', '', '', null, '70', '1', null, '2017-05-15 01:39:28', null, '2017-05-16 10:59:29');
INSERT INTO `sys_menu` VALUES ('175', '3', '租金违约金收费', 'collectRentLatePaid', '3', '', '', null, '70', '1', null, '2017-05-15 01:40:04', null, '2017-05-16 10:59:33');
INSERT INTO `sys_menu` VALUES ('176', '3', '租金违约金开票', 'collectRentLateInvoice', '3', '', '', null, '70', '1', null, '2017-05-15 01:40:33', null, '2017-05-16 10:59:36');
INSERT INTO `sys_menu` VALUES ('177', '3', '租赁保证金财务审核', 'cashDepositRentPaid', '3', '', '', null, '71', '1', null, '2017-05-15 05:52:27', null, '2017-05-16 10:59:40');
INSERT INTO `sys_menu` VALUES ('178', '3', '物业保证金财务审核', 'cashDepositPmPaid', '3', '', '', null, '72', '1', null, '2017-05-15 05:53:13', null, '2017-05-16 10:59:44');
INSERT INTO `sys_menu` VALUES ('179', '4', '物业费删除', 'deletePropertyFee', '3', '', '', null, '78', '1', null, '2017-05-16 02:04:56', null, '2017-05-16 10:59:48');
INSERT INTO `sys_menu` VALUES ('180', '3', '二次装修财务审核', 'secondDecoratePaid', '3', '', '', null, '103', '1', null, '2017-05-16 02:37:29', null, '2017-05-16 10:59:50');
INSERT INTO `sys_menu` VALUES ('181', '2', '欢乐颂管理押金审核', 'dddddddddd', '2', '', '/cashDeposit/cashDepositSongAudit', '13', '47', '1', null, '2017-06-06 18:53:53', null, null);
INSERT INTO `sys_menu` VALUES ('182', '3', '财务审核', 'cashDepositSongPaid', '3', '', '', '1', '181', '1', null, '2017-06-06 18:54:56', null, null);
INSERT INTO `sys_menu` VALUES ('183', '3', '变更合同', 'contractEditPm', '3', '', '', '3', '52', '1', null, '2017-06-21 07:12:03', null, '2017-06-21 15:12:55');
INSERT INTO `sys_menu` VALUES ('184', '2', '44', '445', '1', '44', '44', null, '1', '1', null, '2017-08-17 05:47:10', null, null);
INSERT INTO `sys_menu` VALUES ('185', '1', 'ee', 'ee', '1', 'ee', 'ee', null, '3', '1', null, '2017-08-22 02:37:20', null, null);
INSERT INTO `sys_menu` VALUES ('186', '1', '楼宇管理', 'building', '1', '', '/home/building', null, '3', '1', null, '2017-08-22 02:40:28', null, null);
INSERT INTO `sys_menu` VALUES ('187', '2', '编辑房源', 'editAvailability', '1', '', '/home/building/editAvailability', null, '186', '1', null, '2017-08-22 02:41:21', null, null);
INSERT INTO `sys_menu` VALUES ('188', '3', '编辑房间', 'editRoom', '2', '', '/home/building/editAvailability/editRoom', null, '187', '1', null, '2017-08-22 02:41:52', null, null);
INSERT INTO `sys_menu` VALUES ('189', '3', '编辑楼宇', 'editBuilding', '2', '', '/home/building/editAvailability/editBuilding', null, '187', '1', null, '2017-08-22 02:42:20', null, null);
INSERT INTO `sys_menu` VALUES ('190', '2', '楼宇图示', 'buildingShow', '2', '', '/home/building/buildingShow', null, '186', '1', null, '2017-08-22 02:42:51', null, null);
INSERT INTO `sys_menu` VALUES ('191', '2', '注册信息', 'registrationMessage', '2', '', '/home/building/registrationMessage', null, '186', '1', null, '2017-08-22 02:43:12', null, null);
INSERT INTO `sys_menu` VALUES ('192', '1', '系统设置', 'system', '1', '', '/home/system', null, '3', '1', null, '2017-09-05 09:29:05', null, null);
INSERT INTO `sys_menu` VALUES ('193', '2', '角色管理', 'role', '2', '', '/home/system/role', null, '192', '0', null, '2017-09-05 09:30:19', null, null);
INSERT INTO `sys_menu` VALUES ('194', '2', '部门管理', 'department', '2', '', '/home/system/department', null, '192', '0', null, '2017-09-05 09:31:36', null, null);
INSERT INTO `sys_menu` VALUES ('195', '2', '账号管理', 'account', '2', '', '/home/system/account', null, '192', '0', null, '2017-09-05 09:32:00', null, null);
INSERT INTO `sys_menu` VALUES ('196', '2', '操作日志', 'operationLog', '2', '', '/home/system/operationLog', null, '192', '0', null, '2017-09-05 09:32:25', null, null);
INSERT INTO `sys_menu` VALUES ('197', '2', '菜单管理', 'menu', '2', '', '/home/system/menu', null, '192', '0', null, '2017-09-05 09:32:55', null, null);
INSERT INTO `sys_menu` VALUES ('198', '1', '楼宇管理', 'building', '1', '', '/home/building', null, '3', '1', null, '2017-09-05 09:34:27', null, null);
INSERT INTO `sys_menu` VALUES ('199', '2', '楼宇图示', 'buildingShow', '2', '', '/home/building/buildingShow', null, '198', '0', null, '2017-09-05 09:38:53', null, null);
INSERT INTO `sys_menu` VALUES ('200', '2', '编辑房间', 'editRoom', '2', '', '/home/building/editAvailability/editRoom', null, '198', '0', null, '2017-09-05 09:39:22', null, null);
INSERT INTO `sys_menu` VALUES ('201', '2', '编辑楼宇', 'editBuilding', '2', '', '/home/building/editAvailability/editBuilding', null, '198', '0', null, '2017-09-05 09:39:52', null, null);
INSERT INTO `sys_menu` VALUES ('202', '1', '租赁管理', 'lease', '1', '', '/home/lease', null, '3', '1', null, '2017-09-05 09:41:40', null, null);
INSERT INTO `sys_menu` VALUES ('203', '2', '租赁合同', 'leaseContract', '2', '', '/home/lease/leaseContract', null, '202', '0', null, '2017-09-05 09:42:01', null, null);
INSERT INTO `sys_menu` VALUES ('204', '2', '租金管理', 'rentManagement', '2', '', '/home/lease/rentManagement', null, '202', '0', null, '2017-09-05 09:42:36', null, null);
INSERT INTO `sys_menu` VALUES ('205', '1', '房源管理', 'building', '1', '', '/home/building', null, '3', '0', null, '2017-09-06 09:49:08', null, null);
INSERT INTO `sys_menu` VALUES ('206', '2', '楼宇图示', 'buildingShow', '2', '', '/home/building/buildingShow', null, '205', '0', null, '2017-09-06 09:49:49', null, null);
INSERT INTO `sys_menu` VALUES ('207', '2', '编辑房间', 'editRoom', '2', '', '/home/building/editAvailability/editRoom', null, '205', '0', null, '2017-09-06 09:50:12', null, null);
INSERT INTO `sys_menu` VALUES ('208', '2', '编辑楼宇', 'editBuilding', '2', '', '/home/building/editAvailability/editBuilding', null, '205', '0', null, '2017-09-06 09:50:36', null, null);
INSERT INTO `sys_menu` VALUES ('209', '1', '租赁管理', 'lease', '1', '', '/home/lease', null, '3', '0', null, '2017-09-06 09:51:39', null, null);
INSERT INTO `sys_menu` VALUES ('210', '2', '租赁合同', 'leaseContract', '2', '', '/home/lease/leaseContract', null, '209', '0', null, '2017-09-06 09:52:04', null, null);
INSERT INTO `sys_menu` VALUES ('211', '2', '租金管理', 'rentManagement', '2', '', '/home/lease/rentManagement', null, '209', '0', null, '2017-09-06 09:52:25', null, null);
INSERT INTO `sys_menu` VALUES ('212', '2', '注册信息', 'registrationMessage', '2', '', '/home/building/registrationMessage', null, '209', '0', null, '2017-09-06 09:52:51', null, null);
INSERT INTO `sys_menu` VALUES ('213', '1', '物业管理', 'property', '1', '', '/home/property', null, '3', '0', null, '2017-09-06 09:56:52', null, null);
INSERT INTO `sys_menu` VALUES ('214', '2', '物业合同', 'contract', '2', '', '/home/property/contract', null, '213', '0', null, '2017-09-06 09:57:18', null, null);
INSERT INTO `sys_menu` VALUES ('215', '2', '物业费管理', 'propertyFee', '2', '', '/home/property/propertyFee', null, '213', '0', null, '2017-09-06 09:57:42', null, null);
INSERT INTO `sys_menu` VALUES ('216', '2', '电费管理', 'electricCharge', '2', '', '/home/property/electricCharge', null, '213', '0', null, '2017-09-06 09:58:04', null, null);
INSERT INTO `sys_menu` VALUES ('217', '2', '水费管理', 'waterCharge', '2', '', '/home/property/waterCharge', null, '213', '0', null, '2017-09-06 09:58:26', null, null);
INSERT INTO `sys_menu` VALUES ('218', '2', '物业公告', 'propertyNotice', '2', '', '/home/client/propertyNotice', null, '213', '0', null, '2017-09-06 09:58:50', null, null);
INSERT INTO `sys_menu` VALUES ('219', '1', '客户管理', 'client', '1', '', '/home/client', null, '3', '0', null, '2017-09-06 09:59:45', null, null);
INSERT INTO `sys_menu` VALUES ('220', '2', '客户资料', 'information', '2', '', '/home/client/information', null, '219', '0', null, '2017-09-06 10:00:10', null, null);
INSERT INTO `sys_menu` VALUES ('221', '2', '客户报修', 'repair', '1', '', '/home/client/repair', null, '219', '0', null, '2017-09-06 10:00:36', null, null);
INSERT INTO `sys_menu` VALUES ('222', '3', '客户报修', 'clientRepair', '2', '', '/home/client/repair/clientRepair', null, '221', '0', null, '2017-09-06 10:01:06', null, null);
INSERT INTO `sys_menu` VALUES ('223', '4', '客户回访', 'returnVisit', '2', '', '/home/client/repair/returnVisit', null, '222', '1', null, '2017-09-06 10:01:30', null, null);
INSERT INTO `sys_menu` VALUES ('224', '4', '维修费设置', 'maintenanceFees', '2', '', '/home/client/repair/maintenanceFees', null, '222', '1', null, '2017-09-06 10:01:52', null, null);
INSERT INTO `sys_menu` VALUES ('225', '3', '客户回访', 'returnVisit', '2', '', '/home/client/repair/returnVisit', null, '221', '0', null, '2017-09-06 10:02:33', null, null);
INSERT INTO `sys_menu` VALUES ('226', '3', '维修费设置', 'maintenanceFees', '2', '', '/home/client/repair/maintenanceFees', null, '221', '0', null, '2017-09-06 10:03:06', null, null);
INSERT INTO `sys_menu` VALUES ('227', '2', '投诉建议', 'complain', '2', '', '/home/client/complain', null, '219', '0', null, '2017-09-07 01:21:46', null, null);
INSERT INTO `sys_menu` VALUES ('228', '2', '整改通知', 'notice', '2', '', '/home/client/notice', null, '219', '0', null, '2017-09-07 01:22:08', null, null);
INSERT INTO `sys_menu` VALUES ('229', '2', '二次装修', 'secondaryDecoration', '2', '', '/home/client/secondaryDecoration', null, '219', '0', null, '2017-09-07 01:22:42', null, null);
INSERT INTO `sys_menu` VALUES ('230', '2', '保证金管理', 'margin', '2', '', '/home/client/margin', null, '219', '0', null, '2017-09-07 01:23:05', null, null);
INSERT INTO `sys_menu` VALUES ('231', '2', '门禁卡管理', 'accessCard', '1', '', '/home/client/accessCard', null, '219', '0', null, '2017-09-07 01:23:37', null, null);
INSERT INTO `sys_menu` VALUES ('232', '3', '门禁卡管理', 'management', '2', '', '/home/client/accessCard/management', null, '231', '0', null, '2017-09-07 01:23:59', null, null);
INSERT INTO `sys_menu` VALUES ('233', '3', '门禁卡押金', 'deposit', '2', '', '/home/client/accessCard/deposit', null, '231', '0', null, '2017-09-07 01:24:27', null, null);
INSERT INTO `sys_menu` VALUES ('234', '2', '房间梆定', 'roombinding', '2', '', '/home/client/roombinding', null, '219', '0', null, '2017-09-07 01:24:58', null, null);
INSERT INTO `sys_menu` VALUES ('235', '1', '财务管理', 'finance', '1', '', '/home/finance', null, '3', '0', null, '2017-09-07 01:26:33', null, null);
INSERT INTO `sys_menu` VALUES ('236', '2', '财务设置', 'config', '1', '', '/home/finance/config', null, '235', '0', null, '2017-09-07 01:26:59', null, null);
INSERT INTO `sys_menu` VALUES ('237', '3', '收费设置', 'toll', '2', '', '/home/finance/config/toll', null, '236', '0', null, '2017-09-07 01:27:22', null, null);
INSERT INTO `sys_menu` VALUES ('238', '3', '开票信息', 'billing', '2', '', '/home/finance/config/billing', null, '236', '0', null, '2017-09-07 01:27:42', null, null);
INSERT INTO `sys_menu` VALUES ('239', '2', '租金审核', 'rentReview', '2', '', '/home/finance/rentReview', null, '235', '0', null, '2017-09-07 01:28:12', null, null);
INSERT INTO `sys_menu` VALUES ('240', '2', '物业费审核', 'propertyCostsReview', '2', '', '/home/finance/propertyCostsReview', null, '235', '0', null, '2017-09-07 01:28:36', null, null);
INSERT INTO `sys_menu` VALUES ('241', '2', '电费审核', 'electricity', '2', '', '/home/finance/electricity', null, '235', '0', null, '2017-09-07 01:28:59', null, null);
INSERT INTO `sys_menu` VALUES ('242', '2', '水费审核', 'waterFee', '2', '', '/home/finance/waterFee', null, '235', '0', null, '2017-09-07 01:29:27', null, null);
INSERT INTO `sys_menu` VALUES ('243', '2', '租赁保证金审核', 'leaseMargin', '2', '', '/home/finance/leaseMargin', null, '235', '0', null, '2017-09-07 01:29:49', null, null);
INSERT INTO `sys_menu` VALUES ('244', '2', '欢乐颂押金审核', 'happyDeposit', '2', '', '/home/finance/happyDeposit', null, '235', '0', null, '2017-09-07 01:30:12', null, null);
INSERT INTO `sys_menu` VALUES ('245', '2', '能源管理押金审核', 'energyDeposit', '2', '', '/home/finance/energyDeposit', null, '235', '0', null, '2017-09-07 01:30:35', null, null);
INSERT INTO `sys_menu` VALUES ('246', '2', '二次装修审核', 'secondReview', '2', '', '/home/finance/secondReview', null, '235', '0', null, '2017-09-07 01:31:02', null, null);
INSERT INTO `sys_menu` VALUES ('247', '1', '统计报表', 'statistics', '1', '', '/home/statistics', null, '3', '0', null, '2017-09-07 01:32:04', null, null);
INSERT INTO `sys_menu` VALUES ('248', '2', '租金汇总', 'rent', '2', '', '/home/statistics/rent', null, '247', '0', null, '2017-09-07 01:32:31', null, null);
INSERT INTO `sys_menu` VALUES ('249', '2', '物业费汇总', 'propertyCosts', '2', '', '/home/statistics/propertyCosts', null, '247', '0', null, '2017-09-07 01:32:53', null, null);
INSERT INTO `sys_menu` VALUES ('250', '2', '电费汇总', 'electricityBill', '2', '', '/home/statistics/electricityBill', null, '247', '0', null, '2017-09-07 01:33:24', null, null);
INSERT INTO `sys_menu` VALUES ('251', '2', '水费汇总', 'watchFee', '2', '', '/home/statistics/watchFee', null, '247', '0', null, '2017-09-07 01:33:47', null, null);
INSERT INTO `sys_menu` VALUES ('252', '1', '仓库管理', 'wareHouse', '1', '', '/home/wareHouse', null, '3', '0', null, '2017-09-07 01:36:16', null, null);
INSERT INTO `sys_menu` VALUES ('253', '2', '库存管理', 'inventoryManage', '2', '', '/home/wareHouse/inventoryManage', null, '252', '0', null, '2017-09-07 01:37:12', null, null);
INSERT INTO `sys_menu` VALUES ('254', '2', '领用统计', 'receiveStatistics', '2', '', '/home/wareHouse/receiveStatistics', null, '252', '0', null, '2017-09-07 01:37:33', null, null);
INSERT INTO `sys_menu` VALUES ('255', '2', '材料管理', 'meterialManagement', '2', '', '/home/wareHouse/meterialManagement', null, '252', '0', null, '2017-09-07 01:37:57', null, null);
INSERT INTO `sys_menu` VALUES ('256', '1', '设备管理', 'equipment', '1', '', '/home/equipment', null, '3', '0', null, '2017-09-07 01:39:13', null, null);
INSERT INTO `sys_menu` VALUES ('257', '2', '设备维保', 'maintain', '1', '', '/home/equipment/maintain', null, '256', '0', null, '2017-09-07 01:39:44', null, null);
INSERT INTO `sys_menu` VALUES ('258', '3', '保养记录', 'maintenancePlan', '2', '', '/home/equipment/maintain/maintenancePlan', null, '257', '1', null, '2017-09-07 01:40:09', null, null);
INSERT INTO `sys_menu` VALUES ('259', '3', '维修记录', 'repairRecord', '2', '', '/home/equipment/maintain/repairRecord', null, '257', '1', null, '2017-09-07 01:40:37', null, null);
INSERT INTO `sys_menu` VALUES ('260', '2', '设备台账', 'equipmentAccount', '2', '', '/home/equipment/equipmentAccount', null, '256', '0', null, '2017-09-07 01:41:12', null, null);
INSERT INTO `sys_menu` VALUES ('261', '2', '机房管理', 'computerRoomManagement', '2', '', '/home/equipment/computerRoomManagement', null, '256', '0', null, '2017-09-07 01:41:33', null, null);
INSERT INTO `sys_menu` VALUES ('262', '2', '设备巡检', 'inspection', '2', '', '/home/equipment/inspection', null, '256', '0', null, '2017-09-07 01:41:57', null, null);
INSERT INTO `sys_menu` VALUES ('263', '1', '系统设置', 'system', '1', '', '/home/system', null, '3', '0', null, '2017-09-07 01:42:38', null, null);
INSERT INTO `sys_menu` VALUES ('264', '2', '角色管理', 'role', '2', '', '/home/system/role', null, '263', '0', null, '2017-09-07 01:43:00', null, null);
INSERT INTO `sys_menu` VALUES ('265', '2', '部门管理', 'department', '2', '', '/home/system/department', null, '263', '0', null, '2017-09-07 01:43:25', null, null);
INSERT INTO `sys_menu` VALUES ('266', '2', '账号管理', 'account', '2', '', '/home/system/account', null, '263', '0', null, '2017-09-07 01:43:42', null, null);
INSERT INTO `sys_menu` VALUES ('267', '2', '操作日志', 'operationLog', '2', '', '/home/system/operationLog', null, '263', '0', null, '2017-09-07 01:44:02', null, null);
INSERT INTO `sys_menu` VALUES ('268', '2', '菜单管理', 'menu', '2', '', '/home/system/menu', null, '263', '0', null, '2017-09-07 01:44:23', null, null);
INSERT INTO `sys_menu` VALUES ('269', '1', '智能硬件', 'hardware', '1', '', '/home/hardware', null, '3', '0', null, '2017-09-07 01:48:36', null, null);
INSERT INTO `sys_menu` VALUES ('270', '2', '空调监控', 'airconditionermonitor', '1', '', '/home/hardware/airconditionermonitor', null, '269', '0', null, '2017-09-07 01:49:01', null, null);
INSERT INTO `sys_menu` VALUES ('271', '3', '空调监控列表', 'monitoringlist', '2', '', '/home/hardware/airconditionermonitor/monitoringlist', null, '270', '0', null, '2017-09-07 01:49:31', null, null);
INSERT INTO `sys_menu` VALUES ('272', '3', '添加房间', '', '3', '', '', null, '207', '1', null, '2017-09-11 02:30:55', null, null);
INSERT INTO `sys_menu` VALUES ('273', '3', '编辑房间', '', '3', '', '', null, '207', '1', null, '2017-09-11 02:31:18', null, null);
INSERT INTO `sys_menu` VALUES ('274', '3', '删除房间', 'deleteRoom', '3', '', '', null, '207', '0', null, '2017-09-11 02:31:26', null, null);
INSERT INTO `sys_menu` VALUES ('275', '3', '添加楼宇', '', '3', '', '', null, '208', '1', null, '2017-09-11 02:31:52', null, null);
INSERT INTO `sys_menu` VALUES ('276', '3', '编辑楼宇', '', '3', '', '', null, '208', '1', null, '2017-09-11 02:32:03', null, null);
INSERT INTO `sys_menu` VALUES ('277', '3', '删除楼宇', 'deleteBuilding', '3', '', '', null, '208', '0', null, '2017-09-11 03:07:02', null, null);
INSERT INTO `sys_menu` VALUES ('278', '3', '添加公司', '', '3', '', '', null, '212', '1', null, '2017-09-11 03:07:36', null, null);
INSERT INTO `sys_menu` VALUES ('279', '3', '编辑公司', '', '3', '', '', null, '212', '1', null, '2017-09-11 03:07:51', null, null);
INSERT INTO `sys_menu` VALUES ('280', '3', '合同详情', '', '3', '', '', null, '206', '1', null, '2017-09-11 03:09:22', null, null);
INSERT INTO `sys_menu` VALUES ('281', '3', '添加角色', '', '3', '', '', null, '264', '1', null, '2017-09-11 03:10:24', null, null);
INSERT INTO `sys_menu` VALUES ('282', '3', '编辑角色', '', '3', '', '', null, '264', '1', null, '2017-09-11 03:10:37', null, null);
INSERT INTO `sys_menu` VALUES ('283', '3', '删除角色', '', '3', '', '', null, '264', '1', null, '2017-09-11 03:10:48', null, null);
INSERT INTO `sys_menu` VALUES ('284', '3', '添加部门', '', '3', '', '', null, '265', '1', null, '2017-09-11 03:11:31', null, null);
INSERT INTO `sys_menu` VALUES ('285', '3', '编辑部门', '', '3', '', '', null, '265', '1', null, '2017-09-11 03:11:40', null, null);
INSERT INTO `sys_menu` VALUES ('286', '3', '删除部门', '', '3', '', '', null, '265', '1', null, '2017-09-11 03:11:48', null, null);
INSERT INTO `sys_menu` VALUES ('287', '3', '添加账号', '', '3', '', '', null, '266', '1', null, '2017-09-11 03:12:11', null, null);
INSERT INTO `sys_menu` VALUES ('288', '3', '编辑账号', '', '3', '', '', null, '266', '1', null, '2017-09-11 03:12:27', null, null);
INSERT INTO `sys_menu` VALUES ('289', '3', '删除账号', '', '3', '', '', null, '266', '1', null, '2017-09-11 03:12:37', null, null);
INSERT INTO `sys_menu` VALUES ('290', '3', '关闭账号', '', '3', '', '', null, '266', '1', null, '2017-09-11 03:13:08', null, null);
INSERT INTO `sys_menu` VALUES ('291', '3', '重置密码', '', '3', '', '', null, '266', '1', null, '2017-09-11 03:13:24', null, null);
INSERT INTO `sys_menu` VALUES ('292', '3', '添加菜单', '', '3', '', '', null, '268', '1', null, '2017-09-11 03:14:44', null, null);
INSERT INTO `sys_menu` VALUES ('293', '3', '编辑菜单', '', '3', '', '', null, '268', '1', null, '2017-09-11 03:14:56', null, null);
INSERT INTO `sys_menu` VALUES ('294', '3', '删除菜单', '', '3', '', '', null, '268', '1', null, '2017-09-11 03:15:08', null, null);
INSERT INTO `sys_menu` VALUES ('295', '3', '添加设备', '', '3', '', '', null, '260', '1', null, '2017-09-11 03:16:02', null, null);
INSERT INTO `sys_menu` VALUES ('296', '3', '编辑设备', '', '3', '', '', null, '260', '1', null, '2017-09-11 03:16:15', null, null);
INSERT INTO `sys_menu` VALUES ('297', '3', '启停设备', '', '3', '', '', null, '260', '1', null, '2017-09-11 03:16:24', null, null);
INSERT INTO `sys_menu` VALUES ('298', '3', '设备详情', '', '3', '', '', null, '260', '1', null, '2017-09-11 03:16:43', null, null);
INSERT INTO `sys_menu` VALUES ('299', '3', '添加机房', '', '3', '', '', null, '261', '1', null, '2017-09-11 03:20:00', null, null);
INSERT INTO `sys_menu` VALUES ('300', '3', '修改机房', '', '3', '', '', null, '261', '1', null, '2017-09-11 03:20:12', null, null);
INSERT INTO `sys_menu` VALUES ('301', '3', '删除机房', '', '3', '', '', null, '261', '1', null, '2017-09-11 03:20:40', null, null);
INSERT INTO `sys_menu` VALUES ('302', '3', '入库', 'storage', '3', '', '', null, '253', '0', null, '2017-09-11 03:22:15', null, null);
INSERT INTO `sys_menu` VALUES ('303', '3', '出库', 'outOfwarehouse', '3', '', '', null, '253', '0', null, '2017-09-11 03:22:22', null, null);
INSERT INTO `sys_menu` VALUES ('304', '3', '添加材料', '', '3', '', '', null, '255', '1', null, '2017-09-11 03:23:49', null, null);
INSERT INTO `sys_menu` VALUES ('305', '3', '编辑材料', '', '3', '', '', null, '255', '1', null, '2017-09-11 03:24:02', null, null);
INSERT INTO `sys_menu` VALUES ('306', '3', '删除材料', '', '3', '', '', null, '255', '1', null, '2017-09-11 03:24:15', null, null);
INSERT INTO `sys_menu` VALUES ('307', '3', '变更合同', 'changeLease', '3', '', '', null, '210', '0', null, '2017-09-11 03:30:45', null, null);
INSERT INTO `sys_menu` VALUES ('308', '3', '终止合同', 'stopLease', '3', '', '', null, '210', '0', null, '2017-09-11 03:30:56', null, null);
INSERT INTO `sys_menu` VALUES ('309', '3', '查看合同明细', '', '3', '', '', null, '210', '1', null, '2017-09-11 03:31:04', null, null);
INSERT INTO `sys_menu` VALUES ('310', '4', '查看合同明细', '', '3', '', '', null, '309', '0', null, '2017-09-11 03:32:21', null, null);
INSERT INTO `sys_menu` VALUES ('311', '2', '终止合同', '', '3', '', '', null, '209', '1', null, '2017-09-11 03:33:38', null, null);
INSERT INTO `sys_menu` VALUES ('312', '3', '添加物业合同', '', '3', '', '', null, '214', '1', null, '2017-09-11 03:34:58', null, null);
INSERT INTO `sys_menu` VALUES ('313', '3', '变更物业合同', 'changeProperty', '3', '', '', null, '214', '0', null, '2017-09-11 03:35:09', null, null);
INSERT INTO `sys_menu` VALUES ('314', '3', '终止合同', 'endProperty', '3', '', '', null, '214', '0', null, '2017-09-11 03:35:30', null, null);
INSERT INTO `sys_menu` VALUES ('315', '3', '添加转租信息', 'addSublet', '3', '', '', null, '214', '0', null, '2017-09-11 03:35:42', null, null);
INSERT INTO `sys_menu` VALUES ('316', '3', '编辑转租信息', 'editSublet', '3', '', '', null, '214', '0', null, '2017-09-11 03:35:52', null, null);
INSERT INTO `sys_menu` VALUES ('317', '3', '删除转租信息', 'deleteSublet', '3', '', '', null, '214', '0', null, '2017-09-11 03:36:06', null, null);
INSERT INTO `sys_menu` VALUES ('318', '3', '添加客户', '', '3', '', '', null, '220', '1', null, '2017-09-11 03:36:31', null, null);
INSERT INTO `sys_menu` VALUES ('319', '3', '编辑客户', '', '3', '', '', null, '220', '1', null, '2017-09-11 03:36:43', null, null);
INSERT INTO `sys_menu` VALUES ('320', '3', '删除客户', 'deleteCustomer', '3', '', '', null, '220', '0', null, '2017-09-11 03:36:52', null, null);
INSERT INTO `sys_menu` VALUES ('321', '3', '租金撤回', 'revokeRent', '3', '', '', null, '239', '0', null, '2017-09-11 04:02:23', null, null);
INSERT INTO `sys_menu` VALUES ('322', '3', '物业费撤回', 'revokeProperty', '3', '', '', null, '240', '0', null, '2017-09-11 04:02:34', null, null);
INSERT INTO `sys_menu` VALUES ('323', '3', '电费撤回', 'revokeElectric', '3', '', '', null, '241', '0', null, '2017-09-11 04:02:52', null, null);
INSERT INTO `sys_menu` VALUES ('324', '3', '水费撤回', 'revokeWater', '3', '', '', null, '242', '0', null, '2017-09-11 04:03:12', null, null);
INSERT INTO `sys_menu` VALUES ('325', '3', '物业费审核', 'censorProperty', '3', '', '', null, '240', '0', null, '2017-09-11 04:03:31', null, null);
INSERT INTO `sys_menu` VALUES ('326', '3', '电费审核', 'censorElectric', '3', '', '', null, '241', '0', null, '2017-09-11 04:03:43', null, null);
INSERT INTO `sys_menu` VALUES ('327', '3', '租金审核', 'censorRent', '3', '', '', null, '239', '0', null, '2017-09-11 04:03:50', null, null);
INSERT INTO `sys_menu` VALUES ('328', '3', '水费审核', 'censorWater', '3', '', '', null, '242', '0', null, '2017-09-11 04:04:17', null, null);
INSERT INTO `sys_menu` VALUES ('329', '3', '解除绑定', 'Unbound', '3', '', '', null, '234', '0', null, '2017-09-11 04:04:49', null, null);
INSERT INTO `sys_menu` VALUES ('330', '3', '备注信息', '', '3', '', '', null, '234', '1', null, '2017-09-11 04:05:09', null, null);
INSERT INTO `sys_menu` VALUES ('331', '3', '扣款', 'debit', '3', '', '', null, '230', '0', null, '2017-09-11 04:05:22', null, null);
INSERT INTO `sys_menu` VALUES ('332', '3', '退款', 'refund', '3', '', '', null, '230', '0', null, '2017-09-11 04:05:30', null, null);
INSERT INTO `sys_menu` VALUES ('333', '3', '添加', 'addReform', '3', '', '', null, '228', '0', null, '2017-09-11 04:05:40', null, null);
INSERT INTO `sys_menu` VALUES ('334', '3', '修改', 'editReform', '3', '', '', null, '228', '0', null, '2017-09-11 04:06:30', null, null);
INSERT INTO `sys_menu` VALUES ('335', '3', '受理', 'acceptance', '3', '', '', null, '227', '0', null, '2017-09-11 04:06:43', null, null);
INSERT INTO `sys_menu` VALUES ('336', '3', '派单', '', '3', '', '', null, '221', '1', null, '2017-09-11 04:07:32', null, null);
INSERT INTO `sys_menu` VALUES ('337', '3', '修改', '', '3', '', '', null, '221', '1', null, '2017-09-11 04:07:39', null, null);
INSERT INTO `sys_menu` VALUES ('338', '3', '作废', '', '3', '', '', null, '221', '1', null, '2017-09-11 04:07:47', null, null);
INSERT INTO `sys_menu` VALUES ('339', '4', '派单', 'dispatchOrder', '3', '', '', null, '222', '0', null, '2017-09-11 04:08:15', null, null);
INSERT INTO `sys_menu` VALUES ('340', '4', '作废', 'cancelledOrder', '3', '', '', null, '222', '0', null, '2017-09-11 04:08:23', null, null);
INSERT INTO `sys_menu` VALUES ('341', '4', '修改', '', '3', '', '', null, '222', '1', null, '2017-09-11 04:08:34', null, null);
INSERT INTO `sys_menu` VALUES ('342', '4', '添加', '', '3', '', '', null, '222', '1', null, '2017-09-11 04:08:42', null, null);
INSERT INTO `sys_menu` VALUES ('343', '4', '回访登记', 'visitingCustomers', '3', '', '', null, '225', '0', null, '2017-09-11 04:09:05', null, null);
INSERT INTO `sys_menu` VALUES ('344', '4', '添加', '', '3', '', '', null, '226', '1', null, '2017-09-11 04:09:19', null, null);
INSERT INTO `sys_menu` VALUES ('345', '3', '保养记录', 'maintenancePlan', '2', '', '/home/equipment/maintain/maintenancePlan', null, '257', '0', null, '2017-09-11 04:10:39', null, null);
INSERT INTO `sys_menu` VALUES ('346', '3', '维修记录', 'repairRecord', '2', '', '/home/equipment/maintain/repairRecord', null, '257', '0', null, '2017-09-11 04:10:48', null, null);
INSERT INTO `sys_menu` VALUES ('347', '3', '添加公告', 'addNotice', '3', '', '', null, '218', '0', null, '2017-09-11 07:55:13', null, null);

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `role_id` bigint(11) DEFAULT '0' COMMENT '角色ID',
  `department_id` bigint(11) unsigned DEFAULT '0' COMMENT '部门id',
  `create_by` bigint(11) DEFAULT '0' COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(11) DEFAULT '0' COMMENT '更新新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(2) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE,
  KEY `role_id_index` (`role_id`) USING BTREE,
  KEY `department_id_index` (`department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES ('2', '20', '5', '9', '1', '2017-02-17 11:40:00', '19', '2017-02-21 11:49:56', '1');
INSERT INTO `sys_relation` VALUES ('3', '21', '7', '10', '20', '2017-02-17 15:15:54', '1', '2017-02-28 13:16:43', '1');
INSERT INTO `sys_relation` VALUES ('4', '22', '6', '9', '19', '2017-02-17 15:50:12', '1', '2017-04-01 17:13:59', '1');
INSERT INTO `sys_relation` VALUES ('5', '23', '15', '9', '19', '2017-02-18 17:46:16', '1', '2017-04-14 11:32:42', '1');
INSERT INTO `sys_relation` VALUES ('6', '24', '13', '9', '19', '2017-02-21 11:49:37', '1', '2017-04-14 11:28:08', '1');
INSERT INTO `sys_relation` VALUES ('7', '25', '13', '10', '19', '2017-02-22 15:14:24', '1', '2018-01-15 11:18:22', '1');
INSERT INTO `sys_relation` VALUES ('8', '26', '13', '9', '1', '2017-02-28 13:16:35', '1', '2018-01-15 11:18:18', '1');
INSERT INTO `sys_relation` VALUES ('9', '27', '15', '18', '1', '2017-03-14 13:32:40', '1', '2017-07-19 15:20:29', null);
INSERT INTO `sys_relation` VALUES ('10', '28', '15', '18', '1', '2017-04-14 11:26:06', '1', '2017-04-14 13:35:02', '1');
INSERT INTO `sys_relation` VALUES ('11', '29', '15', '18', '1', '2017-04-14 12:39:09', '1', '2017-04-14 12:39:13', '1');
INSERT INTO `sys_relation` VALUES ('12', '30', '15', '18', '1', '2017-04-14 13:31:16', '30', '2017-09-13 01:49:38', null);
INSERT INTO `sys_relation` VALUES ('13', '31', '17', '20', '1', '2017-04-14 13:35:30', '1', '2017-04-14 13:40:06', '1');
INSERT INTO `sys_relation` VALUES ('14', '32', '24', '23', '1', '2017-04-14 14:24:32', '66', '2017-09-08 01:59:19', null);
INSERT INTO `sys_relation` VALUES ('15', '33', '13', '19', '1', '2017-04-14 14:25:06', null, null, null);
INSERT INTO `sys_relation` VALUES ('16', '34', '17', '20', '1', '2017-04-14 14:25:31', null, null, null);
INSERT INTO `sys_relation` VALUES ('17', '35', '19', '21', '1', '2017-04-14 14:26:05', null, null, null);
INSERT INTO `sys_relation` VALUES ('18', '36', '19', '21', '1', '2017-04-14 14:26:48', null, null, null);
INSERT INTO `sys_relation` VALUES ('19', '37', '20', '21', '1', '2017-04-14 14:27:48', null, null, null);
INSERT INTO `sys_relation` VALUES ('20', '38', '21', '21', '1', '2017-04-14 14:28:05', '30', '2017-09-14 01:49:27', null);
INSERT INTO `sys_relation` VALUES ('21', '39', '18', '22', '1', '2017-04-14 14:29:07', '30', '2017-09-14 01:47:42', null);
INSERT INTO `sys_relation` VALUES ('22', '40', '16', '22', '1', '2017-04-14 14:29:27', null, null, null);
INSERT INTO `sys_relation` VALUES ('23', '41', '14', '22', '1', '2017-04-14 14:30:06', null, null, null);
INSERT INTO `sys_relation` VALUES ('24', '42', '1', '22', '1', '2017-04-14 14:30:37', null, null, null);
INSERT INTO `sys_relation` VALUES ('25', '43', '1', '22', '1', '2017-04-14 14:30:57', null, null, null);
INSERT INTO `sys_relation` VALUES ('26', '44', '1', '22', '1', '2017-04-14 14:31:36', '1', '2017-05-15 13:15:40', null);
INSERT INTO `sys_relation` VALUES ('27', '45', '22', '21', '1', '2017-05-15 19:05:51', '0', null, null);
INSERT INTO `sys_relation` VALUES ('28', '46', '15', '18', '1', '2017-06-13 10:59:47', '0', null, null);
INSERT INTO `sys_relation` VALUES ('29', '47', '15', '18', '1', '2017-06-13 11:31:10', '0', null, null);
INSERT INTO `sys_relation` VALUES ('30', '48', '25', '23', '1', '2017-06-13 14:47:03', '1', '2017-06-13 17:56:16', null);
INSERT INTO `sys_relation` VALUES ('31', '49', '25', '23', '1', '2017-06-13 14:47:29', '1', '2017-06-13 17:57:27', null);
INSERT INTO `sys_relation` VALUES ('32', '50', '32', '23', '1', '2017-06-13 14:47:57', '1', '2017-06-13 17:57:48', null);
INSERT INTO `sys_relation` VALUES ('33', '51', '28', '23', '1', '2017-06-13 14:48:30', '1', '2017-06-13 17:58:04', null);
INSERT INTO `sys_relation` VALUES ('34', '52', '29', '23', '1', '2017-06-13 14:48:59', '1', '2017-06-13 17:57:03', null);
INSERT INTO `sys_relation` VALUES ('35', '53', '30', '23', '1', '2017-06-13 14:49:33', '1', '2017-06-13 17:58:27', null);
INSERT INTO `sys_relation` VALUES ('36', '54', '29', '23', '1', '2017-06-13 14:50:03', '1', '2017-06-13 17:58:41', null);
INSERT INTO `sys_relation` VALUES ('37', '55', '31', '23', '1', '2017-06-13 14:50:37', '1', '2017-06-13 18:01:04', null);
INSERT INTO `sys_relation` VALUES ('38', '56', '29', '23', '1', '2017-06-13 14:51:55', '1', '2017-06-13 17:56:43', null);
INSERT INTO `sys_relation` VALUES ('39', '57', '33', '23', '1', '2017-06-13 14:52:43', '1', '2017-06-13 17:58:57', null);
INSERT INTO `sys_relation` VALUES ('40', '58', '34', '23', '1', '2017-06-13 14:54:00', '1', '2017-06-13 18:00:06', null);
INSERT INTO `sys_relation` VALUES ('41', '59', '34', '23', '1', '2017-06-13 14:58:03', '1', '2017-06-13 17:59:43', null);
INSERT INTO `sys_relation` VALUES ('42', '60', '34', '23', '1', '2017-06-13 15:03:16', '1', '2017-06-13 17:59:29', null);
INSERT INTO `sys_relation` VALUES ('43', '61', '15', '18', '1', '2017-06-13 16:13:50', '1', '2017-06-13 16:14:17', null);
INSERT INTO `sys_relation` VALUES ('44', '62', '15', '18', '1', '2017-06-13 19:03:33', '66', '2017-09-08 01:54:52', null);
INSERT INTO `sys_relation` VALUES ('45', '63', '24', '23', '1', '2017-06-15 15:04:29', '66', '2017-09-08 01:59:07', null);
INSERT INTO `sys_relation` VALUES ('46', '64', '15', '18', '1', '2017-07-10 17:41:03', '0', null, null);
INSERT INTO `sys_relation` VALUES ('47', '66', '15', '18', '1', '2017-07-25 13:04:28', '62', '2017-09-18 02:58:10', null);
INSERT INTO `sys_relation` VALUES ('48', '0', '19', '21', '62', '2017-08-16 12:49:29', '0', null, null);
INSERT INTO `sys_relation` VALUES ('49', '0', '19', '21', '62', '2017-08-16 12:50:25', '0', null, null);
INSERT INTO `sys_relation` VALUES ('50', '70', '17', '20', '62', '2017-08-16 12:52:39', '0', null, null);
INSERT INTO `sys_relation` VALUES ('51', '71', '17', '20', '62', '2017-08-16 12:53:07', '0', null, null);
INSERT INTO `sys_relation` VALUES ('52', '72', '17', '20', '62', '2017-08-16 12:54:29', '0', null, null);
INSERT INTO `sys_relation` VALUES ('53', '73', '29', '23', '62', '2017-08-16 13:48:37', '62', '2017-08-16 15:08:57', null);
INSERT INTO `sys_relation` VALUES ('54', '74', '15', '18', '62', '2017-08-16 15:17:05', '62', '2017-08-16 15:19:39', null);
INSERT INTO `sys_relation` VALUES ('55', '75', '43', '18', '62', '2017-09-08 10:07:24', '0', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `department_id` bigint(11) DEFAULT NULL COMMENT '部门id',
  `role_number` int(11) DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(20) DEFAULT '' COMMENT '角色名称',
  `role_type` varchar(10) NOT NULL DEFAULT '' COMMENT '角色类型',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `create_by` bigint(11) unsigned DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` bigint(11) DEFAULT '0',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `del_flag` tinyint(2) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `department_id_index` (`department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '22', null, '中融-前台秘书', '888888', '', null, '2017-02-21 11:55:08', '1', '2017-06-12 13:53:51', '0');
INSERT INTO `sys_role` VALUES ('13', '19', null, '企管部', '', '', '19', '2017-02-25 17:07:02', '1', '2017-06-06 19:05:11', '0');
INSERT INTO `sys_role` VALUES ('14', '22', null, '中融-客服管家', '', '', '1', '2017-02-28 12:43:11', '1', '2017-06-06 19:04:32', '0');
INSERT INTO `sys_role` VALUES ('15', '18', '0', '开发者账号', '', '', '1', '2017-03-14 13:32:12', '1', '2017-06-26 15:25:39', '0');
INSERT INTO `sys_role` VALUES ('16', '22', null, '中融-客服主管', '', '', '1', '2017-03-15 14:10:50', '1', '2017-06-06 19:03:37', '0');
INSERT INTO `sys_role` VALUES ('17', '20', null, '集团领导', '', '', '1', '2017-03-24 11:44:13', '1', '2017-06-06 19:01:35', '0');
INSERT INTO `sys_role` VALUES ('18', '22', null, '中融-部门经理', '', '', '1', '2017-03-29 11:31:44', '1', '2017-06-06 18:59:19', '0');
INSERT INTO `sys_role` VALUES ('19', '21', null, '财务-部门经理', '', '', '1', '2017-04-11 12:22:59', '1', '2017-06-12 13:53:03', '0');
INSERT INTO `sys_role` VALUES ('20', '21', null, '财务-中融部主管', '', '', '1', '2017-04-11 12:25:22', '1', '2017-06-12 13:44:05', '0');
INSERT INTO `sys_role` VALUES ('21', '21', '23', '财务-物业部主管', '', '', '1', '2017-04-11 12:26:54', '1', '2017-06-12 13:44:23', '0');
INSERT INTO `sys_role` VALUES ('22', '21', null, '财务-物业部出纳', '', '', '1', '2017-05-15 19:05:09', '1', '2017-06-13 14:35:36', '0');
INSERT INTO `sys_role` VALUES ('24', '23', null, '物业-部门经理', '', '', '1', '2017-06-13 14:36:04', '1', '2017-06-27 11:14:43', '0');
INSERT INTO `sys_role` VALUES ('25', '23', null, '物业-经理助理', '', '', '1', '2017-06-13 14:36:44', '1', '2017-06-13 14:39:23', '0');
INSERT INTO `sys_role` VALUES ('28', '23', null, '物业-水暖管理员', '', '', '1', '2017-06-13 14:38:34', '0', '2017-06-13 06:38:34', '0');
INSERT INTO `sys_role` VALUES ('29', '23', null, '物业-强电管理员', '', '', '1', '2017-06-13 14:39:09', '0', '2017-06-13 06:39:09', '0');
INSERT INTO `sys_role` VALUES ('30', '23', null, '设备与运行部主管', '', '', '1', '2017-06-13 14:39:53', '0', '2017-06-13 06:39:53', '0');
INSERT INTO `sys_role` VALUES ('31', '23', null, '物业-电梯管理员', '', '', '1', '2017-06-13 14:40:28', '0', '2017-06-13 06:40:28', '0');
INSERT INTO `sys_role` VALUES ('32', '23', null, '工程与维修部主管', '', '', '1', '2017-06-13 14:41:19', '0', '2017-06-13 06:41:19', '0');
INSERT INTO `sys_role` VALUES ('33', '23', null, '消防与监控部主管', '', '', '1', '2017-06-13 14:41:53', '0', '2017-06-13 06:41:53', '0');
INSERT INTO `sys_role` VALUES ('34', '23', '222', '物业-监控值班员', '', '', '1', '2017-06-13 14:42:23', '0', '2017-06-13 06:42:23', '0');
INSERT INTO `sys_role` VALUES ('41', '18', '444', '刘志强', '', '', null, '2017-08-21 06:45:03', '0', '2017-08-21 06:45:03', '1');
INSERT INTO `sys_role` VALUES ('42', '18', '2012', '楼宇管理员', '', '', null, '2017-08-22 02:46:22', '0', '2017-08-22 02:46:22', '0');
INSERT INTO `sys_role` VALUES ('43', '18', '33', '上朝2', '', '', null, '2017-08-23 03:01:24', '0', '2017-08-23 03:01:24', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(11) NOT NULL COMMENT '角色id',
  `menu_id` bigint(11) NOT NULL COMMENT '菜单id',
  `create_by` bigint(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` bigint(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id_index` (`menu_id`) USING BTREE,
  KEY `role_id_index` (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10630 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('8368', '18', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8369', '18', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8370', '18', '136', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8371', '18', '137', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8372', '18', '154', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8373', '18', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8374', '18', '104', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8375', '18', '105', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8376', '18', '106', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8377', '18', '107', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8378', '18', '108', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8379', '18', '109', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8380', '18', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8381', '18', '110', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8382', '18', '111', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8383', '18', '112', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8384', '18', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8385', '18', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8386', '18', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8387', '18', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8388', '18', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8389', '18', '57', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8390', '18', '58', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8391', '18', '86', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8392', '18', '87', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8393', '18', '94', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8394', '18', '88', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8395', '18', '90', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8396', '18', '91', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8397', '18', '92', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8398', '18', '93', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8399', '18', '59', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8400', '18', '74', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8401', '18', '75', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8402', '18', '118', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8403', '18', '119', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8404', '18', '76', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8405', '18', '77', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8406', '18', '78', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8407', '18', '120', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8408', '18', '121', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8409', '18', '132', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8410', '18', '179', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8411', '18', '79', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8412', '18', '81', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8413', '18', '82', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8414', '18', '95', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8415', '18', '99', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8416', '18', '100', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8417', '18', '101', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8418', '18', '96', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8419', '18', '97', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8420', '18', '102', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8421', '18', '98', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8422', '18', '83', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8423', '18', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8424', '18', '128', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8425', '18', '129', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8426', '18', '130', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8427', '18', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8428', '18', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8429', '18', '134', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8430', '18', '135', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8431', '18', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8432', '18', '122', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8433', '18', '123', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8434', '18', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8435', '18', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8436', '18', '124', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8437', '18', '125', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8438', '18', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8439', '18', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8440', '18', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8441', '18', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8442', '18', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8443', '18', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8444', '17', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8445', '17', '65', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8446', '17', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8447', '17', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8448', '17', '72', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8449', '17', '80', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8450', '17', '84', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8451', '17', '103', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8452', '17', '181', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8453', '17', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8454', '17', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8455', '17', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8456', '17', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8457', '17', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8458', '17', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8459', '17', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8460', '17', '57', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8461', '17', '58', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8462', '17', '86', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8463', '17', '87', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8464', '17', '88', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8465', '17', '90', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8466', '17', '74', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8467', '17', '75', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8468', '17', '76', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8469', '17', '77', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8470', '17', '78', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8471', '17', '79', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8472', '17', '81', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8473', '17', '82', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8474', '17', '95', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8475', '17', '96', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8476', '17', '97', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8477', '17', '98', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8478', '17', '83', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8479', '17', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8480', '17', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8481', '17', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8482', '17', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8483', '17', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8484', '17', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8485', '17', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8486', '17', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8487', '17', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8488', '17', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8489', '17', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8490', '17', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8491', '16', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8492', '16', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8493', '16', '136', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8494', '16', '137', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8495', '16', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8496', '16', '104', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8497', '16', '106', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8498', '16', '107', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8499', '16', '108', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8500', '16', '109', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8501', '16', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8502', '16', '110', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8503', '16', '111', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8504', '16', '112', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8505', '16', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8506', '16', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8507', '16', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8508', '16', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8509', '16', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8510', '16', '57', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8511', '16', '58', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8512', '16', '86', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8513', '16', '87', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8514', '16', '94', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8515', '16', '88', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8516', '16', '90', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8517', '16', '91', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8518', '16', '92', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8519', '16', '93', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8520', '16', '59', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8521', '16', '74', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8522', '16', '75', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8523', '16', '118', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8524', '16', '119', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8525', '16', '76', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8526', '16', '77', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8527', '16', '78', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8528', '16', '120', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8529', '16', '121', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8530', '16', '132', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8531', '16', '179', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8532', '16', '79', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8533', '16', '81', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8534', '16', '82', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8535', '16', '95', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8536', '16', '99', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8537', '16', '100', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8538', '16', '101', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8539', '16', '96', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8540', '16', '97', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8541', '16', '102', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8542', '16', '98', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8543', '16', '83', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8544', '16', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8545', '16', '128', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8546', '16', '129', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8547', '16', '130', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8548', '16', '61', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8549', '16', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8550', '16', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8551', '16', '134', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8552', '16', '135', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8553', '16', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8554', '16', '122', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8555', '16', '123', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8556', '16', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8557', '16', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8558', '16', '124', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8559', '16', '125', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8560', '16', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8561', '16', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8562', '16', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8563', '16', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8564', '16', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8565', '16', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8566', '14', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8567', '14', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8568', '14', '136', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8569', '14', '137', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8570', '14', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8571', '14', '104', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8572', '14', '105', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8573', '14', '106', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8574', '14', '107', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8575', '14', '108', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8576', '14', '109', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8577', '14', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8578', '14', '110', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8579', '14', '111', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8580', '14', '112', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8581', '14', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8582', '14', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8583', '14', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8584', '14', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8585', '14', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8586', '14', '57', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8587', '14', '58', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8588', '14', '86', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8589', '14', '87', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8590', '14', '88', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8591', '14', '90', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8592', '14', '59', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8593', '14', '74', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8594', '14', '75', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8595', '14', '118', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8596', '14', '119', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8597', '14', '76', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8598', '14', '77', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8599', '14', '78', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8600', '14', '120', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8601', '14', '121', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8602', '14', '132', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8603', '14', '179', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8604', '14', '79', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8605', '14', '81', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8606', '14', '82', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8607', '14', '95', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8608', '14', '96', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8609', '14', '97', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8610', '14', '98', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8611', '14', '83', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8612', '14', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8613', '14', '128', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8614', '14', '129', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8615', '14', '130', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8616', '14', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8617', '14', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8618', '14', '134', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8619', '14', '135', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8620', '14', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8621', '14', '122', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8622', '14', '123', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8623', '14', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8624', '14', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8625', '14', '124', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8626', '14', '125', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8627', '14', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8628', '14', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8629', '14', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8630', '14', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8631', '14', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8632', '14', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8633', '13', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8634', '13', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8635', '13', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8636', '13', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8637', '13', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8638', '13', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8639', '13', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8640', '13', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8641', '13', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8642', '13', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8643', '13', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8644', '13', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8645', '13', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8646', '13', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8647', '13', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8648', '13', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8649', '13', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8816', '20', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8817', '20', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8818', '20', '158', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8819', '20', '174', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8820', '20', '175', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8821', '20', '176', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8822', '20', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8823', '20', '177', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8824', '20', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8825', '20', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8826', '20', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8827', '20', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8828', '20', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8829', '20', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8830', '20', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8831', '20', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8832', '20', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8833', '20', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8834', '20', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8835', '20', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8836', '20', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8837', '20', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8838', '20', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8839', '20', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8840', '20', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8841', '20', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8842', '20', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8843', '20', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8921', '19', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8922', '19', '48', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8923', '19', '65', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8924', '19', '165', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8925', '19', '166', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8926', '19', '169', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8927', '19', '170', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8928', '19', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8929', '19', '158', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8930', '19', '174', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8931', '19', '175', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8932', '19', '176', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8933', '19', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8934', '19', '177', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8935', '19', '72', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8936', '19', '178', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8937', '19', '80', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8938', '19', '131', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8939', '19', '157', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8940', '19', '171', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8941', '19', '172', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8942', '19', '173', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8943', '19', '84', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8944', '19', '163', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8945', '19', '164', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8946', '19', '167', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8947', '19', '168', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8948', '19', '103', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8949', '19', '180', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8950', '19', '181', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8951', '19', '182', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8952', '19', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8953', '19', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8954', '19', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8955', '19', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8956', '19', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8957', '19', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8958', '19', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8959', '19', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8960', '19', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8961', '19', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8962', '19', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8963', '19', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8964', '19', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8965', '19', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8966', '19', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8967', '19', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8968', '19', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8969', '1', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8970', '1', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8971', '1', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8972', '1', '110', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8973', '1', '111', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8974', '1', '112', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8975', '1', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8976', '1', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8977', '1', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8978', '1', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8979', '1', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8980', '1', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8981', '1', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8982', '1', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8983', '1', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8984', '1', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8985', '22', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8986', '22', '65', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8987', '22', '165', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8988', '22', '169', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8989', '22', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8990', '22', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8991', '22', '72', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8992', '22', '80', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8993', '22', '157', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8994', '22', '172', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8995', '22', '84', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8996', '22', '163', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8997', '22', '167', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8998', '22', '103', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('8999', '22', '181', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9000', '22', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9001', '22', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9002', '22', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9003', '22', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9004', '22', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9005', '22', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9006', '22', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9007', '22', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9008', '22', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9009', '22', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9010', '22', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9011', '22', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9012', '22', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9013', '22', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9014', '22', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9015', '22', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9016', '22', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9035', '28', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9036', '28', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9037', '28', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9038', '28', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9039', '29', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9040', '29', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9041', '29', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9042', '29', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9043', '25', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9044', '25', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9045', '25', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9046', '25', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9047', '30', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9048', '30', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9049', '30', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9050', '30', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9051', '31', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9052', '31', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9053', '31', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9054', '31', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9055', '32', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9056', '32', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9057', '32', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9058', '32', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9059', '33', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9060', '33', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9061', '33', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9062', '33', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9195', '24', '183', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9196', '24', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9197', '24', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9198', '24', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9199', '24', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9203', '41', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9204', '41', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9205', '41', '1', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9206', '41', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9207', '41', '61', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9208', '34', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9209', '34', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9210', '34', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9211', '34', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9212', '42', '186', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9213', '42', '187', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9214', '42', '188', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9215', '42', '189', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9216', '42', '190', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9217', '42', '191', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9218', '43', '1', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9219', '43', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9220', '43', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9221', '43', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9222', '43', '136', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('9223', '43', '137', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10114', '21', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10115', '21', '65', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10116', '21', '165', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10117', '21', '166', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10118', '21', '169', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10119', '21', '170', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10120', '21', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10121', '21', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10122', '21', '72', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10123', '21', '178', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10124', '21', '80', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10125', '21', '131', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10126', '21', '157', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10127', '21', '171', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10128', '21', '172', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10129', '21', '173', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10130', '21', '84', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10131', '21', '163', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10132', '21', '164', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10133', '21', '167', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10134', '21', '168', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10135', '21', '103', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10136', '21', '180', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10137', '21', '181', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10138', '21', '182', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10139', '21', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10140', '21', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10141', '21', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10142', '21', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10143', '21', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10144', '21', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10145', '21', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10146', '21', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10147', '21', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10148', '21', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10149', '21', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10150', '21', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10151', '21', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10152', '21', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10153', '21', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10154', '21', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10155', '21', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10156', '21', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10157', '21', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10158', '21', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10159', '21', '210', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10160', '21', '307', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10161', '21', '308', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10162', '21', '211', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10163', '21', '214', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10164', '21', '313', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10165', '21', '314', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10166', '21', '315', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10167', '21', '316', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10168', '21', '317', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10169', '21', '215', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10170', '21', '216', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10171', '21', '217', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10172', '21', '218', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10173', '21', '239', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10174', '21', '321', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10175', '21', '327', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10176', '21', '240', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10177', '21', '322', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10178', '21', '325', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10179', '21', '241', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10180', '21', '323', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10181', '21', '326', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10182', '21', '242', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10183', '21', '324', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10184', '21', '328', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10185', '21', '209', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10186', '21', '213', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10187', '21', '235', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10408', '15', '1', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10409', '15', '17', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10410', '15', '19', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10411', '15', '20', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10412', '15', '21', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10413', '15', '22', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10414', '15', '23', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10415', '15', '24', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10416', '15', '25', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10417', '15', '26', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10418', '15', '27', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10419', '15', '28', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10420', '15', '29', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10421', '15', '30', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10422', '15', '31', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10423', '15', '32', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10424', '15', '33', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10425', '15', '34', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10426', '15', '35', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10427', '15', '36', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10428', '15', '47', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10429', '15', '48', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10430', '15', '65', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10431', '15', '165', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10432', '15', '166', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10433', '15', '169', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10434', '15', '170', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10435', '15', '70', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10436', '15', '158', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10437', '15', '174', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10438', '15', '175', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10439', '15', '176', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10440', '15', '71', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10441', '15', '177', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10442', '15', '72', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10443', '15', '178', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10444', '15', '80', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10445', '15', '131', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10446', '15', '157', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10447', '15', '171', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10448', '15', '172', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10449', '15', '173', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10450', '15', '84', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10451', '15', '163', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10452', '15', '164', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10453', '15', '167', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10454', '15', '168', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10455', '15', '103', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10456', '15', '180', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10457', '15', '181', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10458', '15', '182', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10459', '15', '50', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10460', '15', '51', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10461', '15', '136', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10462', '15', '137', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10463', '15', '154', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10464', '15', '52', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10465', '15', '104', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10466', '15', '105', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10467', '15', '106', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10468', '15', '107', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10469', '15', '108', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10470', '15', '109', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10471', '15', '183', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10472', '15', '53', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10473', '15', '110', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10474', '15', '111', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10475', '15', '112', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10476', '15', '54', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10477', '15', '73', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10478', '15', '126', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10479', '15', '127', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10480', '15', '56', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10481', '15', '57', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10482', '15', '58', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10483', '15', '86', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10484', '15', '87', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10485', '15', '94', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10486', '15', '88', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10487', '15', '90', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10488', '15', '91', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10489', '15', '92', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10490', '15', '93', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10491', '15', '59', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10492', '15', '74', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10493', '15', '75', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10494', '15', '118', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10495', '15', '119', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10496', '15', '76', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10497', '15', '77', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10498', '15', '78', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10499', '15', '120', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10500', '15', '121', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10501', '15', '132', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10502', '15', '179', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10503', '15', '79', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10504', '15', '81', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10505', '15', '82', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10506', '15', '95', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10507', '15', '99', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10508', '15', '100', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10509', '15', '101', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10510', '15', '96', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10511', '15', '97', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10512', '15', '102', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10513', '15', '98', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10514', '15', '83', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10515', '15', '89', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10516', '15', '128', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10517', '15', '129', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10518', '15', '130', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10519', '15', '66', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10520', '15', '67', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10521', '15', '134', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10522', '15', '135', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10523', '15', '68', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10524', '15', '122', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10525', '15', '123', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10526', '15', '156', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10527', '15', '69', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10528', '15', '124', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10529', '15', '125', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10530', '15', '162', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10531', '15', '113', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10532', '15', '114', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10533', '15', '115', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10534', '15', '116', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10535', '15', '117', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10536', '15', '205', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10537', '15', '206', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10538', '15', '207', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10539', '15', '208', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10540', '15', '209', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10541', '15', '210', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10542', '15', '211', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10543', '15', '212', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10544', '15', '213', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10545', '15', '214', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10546', '15', '215', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10547', '15', '216', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10548', '15', '217', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10549', '15', '218', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10550', '15', '219', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10551', '15', '220', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10552', '15', '221', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10553', '15', '227', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10554', '15', '228', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10555', '15', '229', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10556', '15', '222', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10557', '15', '225', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10558', '15', '226', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10559', '15', '230', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10560', '15', '231', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10561', '15', '232', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10562', '15', '233', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10563', '15', '234', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10564', '15', '235', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10565', '15', '236', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10566', '15', '239', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10567', '15', '240', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10568', '15', '241', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10569', '15', '242', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10570', '15', '243', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10571', '15', '237', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10572', '15', '238', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10573', '15', '244', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10574', '15', '245', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10575', '15', '246', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10576', '15', '248', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10577', '15', '247', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10578', '15', '249', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10579', '15', '251', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10580', '15', '252', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10581', '15', '253', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10582', '15', '254', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10583', '15', '255', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10584', '15', '256', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10585', '15', '263', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10586', '15', '269', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10587', '15', '257', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10588', '15', '258', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10589', '15', '259', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10590', '15', '260', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10591', '15', '261', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10592', '15', '262', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10593', '15', '264', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10594', '15', '265', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10595', '15', '266', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10596', '15', '267', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10597', '15', '268', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10598', '15', '270', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10599', '15', '271', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10600', '15', '313', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10601', '15', '250', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10602', '15', '326', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10603', '15', '323', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10604', '15', '321', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10605', '15', '327', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10606', '15', '322', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10607', '15', '325', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10608', '15', '324', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10609', '15', '328', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10610', '15', '302', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10611', '15', '303', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10612', '15', '345', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10613', '15', '346', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10614', '15', '274', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10615', '15', '277', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10616', '15', '307', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10617', '15', '308', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10618', '15', '314', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10619', '15', '315', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10620', '15', '316', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10621', '15', '317', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10622', '15', '347', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10623', '15', '331', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10624', '15', '332', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10625', '15', '339', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10626', '15', '340', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10627', '15', '343', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10628', '15', '333', null, null, null, null, null);
INSERT INTO `sys_role_menu` VALUES ('10629', '15', '334', null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) NOT NULL DEFAULT '' COMMENT '员工名',
  `pass_word` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `job_num` varchar(20) NOT NULL DEFAULT '' COMMENT '工号',
  `name` varchar(20) DEFAULT '' COMMENT '真实姓名',
  `email` varchar(20) DEFAULT '' COMMENT '邮箱',
  `phone` varchar(20) DEFAULT '' COMMENT '电话',
  `user_telephone` varchar(20) DEFAULT '' COMMENT '电话',
  `user_type` tinyint(2) DEFAULT '0' COMMENT '用户类型',
  `login_ip` varchar(20) DEFAULT '' COMMENT '登录ip',
  `login_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_flag` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否可登录 1可登录 2不可登录',
  `remark` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` tinyint(2) DEFAULT '0' COMMENT '删除标记  1`删除 0 正常',
  `logon_failure` int(11) DEFAULT '0' COMMENT '登录失败次数',
  `is_login` varchar(1) DEFAULT NULL COMMENT 'app登录状态判定，0是登出，1是登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('30', '高俊宇', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240801', '', '', '15254205242', '', '0', '', '2017-04-14 05:31:16', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('32', '逄慧', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '109', '', '', '13685327088', '', '0', '', '2017-04-14 06:24:32', '2', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('33', '王喆', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '108', '', '', '18611185924\r\n', '', '0', '', '2017-04-14 06:25:06', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('34', '董事长', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '001', '', '', '', '', '0', '', '2017-04-14 06:25:31', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('35', '殷国强', 'A3D6E81FAD4B7FB34EEBB254DD9872FE', '110', '', '', '13386390596\r\n', '', '0', '', '2017-04-14 06:26:05', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('36', '郑付坤', 'FB55E60ACCFF6D35308239A90CB3E434', '073', '', '', '15066286368\r\n', '', '0', '', '2017-04-14 06:26:48', '1', '', '0', '1', null);
INSERT INTO `sys_user` VALUES ('37', '李沛琦', 'BDA015549ECFE7B51BD15BF94524F1E4', '010', '', '', '18561972977\r\n', '', '0', '', '2017-04-14 06:27:48', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('38', '周爽', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '074', '', '', '13026535907\r\n', '', '0', '', '2017-04-14 06:28:05', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('39', '李芸芸', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '072', '', '', '18669779139\r\n', '', '0', '', '2017-04-14 06:29:07', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('40', '韩俊', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '043', '', '', '15610078222\r\n', '', '0', '', '2017-04-14 06:29:27', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('41', '王悦', '1A87F3E762E1B7AE5C38A83F4EC4C628', '100', '', '', '18561627465\r\n', '', '0', '', '2017-04-14 06:30:05', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('42', '孙晓凤', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '047', '', '', '15969874362\r\n', '', '0', '', '2017-04-14 06:30:37', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('43', '魏星', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '079', '', '', '15146293638\r\n', '', '0', '', '2017-04-14 06:30:57', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('44', '徐婷婷', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '097', '', '', '18561530228\r\n', '', '0', '', '2017-04-14 06:31:36', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('45', '潘丽红', 'DAF751B6A496B97B20E346227962D5AE', '111', '', '', '15063946849', '', '0', '', '2017-05-15 19:05:51', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('46', '梁应提', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240802', '', '', '', '', '0', '', '2017-06-13 10:59:47', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('47', '纪家岳', '13B6862EBA0ACD7B13D84393746072E8', '240803', '', '', '111122233222', '123451', '0', '', '2017-06-13 11:31:10', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('48', '衣春伟', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '023', '', '', '13361218680', '', '0', '', '2017-06-13 06:47:03', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('49', '薛凯丽', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '024', '', '', '18561761713', '', '0', '', '2017-06-13 06:47:29', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('50', '王旭涛', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '037', '', '', '13061295958', '', '0', '', '2017-06-13 06:47:57', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('51', '徐德存', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '045', '', '', '15194253946', '', '0', '', '2017-06-13 06:48:30', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('52', '闵利强', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '058', '', '', '15554265897', '', '0', '', '2017-06-13 06:48:59', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('53', '杨风珑', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '046', '', '', '15866856798', '', '0', '', '2017-06-13 06:49:33', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('54', '宋强', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '018', '', '', '13864866990', '', '0', '', '2017-06-13 06:50:03', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('55', '郭斌', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '039', '', '', '15725239784', '', '0', '', '2017-06-13 06:50:37', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('56', '赵学东', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '062', '', '', '13695324076', '', '0', '', '2017-06-13 06:51:55', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('57', '彭超', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '011', '', '', '15615626515', '', '0', '', '2017-06-13 06:52:43', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('58', '蒋晓旭', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '007', '', '', '18561939993', '', '0', '', '2017-06-13 06:54:00', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('59', '李学茂', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '028', '', '', '13335076933', '', '0', '', '2017-06-13 06:58:03', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('60', '唐洪功', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '034', '', '', '15964982829', '', '0', '', '2017-06-13 07:03:16', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('61', '闫晓迪', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240804', '', '', '', '', '0', '', '2017-06-13 08:13:50', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('62', 'lzq', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240806', '', '', '18562551866', '', '0', '', '2017-06-13 11:03:33', '1', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('63', 'liuzhen', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240805', '', '', '13213131313', '226655556', '0', '', '2017-06-15 07:04:29', '2', '', '0', '0', null);
INSERT INTO `sys_user` VALUES ('66', 'zhouwei', 'EBEBAC9BE2CE02A03393DF17E6B4B959', '240808', '', '', '', '', '0', '', '2017-07-25 13:04:28', '2', '', '0', '0', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '30');
INSERT INTO `user` VALUES ('2', '李四', '35');
INSERT INTO `user` VALUES ('3', '王五', '40');
INSERT INTO `user` VALUES ('4', '刘二', '38');
INSERT INTO `user` VALUES ('23', '刘志强', '123456');
INSERT INTO `user` VALUES ('24', '刘志强', '123456');
INSERT INTO `user` VALUES ('25', '刘志强', '123456');
INSERT INTO `user` VALUES ('26', '刘志强', '123456');
INSERT INTO `user` VALUES ('27', '刘志强', '123456');
INSERT INTO `user` VALUES ('28', '刘志强', '123456');
INSERT INTO `user` VALUES ('29', '刘志强', '123456');
INSERT INTO `user` VALUES ('30', '刘志强', '123456');
INSERT INTO `user` VALUES ('31', '刘志强', '123456');
INSERT INTO `user` VALUES ('32', '刘志强', '123456');
INSERT INTO `user` VALUES ('33', '刘志强', '123456');
INSERT INTO `user` VALUES ('34', '刘志强', '123456');
INSERT INTO `user` VALUES ('35', '刘志强', '123456');
INSERT INTO `user` VALUES ('36', '刘志强', '123456');
INSERT INTO `user` VALUES ('37', '刘志强', '123456');
INSERT INTO `user` VALUES ('38', '刘志强', '123456');
INSERT INTO `user` VALUES ('39', '刘志强', '123456');
INSERT INTO `user` VALUES ('40', '刘志强', '123456');
INSERT INTO `user` VALUES ('41', '刘志强', '123456');
