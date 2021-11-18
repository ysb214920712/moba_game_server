-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.35-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.3.0.6307
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 auth_center 的数据库结构
CREATE DATABASE IF NOT EXISTS `auth_center` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `auth_center`;

-- 导出  表 auth_center.uinfo 结构
CREATE TABLE IF NOT EXISTS `uinfo` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户唯一ID',
  `unick` varchar(32) NOT NULL DEFAULT '""' COMMENT '用户昵称',
  `usex` int(8) NOT NULL DEFAULT '0' COMMENT '0：男 1：女',
  `uface` int(8) NOT NULL DEFAULT '0' COMMENT '系统默认头像',
  `uname` varchar(32) NOT NULL DEFAULT '""' COMMENT '用户账号',
  `upwd` varchar(32) NOT NULL DEFAULT '""' COMMENT '用户密码MD5',
  `phone` varchar(16) NOT NULL DEFAULT '""' COMMENT '用户电话',
  `email` varchar(64) NOT NULL DEFAULT '""' COMMENT '用户email',
  `address` varchar(128) NOT NULL DEFAULT '""' COMMENT '用户地址',
  `uvip` int(8) NOT NULL DEFAULT '0' COMMENT 'vip等级',
  `vip_end_time` int(32) NOT NULL DEFAULT '0' COMMENT 'vip到期时间戳',
  `is_guest` int(8) NOT NULL DEFAULT '0' COMMENT '标记是否为游客账号',
  `guest_key` varchar(64) NOT NULL COMMENT '游客账号唯一key',
  `status` int(8) NOT NULL DEFAULT '0' COMMENT '账号状态 0是正常',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='存放玩家信息';

-- 数据导出被取消选择。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
