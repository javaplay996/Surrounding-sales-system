/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2avzt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2avzt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2avzt`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641825849 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-17 14:10:52',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-17 14:10:52',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-17 14:10:52',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-17 14:10:52',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-17 14:10:52',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-17 14:10:52',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618641825848,'2021-04-17 14:43:45',1618641402862,'浙江省金华市东阳市南马镇后坞','刘曦','15214121411','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zhoubianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641770678 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2avzt/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2avzt/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2avzt/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusstiezixinxi` */

DROP TABLE IF EXISTS `discusstiezixinxi`;

CREATE TABLE `discusstiezixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641794364 DEFAULT CHARSET=utf8 COMMENT='帖子信息评论表';

/*Data for the table `discusstiezixinxi` */

insert  into `discusstiezixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-17 14:10:52',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-17 14:10:52',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-17 14:10:52',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-17 14:10:52',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-17 14:10:52',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-17 14:10:52',6,6,'用户名6','评论内容6','回复内容6'),(1618641794363,'2021-04-17 14:43:13',1618641701257,1618641402862,'001','333333','我也喜欢啊');

/*Table structure for table `discusszhoubianshangcheng` */

DROP TABLE IF EXISTS `discusszhoubianshangcheng`;

CREATE TABLE `discusszhoubianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641764990 DEFAULT CHARSET=utf8 COMMENT='周边商城评论表';

/*Data for the table `discusszhoubianshangcheng` */

insert  into `discusszhoubianshangcheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 14:10:52',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 14:10:52',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 14:10:52',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 14:10:52',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 14:10:52',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 14:10:52',6,6,'用户名6','评论内容6','回复内容6'),(1618641764989,'2021-04-17 14:42:44',31,1618641402862,'001','222222','33333');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='音乐资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-17 14:10:52','音乐资讯','简介1112112','http://localhost:8080/ssm2avzt/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssm2avzt/upload/1618641593987.jpg\"></p><p>这里可以发布一些资讯内容。，，，，，</p>'),(92,'2021-04-17 14:10:52','标题2','简介2','http://localhost:8080/ssm2avzt/upload/news_picture2.jpg','内容2'),(93,'2021-04-17 14:10:52','标题3','简介3','http://localhost:8080/ssm2avzt/upload/news_picture3.jpg','内容3'),(94,'2021-04-17 14:10:52','标题4','简介4','http://localhost:8080/ssm2avzt/upload/news_picture4.jpg','内容4'),(95,'2021-04-17 14:10:52','标题5','简介5','http://localhost:8080/ssm2avzt/upload/news_picture5.jpg','内容5'),(96,'2021-04-17 14:10:52','标题6','简介6','http://localhost:8080/ssm2avzt/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zhoubianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641861753 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618641840125,'2021-04-17 14:43:59','202141714435216829445','zhoubianshangcheng',1618641402862,36,'商品名称6','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian6.jpg',2,99.9,99.9,244.8,199.8,1,'已取消','浙江省金华市东阳市南马镇后坞','15214121411','刘曦'),(1618641840460,'2021-04-17 14:43:59','202141714435215796276','zhoubianshangcheng',1618641402862,31,'为爱而生海报','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian1.jpg',3,15,15,244.8,45,1,'已退款','浙江省金华市东阳市南马镇后坞','15214121411','刘曦'),(1618641861528,'2021-04-17 14:44:20','202141714441359289738','zhoubianshangcheng',1618641402862,31,'为爱而生海报','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian1.jpg',3,15,15,244.8,45,1,'已支付','浙江省金华市东阳市南马镇后坞','15214121411','刘曦'),(1618641861752,'2021-04-17 14:44:20','202141714441359826354','zhoubianshangcheng',1618641402862,36,'商品名称6','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian6.jpg',2,99.9,99.9,244.8,199.8,1,'已完成','浙江省金华市东阳市南马镇后坞','15214121411','刘曦');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (21,'2021-04-17 14:10:52','海报'),(22,'2021-04-17 14:10:52','唱片'),(23,'2021-04-17 14:10:52','其他'),(24,'2021-04-17 14:10:52','商品类型4'),(25,'2021-04-17 14:10:52','商品类型5'),(26,'2021-04-17 14:10:52','商品类型6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641755488 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618641755487,'2021-04-17 14:42:35',1618641402862,31,'zhoubianshangcheng','为爱而生海报','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian1.jpg');

/*Table structure for table `tiezixinxi` */

DROP TABLE IF EXISTS `tiezixinxi`;

CREATE TABLE `tiezixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tiezineirong` longtext COMMENT '帖子内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641701258 DEFAULT CHARSET=utf8 COMMENT='帖子信息';

/*Data for the table `tiezixinxi` */

insert  into `tiezixinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`yinle`,`fabushijian`,`yonghuming`,`xingming`,`tiezineirong`,`thumbsupnum`,`crazilynum`) values (41,'2021-04-17 14:10:52','标题1','类型1','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian1.jpg','','2021-04-17 14:10:52','用户名1','姓名1','帖子内容1',2,2),(42,'2021-04-17 14:10:52','标题2','类型2','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian2.jpg','','2021-04-17 14:10:52','用户名2','姓名2','帖子内容2',2,2),(43,'2021-04-17 14:10:52','标题3','类型3','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian3.jpg','','2021-04-17 14:10:52','用户名3','姓名3','帖子内容3',3,3),(44,'2021-04-17 14:10:52','标题4','类型4','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian4.jpg','','2021-04-17 14:10:52','用户名4','姓名4','帖子内容4',4,4),(45,'2021-04-17 14:10:52','标题5','类型5','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian5.jpg','','2021-04-17 14:10:52','用户名5','姓名5','帖子内容5',5,5),(46,'2021-04-17 14:10:52','标题6','类型6','http://localhost:8080/ssm2avzt/upload/tiezixinxi_tupian6.jpg','','2021-04-17 14:10:52','用户名6','姓名6','帖子内容6',6,6),(1618641701257,'2021-04-17 14:41:40','XX帖子','音乐','http://localhost:8080/ssm2avzt/upload/1618641673380.jpg','http://localhost:8080/ssm2avzt/upload/1618641693431.flac','2021-04-17 14:40:39','001','刘曦','<p><img src=\"http://localhost:8080/ssm2avzt/upload/1618641690877.jpg\"></p><p>这里可以补一些帖子内容的。。。</p>',1,0);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','8gbst0r0zbk8wxtqptv2yuu3fnoc8ttd','2021-04-17 14:14:00','2021-04-17 15:44:48'),(2,11,'1','yonghu','用户','6ois6u4ujq939rma0yxipzdmtslm1fac','2021-04-17 14:33:48','2021-04-17 15:40:19'),(3,1618641402862,'001','yonghu','用户','gs1ojjerusyusokczh6pjizmhkj8k4yf','2021-04-17 14:36:49','2021-04-17 15:45:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 14:10:52');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618641402863 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`,`money`) values (11,'2021-04-17 14:10:52','1','1','姓名1','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881',100),(12,'2021-04-17 14:10:52','用户2','123456','姓名2','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882',100),(13,'2021-04-17 14:10:52','用户3','123456','姓名3','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883',100),(14,'2021-04-17 14:10:52','用户4','123456','姓名4','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884',100),(15,'2021-04-17 14:10:52','用户5','123456','姓名5','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885',100),(16,'2021-04-17 14:10:52','用户6','123456','姓名6','男','http://localhost:8080/ssm2avzt/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886',100),(1618641402862,'2021-04-17 14:36:42','001','001','刘曦','女','http://localhost:8080/ssm2avzt/upload/1618641418082.jpg','44444444@15.com','15214121411',232743);

/*Table structure for table `zhoubianshangcheng` */

DROP TABLE IF EXISTS `zhoubianshangcheng`;

CREATE TABLE `zhoubianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `danwei` varchar(200) NOT NULL COMMENT '单位',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='周边商城';

/*Data for the table `zhoubianshangcheng` */

insert  into `zhoubianshangcheng`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`danwei`,`shangjiariqi`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2021-04-17 14:10:52','为爱而生海报','海报','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian1.jpg','张','2021-04-17','<p><img src=\"http://localhost:8080/ssm2avzt/upload/1618641514857.jpg\"></p><p>这里可发布一些相关商品详情，可以图文结合描述的，这里的所有内容都用于测试功能的，都是可以自行添加修改删除丶替换的。。</p>',15,10,94),(32,'2021-04-17 14:10:52','商品名称2','商品类型2','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian2.jpg','单位2','2021-04-17','商品详情2',99.9,2,99),(33,'2021-04-17 14:10:52','商品名称3','商品类型3','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian3.jpg','单位3','2021-04-17','商品详情3',99.9,3,99),(34,'2021-04-17 14:10:52','商品名称4','商品类型4','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian4.jpg','单位4','2021-04-17','商品详情4',99.9,4,99),(35,'2021-04-17 14:10:52','商品名称5','商品类型5','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian5.jpg','单位5','2021-04-17','商品详情5',99.9,5,99),(36,'2021-04-17 14:10:52','商品名称6','商品类型6','http://localhost:8080/ssm2avzt/upload/zhoubianshangcheng_tupian6.jpg','单位6','2021-04-17','商品详情6',99.9,6,95);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
