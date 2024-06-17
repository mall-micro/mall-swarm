/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : localhost:3306
 Source Schema         : bizzan

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 30/06/2023 00:58:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accept_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount_scale` int(11) NOT NULL,
  `banner_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `contenten` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detailen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `freeze_amount` decimal(26, 8) NULL,
  `hold_limit` decimal(24, 8) NULL,
  `hold_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `levelone_count` int(11) NOT NULL,
  `limit_times` int(11) NOT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_fee` decimal(24, 8) NULL,
  `locked_period` int(11) NOT NULL,
  `locked_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_limit_amout` decimal(24, 8) NULL,
  `min_limit_amout` decimal(24, 8) NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(24, 8) NULL,
  `mining_invite` decimal(24, 8) NULL,
  `mining_invitelimit` decimal(24, 8) NULL,
  `mining_period` int(11) NOT NULL,
  `mining_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(18, 8) NULL,
  `price_scale` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `release_amount` decimal(24, 8) NULL,
  `release_percent` decimal(24, 8) NULL,
  `release_times` decimal(24, 8) NULL,
  `release_type` int(11) NOT NULL,
  `settings` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `small_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '开始时间',
  `status` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titleen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_supply` decimal(24, 8) NOT NULL,
  `traded_amount` decimal(24, 8) NULL,
  `type` int(11) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, 'USDT', '', 2, 'https://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/05/09/b5590f92-7b0e-42db-90a7-410e0890cf6d.jpg', '<p><br></p>', '', '2023-05-09 13:47:49', '111', NULL, '2029-10-31 00:00:00', 0.00000000, 0.00000000, '', 0, 0, 0, 0.00000000, 0, '', 0.00000000, 0.00000000, 0, NULL, 0.00000000, 0.00000000, 0, '', '', 500.00000000, 2, 0, 0.00000000, 0.00000000, 0.00000000, 0, '', 'https://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/05/09/bd78d341-46df-4850-92e0-0d2d1ea6c1cc.jpg', '2023-05-09 00:00:00', 1, 1, '111', NULL, 0.00000000, 0.00000000, 1, '');
INSERT INTO `activity` VALUES (2, 'USDT', '', 2, 'https://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/05/09/cf62a81f-6784-492e-9af0-9ae5d38aafda.jpg', '<p><br></p>', '', '2023-05-09 13:51:18', '', NULL, '2029-10-31 00:00:00', 0.00000000, 0.00000000, '', 0, 0, 0, 0.00000000, 0, '', 0.00000000, 0.00000000, 0, NULL, 0.00000000, 0.00000000, 0, '', '', 1000.00000000, 2, 0, 0.00000000, 0.00000000, 0.00000000, 0, '', 'https://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/05/09/4b3f2bd3-4535-4e2c-b968-2b5bb5333a78.png', '2023-05-09 00:00:00', 1, 1, '', NULL, 0.00000000, 0.00000000, 1, '');
INSERT INTO `activity` VALUES (3, '', '', 2, NULL, '<p><br></p>', '', '2023-05-29 10:22:23', '', NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 0.00000000, 0.00000000, '', 0, 0, 0, 0.00000000, 0, '', 0.00000000, 0.00000000, 0, NULL, 0.00000000, 0.00000000, 0, '', '', NULL, 2, 0, 0.00000000, 0.00000000, 0.00000000, 0, '', NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 1, 1, '', NULL, 0.00000000, 0.00000000, 1, '');

-- ----------------------------
-- Table structure for activity_order
-- ----------------------------
DROP TABLE IF EXISTS `activity_order`;
CREATE TABLE `activity_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NULL DEFAULT NULL,
  `amount` decimal(24, 8) NULL,
  `base_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `freeze_amount` decimal(24, 8) NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `price` decimal(24, 8) NULL,
  `state` int(11) NOT NULL,
  `turnover` decimal(26, 16) NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_order
-- ----------------------------

-- ----------------------------
-- Table structure for addressext
-- ----------------------------
DROP TABLE IF EXISTS `addressext`;
CREATE TABLE `addressext`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_protocol` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addressext
-- ----------------------------

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` int(11) NULL DEFAULT NULL,
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` datetime(0) NULL DEFAULT NULL,
  `mobile_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKibjnyhe6m46qfkc6vgbir1ucq`(`department_id`) USING BTREE,
  CONSTRAINT `FKnmmt6f2kg0oaxr11uhy7qqf3w` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '', 'root', 0, NULL, '2023-06-30 00:52:09', '13800138001', '985eb5b028065701341a478a9215e7b2', '390330302', 'Admin', 1, 0, 'root', 1);
INSERT INTO `admin` VALUES (2, '', '390330302@qq.com', 0, NULL, '2023-06-28 21:40:58', '13800138001', '985eb5b028065701341a478a9215e7b2', '390330302', '测试', 64, 0, 'test', 3);

-- ----------------------------
-- Table structure for admin_access_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_access_log`;
CREATE TABLE `admin_access_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` datetime(0) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `module` int(11) NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员访问日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_access_log
-- ----------------------------

-- ----------------------------
-- Table structure for admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE `admin_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permission`;
CREATE TABLE `admin_role_permission`  (
  `role_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  UNIQUE INDEX `UKplesprlvm1sob8nl9yc5rgh3m`(`role_id`, `rule_id`) USING BTREE,
  INDEX `FK52rddd3qje4p49iubt08gplb5`(`role_id`) USING BTREE,
  INDEX `FKqf3fhgl5mjqqb0jeupx7yafh0`(`rule_id`) USING BTREE,
  CONSTRAINT `FK52rddd3qje4p49iubt08gplb5` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqf3fhgl5mjqqb0jeupx7yafh0` FOREIGN KEY (`rule_id`) REFERENCES `admin_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for advertise
-- ----------------------------
DROP TABLE IF EXISTS `advertise`;
CREATE TABLE `advertise`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_type` int(11) NOT NULL,
  `auto` int(11) NULL DEFAULT NULL,
  `autoword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deal_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '交易中数量',
  `level` int(11) NULL DEFAULT NULL,
  `limit_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_limit` decimal(18, 2) NULL DEFAULT NULL COMMENT '最高单笔交易额',
  `min_limit` decimal(18, 2) NULL DEFAULT NULL COMMENT '最低单笔交易额',
  `number` decimal(18, 8) NULL DEFAULT NULL COMMENT '计划数量',
  `pay_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `premise_rate` decimal(18, 6) NULL DEFAULT NULL COMMENT '溢价百分比',
  `price` decimal(18, 2) NULL DEFAULT NULL COMMENT '交易价格',
  `price_type` int(11) NOT NULL,
  `remain_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '计划剩余数量',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `audit_status` int(2) NULL DEFAULT 0 COMMENT '审核状态0待审核1审核通过2不通过',
  `audit_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核不通过备注',
  `time_limit` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` bigint(20) NULL DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK75rse9iecdnimf8ugtf20c43l`(`coin_id`) USING BTREE,
  INDEX `FK9lueh92242ckyajg17xr9tcie`(`country`) USING BTREE,
  INDEX `FKspoip5yq9ednwwondsga9c9k6`(`member_id`) USING BTREE,
  CONSTRAINT `FK75rse9iecdnimf8ugtf20c43l` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK9lueh92242ckyajg17xr9tcie` FOREIGN KEY (`country`) REFERENCES `country` (`zh_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKspoip5yq9ednwwondsga9c9k6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for agent_reward_record
-- ----------------------------
DROP TABLE IF EXISTS `agent_reward_record`;
CREATE TABLE `agent_reward_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` bigint(20) NULL DEFAULT NULL,
  `from_member_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `num` decimal(19, 2) NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent_reward_record
-- ----------------------------

-- ----------------------------
-- Table structure for agent_wallet
-- ----------------------------
DROP TABLE IF EXISTS `agent_wallet`;
CREATE TABLE `agent_wallet`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(19, 2) NULL DEFAULT NULL,
  `coin_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `update_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKpiq4apk620t528il3lunsed81`(`member_id`, `coin_unit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent_wallet
-- ----------------------------

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_show` bit(1) NULL DEFAULT NULL,
  `is_top` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `announcement_classification` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for app_revision
-- ----------------------------
DROP TABLE IF EXISTS `app_revision`;
CREATE TABLE `app_revision`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` int(11) NULL DEFAULT NULL,
  `publish_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'APP版本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for appeal
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `associate_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deal_with_time` datetime(0) NULL DEFAULT NULL,
  `initiator_id` bigint(20) NULL DEFAULT NULL,
  `is_success` int(11) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_todwxorutclquf69bwow70kml`(`order_id`) USING BTREE,
  INDEX `FKanmcnj859x2tv3y0pv7u05cqa`(`admin_id`) USING BTREE,
  CONSTRAINT `FKanmcnj859x2tv3y0pv7u05cqa` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs3vo8h01sq39icylq1qdwekn1` FOREIGN KEY (`order_id`) REFERENCES `otc_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC投诉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for approve
-- ----------------------------
DROP TABLE IF EXISTS `approve`;
CREATE TABLE `approve`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CoinId` int(11) NOT NULL COMMENT '币种',
  `Address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送地址',
  `ApproveAddress` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接收地址',
  `ApproveHash` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '归集哈希',
  `Status` int(11) NOT NULL COMMENT ' 0 手续费未到账 1 手续费已到账 2   已归集',
  `TransferHash` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手续费哈希',
  `TransfeFee` decimal(18, 6) NOT NULL COMMENT '手续费',
  `AddTime` bigint(20) NOT NULL COMMENT '归集时间',
  `Money` decimal(18, 6) NOT NULL COMMENT '归集金额',
  `Protocol` int(11) NOT NULL COMMENT '归集协议',
  `CoinName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种名称',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `dfgdfgd`(`CoinName`) USING BTREE,
  CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`CoinName`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approve
-- ----------------------------

-- ----------------------------
-- Table structure for automainconfig
-- ----------------------------
DROP TABLE IF EXISTS `automainconfig`;
CREATE TABLE `automainconfig`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CoinId` int(11) NOT NULL COMMENT '币种',
  `CoinName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种',
  `MinNum` decimal(18, 4) NULL DEFAULT NULL COMMENT '最低归集数量',
  `Protocol` int(11) NOT NULL COMMENT '币种协议',
  `Address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归集地址（前端需要加密）',
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `uk_cname_p`(`CoinName`, `Protocol`) USING BTREE,
  CONSTRAINT `automainconfig_ibfk_1` FOREIGN KEY (`CoinName`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for backupaddress
-- ----------------------------
DROP TABLE IF EXISTS `backupaddress`;
CREATE TABLE `backupaddress`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户地址加密',
  `privateKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AddTime` bigint(20) NOT NULL,
  `Protocol` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backupaddress
-- ----------------------------

-- ----------------------------
-- Table structure for business_auth_apply
-- ----------------------------
DROP TABLE IF EXISTS `business_auth_apply`;
CREATE TABLE `business_auth_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `auditing_time` datetime(0) NULL DEFAULT NULL,
  `auth_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `certified_business_status` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deposit_record_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `business_auth_deposit_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKds72omottejlk5isd34ha5i10`(`business_auth_deposit_id`) USING BTREE,
  INDEX `FKdghp8ri44t77ntuw06gicphuu`(`member_id`) USING BTREE,
  CONSTRAINT `FKdghp8ri44t77ntuw06gicphuu` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKds72omottejlk5isd34ha5i10` FOREIGN KEY (`business_auth_deposit_id`) REFERENCES `business_auth_deposit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC商家申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business_auth_apply
-- ----------------------------
INSERT INTO `business_auth_apply` VALUES (4, 15000.00, NULL, '{\"telno\":\"13800138001\",\"wechat\":\"13800138001\",\"qq\":\"13800138001\",\"coinSymbol\":\"USDT\",\"amount\":15000,\"assetData\":\"http://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/04/21/d2d97973-6aed-42ad-8747-938911677b4c.jpeg\",\"tradeData\":\"http://bizzancom.oss-cn-hongkong.aliyuncs.com/2023/04/21/c769884e-d87d-4ad1-ac41-f110e1778ec3.jpeg\"}', 2, '2023-04-21 21:00:46', 'd9512ec5-632f-4b6d-8d6f-43a38cc45ac0', NULL, NULL, 16, 600800);

-- ----------------------------
-- Table structure for business_auth_deposit
-- ----------------------------
DROP TABLE IF EXISTS `business_auth_deposit`;
CREATE TABLE `business_auth_deposit`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '保证金数额',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKfj3hxtr3ae1yma9bxeuqc29pj`(`admin_id`) USING BTREE,
  INDEX `FKjx7799a3pwdtnu43fkpn27kj6`(`coin_id`) USING BTREE,
  CONSTRAINT `FKfj3hxtr3ae1yma9bxeuqc29pj` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjx7799a3pwdtnu43fkpn27kj6` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC商家质押币种' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bussiness_cancel_apply
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_cancel_apply`;
CREATE TABLE `bussiness_cancel_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancel_apply_time` datetime(0) NULL DEFAULT NULL,
  `deposit_record_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `handle_time` datetime(0) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbwtwtm0jd1eqa8dh7e8ychcx1`(`member_id`) USING BTREE,
  CONSTRAINT `FKbwtwtm0jd1eqa8dh7e8ychcx1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC商家退出' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coin
-- ----------------------------
DROP TABLE IF EXISTS `coin`;
CREATE TABLE `coin`  (
  `id` bigint(255) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `can_auto_withdraw` int(11) NULL DEFAULT NULL,
  `can_recharge` int(11) NULL DEFAULT NULL,
  `can_transfer` int(11) NULL DEFAULT NULL,
  `can_withdraw` int(11) NULL DEFAULT NULL,
  `cny_rate` double NOT NULL,
  `enable_rpc` int(11) NULL DEFAULT NULL,
  `is_platform_coin` int(11) NULL DEFAULT NULL,
  `max_tx_fee` double NOT NULL,
  `max_withdraw_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '最大提币数量',
  `min_tx_fee` double NOT NULL,
  `min_withdraw_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '最小提币数量',
  `name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usd_rate` double NOT NULL,
  `withdraw_threshold` decimal(18, 8) NULL DEFAULT NULL COMMENT '提现阈值',
  `has_legal` bit(1) NOT NULL DEFAULT b'0',
  `cold_wallet_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `miner_fee` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿工费',
  `withdraw_scale` int(11) NULL DEFAULT 4 COMMENT '提币精度',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `infolink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_type` int(11) NULL DEFAULT 0 COMMENT '币种账户类型',
  `deposit_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `min_recharge_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '最小充值数量',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '币种' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coinext
-- ----------------------------
DROP TABLE IF EXISTS `coinext`;
CREATE TABLE `coinext`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CoinId` int(11) NOT NULL,
  `CoinName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种名称',
  `Protocol` int(11) NOT NULL,
  `ProtocolName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '协议名称',
  `MainAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提现私钥需要前端加密',
  `Ext` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '合约地址',
  `Decimals` int(11) NOT NULL COMMENT '币种精度',
  `Status` int(11) NOT NULL COMMENT '0 关闭 1 启动',
  `WithDrawFee` decimal(18, 6) NOT NULL COMMENT '提现手续费（1=100%）',
  `MinWithDrawFee` decimal(18, 6) NOT NULL COMMENT '最低提现手续费数量',
  `IsWithDraw` tinyint(1) NOT NULL COMMENT '是否开启提现',
  `IsRecharge` tinyint(1) NOT NULL COMMENT '是否开启充值',
  `IsAutoWithDraw` tinyint(1) NOT NULL COMMENT '是否开启自动提现（不建议开启）',
  `MinWithDraw` decimal(18, 6) NOT NULL COMMENT '最低提现数量',
  `MaxWithDraw` decimal(18, 6) NOT NULL COMMENT '最大提现数量',
  `MinRecharge` decimal(18, 6) NOT NULL COMMENT '最低充值',
  `Confirms` int(11) NOT NULL COMMENT '确认到账次数',
  `MemoAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户填写备注码充值的地址 如果不需要填空',
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `uk_cname_p`(`CoinName`, `Protocol`) USING BTREE COMMENT '同币种同协议只存在一条',
  CONSTRAINT `coinext_ibfk_1` FOREIGN KEY (`CoinName`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coinprotocol
-- ----------------------------
DROP TABLE IF EXISTS `coinprotocol`;
CREATE TABLE `coinprotocol`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Protocol` int(11) NOT NULL,
  `ProtocolName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '协议名称',
  `RPCServer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'RPCServer',
  `RPCUser` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'RPCUser',
  `RPCPassword` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'RPCPassword',
  `Browser` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '浏览器',
  `Symbol` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '符号',
  `ChainId` int(11) NOT NULL COMMENT 'ChainId 链Id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for convert_coin
-- ----------------------------
DROP TABLE IF EXISTS `convert_coin`;
CREATE TABLE `convert_coin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `max_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '最大兑换数量',
  `min_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '最小兑换数量',
  `coin_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种unit',
  `fee` decimal(18, 8) NULL DEFAULT NULL COMMENT '手续费',
  `sort` int(11) NOT NULL COMMENT '排序',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态0不可用 1可用',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `coin_unit`(`coin_unit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '快速兑换币种' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for convert_order
-- ----------------------------
DROP TABLE IF EXISTS `convert_order`;
CREATE TABLE `convert_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_amount` decimal(24, 8) NULL COMMENT '兑换后数量',
  `to_amount` decimal(24, 8) NULL COMMENT '兑换后数量',
  `from_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `price` decimal(24, 8) NOT NULL COMMENT '价格',
  `fee` decimal(24, 8) NULL COMMENT '手续费',
  `status` int(11) NOT NULL,
  `to_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '快速兑换订单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `zh_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名称',
  `area_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区号',
  `country_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'icon',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语言',
  `local_currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当地货币缩写',
  `sort` int(11) NOT NULL COMMENT '排序',
  `del_flag` smallint(2) NULL DEFAULT 0 COMMENT '删除表示 0未删除  1删除',
  PRIMARY KEY (`zh_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '国家信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ctc_acceptor
-- ----------------------------
DROP TABLE IF EXISTS `ctc_acceptor`;
CREATE TABLE `ctc_acceptor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `cny_in` decimal(18, 2) NULL DEFAULT NULL COMMENT '买入CNY',
  `cny_out` decimal(18, 2) NULL DEFAULT NULL COMMENT '售出CNY',
  `usdt_in` decimal(18, 2) NULL DEFAULT NULL COMMENT '买入USDT',
  `usdt_out` decimal(18, 2) NULL DEFAULT NULL COMMENT '售出USDT',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKk3nfn54patdd6rwa0skk70tq6`(`member_id`) USING BTREE,
  CONSTRAINT `FKk3nfn54patdd6rwa0skk70tq6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CTC商户（USDT）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ctc_acceptor
-- ----------------------------

-- ----------------------------
-- Table structure for ctc_order
-- ----------------------------
DROP TABLE IF EXISTS `ctc_order`;
CREATE TABLE `ctc_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qr_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_time` datetime(0) NULL DEFAULT NULL,
  `complete_time` datetime(0) NULL DEFAULT NULL,
  `confirm_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `direction` int(11) NOT NULL,
  `money` decimal(18, 2) NULL DEFAULT NULL COMMENT '交易金额',
  `order_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_time` datetime(0) NULL DEFAULT NULL,
  `price` decimal(18, 2) NULL DEFAULT NULL COMMENT '价格',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qr_we_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acceptor_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_t212u5lpa982v4yc0ue7c3eab`(`order_sn`) USING BTREE,
  INDEX `FKgk8nq4d3ouoj9eyo1kfqtw0wq`(`acceptor_id`) USING BTREE,
  INDEX `FK419ewpncecgofa3j1338d6ma6`(`member_id`) USING BTREE,
  CONSTRAINT `FK419ewpncecgofa3j1338d6ma6` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgk8nq4d3ouoj9eyo1kfqtw0wq` FOREIGN KEY (`acceptor_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CTC订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ctc_order
-- ----------------------------

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `full_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全称',
  `symbol` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '符号',
  `rate` decimal(10, 6) NULL DEFAULT NULL COMMENT '汇率',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片url',
  `sort` int(2) NULL DEFAULT 0 COMMENT '排序',
  `status` int(2) NULL DEFAULT 0 COMMENT '状态 0 禁用 1 启用',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货币汇率表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bond` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creation_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统信息维护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `leader_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_1t68827l97cwyxo9r1u6t4p7d`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for deposit_record
-- ----------------------------
DROP TABLE IF EXISTS `deposit_record`;
CREATE TABLE `deposit_record`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7x5q0lmqqtty5i0w5mq09o8r7`(`coin_id`) USING BTREE,
  INDEX `FKji8p5uoc1ad45npyf72rgf2lx`(`member_id`) USING BTREE,
  CONSTRAINT `FK7x5q0lmqqtty5i0w5mq09o8r7` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKji8p5uoc1ad45npyf72rgf2lx` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存款记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dividend_start_record
-- ----------------------------
DROP TABLE IF EXISTS `dividend_start_record`;
CREATE TABLE `dividend_start_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 6) NULL DEFAULT NULL COMMENT '数量',
  `date` datetime(0) NULL DEFAULT NULL,
  `end` bigint(20) NULL DEFAULT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `rate` decimal(18, 2) NULL DEFAULT NULL COMMENT '比例',
  `start` bigint(20) NULL DEFAULT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK226c1iy2t1dt9tjjo20pum39d`(`admin_id`) USING BTREE,
  CONSTRAINT `FK226c1iy2t1dt9tjjo20pum39d` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '持币分息记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exchange_coin
-- ----------------------------
DROP TABLE IF EXISTS `exchange_coin`;
CREATE TABLE `exchange_coin`  (
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `fee` decimal(8, 4) NULL DEFAULT NULL COMMENT '交易手续费',
  `sort` int(11) NOT NULL,
  `enable_market_buy` int(11) NULL DEFAULT 1 COMMENT '是否启用市价买',
  `enable_market_sell` int(11) NULL DEFAULT 1 COMMENT '是否启用市价卖',
  `min_sell_price` decimal(18, 8) NULL DEFAULT NULL COMMENT '最低挂单卖价',
  `flag` int(11) NULL DEFAULT 0 COMMENT '默认为0，1表示推荐',
  `max_trading_order` int(11) NULL DEFAULT 0 COMMENT '最大允许同时交易的订单数，0表示不限制',
  `max_trading_time` int(11) NULL DEFAULT 0 COMMENT '委托超时自动下架时间，单位为秒，0表示不过期',
  `instrument` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易类型，B2C2特有',
  `min_turnover` decimal(18, 8) NULL DEFAULT NULL COMMENT '最小挂单成交额',
  `max_volume` decimal(18, 8) NULL DEFAULT NULL COMMENT '最大下单量',
  `min_volume` decimal(18, 8) NULL DEFAULT NULL COMMENT '最小下单量',
  `zone` int(11) NULL DEFAULT 0,
  `clear_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '清盘时间',
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '结束时间',
  `publish_price` decimal(18, 8) NULL DEFAULT NULL COMMENT ' 分摊发行价格',
  `publish_type` int(11) NULL DEFAULT 1 COMMENT '发行活动类型 1:无活动,2:抢购发行,3:分摊发行',
  `start_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '开始时间',
  `exchangeable` int(11) NULL DEFAULT 1 COMMENT ' 是否可交易',
  `publish_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT ' 活动发行数量',
  `visible` int(11) NULL DEFAULT 1 COMMENT ' 前台可见状态',
  `max_buy_price` decimal(18, 8) NULL DEFAULT NULL COMMENT '最高买单价',
  `robot_type` int(11) NULL DEFAULT 0 COMMENT '机器人类型',
  `enable_buy` int(11) NULL DEFAULT 1 COMMENT '是否允许买',
  `enable_sell` int(11) NULL DEFAULT 1 COMMENT '是否允许卖',
  `fake_data_status` int(11) NULL DEFAULT 0 COMMENT '假数据状态（0：关闭，1：启动）',
  PRIMARY KEY (`symbol`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '币币交易对' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exchange_favor_symbol
-- ----------------------------
DROP TABLE IF EXISTS `exchange_favor_symbol`;
CREATE TABLE `exchange_favor_symbol`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `member_id`(`member_id`, `symbol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易优先符号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exchange_favor_symbol
-- ----------------------------

-- ----------------------------
-- Table structure for exchange_order
-- ----------------------------
DROP TABLE IF EXISTS `exchange_order`;
CREATE TABLE `exchange_order`  (
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(18, 8) NULL DEFAULT NULL,
  `base_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `canceled_time` bigint(20) NULL DEFAULT NULL,
  `coin_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `completed_time` bigint(20) NULL DEFAULT NULL,
  `direction` int(11) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `price` decimal(18, 8) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `traded_amount` decimal(26, 16) NULL DEFAULT NULL,
  `turnover` decimal(26, 16) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `use_discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_resource` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `symbol`(`symbol`, `member_id`, `status`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '币币挂单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exchange_order
-- ----------------------------

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmonjtjt92g6gruqyfumtmg8m8`(`member_id`) USING BTREE,
  CONSTRAINT `FKmonjtjt92g6gruqyfumtmg8m8` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for financial_item
-- ----------------------------
DROP TABLE IF EXISTS `financial_item`;
CREATE TABLE `financial_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_minnum` decimal(19, 2) NULL DEFAULT NULL,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deadline` int(11) NOT NULL,
  `item_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_state` int(11) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `yield` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of financial_item
-- ----------------------------

-- ----------------------------
-- Table structure for financial_order
-- ----------------------------
DROP TABLE IF EXISTS `financial_order`;
CREATE TABLE `financial_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_num` decimal(19, 2) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `frozen_days` int(11) NOT NULL,
  `item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `order_no` bigint(20) NULL DEFAULT NULL,
  `order_state` int(11) NOT NULL,
  `order_usdt_rate` double NULL DEFAULT NULL,
  `plan_revenue_time` datetime(0) NULL DEFAULT NULL,
  `real_income` decimal(19, 2) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of financial_order
-- ----------------------------

-- ----------------------------
-- Table structure for hot_transfer_record
-- ----------------------------
DROP TABLE IF EXISTS `hot_transfer_record`;
CREATE TABLE `hot_transfer_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '转账金额',
  `balance` decimal(18, 8) NULL DEFAULT NULL COMMENT '热钱包余额',
  `cold_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `miner_fee` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿工费',
  `transaction_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transfer_time` datetime(0) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '热传输记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_transfer_record
-- ----------------------------

-- ----------------------------
-- Table structure for init_plate
-- ----------------------------
DROP TABLE IF EXISTS `init_plate`;
CREATE TABLE `init_plate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `final_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `init_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `interference_factor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relative_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of init_plate
-- ----------------------------

-- ----------------------------
-- Table structure for legal_wallet_recharge
-- ----------------------------
DROP TABLE IF EXISTS `legal_wallet_recharge`;
CREATE TABLE `legal_wallet_recharge`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 2) NOT NULL COMMENT '充值金额',
  `creation_time` datetime(0) NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKtfjvrkn1oe0yu2tfjh6qcms73`(`admin_id`) USING BTREE,
  INDEX `FKsdtoqyvbjpd0bmw4n41ijc0kk`(`coin_name`) USING BTREE,
  INDEX `FK170xpb7hoxqoj5ovdrcibs9gn`(`member_id`) USING BTREE,
  CONSTRAINT `FK170xpb7hoxqoj5ovdrcibs9gn` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsdtoqyvbjpd0bmw4n41ijc0kk` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtfjvrkn1oe0yu2tfjh6qcms73` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱包充值记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of legal_wallet_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for legal_wallet_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `legal_wallet_withdraw`;
CREATE TABLE `legal_wallet_withdraw`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '申请总数量',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remit_time` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKe95o0059kwsgmsxxv3amdb0d2`(`admin_id`) USING BTREE,
  INDEX `FKbilsav1ug8vjtn4ffghrlogqx`(`coin_name`) USING BTREE,
  INDEX `FKcpw5k7o3tchlifu1wqmjhku9t`(`member_id`) USING BTREE,
  CONSTRAINT `FKbilsav1ug8vjtn4ffghrlogqx` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKcpw5k7o3tchlifu1wqmjhku9t` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKe95o0059kwsgmsxxv3amdb0d2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱包提币记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of legal_wallet_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for locked_order
-- ----------------------------
DROP TABLE IF EXISTS `locked_order`;
CREATE TABLE `locked_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `current_releaseamount` decimal(18, 8) NULL DEFAULT NULL COMMENT '当前周期释放数量',
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_invite` decimal(24, 8) NULL DEFAULT NULL,
  `locked_invitelimit` decimal(24, 8) NULL DEFAULT NULL,
  `locked_status` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `origin_releaseamount` decimal(18, 8) NULL DEFAULT NULL COMMENT '原始周期释放数量',
  `period` int(11) NOT NULL,
  `release_currentpercent` decimal(19, 2) NULL DEFAULT NULL,
  `release_percent` decimal(19, 2) NULL DEFAULT NULL,
  `release_times` decimal(24, 8) NULL DEFAULT NULL,
  `release_type` int(11) NOT NULL,
  `release_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `released_days` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_locked` decimal(18, 8) NULL DEFAULT NULL COMMENT '总锁仓',
  `total_release` decimal(18, 8) NULL DEFAULT NULL COMMENT '总释放',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '锁仓订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locked_order
-- ----------------------------

-- ----------------------------
-- Table structure for locked_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `locked_order_detail`;
CREATE TABLE `locked_order_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `locked_order_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `output` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿机当期产出',
  `release_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '锁仓订单明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locked_savings_activity
-- ----------------------------
DROP TABLE IF EXISTS `locked_savings_activity`;
CREATE TABLE `locked_savings_activity`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定期活动名（可重名）',
  `rate` decimal(18, 8) NOT NULL COMMENT '收益率',
  `duration` int(3) NOT NULL DEFAULT 0 COMMENT '期限(天)',
  `coin_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种unit',
  `num` decimal(18, 8) NOT NULL COMMENT '起投数量',
  `sort` int(11) NOT NULL COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '状态0不可用 1可用',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '理财定期表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locked_savings_order
-- ----------------------------
DROP TABLE IF EXISTS `locked_savings_order`;
CREATE TABLE `locked_savings_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locked_id` bigint(20) NOT NULL COMMENT 'locked_savings_activity表id',
  `member_id` bigint(20) NOT NULL COMMENT 'member_id',
  `coin_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种unit',
  `duration` int(3) NOT NULL DEFAULT 0 COMMENT '期限',
  `rate` decimal(18, 8) NOT NULL COMMENT '收益率',
  `num` decimal(18, 8) NULL DEFAULT NULL COMMENT '定期数量',
  `earn_num` decimal(18, 8) NULL DEFAULT NULL COMMENT '收益数量',
  `status` int(2) NULL DEFAULT 0 COMMENT '状态 0进行中 1已完成',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '赎回日',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '生息日',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '理财定期订单表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for locked_savings_statistic
-- ----------------------------
DROP TABLE IF EXISTS `locked_savings_statistic`;
CREATE TABLE `locked_savings_statistic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种unit',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `earn_num` decimal(20, 8) NULL DEFAULT NULL COMMENT '盈利数量',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `num` decimal(20, 8) NULL DEFAULT NULL COMMENT '理财数量',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKgga7puatcgf8hlwe7yqr5odl8`(`member_id`, `coin_symbol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locked_savings_statistic
-- ----------------------------
INSERT INTO `locked_savings_statistic` VALUES (1, 'USDT', '2023-03-22 15:04:23', 6.89873810, 600800, 1001.00000000, NULL);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qr_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appeal_success_times` int(11) NOT NULL,
  `appeal_times` int(11) NOT NULL,
  `application_time` datetime(0) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `certified_business_apply_time` datetime(0) NULL DEFAULT NULL,
  `certified_business_check_time` datetime(0) NULL DEFAULT NULL,
  `certified_business_status` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_level` int(11) NOT NULL,
  `google_date` datetime(0) NULL DEFAULT NULL,
  `google_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `google_state` int(11) NULL DEFAULT NULL,
  `id_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inviter_id` bigint(20) NULL DEFAULT NULL,
  `jy_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` datetime(0) NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `margin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_level` int(11) NULL DEFAULT NULL,
  `mobile_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `promotion_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_advertise` int(11) NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name_status` int(11) NULL DEFAULT NULL,
  `registration_time` datetime(0) NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_level` int(11) NOT NULL,
  `sign_in_ability` bit(1) NOT NULL DEFAULT b'1',
  `status` int(11) NULL DEFAULT NULL,
  `super_partner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_level` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token_expire_time` datetime(0) NULL DEFAULT NULL,
  `transaction_status` int(11) NULL DEFAULT NULL,
  `transactions` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qr_we_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_gc3jmn7c2abyo3wf6syln5t2i`(`username`) USING BTREE,
  UNIQUE INDEX `UK_mbmcqelty0fbrvxp1q58dn57t`(`email`) USING BTREE,
  UNIQUE INDEX `UK_10ixebfiyeqolglpuye0qb49u`(`mobile_phone`) USING BTREE,
  INDEX `FKbt72vgf5myy3uhygc90xna65j`(`local`) USING BTREE,
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`local`) REFERENCES `country` (`zh_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 600814 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKhcqqqntcf8hqmoa6dpo95okyh`(`coin_id`) USING BTREE,
  CONSTRAINT `FKhcqqqntcf8hqmoa6dpo95okyh` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员提币地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_api_key
-- ----------------------------
DROP TABLE IF EXISTS `member_api_key`;
CREATE TABLE `member_api_key`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `api_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bind_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `expire_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员OpenKey' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_api_key
-- ----------------------------

-- ----------------------------
-- Table structure for member_application
-- ----------------------------
DROP TABLE IF EXISTS `member_application`;
CREATE TABLE `member_application`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_status` int(11) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity_card_img_front` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `identity_card_img_in_hand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `identity_card_img_reverse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reject_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2djx7q0j54th0cgj7153qfbl1`(`member_id`) USING BTREE,
  CONSTRAINT `FK2djx7q0j54th0cgj7153qfbl1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员实名信息照片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_application_config
-- ----------------------------
DROP TABLE IF EXISTS `member_application_config`;
CREATE TABLE `member_application_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `promotion_on` int(11) NULL DEFAULT NULL,
  `recharge_coin_on` int(11) NULL DEFAULT NULL,
  `transaction_on` int(11) NULL DEFAULT NULL,
  `withdraw_coin_on` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员实名配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_application_config
-- ----------------------------

-- ----------------------------
-- Table structure for member_bonus
-- ----------------------------
DROP TABLE IF EXISTS `member_bonus`;
CREATE TABLE `member_bonus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrive_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `have_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mem_bouns` decimal(18, 8) NULL DEFAULT NULL COMMENT '分红数量',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `total` decimal(18, 8) NULL DEFAULT NULL COMMENT '当天总手续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员奖金' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for member_deposit
-- ----------------------------
DROP TABLE IF EXISTS `member_deposit`;
CREATE TABLE `member_deposit`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(18, 8) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `txid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKl2ibi99fuxplt8qt3rrpb0q4w`(`txid`, `address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员充值数字币记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_finance_order
-- ----------------------------
DROP TABLE IF EXISTS `member_finance_order`;
CREATE TABLE `member_finance_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(20, 8) NULL COMMENT '理财数量',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT 0 COMMENT '订单状态 0持仓中 1撤销',
  `coin_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种unit',
  `earn_num` decimal(20, 8) NULL DEFAULT NULL COMMENT '盈利',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '理财订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_finance_statistic
-- ----------------------------
DROP TABLE IF EXISTS `member_finance_statistic`;
CREATE TABLE `member_finance_statistic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(20, 8) NULL COMMENT '理财数量',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `coin_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种unit',
  `earn_num` decimal(20, 8) NULL DEFAULT NULL COMMENT '累计盈利',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `member_id`(`member_id`, `coin_symbol`) USING BTREE,
  UNIQUE INDEX `UK22ri1cwm7qg2q7l2cp4q4jcsh`(`member_id`, `coin_symbol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '理财统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_finance_statistic
-- ----------------------------
INSERT INTO `member_finance_statistic` VALUES (1, 0.00000000, 600800, 'USDT', 37.42350000, '2021-07-16 07:52:33', '2022-05-04 09:38:56');

-- ----------------------------
-- Table structure for member_invite_stastic
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_stastic`;
CREATE TABLE `member_invite_stastic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `btc_reward` decimal(24, 8) NULL DEFAULT NULL,
  `estimated_reward` decimal(24, 8) NULL DEFAULT NULL,
  `eth_reward` decimal(24, 8) NULL DEFAULT NULL,
  `extra_reward` decimal(24, 8) NULL DEFAULT NULL,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `other_reward` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stastic_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '统计日期',
  `usdt_reward` decimal(24, 8) NULL DEFAULT NULL,
  `user_identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `member_id`(`member_id`) USING BTREE,
  UNIQUE INDEX `UK4o6jykp20ax1pybxgxcwsxq01`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 348 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员邀请记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_invite_stastic_rank
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_stastic_rank`;
CREATE TABLE `member_invite_stastic_rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `stastic_date` datetime(0) NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员邀请等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_invite_stastic_rank
-- ----------------------------

-- ----------------------------
-- Table structure for member_level
-- ----------------------------
DROP TABLE IF EXISTS `member_level`;
CREATE TABLE `member_level`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_default` bit(1) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_level
-- ----------------------------

-- ----------------------------
-- Table structure for member_promotion
-- ----------------------------
DROP TABLE IF EXISTS `member_promotion`;
CREATE TABLE `member_promotion`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invitees_id` bigint(20) NULL DEFAULT NULL,
  `inviter_id` bigint(20) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员推广' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_record
-- ----------------------------
DROP TABLE IF EXISTS `member_record`;
CREATE TABLE `member_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action_type` int(11) NOT NULL,
  `analysised` int(11) NOT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_name_zh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_name_zh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iso_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subdivision` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subdivision_zh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_record
-- ----------------------------

-- ----------------------------
-- Table structure for member_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `member_sign_record`;
CREATE TABLE `member_sign_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `creation_time` datetime(0) NULL DEFAULT NULL,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `sign_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7qa42qkaoqxlyvwhxwdstclic`(`coin_name`) USING BTREE,
  INDEX `FK2r4i90tejcbf85vhk0d8besle`(`member_id`) USING BTREE,
  INDEX `FKq1926wgosqk7ka4kvw8rtxew`(`sign_id`) USING BTREE,
  CONSTRAINT `FK2r4i90tejcbf85vhk0d8besle` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK7qa42qkaoqxlyvwhxwdstclic` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKq1926wgosqk7ka4kvw8rtxew` FOREIGN KEY (`sign_id`) REFERENCES `sign` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员签章记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for member_team_info
-- ----------------------------
DROP TABLE IF EXISTS `member_team_info`;
CREATE TABLE `member_team_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `inviter_id` bigint(20) NULL DEFAULT NULL COMMENT '邀请人id',
  `team_total_amount` decimal(20, 6) NULL COMMENT '团队业绩USDT',
  `level` int(2) NULL DEFAULT 0 COMMENT '等级 0普通  1合约矿工  2节点矿工 3高级矿工 4超级矿工 5矿池 ',
  `sys_level` int(2) NULL DEFAULT 0 COMMENT '系统设定级别',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户团队业绩等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_team_info
-- ----------------------------

-- ----------------------------
-- Table structure for member_team_reward
-- ----------------------------
DROP TABLE IF EXISTS `member_team_reward`;
CREATE TABLE `member_team_reward`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `source_id` bigint(20) NULL DEFAULT NULL COMMENT '来源用户id',
  `source_type` int(2) NULL DEFAULT 0 COMMENT '来源类型 0永续 1期权',
  `num` decimal(20, 6) NULL COMMENT '奖励数量',
  `coin_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(2) NULL DEFAULT 0 COMMENT '奖励类型 0佣金 1推荐奖励',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户团队奖励记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_team_reward
-- ----------------------------

-- ----------------------------
-- Table structure for member_transaction
-- ----------------------------
DROP TABLE IF EXISTS `member_transaction`;
CREATE TABLE `member_transaction`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(26, 16) NULL DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `discount_fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fee` decimal(26, 16) NULL DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `real_fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `is_reward` int(2) NULL DEFAULT 0 COMMENT '是否返佣',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员交易记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of member_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for member_wallet
-- ----------------------------
DROP TABLE IF EXISTS `member_wallet`;
CREATE TABLE `member_wallet`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` decimal(26, 8) NULL DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(26, 8) NULL DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) NULL DEFAULT 0 COMMENT '钱包不是锁定',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `to_released` decimal(18, 8) NULL DEFAULT NULL COMMENT '待释放总量',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKm68bscpof0bpnxocxl4qdnvbe`(`member_id`, `coin_id`) USING BTREE,
  INDEX `FKf9tgbp9y9py8t9c5xj0lllcib`(`coin_id`) USING BTREE,
  CONSTRAINT `FKf9tgbp9y9py8t9c5xj0lllcib` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员钱包' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_wallet_history
-- ----------------------------
DROP TABLE IF EXISTS `member_wallet_history`;
CREATE TABLE `member_wallet_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `before_balance` decimal(18, 8) NOT NULL,
  `after_balance` decimal(18, 8) NULL DEFAULT NULL,
  `before_frozen_balance` decimal(18, 8) NULL DEFAULT NULL,
  `after_frozen_balance` decimal(18, 8) NULL DEFAULT NULL,
  `op_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱包增删记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_wallet_history
-- ----------------------------

-- ----------------------------
-- Table structure for member_weight_upper
-- ----------------------------
DROP TABLE IF EXISTS `member_weight_upper`;
CREATE TABLE `member_weight_upper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `first_member_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NULL DEFAULT NULL,
  `upper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for mining_order
-- ----------------------------
DROP TABLE IF EXISTS `mining_order`;
CREATE TABLE `mining_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `current_daysprofit` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿机当前日产出',
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `member_id` bigint(20) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿机原始日产出',
  `mining_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mininged_days` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mining_status` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mining_invite` decimal(24, 8) NULL DEFAULT NULL,
  `mining_invitelimit` decimal(24, 8) NULL DEFAULT NULL,
  `total_profit` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿机总产出',
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挖矿订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mining_order
-- ----------------------------

-- ----------------------------
-- Table structure for mining_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `mining_order_detail`;
CREATE TABLE `mining_order_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `mining_order_id` bigint(20) NULL DEFAULT NULL,
  `mining_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `output` decimal(18, 8) NULL DEFAULT NULL COMMENT '矿机当期产出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '挖矿订单详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mining_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for otc_coin
-- ----------------------------
DROP TABLE IF EXISTS `otc_coin`;
CREATE TABLE `otc_coin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_min_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '买入广告最低发布数量',
  `is_platform_coin` int(11) NULL DEFAULT NULL,
  `jy_rate` decimal(18, 6) NULL DEFAULT NULL COMMENT '交易手续费率',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sell_min_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC币种' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for otc_order
-- ----------------------------
DROP TABLE IF EXISTS `otc_order`;
CREATE TABLE `otc_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `ali_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qr_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_time` datetime(0) NULL DEFAULT NULL,
  `commission` decimal(18, 8) NULL DEFAULT NULL COMMENT '手续费',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_limit` decimal(18, 2) NULL DEFAULT NULL COMMENT '最高交易额',
  `member_id` bigint(20) NOT NULL,
  `member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `min_limit` decimal(18, 2) NULL DEFAULT NULL COMMENT '最低交易额',
  `money` decimal(18, 2) NULL DEFAULT NULL COMMENT '交易金额',
  `number` decimal(18, 8) NULL DEFAULT NULL COMMENT '交易数量',
  `order_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_time` datetime(0) NULL DEFAULT NULL,
  `price` decimal(18, 2) NULL DEFAULT NULL COMMENT '价格',
  `release_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `time_limit` int(11) NULL DEFAULT NULL,
  `version` bigint(20) NULL DEFAULT NULL,
  `qr_we_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_qmfpakgu6mowmslv4m5iy43t9`(`order_sn`) USING BTREE,
  INDEX `FKjh47nnmiehmu15wqjfwnh8a6u`(`coin_id`) USING BTREE,
  CONSTRAINT `FKjh47nnmiehmu15wqjfwnh8a6u` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'OTC订单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式简码',
  `config_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '支付方式配置json',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付方式类型配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payment_type_record
-- ----------------------------
DROP TABLE IF EXISTS `payment_type_record`;
CREATE TABLE `payment_type_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `type` bigint(20) NULL DEFAULT NULL COMMENT '支付方式id',
  `field_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段1',
  `field_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段2',
  `field_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段3',
  `field_4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段4',
  `field_5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段5',
  `field_6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段6',
  `field_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段7',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户支付方式绑定记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_type_record
-- ----------------------------
INSERT INTO `payment_type_record` VALUES (19, 600813, 14, 'mico', '18735468728', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payment_type_record` VALUES (20, 600816, 2, 'ouyang', '123', '6214832115592590', NULL, NULL, NULL, NULL);
INSERT INTO `payment_type_record` VALUES (26, 600800, 1, 'test0001', '125478', '4544414', 'null', NULL, NULL, NULL);
INSERT INTO `payment_type_record` VALUES (27, 600800, 5, 'dhaksA@E.COM', 'TEST22', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for promotion_card
-- ----------------------------
DROP TABLE IF EXISTS `promotion_card`;
CREATE TABLE `promotion_card`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '单个卡券金额',
  `card_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `exchange_count` int(11) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `total_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '所有卡券总金额',
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_3781uubel3iuh86ht6yv0n0r7`(`card_no`) USING BTREE,
  INDEX `FKem2r42s1av7tfni612176gt9f`(`coin_id`) USING BTREE,
  CONSTRAINT `FKem2r42s1av7tfni612176gt9f` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合伙人推广卡' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for promotion_card_order
-- ----------------------------
DROP TABLE IF EXISTS `promotion_card_order`;
CREATE TABLE `promotion_card_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '兑换金额',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `card_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK1e6ykywfbw68oodq33no4ao8u`(`card_id`) USING BTREE,
  CONSTRAINT `FK1e6ykywfbw68oodq33no4ao8u` FOREIGN KEY (`card_id`) REFERENCES `promotion_card` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合伙人推广卡订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotion_card_order
-- ----------------------------

-- ----------------------------
-- Table structure for quick_exchange
-- ----------------------------
DROP TABLE IF EXISTS `quick_exchange`;
CREATE TABLE `quick_exchange`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(24, 8) NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ex_amount` decimal(24, 8) NULL,
  `from_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `rate` decimal(24, 8) NULL,
  `status` int(11) NOT NULL,
  `to_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '快速兑换' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quick_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hash` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '哈希',
  `md5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '哈希MD5',
  `MemberId` int(11) NOT NULL COMMENT '用户',
  `AddTime` bigint(20) NOT NULL,
  `CoinId` int(11) NOT NULL COMMENT '币种',
  `CoinName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种',
  `Money` decimal(18, 10) NOT NULL COMMENT '金额',
  `Block` int(11) NOT NULL COMMENT '区块',
  `Agreen` int(11) NOT NULL COMMENT '0 为正常区块记录 1 后台增加',
  `Confirms` int(11) NOT NULL COMMENT '确认次数',
  `NConfirms` int(11) NOT NULL COMMENT '需要确认的次数',
  `Status` int(11) NOT NULL COMMENT '0 未到账 1 已到账 -1 失败',
  `Send` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送方地址',
  `Address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接收方地址',
  `Protocol` int(11) NOT NULL COMMENT '协议',
  `ProtocolName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '协议名称',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `CoinName`(`CoinName`) USING BTREE,
  CONSTRAINT `recharge_ibfk_1` FOREIGN KEY (`CoinName`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge
-- ----------------------------

-- ----------------------------
-- Table structure for red_envelope
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope`;
CREATE TABLE `red_envelope`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bg_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `envelope_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expired_hours` int(11) NOT NULL,
  `invite` int(11) NOT NULL,
  `logo_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_rand` decimal(18, 8) NULL DEFAULT NULL COMMENT '最大随机领取额',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plateform` int(11) NOT NULL,
  `receive_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '领取总额',
  `receive_count` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `total_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '红包总额',
  `type` int(11) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invite_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invite_user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_kpc525u446ufbpp8a8wxq6b93`(`envelope_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for red_envelope_detail
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope_detail`;
CREATE TABLE `red_envelope_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '领取数额',
  `cate` int(11) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `envelope_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `user_identify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of red_envelope_detail
-- ----------------------------

-- ----------------------------
-- Table structure for reward_activity_setting
-- ----------------------------
DROP TABLE IF EXISTS `reward_activity_setting`;
CREATE TABLE `reward_activity_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKra9w7qwgbxti55cmkb6kycau7`(`admin_id`) USING BTREE,
  INDEX `FKmxq57nrqt4lb9lqpxwc095h1h`(`coin_id`) USING BTREE,
  CONSTRAINT `FKmxq57nrqt4lb9lqpxwc095h1h` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKra9w7qwgbxti55cmkb6kycau7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_activity_setting
-- ----------------------------

-- ----------------------------
-- Table structure for reward_promotion_setting
-- ----------------------------
DROP TABLE IF EXISTS `reward_promotion_setting`;
CREATE TABLE `reward_promotion_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `effective_time` int(11) NOT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7fl96plmj12crmepem7t876u3`(`admin_id`) USING BTREE,
  INDEX `FKfhtlsn9g8lj5qecbo596ymhey`(`coin_id`) USING BTREE,
  CONSTRAINT `FK7fl96plmj12crmepem7t876u3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfhtlsn9g8lj5qecbo596ymhey` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_promotion_setting
-- ----------------------------

-- ----------------------------
-- Table structure for reward_record
-- ----------------------------
DROP TABLE IF EXISTS `reward_record`;
CREATE TABLE `reward_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '数目',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKtm2ha75hh60am8n7lco838nmo`(`coin_id`) USING BTREE,
  INDEX `FK9m2bd6gjgad67vb6of4waxtov`(`member_id`) USING BTREE,
  CONSTRAINT `FK9m2bd6gjgad67vb6of4waxtov` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtm2ha75hh60am8n7lco838nmo` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_record
-- ----------------------------

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `creation_time` datetime(0) NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `coin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK58kn2gi7nvswa8hb76h87wtdl`(`coin_name`) USING BTREE,
  CONSTRAINT `FK58kn2gi7nvswa8hb76h87wtdl` FOREIGN KEY (`coin_name`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign
-- ----------------------------

-- ----------------------------
-- Table structure for sys_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sys_advertise`;
CREATE TABLE `sys_advertise`  (
  `serial_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `sys_advertise_location` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`serial_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_help
-- ----------------------------
DROP TABLE IF EXISTS `sys_help`;
CREATE TABLE `sys_help`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_top` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_help_classification` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统帮助' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_sms
-- ----------------------------
DROP TABLE IF EXISTS `tb_sms`;
CREATE TABLE `tb_sms`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sms_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sms_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信Key参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transfer_address
-- ----------------------------
DROP TABLE IF EXISTS `transfer_address`;
CREATE TABLE `transfer_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `min_amount` decimal(18, 2) NULL DEFAULT NULL COMMENT '最低转账数目',
  `status` int(11) NULL DEFAULT NULL,
  `transfer_fee` decimal(18, 6) NULL DEFAULT NULL COMMENT '转账手续费率',
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7iv0cmmj36ncaw1nx92x15vtu`(`coin_id`) USING BTREE,
  CONSTRAINT `FK7iv0cmmj36ncaw1nx92x15vtu` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转账地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transfer_address
-- ----------------------------

-- ----------------------------
-- Table structure for transfer_record
-- ----------------------------
DROP TABLE IF EXISTS `transfer_record`;
CREATE TABLE `transfer_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `fee` decimal(18, 8) NULL DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) NULL DEFAULT NULL,
  `order_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkrlf3bglmf2c51sorq9fpue0g`(`coin_id`) USING BTREE,
  CONSTRAINT `FKkrlf3bglmf2c51sorq9fpue0g` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转账记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transfer_record
-- ----------------------------

-- ----------------------------
-- Table structure for wallet_trans_record
-- ----------------------------
DROP TABLE IF EXISTS `wallet_trans_record`;
CREATE TABLE `wallet_trans_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(26, 16) NULL DEFAULT NULL COMMENT '划转金额',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `source` int(11) NULL DEFAULT 0 COMMENT '从哪里划转',
  `target` int(11) NULL DEFAULT 0 COMMENT '划转到哪里去',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱包交易记录\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wallet_trans_record
-- ----------------------------

-- ----------------------------
-- Table structure for website_information
-- ----------------------------
DROP TABLE IF EXISTS `website_information`;
CREATE TABLE `website_information`  (
  `id` bigint(20) NOT NULL,
  `address_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other_information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站信息\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_information
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MemberId` int(11) NOT NULL COMMENT '用户',
  `AddTime` bigint(20) NOT NULL,
  `CoinId` int(11) NOT NULL COMMENT '币种',
  `CoinName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种',
  `Address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提现地址',
  `Money` decimal(18, 10) NOT NULL COMMENT '申请金额',
  `Fee` decimal(18, 10) NOT NULL COMMENT '提现手续费',
  `Real_Money` decimal(18, 10) NOT NULL COMMENT '真实到账数量',
  `ProcessMold` int(11) NOT NULL COMMENT '*处理模式，0区块处理，1外部处理',
  `Hash` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提现哈希',
  `Status` int(11) NOT NULL COMMENT '*状态，-1,驳回,0待处理,1处理中,2已处理 3 失败',
  `ProcessTime` bigint(20) NOT NULL COMMENT '后台处理时间',
  `WithdrawInfo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提现失败原因（后台驳回理由可填写）',
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户申请提现备注（）',
  `Protocol` int(11) NOT NULL COMMENT '协议',
  `ProtocolName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '协议',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `CoinName`(`CoinName`) USING BTREE,
  CONSTRAINT `withdraw_ibfk_1` FOREIGN KEY (`CoinName`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw_code_record
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_code_record`;
CREATE TABLE `withdraw_code_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rmember_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `withdraw_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '申请总数量',
  `withdraw_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKa3kybqr5vhpnf5a57ridds671`(`coin_id`) USING BTREE,
  CONSTRAINT `FKa3kybqr5vhpnf5a57ridds671` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for withdraw_fee_history
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_fee_history`;
CREATE TABLE `withdraw_fee_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biz_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `fee_amount` decimal(28, 8) NULL DEFAULT NULL COMMENT '手续费数量',
  `fee_coin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fee_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_id` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdraw_fee_history
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw_record
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_record`;
CREATE TABLE `withdraw_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `arrived_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '预计到账数量',
  `can_auto_withdraw` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  `fee` decimal(18, 8) NULL DEFAULT NULL COMMENT '手续费',
  `is_auto` int(11) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `total_amount` decimal(18, 8) NULL DEFAULT NULL COMMENT '申请总数量',
  `transaction_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2lmq6bcbk4nl3hmqcxbnx2kuc`(`admin_id`) USING BTREE,
  INDEX `FK6drad9oqabujy0jsre3minxi`(`coin_id`) USING BTREE,
  CONSTRAINT `FK2lmq6bcbk4nl3hmqcxbnx2kuc` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK6drad9oqabujy0jsre3minxi` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdraw_record
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
