/*
 Navicat MySQL Data Transfer

 Source Server         : mall-swarm
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 127.0.0.1:33069
 Source Schema         : mall_otc

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 06/08/2024 01:10:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for otc_coin
-- ----------------------------
DROP TABLE IF EXISTS `otc_coin`;
CREATE TABLE `otc_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_min_amount` decimal(18,6) NULL DEFAULT '0' COMMENT '买入广告最低发布数量',
  `is_platform_coin` tinyint(1) NULL DEFAULT '0' COMMENT '0:不是平台币 1:是平台币',
  `jy_rate` decimal(18,6) NULL DEFAULT '0' COMMENT '交易手续费率',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中文名称',
  `sell_min_amount` decimal(18,6) NULL DEFAULT '0' COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(11) NULL DEFAULT '0' COMMENT '币种状态 0:禁用 1:启用',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种单位eg:usdt',
  PRIMARY KEY (`id`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='OTC币种信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for otc_order
-- ----------------------------
DROP TABLE IF EXISTS `otc_order`;
CREATE TABLE `otc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(20) NOT NULL COMMENT '广告ID',
  `advertise_type` int(11) NOT NULL COMMENT '广告类型',
  `ali_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '支付宝账号',
  `qr_code_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '支付二维码URL',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '银行名称',
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '银行支行:用户支付时使用的具体支行信息',
  `card_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '银行卡号',
  `cancel_time` datetime(0) NULL DEFAULT NULL COMMENT '订单被取消时间',
  `commission` decimal(18,8) NULL DEFAULT '0' COMMENT '订单手续费',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `customer_id` bigint(20) NOT NULL COMMENT '用户ID:购买或出售用户的唯一标识',
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户的显示名称',
  `customer_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户真实姓名',
  `max_limit` decimal(18,2) NULL DEFAULT '0' COMMENT '最高交易额',
  `user_id` bigint(20) NOT NULL COMMENT '发布广告的用户唯一标识',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '发布广告的用户的显示名称',
  `user_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '发布广告的用户的真实姓名信息',
  `min_limit` decimal(18,2) NULL DEFAULT '0' COMMENT '最低交易额',
  `money` decimal(18,2) NULL DEFAULT '0' COMMENT '实际交易金额',
  `number` decimal(18,8) NULL DEFAULT '0' COMMENT '实际交易数量',
  `order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `pay_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '订单支付时间',
  `price` decimal(18,2) NULL DEFAULT '0' COMMENT '交易的单价',
  `release_time` datetime(0) NULL DEFAULT NULL COMMENT '订单发布时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单的备注信息',
  `status` int(11) NULL DEFAULT '0' COMMENT '订单状态',
  `time_limit` int(11) NULL DEFAULT '0' COMMENT '订单的时间限制',
  `version` bigint(20) NULL DEFAULT NULL COMMENT '版本号:用于乐观锁实现并发控制',
  `qr_we_code_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '微信支付二维码URL',
  `wechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '微信账号',
  `coin_id` bigint(20) NULL DEFAULT '0' COMMENT '标识订单所涉及的加密货币种类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_order_sn`(`order_sn`) USING BTREE,
  INDEX `idx_coin_id`(`coin_id`) USING BTREE,
  CONSTRAINT `idx_coin_id` FOREIGN KEY (`coin_id`) REFERENCES `otc_coin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='OTC订单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '支付方式简码',
  `config_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '支付方式配置JSON',
  PRIMARY KEY (`id`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='支付方式类型配置表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for payment_type_record
-- ----------------------------
DROP TABLE IF EXISTS `payment_type_record`;
CREATE TABLE `payment_type_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `type` bigint(20) NULL DEFAULT '0' COMMENT '支付方式id',
  `field_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段1',
  `field_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段2',
  `field_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段3',
  `field_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段4',
  `field_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段5',
  `field_6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段6',
  `field_7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT ''  COMMENT '字段7',
  PRIMARY KEY (`id`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户支付方式绑定记录表' ROW_FORMAT = Dynamic;


SET FOREIGN_KEY_CHECKS = 1;