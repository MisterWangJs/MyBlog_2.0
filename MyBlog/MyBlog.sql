/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.20-log : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Table structure for table `guestbook` */

DROP TABLE IF EXISTS `guestbook`;

CREATE TABLE `guestbook` (
  `guestid` int(10) NOT NULL AUTO_INCREMENT,
  `guestname` varchar(255) DEFAULT NULL,
  `guestemail` varchar(255) DEFAULT NULL,
  `guestcontent` text,
  `sendtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guestid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `guestbook` */

insert  into `guestbook`(`guestid`,`guestname`,`guestemail`,`guestcontent`,`sendtime`) values (1,'汪京生','1090781735@qq.com','欢迎来此留言哦~','2020-01-13 18:10:38 '),(3,'汪京生','','Come On !Come On !Come On !Come On !Come On !Come On !Come On !Come On !Come On !Come On !Come On !Come On !','2020-01-16 17:05:09 ');

/*Table structure for table `ip` */

DROP TABLE IF EXISTS `ip`;

CREATE TABLE `ip` (
  `ipid` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`ipid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ip` */

/*Table structure for table `myblog` */

DROP TABLE IF EXISTS `myblog`;

CREATE TABLE `myblog` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `pubtime` varchar(255) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `myblog` */

insert  into `myblog`(`bid`,`title`,`content`,`pubtime`,`author`,`type`) values (1,'随笔','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','2020-01-31 20:50:47	','汪京生','人生'),(3,'测试','测试','2020-01-31 20:51:47','汪京生','测试');

/*Table structure for table `saying` */

DROP TABLE IF EXISTS `saying`;

CREATE TABLE `saying` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `saycontent` text,
  `saytime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `saying` */

insert  into `saying`(`sid`,`img`,`saycontent`,`saytime`) values (1,'images/2.png','知人者智，自知者明。胜人者有力，自胜者强。','2020-01-13'),(2,'images/2.png','一个人即使已登上顶峰，也仍要自强不息。','2020-01-14'),(4,'images/2.png','我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。','2020-01-15'),(5,'images/2.png','那一个接一个的人走进我们的生命，并肩而行，渐行渐远，再然后，便是决绝和遗忘，当我们懂的这些的时候，我们开始长大，学会在啤酒和沉默之中藏起自己的心事，却在记忆中辗转反侧，直到有一天我们发现这一切都是命运，无可更改。','2020-01-16'),(6,'images/1.png','一天很短，短得来不及拥抱清晨，就已经手握黄昏。','2020-01-17'),(7,'images/2.png','业精于勤，荒于嬉；行成于思，毁于随。','2020-01-18'),(8,'images/2.png','卓越的人一大优点是：在不利与艰难的遭遇里百折不饶。','2020-01-19'),(9,'images/2.png','伟大的事业，需要决心，能力，组织和责任感。','2020-01-20'),(10,'images/2.png','古之立大事者，不惟有超世之才，亦必有坚忍不拔之志。','2020-01-21'),(11,'images/2.png','不要回避苦恼和困难，挺起身来向它挑战，进而克服它。','2020-01-22'),(12,'images/2.png','最困难的事情就是认识自己。','2020-01-23'),(13,'images/2.png','勇气通往天堂，怯懦通往地狱。','2020-01-24'),(14,'images/1.png','越是没有本领的就越加自命不凡。','2020-01-25'),(15,'images/2.png','最具挑战性的挑战莫过于提升自我。','2020-01-26'),(16,'images/2.png','业余生活要有意义，不要越轨。','2020-01-27'),(17,'images/2.png','最大的挑战和突破在于用人，而用人最大的突破在于信任人。','2020-01-28'),(18,'images/2.png','要使整个人生都过得舒适、愉快，这是不可能的，因为人类必须具备一种能应付逆境的态度。','2020-01-29'),(19,'images/1.png','只有永远躺在泥坑里的人，才不会再掉进坑里。','2020-01-30'),(20,'images/2.png','我这个人走得很慢，但是我从不后退。','2020-01-31'),(21,'images/2.png','2月第一天，加油！','2020-02-01');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`name`,`sex`,`email`,`tel`) values (1,'1090781735','548748264..ls','汪京生','男','1090781735@qq.com','18611499338'),(9,'3520648858','548748264..ls','汪京生','男','1090781735@qq.com','18611499338'),(12,'18611499338','548748264..ls','汪京生','男','1090781735@qq.com','18611499338'),(14,'15075262327','548748264..ls','汪京生','男','1090781735@qq.com','18611499338'),(15,'admin','admin','wjs','男','1090781735@qq.com','18611499338');

/*Table structure for table `vc` */

DROP TABLE IF EXISTS `vc`;

CREATE TABLE `vc` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `vcount` int(10) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vc` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
