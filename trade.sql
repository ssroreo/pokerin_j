/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - tradesystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`tradesystem` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `tradesystem`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`,`realname`) values ('可爱小猪','lijiang123123','李江');

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `localarea` varchar(10) NOT NULL,
  `property` varchar(20) NOT NULL,
  `housestyle` varchar(20) default NULL,
  `contentstyle` varchar(20) default NULL,
  `area` int(10) default NULL,
  `fitment` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  `contentname` varchar(50) default NULL,
  `antrum` varchar(20) default NULL,
  `floornumber` int(10) default NULL,
  `saleprice` int(10) default NULL,
  `basices` varchar(20) default NULL,
  `linkman` varchar(20) default NULL,
  `linkmethod` varchar(20) default NULL,
  `logindate` varchar(20) default NULL,
  `uselife` varchar(10) default NULL,
  `remark` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=gb2312;

/*Data for the table `information` */

insert  into `information`(`id`,`username`,`localarea`,`property`,`housestyle`,`contentstyle`,`area`,`fitment`,`address`,`contentname`,`antrum`,`floornumber`,`saleprice`,`basices`,`linkman`,`linkmethod`,`logindate`,`uselife`,`remark`) values (1,'可爱小猪','嘉陵区','42','423','房屋求租',10,'24','四川南充','423','23',2,12,'423','432','423','2009-07-01','432','23432'),(2,'四叶草','顺庆区','4','423','房屋出租',10,'423','四川南充','423','423',2,12,'423','42','423','2009-07-01','4232','234'),(3,'何双','高坪区','dsf','fds','房屋合租',10,'fa','四川南充','das','das',2,12,'das','das','das','2009-07-01','das','dsa'),(4,'何娟','高坪区','sd','ads','房屋求购',10,'4','四川南充','42','42',2,12,'432','423','432','2009-07-01','432','432'),(5,'null','顺庆区','ds','ds','房屋求租',10,'423','四川南充','432','单间',2,12,'423','432','432','2009-07-01','432','3123123'),(6,'null','顺庆区','23','42','房屋求租',10,'re','四川南充','we','单间',2,12,'rw','rwe','rew','2009-07-02','re','111'),(7,'小猪','顺庆区','cd','c','房屋求租',10,'sd','四川南充','das','das',2,12,'das','ads','da','2009-07-02','das','das'),(8,'李江','顺庆区','5','vsd','房屋求租',10,'fs','四川南充','ds','sd',2,12,'dsa','das','dsa','2009-07-03','asd','asd'),(9,'null','顺庆区','dsa','das','房屋求租',10,'dsa','四川南充','dsa','单间',2,12,'dsa','ads','dsa','2009-07-03','das','asd'),(10,'李江','嘉陵区','dsa','dsa','房屋求租',10,'dsa','四川南充','dsa','dsa',2,12,'sda','dsa','dsa','2009-07-03','dsa','das'),(11,'李江','嘉陵区','da','das','房屋求租',10,'dsa','四川南充','das','dsa',2,12,'dsa','dsa','dsa','2009-07-03','dsa','d'),(17,'李江','嘉陵区','',NULL,'房屋合租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(18,'李江','嘉陵区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(19,'李江','嘉陵区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(20,'李江','顺庆区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(21,'李江','顺庆区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(22,'李江','顺庆区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(23,'李江','顺庆区','',NULL,'房屋出租',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(26,'李江','顺庆区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(27,'李江','顺庆区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(28,'李江','顺庆区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(29,'李江','顺庆区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(30,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(31,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(32,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(33,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(34,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(35,'李江','高坪区','',NULL,'房屋求购',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(36,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(37,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(38,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(39,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(40,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(41,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(42,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(43,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(44,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(45,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(46,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(47,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(48,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(49,'李江','高坪区','',NULL,'房屋出售',10,NULL,'四川南充',NULL,NULL,2,12,NULL,NULL,NULL,'2009-07-03',NULL,NULL),(51,'老大','顺庆区','12','住宅','房屋求租',12,'好','南部县','春江花园','单间',3,22,'无','21','12',NULL,'12','212'),(53,'老大','顺庆区','312312','21','房屋求租',213,'12','是','3123','单间',12321,3123,'321312','21312','3123',NULL,'1232','312								321'),(54,'老大','顺庆区','12','私宅','房屋合租',12,'好','四川南充','没有','三室两厅',3,21,'好','李江','13458216708',NULL,'21','那里卡的事vcadl'),(55,'老大','顺庆区','321','132','房屋求租',11,'123','四川南充','21213','单间',2,3213,'213','2132','3123','Mon Jul 06','3123','312332'),(56,'老大','顺庆区','321','312','房屋求租',12,'没有','四川南充','没有','单间',312,321,'好','3123213','23123123','109-6-1','321','312312312'),(57,'老大','顺庆区','3213','21','房屋求租',32,'1221','si','123','单间',213,3213,'32','321','321','2099-6-1','3321','321312'),(58,'老大','顺庆区','123213','123123','房屋求租',21,'21321','南充','23','单间',123213,2312321,'南充','1231','23123123','2009-7-7','3213','21312'),(59,'老大','顺庆区','213','321','房屋出租',321,'3123','312','21','单间',321,321,'213213','132','3213','2009-7-7','213','321312'),(60,'老大','顺庆区','321','321','房屋合租',2312,'3213213','312','1221','单间',3,321,'23','321','321','2009-7-7','321','3213'),(61,'老大','顺庆区','2132','321','房屋合租',321,'12321','321','213','单间',213,213,'2133213','3213','321','2009-7-7','213','231'),(62,'老大','顺庆区','2132','321','房屋合租',321,'12321','321','213','单间',213,213,'2133213','3213','321','2009-7-7','213','231'),(63,'老大','顺庆区','123','没有','房屋合租',12,'3123','123123','213','单间',213,3123,'321','312','3213213','2009-7-7','213213','312312'),(64,'李江','顺庆区','21321','1','房屋合租',12,'12','21','21','单间',1,12,'21','31232','3123123','2009-7-7','321','312312');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `ndate` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`content`,`ndate`,`username`) values (1,'如何区分跃层住宅和复式住宅','签定购房合同时应注意什么？','2009-07-01','李江'),(2,'关注房价','没有内容','2009-07-01','李江'),(3,'房东租房不慎将面临罚款 ','房东租房不慎将面临罚款 ','2009-07-01','李江'),(4,'出租屋质量有问题 房客有权解约退租','出租屋质量有问题 房客有权解约退租','2009-07-01','李江'),(5,'租房中如何保障自己合法权益','租房中如何保障自己合法权益','2009-07-01','李江'),(7,'房屋租赁注意事项','房屋租赁注意事项','2009-07-01','李江'),(8,'房屋租赁流程','房屋租赁流程','2009-07-01','李江'),(9,'城市房屋租赁管理办法','城市房屋租赁管理办法','2009-07-01','李江'),(10,'高校毕业生租房：月租金最好不超过月收入','高校毕业生租房：月租金最好不超过月收入','2009-07-01','李江'),(13,'大家好','大家好','2009-7-6','可爱小猪');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) default NULL,
  `email` varchar(20) default NULL,
  `card` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`realname`,`sex`,`address`,`phone`,`email`,`card`) values (1,'老大','123123','李江','男','四川','13458216708','459104018@qq.com','9559982092623371312'),(5,'四叶草','123','何单','女','四川泸州','の2','fwe','fwefwefw'),(7,'李江','123','李江','男','四川南充','12345','234','1234'),(8,'何单','123','何单','女','四川泸州','1234','123','3123123'),(9,'小李','123','李江','男','四川南充','1234','234','2345'),(12,'555','111','123','男','213','213','3123','312312'),(13,'999','222','1323','男','321323','3123','3213','231321'),(14,'5555','444','1323','男','321323','3123','3213','231321'),(15,'8878','999','1323','男','321323','3123','3213','231321'),(16,'123456','123','李江','男','123','412','12321','312312');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
