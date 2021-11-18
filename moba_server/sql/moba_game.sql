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


-- 导出 moba_game 的数据库结构
CREATE DATABASE IF NOT EXISTS `moba_game` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moba_game`;

-- 导出  表 moba_game.ugame 结构
CREATE TABLE IF NOT EXISTS `ugame` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '全局唯一ID',
  `uid` int(11) NOT NULL COMMENT '用户uid',
  `uchip` int(11) DEFAULT '0' COMMENT '用户金币数',
  `uchip2` int(11) DEFAULT '0' COMMENT '其他货币',
  `uchip3` int(11) DEFAULT '0' COMMENT '其他货币',
  `uvip` int(11) DEFAULT '0' COMMENT 'vip等级',
  `uvip_endtime` int(11) DEFAULT '0' COMMENT 'vip结束时间戳',
  `udata1` int(11) DEFAULT '0' COMMENT '道具1',
  `udata2` int(11) DEFAULT '0' COMMENT '道具2',
  `udata3` int(11) DEFAULT '0' COMMENT '道具3',
  `uexp` int(11) DEFAULT '0' COMMENT '用户经验值',
  `ustatus` int(11) DEFAULT '0' COMMENT '0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存放用户在moba游戏中的数据\r\nuid标识玩家\r\nid自增长的唯一ID';

-- 数据导出被取消选择。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
