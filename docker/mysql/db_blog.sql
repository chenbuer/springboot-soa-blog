/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.6.17 : Database - db_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_blog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`typeId`,`keyWord`) values (32,'用kindeditor写的第一篇博客ddddddddd','dddddddddddddddddddd\n','2017-04-17 01:40:39',0,0,'<p>dddddddddddddddddddd</p>',1,''),(35,'1111用kindeditor写的第一篇文章','						博客内容...\n					','2017-04-17 01:48:27',NULL,NULL,'						博客内容...\n					',2,'1111用kindeditor写的第一篇文章'),(44,'updateupdate','博客内容...','2017-04-18 01:03:40',NULL,NULL,'						博客内容...\n					',1,'updateupdate updateupdate'),(45,'用kindeditor编辑一个','用kindeditor编辑一个','2017-04-19 00:14:23',NULL,NULL,'用kindeditor编辑一个',2,'用kindeditor编辑一个'),(56,'lucenelucenelucene222','lucenelucenelucenelucene22','2017-04-21 00:08:35',NULL,NULL,'lucenelucenelucenelucene22',2,'lucene222'),(57,'lucenelucenelucene222','lucenelucenelucenelucene22','2017-04-21 00:08:51',NULL,NULL,'lucenelucenelucenelucene22',2,'lucene222'),(69,'欧文','志远\n','2017-07-12 02:28:03',0,0,'<p>志远</p>',2,''),(70,'志远','你是最棒的\n','2017-07-12 02:30:31',NULL,NULL,'<p>你是最棒的</p>',NULL,NULL),(71,'哟类型了','有类型了\n','2017-07-13 02:19:25',NULL,NULL,'<p>有类型了</p>',1,''),(72,'哟类型了','有类型了\n','2017-07-13 02:19:25',NULL,NULL,'<p>有类型了</p>',1,''),(73,'哟类型了zzzzzzzzzz','zzzzzzzzzz\n','2017-07-13 02:20:04',0,0,'<p>zzzzzzzzzz</p>',1,'');

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`typeName`,`orderNo`) values (1,'java',1),(2,'python',2);

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(100) DEFAULT NULL,
  `linkNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_link` */

insert  into `t_link`(`id`,`linkName`,`linkUrl`,`linkNo`) values (1,'我的博客','http://chenbuer.github.com',1),(2,'我的github','http://github.com/chenbuer',2),(3,'我的facebook','http://www.facebook.com',3);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`userName`,`password`,`profile`,`nickName`,`sign`,`imageName`) values (1,'chenbuer','231d4af96cba51e9b10d0d973b845406','<h3>我天啊 </h3><p>你这么帅</p>','chenzy','的说法额','chenbuer.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
