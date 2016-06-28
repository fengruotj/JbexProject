/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.25 : Database - jbex
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jbex` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jbex`;

/*Table structure for table `t_jbrxinfo` */

DROP TABLE IF EXISTS `t_jbrxinfo`;

CREATE TABLE `t_jbrxinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `dot_x` double NOT NULL,
  `dot_y` double NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '主题',
  `detail` varchar(200) NOT NULL COMMENT '细节',
  `time` datetime NOT NULL COMMENT '发布时间',
  `label` varchar(50) NOT NULL COMMENT '标签',
  `picture1` varchar(100) DEFAULT NULL COMMENT '图片1',
  `picture2` varchar(100) DEFAULT NULL COMMENT '图片2',
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_jbrxinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `t_jbrxinfo` */

insert  into `t_jbrxinfo`(`id`,`user_id`,`dot_x`,`dot_y`,`title`,`detail`,`time`,`label`,`picture1`,`picture2`,`size`) values (66,9,114.400167450715,30.505608676218305,'组队买衣服！！！！','有没有人今天下午想去优衣库买衣服的','2015-10-22 12:30:00','运动','null','null',9),(67,10,114.40259838166416,30.52083189361987,'网吧LOL开黑','聚龙网吧去开黑啊！','2015-11-09 22:42:00','KTV','null','null',20),(68,4,114.3764585528664,30.507998969713235,'谁想去呷哺呷哺吃饭！','今天打五折呀','2015-10-10 00:21:00','足球','jbex_68_1.png','null',0),(69,4,114.36077746418779,30.517628959887674,'谁去喝奶茶','今天买二送一','2015-10-14 00:23:00','吃饭','jbex_69_1.png','null',100),(70,4,114.4105982385221,30.47683659742281,'网吧LOL开黑','聚龙网吧去开黑啊！','2016-10-10 00:27:00','篮球','null','null',50),(71,4,114.38743836170178,30.509254443709775,'谁要去西区机房','一起编程','2016-10-10 00:28:00','奶茶','null','null',71),(72,4,114.4437445160723,30.514170113567484,'健身','有去东区健身的吗','2016-10-10 00:29:00','健身','null','null',40),(73,13,114.41119305215369,30.650495532802417,'删除','','2016-10-10 04:27:00','运动','null','null',1),(74,4,114.39245982679765,30.51807420766874,'校医院','今天挂针= =，有没有一起的','2015-12-15 15:01:00','奶茶','jbex_74_1.png','null',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
