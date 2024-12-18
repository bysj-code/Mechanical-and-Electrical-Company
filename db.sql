/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jidiangongsguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jidiangongsguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jidiangongsguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 10:35:29'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 10:35:29'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 10:35:29'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 10:35:29'),(5,'lingjian_types','机电零件类型',1,'机电零件类型1',NULL,NULL,'2023-04-26 10:35:29'),(6,'lingjian_types','机电零件类型',2,'机电零件类型2',NULL,NULL,'2023-04-26 10:35:29'),(7,'lingjian_types','机电零件类型',3,'机电零件类型3',NULL,NULL,'2023-04-26 10:35:29'),(8,'lingjian_types','机电零件类型',4,'机电零件类型4',NULL,NULL,'2023-04-26 10:35:29'),(9,'lingjian_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-26 10:35:29'),(10,'lingjian_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-26 10:35:29'),(11,'lingjian_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-26 10:35:29'),(12,'shebei_types','机电设备类型',1,'机电设备类型1',NULL,NULL,'2023-04-26 10:35:29'),(13,'shebei_types','机电设备类型',2,'机电设备类型2',NULL,NULL,'2023-04-26 10:35:29'),(14,'shebei_types','机电设备类型',3,'机电设备类型3',NULL,NULL,'2023-04-26 10:35:29'),(15,'shebei_types','机电设备类型',4,'机电设备类型4',NULL,NULL,'2023-04-26 10:35:29'),(16,'shebei_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-26 10:35:29'),(17,'shebei_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-26 10:35:29'),(18,'shebei_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-26 10:35:29'),(19,'kaoqin_types','考勤结果',1,'正常',NULL,NULL,'2023-04-26 10:35:29'),(20,'kaoqin_types','考勤结果',2,'异常',NULL,NULL,'2023-04-26 10:35:29'),(21,'kaoqin_types','考勤结果',3,'请假',NULL,NULL,'2023-04-26 10:35:29'),(22,'qingjia_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-26 10:35:29'),(23,'qingjia_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-26 10:35:29'),(24,'qingjia_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-26 10:35:29');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-26 10:35:51','公告详情1','2023-04-26 10:35:51'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-26 10:35:51','公告详情2','2023-04-26 10:35:51'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-26 10:35:51','公告详情3','2023-04-26 10:35:51'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-26 10:35:51','公告详情4','2023-04-26 10:35:51'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-26 10:35:51','公告详情5','2023-04-26 10:35:51'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-26 10:35:51','公告详情6','2023-04-26 10:35:51'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-26 10:35:51','公告详情7','2023-04-26 10:35:51'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-26 10:35:51','公告详情8','2023-04-26 10:35:51'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-26 10:35:51','公告详情9','2023-04-26 10:35:51'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-26 10:35:51','公告详情10','2023-04-26 10:35:51'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-26 10:35:51','公告详情11','2023-04-26 10:35:51'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-26 10:35:51','公告详情12','2023-04-26 10:35:51'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-26 10:35:51','公告详情13','2023-04-26 10:35:51'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-26 10:35:51','公告详情14','2023-04-26 10:35:51');

/*Table structure for table `kaoqin` */

DROP TABLE IF EXISTS `kaoqin`;

CREATE TABLE `kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kaoqin_types` int(11) DEFAULT NULL COMMENT '考勤结果 Search111 ',
  `kaoqin_content` longtext COMMENT '考勤详情 ',
  `kaoqin_time` date DEFAULT NULL COMMENT '考勤日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `kaoqin` */

insert  into `kaoqin`(`id`,`yonghu_id`,`kaoqin_types`,`kaoqin_content`,`kaoqin_time`,`insert_time`,`create_time`) values (1,3,1,'考勤详情1','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(2,1,1,'考勤详情2','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(3,2,1,'考勤详情3','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(4,1,3,'考勤详情4','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(5,3,1,'考勤详情5','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(6,1,2,'考勤详情6','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(7,1,1,'考勤详情7','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(8,3,3,'考勤详情8','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(9,1,3,'考勤详情9','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(10,2,1,'考勤详情10','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(11,3,2,'考勤详情11','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(12,1,1,'考勤详情12','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(13,2,2,'考勤详情13','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(14,3,1,'考勤详情14','2023-04-26','2023-04-26 10:35:51','2023-04-26 10:35:51'),(15,1,1,'正常','2023-04-27','2023-04-26 13:16:08','2023-04-26 13:16:08');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kehu_uuid_number` varchar(200) DEFAULT NULL COMMENT '客户编号 Search111 ',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '客户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`kehu_uuid_number`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`kehu_email`,`new_money`,`create_time`) values (1,'1682476551385','客户姓名1','17703786901','410224199010102001','upload/kehu1.jpg',1,'1@qq.com','293.91','2023-04-26 10:35:51'),(2,'1682476551413','客户姓名2','17703786902','410224199010102002','upload/kehu2.jpg',1,'2@qq.com','543.22','2023-04-26 10:35:51'),(3,'1682476551386','客户姓名3','17703786903','410224199010102003','upload/kehu3.jpg',2,'3@qq.com','776.80','2023-04-26 10:35:51'),(4,'1682476551368','客户姓名4','17703786904','410224199010102004','upload/kehu4.jpg',1,'4@qq.com','824.35','2023-04-26 10:35:51'),(5,'1682476551451','客户姓名5','17703786905','410224199010102005','upload/kehu5.jpg',2,'5@qq.com','766.82','2023-04-26 10:35:51'),(6,'1682476551455','客户姓名6','17703786906','410224199010102006','upload/kehu6.jpg',2,'6@qq.com','222.97','2023-04-26 10:35:51'),(7,'1682476551400','客户姓名7','17703786907','410224199010102007','upload/kehu7.jpg',2,'7@qq.com','979.15','2023-04-26 10:35:51'),(8,'1682476551393','客户姓名8','17703786908','410224199010102008','upload/kehu8.jpg',2,'8@qq.com','861.78','2023-04-26 10:35:51'),(9,'1682476551435','客户姓名9','17703786909','410224199010102009','upload/kehu9.jpg',2,'9@qq.com','203.96','2023-04-26 10:35:51'),(10,'1682476551422','客户姓名10','17703786910','410224199010102010','upload/kehu10.jpg',2,'10@qq.com','573.16','2023-04-26 10:35:51'),(11,'1682476551398','客户姓名11','17703786911','410224199010102011','upload/kehu11.jpg',2,'11@qq.com','787.89','2023-04-26 10:35:51'),(12,'1682476551404','客户姓名12','17703786912','410224199010102012','upload/kehu12.jpg',2,'12@qq.com','476.72','2023-04-26 10:35:51'),(13,'1682476551383','客户姓名13','17703786913','410224199010102013','upload/kehu13.jpg',1,'13@qq.com','237.13','2023-04-26 10:35:51'),(14,'1682476551407','客户姓名14','17703786914','410224199010102014','upload/kehu14.jpg',1,'14@qq.com','685.85','2023-04-26 10:35:51');

/*Table structure for table `lingjian` */

DROP TABLE IF EXISTS `lingjian`;

CREATE TABLE `lingjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `lingjian_name` varchar(200) DEFAULT NULL COMMENT '机电零件名称  Search111 ',
  `lingjian_uuid_number` varchar(200) DEFAULT NULL COMMENT '机电零件编号',
  `lingjian_photo` varchar(200) DEFAULT NULL COMMENT '机电零件照片',
  `lingjian_types` int(11) DEFAULT NULL COMMENT '机电零件类型 Search111',
  `lingjian_kucun_number` int(11) DEFAULT NULL COMMENT '机电零件库存',
  `lingjian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `lingjian_clicknum` int(11) DEFAULT NULL COMMENT '机电零件热度',
  `lingjian_content` longtext COMMENT '机电零件介绍 ',
  `lingjian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='机电零件';

/*Data for the table `lingjian` */

insert  into `lingjian`(`id`,`lingjian_name`,`lingjian_uuid_number`,`lingjian_photo`,`lingjian_types`,`lingjian_kucun_number`,`lingjian_new_money`,`lingjian_clicknum`,`lingjian_content`,`lingjian_delete`,`insert_time`,`create_time`) values (1,'机电零件名称1','1682476551429','upload/lingjian1.jpg',2,101,'299.72',356,'机电零件介绍1',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(2,'机电零件名称2','1682476551401','upload/lingjian2.jpg',2,102,'404.34',84,'机电零件介绍2',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(3,'机电零件名称3','1682476551424','upload/lingjian3.jpg',4,103,'153.41',181,'机电零件介绍3',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(4,'机电零件名称4','1682476551379','upload/lingjian4.jpg',2,104,'37.01',68,'机电零件介绍4',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(5,'机电零件名称5','1682476551403','upload/lingjian5.jpg',1,105,'358.08',320,'机电零件介绍5',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(6,'机电零件名称6','1682476551373','upload/lingjian6.jpg',2,106,'54.71',369,'机电零件介绍6',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(7,'机电零件名称7','1682476551387','upload/lingjian7.jpg',4,107,'335.96',24,'机电零件介绍7',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(8,'机电零件名称8','1682476551404','upload/lingjian8.jpg',3,108,'312.68',238,'机电零件介绍8',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(9,'机电零件名称9','1682476551364','upload/lingjian9.jpg',4,109,'16.84',33,'机电零件介绍9',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(10,'机电零件名称10','1682476551452','upload/lingjian10.jpg',2,1010,'259.63',193,'机电零件介绍10',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(11,'机电零件名称11','1682476551421','upload/lingjian11.jpg',4,1011,'129.91',421,'机电零件介绍11',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(12,'机电零件名称12','1682476551449','upload/lingjian12.jpg',1,1012,'101.05',68,'机电零件介绍12',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(13,'机电零件名称13','1682476551369','upload/lingjian13.jpg',3,1013,'410.21',164,'机电零件介绍13',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(14,'机电零件名称14','1682476551375','upload/lingjian14.jpg',3,1008,'136.32',465,'机电零件介绍14',1,'2023-04-26 10:35:51','2023-04-26 10:35:51');

/*Table structure for table `lingjian_order` */

DROP TABLE IF EXISTS `lingjian_order`;

CREATE TABLE `lingjian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lingjian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `lingjian_id` int(11) DEFAULT NULL COMMENT '机电零件',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `lingjian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `lingjian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='机电零件订单';

/*Data for the table `lingjian_order` */

insert  into `lingjian_order`(`id`,`lingjian_order_uuid_number`,`lingjian_id`,`kehu_id`,`yonghu_id`,`buy_number`,`lingjian_order_true_price`,`lingjian_order_types`,`insert_time`,`create_time`) values (4,'1682486122801',14,11,1,4,'545.28',104,'2023-04-26 13:15:23','2023-04-26 13:15:23');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qingjia_text` longtext COMMENT '理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '审核回复',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`qingjia_uuid_number`,`yonghu_id`,`qingjia_text`,`insert_time`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`qingjia_time`,`create_time`) values (1,'1682476551388',2,'理由1','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(2,'1682476551381',3,'理由2','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(3,'1682476551382',1,'理由3','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(4,'1682476551433',1,'理由4','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(5,'1682476551370',3,'理由5','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(6,'1682476551420',2,'理由6','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(7,'1682476551436',2,'理由7','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(8,'1682476551392',3,'理由8','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(9,'1682476551415',2,'理由9','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(10,'1682476551371',2,'理由10','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(11,'1682476551393',2,'理由11','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(12,'1682476551361',2,'理由12','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(13,'1682476551456',1,'理由13','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(14,'1682476551449',3,'理由14','2023-04-26 10:35:51',1,NULL,NULL,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(15,'1682486187852',1,'我要请假','2023-04-26 13:17:19',2,'海报','2023-04-26 13:19:56','2023-04-27 13:16:27','2023-04-26 13:17:19');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '机电设备名称  Search111 ',
  `shebei_uuid_number` varchar(200) DEFAULT NULL COMMENT '机电设备编号',
  `shebei_photo` varchar(200) DEFAULT NULL COMMENT '机电设备照片',
  `shebei_types` int(11) DEFAULT NULL COMMENT '机电设备类型 Search111',
  `shebei_kucun_number` int(11) DEFAULT NULL COMMENT '机电设备库存',
  `shebei_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shebei_clicknum` int(11) DEFAULT NULL COMMENT '机电设备热度',
  `shebei_content` longtext COMMENT '机电设备介绍 ',
  `shebei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='机电设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_name`,`shebei_uuid_number`,`shebei_photo`,`shebei_types`,`shebei_kucun_number`,`shebei_new_money`,`shebei_clicknum`,`shebei_content`,`shebei_delete`,`insert_time`,`create_time`) values (1,'机电设备名称1','1682476551394','upload/shebei1.jpg',2,101,'21.62',250,'机电设备介绍1',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(2,'机电设备名称2','1682476551389','upload/shebei2.jpg',1,102,'325.43',222,'机电设备介绍2',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(3,'机电设备名称3','1682476551404','upload/shebei3.jpg',1,103,'326.28',189,'机电设备介绍3',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(4,'机电设备名称4','1682476551440','upload/shebei4.jpg',2,104,'96.89',79,'机电设备介绍4',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(5,'机电设备名称5','1682476551365','upload/shebei5.jpg',1,105,'53.87',256,'机电设备介绍5',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(6,'机电设备名称6','1682476551445','upload/shebei6.jpg',3,106,'141.92',90,'机电设备介绍6',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(7,'机电设备名称7','1682476551460','upload/shebei7.jpg',3,107,'248.69',346,'机电设备介绍7',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(8,'机电设备名称8','1682476551404','upload/shebei8.jpg',2,108,'244.98',394,'机电设备介绍8',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(9,'机电设备名称9','1682476551382','upload/shebei9.jpg',3,109,'344.78',268,'机电设备介绍9',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(10,'机电设备名称10','1682476551447','upload/shebei10.jpg',3,1010,'246.40',235,'机电设备介绍10',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(11,'机电设备名称11','1682476551402','upload/shebei11.jpg',4,1011,'228.05',28,'机电设备介绍11',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(12,'机电设备名称12','1682476551407','upload/shebei12.jpg',2,1006,'12.80',105,'机电设备介绍12',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(13,'机电设备名称13','1682476551436','upload/shebei13.jpg',3,1013,'407.06',116,'机电设备介绍13',1,'2023-04-26 10:35:51','2023-04-26 10:35:51'),(14,'机电设备名称14','1682476551421','upload/shebei14.jpg',1,1014,'328.44',72,'机电设备介绍14',1,'2023-04-26 10:35:51','2023-04-26 10:35:51');

/*Table structure for table `shebei_order` */

DROP TABLE IF EXISTS `shebei_order`;

CREATE TABLE `shebei_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '机电设备',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shebei_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shebei_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='机电设备订单';

/*Data for the table `shebei_order` */

insert  into `shebei_order`(`id`,`shebei_order_uuid_number`,`shebei_id`,`kehu_id`,`yonghu_id`,`buy_number`,`shebei_order_true_price`,`shebei_order_types`,`insert_time`,`create_time`) values (1,'1682486142222',12,11,1,6,'76.80',104,'2023-04-26 13:15:42','2023-04-26 13:15:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','9j01j4uzfbnedaygxretp73g7k8kj88a','2023-04-26 10:40:33','2023-04-26 14:14:46'),(2,1,'admin','users','管理员','zrw0neuz2ujrclljoy1edpqbpdm2tiif','2023-04-26 10:53:06','2023-04-26 14:18:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 10:35:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1682476551450','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-26 10:35:51'),(2,'a2','123456','1682476551453','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-26 10:35:51'),(3,'a3','123456','1682476551425','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-26 10:35:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
