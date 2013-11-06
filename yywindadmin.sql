-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 11 月 06 日 04:12
-- 服务器版本: 5.5.32
-- PHP 版本: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `kiwind`
--
CREATE DATABASE IF NOT EXISTS `kiwind` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kiwind`;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT 'powerid',
  `name` varchar(20) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `logintime` int(10) NOT NULL,
  `loginip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `pid`, `name`, `pwd`, `logintime`, `loginip`) VALUES
(1, 6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1383706958, '10.19.110.32');

-- --------------------------------------------------------

--
-- 表的结构 `column`
--

CREATE TABLE IF NOT EXISTS `column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `cid` int(6) NOT NULL COMMENT '栏目类别',
  `mid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `othername` varchar(50) NOT NULL,
  `length` int(11) NOT NULL,
  `tip` varchar(250) NOT NULL,
  `defaultValue` varchar(50) NOT NULL,
  `ismust` tinyint(1) NOT NULL DEFAULT '1',
  `isshow` tinyint(1) NOT NULL DEFAULT '1',
  `issearch` tinyint(1) NOT NULL DEFAULT '0',
  `idx` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `field_type`
--

CREATE TABLE IF NOT EXISTS `field_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `text` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `field_type`
--

INSERT INTO `field_type` (`id`, `title`, `text`) VALUES
(1, 'text', '单行文本'),
(2, 'textarea', '多行文本'),
(3, 'editor', '编辑器'),
(4, 'image', '图片'),
(5, 'images', '多图片'),
(10, 'number', '数字'),
(7, 'datetime', '日期和时间'),
(8, 'type', '类别'),
(9, 'file', '文件上传'),
(6, 'date', '日期'),
(11, 'hidden', '隐藏域'),
(12, 'thumb', '缩略图');

-- --------------------------------------------------------

--
-- 表的结构 `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `table` varchar(20) NOT NULL,
  `desc` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `idx` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `cid`, `mid`, `pid`, `title`, `idx`) VALUES
(1, 0, 0, 0, '栏目内容类别', 1),
(2, 0, 0, 1, '列表页', 2),
(3, 0, 0, 1, '单网页', 3);

-- --------------------------------------------------------

--
-- 表的结构 `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `user_group`
--

INSERT INTO `user_group` (`id`, `title`, `idx`) VALUES
(1, '系统用户组', 1),
(2, '会员用户组', 2);

-- --------------------------------------------------------

--
-- 表的结构 `user_power`
--

CREATE TABLE IF NOT EXISTS `user_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `gid` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
