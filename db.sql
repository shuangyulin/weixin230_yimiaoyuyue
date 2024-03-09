/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yimiaoyuyueshanxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yimiaoyuyueshanxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yimiaoyuyueshanxi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yimiaoyuyueshanxi/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yimiaoyuyueshanxi/upload/1649057765086.webp'),(3,'轮播图3','http://localhost:8080/yimiaoyuyueshanxi/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'yimiao_types','疫苗类型',1,'疫苗类型1',NULL,NULL,'2022-04-04 13:28:36'),(2,'yimiao_types','疫苗类型',2,'疫苗类型2',NULL,NULL,'2022-04-04 13:28:36'),(3,'yimiao_types','疫苗类型',3,'疫苗类型3',NULL,NULL,'2022-04-04 13:28:36'),(4,'yimiao_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-04 13:28:36'),(5,'yimiao_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-04 13:28:36'),(7,'yimiao_order_types','订单类型',3,'已完成',NULL,NULL,'2022-04-04 13:28:36'),(8,'yimiao_order_types','订单类型',4,'已评价',NULL,NULL,'2022-04-04 13:28:36'),(9,'yimiao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-04 13:28:36'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-04 13:28:37'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-04 13:28:37'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-04 13:28:37'),(13,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-04 13:28:37'),(14,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-04 13:28:37'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-04 13:28:37'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-04 13:28:37');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-04-04 13:28:53','2022-04-04 13:28:53','2022-04-04 13:28:53'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-04-04 13:28:53','2022-04-04 13:28:53','2022-04-04 13:28:53'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-04-04 13:28:53','2022-04-04 13:28:53','2022-04-04 13:28:53'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-04-04 13:28:53','2022-04-04 13:28:53','2022-04-04 13:28:53'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-04-04 13:28:53','2022-04-04 13:28:53','2022-04-04 13:28:53'),(6,NULL,1,NULL,'112233',5,2,'2022-04-04 15:10:02',NULL,'2022-04-04 15:10:02'),(7,NULL,NULL,1,'管理评论123',5,2,'2022-04-04 15:35:44',NULL,'2022-04-04 15:35:44');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/yimiaoyuyueshanxi/upload/news1.jpg','2022-04-04 13:28:53','公告详情1','2022-04-04 13:28:53'),(2,'公告标题2',3,'http://localhost:8080/yimiaoyuyueshanxi/upload/news2.jpg','2022-04-04 13:28:53','公告详情2','2022-04-04 13:28:53'),(3,'公告标题3',1,'http://localhost:8080/yimiaoyuyueshanxi/upload/news3.jpg','2022-04-04 13:28:53','公告详情3','2022-04-04 13:28:53'),(4,'公告标题4',2,'http://localhost:8080/yimiaoyuyueshanxi/upload/news4.jpg','2022-04-04 13:28:53','公告详情4','2022-04-04 13:28:53'),(5,'公告标题5',1,'http://localhost:8080/yimiaoyuyueshanxi/upload/news5.jpg','2022-04-04 13:28:53','公告详情5','2022-04-04 13:28:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ijknfrun0u87g6sfdw3omw9sx3lgte7i','2022-04-04 13:57:29','2022-04-04 16:40:23'),(2,1,'a1','yonghu','用户','mtz6ds1deid9pky25wt6y0oat0fsba0v','2022-04-04 14:14:31','2022-04-04 16:36:52');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yimiao` */

DROP TABLE IF EXISTS `yimiao`;

CREATE TABLE `yimiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗名称 Search111',
  `yimiao_types` int(11) DEFAULT NULL COMMENT '疫苗类型 Search111',
  `yimiao_photo` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  `yimiao_kucun_number` int(11) DEFAULT NULL COMMENT '剩余数量',
  `yimiao_new_money` decimal(10,2) DEFAULT NULL COMMENT '疫苗价格',
  `yimiao_renqun` varchar(200) DEFAULT NULL COMMENT '适宜接种人群',
  `yimiao_text` text COMMENT '接种前后禁忌',
  `yimiao_content` text COMMENT '疫苗详情',
  `yimiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='疫苗信息';

/*Data for the table `yimiao` */

insert  into `yimiao`(`id`,`yimiao_name`,`yimiao_types`,`yimiao_photo`,`yimiao_kucun_number`,`yimiao_new_money`,`yimiao_renqun`,`yimiao_text`,`yimiao_content`,`yimiao_delete`,`create_time`) values (1,'疫苗名称1',2,'http://localhost:8080/yimiaoyuyueshanxi/upload/yimiao1.jpg',19,'211.77','适宜接种人群1','接种前后禁忌1','疫苗详情1',1,'2022-04-04 13:28:53'),(2,'疫苗名称2',3,'http://localhost:8080/yimiaoyuyueshanxi/upload/yimiao2.jpg',55,'464.35','适宜接种人群2','接种前后禁忌2','疫苗详情2',1,'2022-04-04 13:28:53'),(3,'疫苗名称3',3,'http://localhost:8080/yimiaoyuyueshanxi/upload/yimiao3.jpg',384,'358.46','适宜接种人群3','接种前后禁忌3','疫苗详情3',1,'2022-04-04 13:28:53'),(4,'疫苗名称4',3,'http://localhost:8080/yimiaoyuyueshanxi/upload/yimiao4.jpg',234,'182.85','适宜接种人群4','接种前后禁忌4','疫苗详情4',1,'2022-04-04 13:28:53'),(5,'疫苗名称5',2,'http://localhost:8080/yimiaoyuyueshanxi/upload/yimiao5.jpg',468,'445.41','适宜接种人群5','接种前后禁忌5','疫苗详情5',1,'2022-04-04 13:28:53');

/*Table structure for table `yimiao_collection` */

DROP TABLE IF EXISTS `yimiao_collection`;

CREATE TABLE `yimiao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='疫苗收藏';

/*Data for the table `yimiao_collection` */

insert  into `yimiao_collection`(`id`,`yimiao_id`,`yonghu_id`,`yimiao_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-04 13:28:53','2022-04-04 13:28:53'),(3,3,3,1,'2022-04-04 13:28:53','2022-04-04 13:28:53'),(4,4,2,1,'2022-04-04 13:28:53','2022-04-04 13:28:53'),(5,5,2,1,'2022-04-04 13:28:53','2022-04-04 13:28:53');

/*Table structure for table `yimiao_commentback` */

DROP TABLE IF EXISTS `yimiao_commentback`;

CREATE TABLE `yimiao_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiao_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='疫苗评价';

/*Data for the table `yimiao_commentback` */

insert  into `yimiao_commentback`(`id`,`yimiao_id`,`yonghu_id`,`yimiao_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-04-04 13:28:53','回复信息1','2022-04-04 13:28:53','2022-04-04 13:28:53'),(2,2,3,'评价内容2','2022-04-04 13:28:53','回复信息2','2022-04-04 13:28:53','2022-04-04 13:28:53'),(3,3,2,'评价内容3','2022-04-04 13:28:53','回复信息3','2022-04-04 13:28:53','2022-04-04 13:28:53'),(4,4,2,'评价内容4','2022-04-04 13:28:53','回复信息4','2022-04-04 13:28:53','2022-04-04 13:28:53'),(5,5,3,'评价内容5','2022-04-04 13:28:53','回复信息5','2022-04-04 13:28:53','2022-04-04 13:28:53'),(7,4,1,'评价信息123','2022-04-04 15:08:57',NULL,NULL,'2022-04-04 15:08:57'),(8,5,1,'132','2022-04-04 15:37:18',NULL,NULL,'2022-04-04 15:37:18');

/*Table structure for table `yimiao_order` */

DROP TABLE IF EXISTS `yimiao_order`;

CREATE TABLE `yimiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '预约数量',
  `yimiao_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `yimiao_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='疫苗预约';

/*Data for the table `yimiao_order` */

insert  into `yimiao_order`(`id`,`yimiao_order_uuid_number`,`yimiao_id`,`yonghu_id`,`buy_number`,`yimiao_order_true_price`,`yimiao_order_types`,`insert_time`,`create_time`) values (6,'1649053454388',5,1,1,'445.41',4,'2022-04-04 14:24:15','2022-04-04 14:24:15'),(7,'1649056127369',4,1,1,'182.85',4,'2022-04-04 15:08:47','2022-04-04 15:08:47'),(8,'1649056157937',3,1,1,'358.46',2,'2022-04-04 15:09:18','2022-04-04 15:09:18'),(9,'1649057832422',5,1,1,'445.41',4,'2022-04-04 15:37:12','2022-04-04 15:37:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/yimiaoyuyueshanxi/upload/yonghu1.jpg','17703786901','1@qq.com',2,'8925.33',1,'2022-04-04 13:28:53'),(2,'a2','123456','用户姓名2','http://localhost:8080/yimiaoyuyueshanxi/upload/yonghu2.jpg','17703786902','2@qq.com',2,'0.00',1,'2022-04-04 13:28:53'),(3,'a3','123456','用户姓名3','http://localhost:8080/yimiaoyuyueshanxi/upload/yonghu3.jpg','17703786903','3@qq.com',1,'0.00',1,'2022-04-04 13:28:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
