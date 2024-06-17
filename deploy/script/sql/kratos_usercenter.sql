/*
 Navicat MySQL Data Transfer

 Source Server         : mall-swarm
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 127.0.0.1:33069
 Source Schema         : mall_usercenter

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 06/08/2024 01:10:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别 0:男 1:女',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `promotion_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '推广码',
  `last_login_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) ,
  UNIQUE KEY `idx_email` (`email`),  
  UNIQUE KEY `idx_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '目标地址',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint NULL DEFAULT '0',
  `coin_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '', 
  PRIMARY KEY (`id`),
  INDEX `idx_coin_id`(`coin_id`),
  CONSTRAINT `idx_coin_id` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户提币地址' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_api_key
-- ----------------------------
DROP TABLE IF EXISTS `user_api_key`;
CREATE TABLE `user_api_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `api_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'api别名',
  `bind_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_time` datetime(0) NULL DEFAULT '2000-01-01 00:00:00',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '备注',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '', 
  PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户OpenKey' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_application
-- -- ----------------------------
DROP TABLE IF EXISTS `user_application`;
CREATE TABLE `user_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `audit_status` tinyint NOT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '证件号码',
  `identity_card_img_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '证件正面图片',
  `identity_card_img_reverse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '证件反面图片',
  `identity_card_img_in_hand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '证件手持图片',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  INDEX `idx_user_id`(`user_id`),
  CONSTRAINT `idx_user_id` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户实名信息照片' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_application_config
-- ----------------------------
DROP TABLE IF EXISTS `user_application_config`;
CREATE TABLE `user_application_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `promotion_on` tinyint(1) NULL DEFAULT '0' COMMENT '0:关闭推广权限 1:开启推广权限',
  `recharge_coin_on` tinyint(1) NULL DEFAULT '0' COMMENT '0:关闭充币权限 1:开启充币权限',
  `transaction_on` tinyint(1) NULL DEFAULT '0' COMMENT '0:关闭交易权限 1:开启交易权限',
  `withdraw_coin_on` tinyint(1) NULL DEFAULT '0' COMMENT '0:关闭提币权限 1:开启提币权限',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户应用权限配置' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_deposit
-- ----------------------------
DROP TABLE IF EXISTS `user_deposit`;
CREATE TABLE `user_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `amount` decimal(18, 8) NULL DEFAULT '0',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `txid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `coin_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '币种unit',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idx_txid_address`(`txid`, `address`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户充值数字币记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_finance_order
-- ----------------------------
DROP TABLE IF EXISTS `user_finance_order`;
CREATE TABLE `user_finance_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(18, 8) NULL DEFAULT '0' COMMENT '理财数量',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `status` int(4) NULL DEFAULT '0' COMMENT '订单状态 0:持仓中 1:撤销',
  `coin_symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '币种unit',
  `earn_num` decimal(18, 8) NULL DEFAULT '0' COMMENT '理财数量',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0)OT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户理财订单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_finance_statistic
-- ----------------------------
DROP TABLE IF EXISTS `user_finance_statistic`;
CREATE TABLE `user_finance_statistic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` decimal(18, 8) NULL DEFAULT '0' COMMENT '理财数量',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `coin_symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '币种unit',
  `earn_num` decimal(18, 8) NULL DEFAULT '0' COMMENT '累计盈利',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0)ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_id`(`user_id`, `coin_symbol`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户理财统计表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_invite_stastic
-- ----------------------------
DROP TABLE IF EXISTS `user_invite_stastic`;
CREATE TABLE `user_invite_stastic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usdt_reward` decimal(24, 8) NULL DEFAULT '0' COMMENT 'usdt奖励数量',
  `is_robot` tinyint(1) NOT NULL COMMENT '0:不是机器人 1:是机器人',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `stastic_date` datetime(0) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '统计日期',
  `user_identify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_id`(`user_id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户邀请记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '别名',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户等级' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_promotion
-- ----------------------------
DROP TABLE IF EXISTS `user_promotion`;
CREATE TABLE `user_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inviter_id` bigint(20) NULL DEFAULT '0' COMMENT '邀请人id',
  `invitee_id` bigint(20) NULL DEFAULT '0' COMMENT '被邀请人id',
  `level` int(11) NULL DEFAULT '0',
  `invitation_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '邀请的时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_invitation` (`inviter_id`,`invitee_id`),
  CONSTRAINT `fk_inviter_id` FOREIGN KEY (`inviter_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_invitee_id` FOREIGN KEY (`invitee_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户推广记录表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_record
-- ----------------------------
DROP TABLE IF EXISTS `user_record`;
CREATE TABLE `user_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `action_type` int(11) NOT NULL COMMENT '行为标识',
  `analysised` int(11) NOT NULL COMMENT '分析状态的标识', 
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '国家名称英文',
  `country_name_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '国家名称中文',
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '城市英文',
  `city_name_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '城市中文',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'ip地址',
  `iso_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'ISO国家代码',
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '纬度',
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '经度',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `subdivision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '细分区域',
  `subdivision_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '细分区域中文',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息记录表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_transaction
-- ----------------------------
DROP TABLE IF EXISTS `user_transaction`;
CREATE TABLE `user_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '交易地址',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(26, 16) NULL DEFAULT '0' COMMENT '充币金额',
  `discount_fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '折扣费用信息',
  `fee` decimal(26, 16) NULL DEFAULT '0' COMMENT '手续费',
  `real_fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实际费用信息',
  `flag` int(11) NULL DEFAULT '0',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '交易货币符号',
  `type` int(11) NULL DEFAULT '0',
  `is_reward` int(2) NULL DEFAULT '0' COMMENT '是否返佣',
  PRIMARY KEY (`id`) ,
  INDEX `create_time`(`create_time`),
  INDEX `user_id`(`user_id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户交易记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_wallet
-- ----------------------------
DROP TABLE IF EXISTS `user_wallet`;
CREATE TABLE `user_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '地址信息',
  `balance` decimal(26, 8) NULL DEFAULT '0' COMMENT '可用余额',
  `frozen_balance` decimal(26, 8) NULL DEFAULT '0' COMMENT '冻结余额',
  `is_lock` tinyint(1) NULL DEFAULT '0' COMMENT '0:未锁定 1:已锁定',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '用户id',
  `to_released` decimal(18, 8) NULL DEFAULT '0' COMMENT '待释放总量',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '货币ID',
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `idx_user_id_con_id`(`user_id`, `coin_id`) ,
  INDEX `idx_coid_id`(`coin_id`) ,
  CONSTRAINT `idx_coid_id` FOREIGN KEY (`coin_id`) REFERENCES `coin` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户钱包' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_wallet_history
-- ----------------------------
DROP TABLE IF EXISTS `user_wallet_history`;
CREATE TABLE `user_wallet_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `coin_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货币ID',
  `op_balance_before` decimal(26, 8) NOT NULL COMMENT '操作前可用余额',
  `op_balance_after` decimal(26, 8) NULL DEFAULT '0' COMMENT '操作后可用余额',
  `op_frozen_balance_before` decimal(26, 8) NULL DEFAULT '0' COMMENT '操作前冻结余额',
  `op_frozen_balance_after` decimal(26, 8) NULL DEFAULT '0' COMMENT '操作后冻结余额',
  `op_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户钱包增删记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_weight_upper
-- ----------------------------
DROP TABLE IF EXISTS `user_weight_upper`;
CREATE TABLE `user_weight_upper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `first_user_id` bigint(20) NULL DEFAULT '0' COMMENT '第一个会员的ID',
  `user_id` bigint(20) NULL DEFAULT '0' COMMENT '会员的ID',
  `rate` int(11) NULL DEFAULT '0' COMMENT '权重比率',
  `upper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '权重上限',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='记录会员的权重上限信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_weight_upper
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `zh_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中文名称',
  `en_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '英文名称',
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '区号',
  `country_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'icon',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '语言',
  `local_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '当地货币缩写',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `del_flag` tinyint(1) NULL DEFAULT '0' COMMENT '0未删除  1删除',
  PRIMARY KEY (`zh_name`) USING BTREE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='国家信息表' ROW_FORMAT = Dynamic;



SET FOREIGN_KEY_CHECKS = 1;

