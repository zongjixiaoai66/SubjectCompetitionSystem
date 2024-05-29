/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t047`;
CREATE DATABASE IF NOT EXISTS `t047` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t047`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootpx13e/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootpx13e/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootpx13e/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `jiangxiangtongji`;
CREATE TABLE IF NOT EXISTS `jiangxiangtongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '院校名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shuxue` int DEFAULT NULL COMMENT '数学',
  `wuli` int DEFAULT NULL COMMENT '物理',
  `huaxue` int DEFAULT NULL COMMENT '化学',
  `shengwu` int DEFAULT NULL COMMENT '生物',
  `xinxixue` int DEFAULT NULL COMMENT '信息学',
  `zongshu` int DEFAULT NULL COMMENT '总数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='奖项统计';

DELETE FROM `jiangxiangtongji`;
INSERT INTO `jiangxiangtongji` (`id`, `addtime`, `yuanxiaomingcheng`, `leixing`, `shuxue`, `wuli`, `huaxue`, `shengwu`, `xinxixue`, `zongshu`) VALUES
	(51, '2021-03-26 09:35:51', '院校名称1', '一等奖', 3, 5, 2, 1, 1, 12),
	(52, '2021-03-26 09:35:51', '院校名称2', '一等奖', 2, 2, 2, 2, 2, 2),
	(53, '2021-03-26 09:35:51', '院校名称3', '一等奖', 3, 3, 3, 3, 3, 3),
	(54, '2021-03-26 09:35:51', '院校名称4', '一等奖', 4, 4, 4, 4, 4, 4),
	(55, '2021-03-26 09:35:51', '院校名称5', '一等奖', 5, 5, 5, 5, 5, 5),
	(56, '2021-03-26 09:35:51', '院校名称6', '一等奖', 6, 6, 6, 6, 6, 6);

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616751665605 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `zhicheng`, `shouji`, `youxiang`, `zhaopian`) VALUES
	(21, '2021-03-26 09:35:51', '教师1', '123456', '姓名1', '男', '职称1', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian1.jpg'),
	(22, '2021-03-26 09:35:51', '教师2', '123456', '姓名2', '男', '职称2', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian2.jpg'),
	(23, '2021-03-26 09:35:51', '教师3', '123456', '姓名3', '男', '职称3', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian3.jpg'),
	(24, '2021-03-26 09:35:51', '教师4', '123456', '姓名4', '男', '职称4', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian4.jpg'),
	(25, '2021-03-26 09:35:51', '教师5', '123456', '姓名5', '男', '职称5', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian5.jpg'),
	(26, '2021-03-26 09:35:51', '教师6', '123456', '姓名6', '男', '职称6', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootpx13e/upload/jiaoshi_zhaopian6.jpg'),
	(1616751665604, '2021-03-26 09:41:05', '001', 'aDQD', '121', '女', 'ADad', '15798452641', NULL, 'http://localhost:8080/springbootpx13e/upload/1616751665110.jpg');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='新闻资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(61, '2021-03-26 09:35:51', 'swadsAD', 'DSAds', 'http://localhost:8080/springbootpx13e/upload/news_picture1.jpg', '<p>可以发布公告之类的</p>'),
	(62, '2021-03-26 09:35:51', '标题2', '简介2', 'http://localhost:8080/springbootpx13e/upload/news_picture2.jpg', '内容2'),
	(63, '2021-03-26 09:35:51', '标题3', '简介3', 'http://localhost:8080/springbootpx13e/upload/news_picture3.jpg', '内容3'),
	(64, '2021-03-26 09:35:51', '标题4', '简介4', 'http://localhost:8080/springbootpx13e/upload/news_picture4.jpg', '内容4'),
	(65, '2021-03-26 09:35:51', '标题5', '简介5', 'http://localhost:8080/springbootpx13e/upload/news_picture5.jpg', '内容5'),
	(66, '2021-03-26 09:35:51', '标题6', '简介6', 'http://localhost:8080/springbootpx13e/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `saixiangbaoming`;
CREATE TABLE IF NOT EXISTS `saixiangbaoming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `saixiangmingcheng` varchar(200) DEFAULT NULL COMMENT '赛项名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jibie` varchar(200) DEFAULT NULL COMMENT '级别',
  `baomingfeiyong` int DEFAULT NULL COMMENT '报名费用',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `shenbaocailiao` longtext COMMENT '申报材料',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616751509990 DEFAULT CHARSET=utf8mb3 COMMENT='赛项报名';

DELETE FROM `saixiangbaoming`;
INSERT INTO `saixiangbaoming` (`id`, `addtime`, `saixiangmingcheng`, `leixing`, `jibie`, `baomingfeiyong`, `baomingriqi`, `shenbaocailiao`, `xuehao`, `xingming`, `sfsh`, `shhf`, `ispay`) VALUES
	(1616751508361, '2021-03-26 09:38:27', '赛项名称1', '团队赛', '初赛', 1, '2021-03-26', '<p>编辑器可以发布图片文字</p>', '11', '11', '是', 'aEDA', '已支付'),
	(1616751509989, '2021-03-26 09:38:29', '赛项名称1', '团队赛', '初赛', 1, '2021-03-26', '<p>编辑器可以发布图片文字</p>', '11', '11', '是', 'DasdA', '已支付');

DROP TABLE IF EXISTS `saixiangxinxi`;
CREATE TABLE IF NOT EXISTS `saixiangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `saixiangmingcheng` varchar(200) DEFAULT NULL COMMENT '赛项名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `saixiangneirong` longtext COMMENT '赛项内容',
  `jibie` varchar(200) DEFAULT NULL COMMENT '级别',
  `canjiarenshu` int DEFAULT NULL COMMENT '参加人数',
  `baomingfeiyong` int DEFAULT NULL COMMENT '报名费用',
  `xiangqing` longtext COMMENT '详情',
  `jiezhiriqi` date DEFAULT NULL COMMENT '截至日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='赛项信息';

DELETE FROM `saixiangxinxi`;
INSERT INTO `saixiangxinxi` (`id`, `addtime`, `saixiangmingcheng`, `leixing`, `bisaididian`, `saixiangneirong`, `jibie`, `canjiarenshu`, `baomingfeiyong`, `xiangqing`, `jiezhiriqi`, `tupian`) VALUES
	(31, '2021-03-26 09:35:51', '赛项名称1', '个人赛', '比赛地点1', 'AD', '决赛', 1, 100, '<p>dD</p>', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian1.jpg'),
	(32, '2021-03-26 09:35:51', '赛项名称2', '团队赛', '比赛地点2', '赛项内容2', '初赛', 2, 2, '详情2', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian2.jpg'),
	(33, '2021-03-26 09:35:51', '赛项名称3', '团队赛', '比赛地点3', '赛项内容3', '初赛', 3, 3, '详情3', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian3.jpg'),
	(34, '2021-03-26 09:35:51', '赛项名称4', '团队赛', '比赛地点4', '赛项内容4', '初赛', 4, 4, '详情4', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian4.jpg'),
	(35, '2021-03-26 09:35:51', '赛项名称5', '团队赛', '比赛地点5', '赛项内容5', '初赛', 5, 5, '详情5', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian5.jpg'),
	(36, '2021-03-26 09:35:51', '赛项名称6', '团队赛', '比赛地点6', '赛项内容6', '初赛', 6, 6, '详情6', '2021-03-26', 'http://localhost:8080/springbootpx13e/upload/saixiangxinxi_tupian6.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1616751470388, '11', 'xuesheng', '学生', '3w7v3fswdvew4xwqiubrc2abdmkwvm49', '2021-03-26 09:37:55', '2021-03-26 10:37:55'),
	(2, 1, 'abo', 'users', '管理员', 'kndf0pt7vxaopalzqcn5qreilv0s1eqy', '2021-03-26 09:40:10', '2024-01-15 02:25:01'),
	(3, 11, '学生1', 'xuesheng', '学生', 'be7bg1rhky9vobel76iezioho08hxq73', '2024-01-15 01:23:33', '2024-01-15 02:26:49'),
	(4, 21, '教师1', 'jiaoshi', '教师', '0f7y3hnfjznpfx5hvekxzma1presjly4', '2024-01-15 01:26:20', '2024-01-15 02:26:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-26 09:35:51');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616751470389 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `tupian`) VALUES
	(11, '2021-03-26 09:35:51', '学生1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian1.jpg'),
	(12, '2021-03-26 09:35:51', '学生2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian2.jpg'),
	(13, '2021-03-26 09:35:51', '学生3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian3.jpg'),
	(14, '2021-03-26 09:35:51', '学生4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian4.jpg'),
	(15, '2021-03-26 09:35:51', '学生5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian5.jpg'),
	(16, '2021-03-26 09:35:51', '学生6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootpx13e/upload/xuesheng_tupian6.jpg'),
	(1616751470388, '2021-03-26 09:37:50', '11', '11', '11', '男', '15879546845', NULL, '445872269860415725', 'http://localhost:8080/springbootpx13e/upload/1616751532677.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
