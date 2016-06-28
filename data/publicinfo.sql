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

/*Table structure for table `t_publicinfo` */

DROP TABLE IF EXISTS `t_publicinfo`;

CREATE TABLE `t_publicinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `dot_x` double NOT NULL,
  `dot_y` double NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '主题',
  `detail` varchar(200) NOT NULL COMMENT '细节',
  `time` datetime NOT NULL COMMENT '发布时间',
  `label` varchar(50) DEFAULT NULL COMMENT '标签',
  `picture1` varchar(100) DEFAULT NULL COMMENT '图片1',
  `picture2` varchar(100) DEFAULT NULL COMMENT '图片2',
  PRIMARY KEY (`id`),
  KEY `FK2EEAFF42C11C771D` (`user_id`),
  CONSTRAINT `FK2EEAFF42C11C771D` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

/*Data for the table `t_publicinfo` */

insert  into `t_publicinfo`(`id`,`user_id`,`dot_x`,`dot_y`,`title`,`detail`,`time`,`label`,`picture1`,`picture2`) values (79,65,114.40005276036841,30.528331642790654,'中国地质大学欢迎全体新生','中国地质学大学欢迎全体新生，祝新一代的地大人更具开拓精神!为地大争光','2015-09-01 12:01:00','运动','null','null'),(80,67,114.41769887794332,30.514768520409635,'华中科技大学讲座信息','今晚7.30分在文华楼由有阿里巴巴总裁马云的讲座，请有兴趣的同学们积极参与！','2015-09-24 09:00:00','运动','null','null'),(81,71,114.35590404828771,30.556225853232757,'武汉七大高校篮球联赛开赛啦','从今天开始武汉七大高校篮球联赛正式开赛!第一场将在武汉大学举行，同学们快来为自己的学校加油吧','2015-10-09 08:00:00','运动','null','null'),(82,71,114.36289593315578,30.522826702951622,'华师一附中名师孟昭奎来我校指导初三学生备考工作','2015年10月5日上午，华师一附中数学名师十堰地区招生负责人孟昭奎老师莅临十堰英才培训学校，为众多有志于报考华师一附中的优秀学子及家长做了关于2016年华师一附中高一招生相关信息及备考说明座谈会。','2015-10-07 20:06:00','运动','null','null'),(83,74,114.3553758981867,30.47365484831994,'【企业新闻】热烈祝贺华中农业大学“金新农班”正式成立','9月25日下午，第一届校企联办的金新农班在华中农业大学人文楼M507正式成立。经济管理学院党委副书记镇志勇、经济管理学院副院长申沛、金新农股份人资行政总监刘永生、招聘培训经理李钢、校企双方班主任陈蔚、何晋斌以及首届金新农班的30个学员出席了这次开班仪式。','2015-10-09 20:12:00','运动','null','null'),(84,76,114.36423338748385,30.52034441592929,'武汉理工大学马克思主义学院二〇一六年攻读硕士学位研究生招生简章','武汉理工大学是教育部直属的全国重点大学，是首批列入国家“211工程”重点建设的高校。在英国《泰晤士高等教育》2015年亚洲大学前100名排行榜上，我校名列第60位。学校现有三个校区，占地面积4000余亩，校舍总建筑面积逾156万平方米，四座现代化图书馆藏书400余万册。学校现有教职工5282人，其中专任教师2979人，专任教师中教授774人，副教授1346人；','2015-10-09 20:23:00','运动','null','null'),(85,78,114.38272731745309,30.474123851818977,'中南财经政法大学海南校友会众筹咖啡厅试业啦','邂逅咖啡厅，由中南财经政法大学海南校友会创办于2015年8月，是海南首家由文科高校校友会众筹创立的咖啡厅，经营餐饮、棋牌、茶艺、甜品。邂逅咖啡厅拥有1600平方米的经营面积','2015-10-09 20:27:00','运动','null','null'),(86,78,114.39827564623769,30.48314779566077,'中南民族大学2015年10月14日“校领导接待日”预告','根据《中南民族大学校领导接待日工作方案》及有关工作安排，现将2015年10月14日“校领导接待日”的有关事项预告如下：','2015-10-14 20:33:00','运动','null','null'),(87,81,114.39761310661665,30.520611961705846,'超市大减价','买口香糖送水杯','2015-10-11 20:39:00','运动','null','null'),(88,70,114.40340820589347,30.513213122781686,'珠宝设计大赛','请礼仪队的穿带珠宝走秀\n','2015-10-11 20:44:00','运动','null','null'),(89,79,114.40112070409532,30.51967951583099,'修表修车免费','','2015-10-12 20:48:00','运动','null','null'),(90,4,114.39472678081007,30.52446032449696,'第五元素合唱团练声','请团员到大学生活动中心二楼','2015-11-30 10:53:00','运动','null','null');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
