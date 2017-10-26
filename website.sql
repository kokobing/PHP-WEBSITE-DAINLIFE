-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 26 日 01:59
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `dainlife`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 1);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品目录', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, '考核统计', '', '/admin/hr/hr_exam.php', 4, 2, 18, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- 导出表中的数据 `exam`
-- 

INSERT INTO `exam` VALUES (15, 1, 'dd', 'D', '2010-10-01');
INSERT INTO `exam` VALUES (16, 1, 'ww', 'D', '2010-09-01');
INSERT INTO `exam` VALUES (17, 1, 'dr', 'D', '2010-12-01');
INSERT INTO `exam` VALUES (18, 1, 'rr', 'S', '2010-12-01');
INSERT INTO `exam` VALUES (19, 1, 'tt', 'T', '2010-10-01');
INSERT INTO `exam` VALUES (20, 1, '张荣', 'F', '2010-08-01');
INSERT INTO `exam` VALUES (21, 1, '收发', 'D', '2010-06-01');
INSERT INTO `exam` VALUES (22, 1, '张荣', 'F', '2010-12-01');
INSERT INTO `exam` VALUES (23, 1, '吕品', 'U', '2010-05-01');
INSERT INTO `exam` VALUES (24, 1, '囸打开', 'G', '2010-04-01');
INSERT INTO `exam` VALUES (25, 1, 'ss', 'S', '2010-12-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2012-02-29 13:02:24', '180.174.247.178');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, '页脚-版权所有文字', '', 'Copyright © 2010 SHANGHAI DAIN&nbsp;TRADING CO., \r\nLTD', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\nCopyright © 2010 SHANGHAI DAIN&nbsp;TRADING CO., \r\nLTD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n<A href="http://www.miitbeian.gov.cn/" class="link_navi">沪ICP备09077401号</A>', 1);
INSERT INTO `layout` VALUES (8, 1, '网站LOGO', '', '网站LOGO', '', 1);
INSERT INTO `layout` VALUES (9, 1, '首页-推荐产品', '', '首页-推荐产品', '', 1);
INSERT INTO `layout` VALUES (10, 1, '首页-BANNER图', '', '首页-BANNER图 592 X 300', '', 1);
INSERT INTO `layout` VALUES (11, 1, '首页-MainAdv左侧介绍', '', '首页-MainAdv左侧介绍', '韩国Motz公司推出的最新品，第五个故事在原有的FM收音机，AUX音箱功能外增加了Micro SD MP3 File Player功能，<br />\r\n更迷你更可爱了...', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (25, 4, 1, '', '', '', '1325665442.jpg', '', 1, 'JPG', '2012-01-04 16:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (6, 0, 1, '', '', '', '', '', 1, '', '2011-04-15 22:40:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (41, 9, 1, '触摸感温杯', '出自韩国ID+IM设计实验室团队所设计,命名为Heartea的触摸感温杯,当你手握触摸杯的时...', 'productshow.php?dirid=53&pid=17', '1330487847.jpg', '', 1, 'JPG', '2012-02-29 11:57:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (40, 10, 1, '', '', '', '1330485858.jpg', '', 1, 'JPG', '2012-02-29 11:24:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (38, 11, 1, '', '', '', '1330484525.jpg', '', 1, 'JPG', '2012-02-29 11:02:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (21, 3, 1, 'EATON工业过滤', 'Checker是一款功能强大的视觉传感器，内置光源和镜头，检测距离可调，通过辨别外观检测部件，提供无可比拟的检测性能和可靠性。', '', '1325655066.jpg', '', 1, 'JPG', '2012-01-04 13:30:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (22, 3, 1, 'TST快速接头', '激光位移传感器是采用激光三角原理或回波分析原理进行非接触位置、位移测量的精密传感器。', '', '1325655107.jpg', '', 1, 'JPG', '2012-01-04 13:31:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (23, 3, 1, 'Borries针式打标系统', 'DSP激光安全栅专为折弯机提供安全防护，为操作者的安全和机器的生产效率提供有效的解决方案。拥有前、中、后区域防护。', '', '1325655135.jpg', '', 1, 'JPG', '2012-01-04 13:32:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (24, 3, 1, 'Sintec Optronics激光打标系统', 'FT20WT体积小巧，设置简单，容易安装。白色光源，可靠检测色彩标志，最微小的差异也不放过，还具体高度的抗震特性。', '', '1325655155.jpg', '', 1, 'JPG', '2012-01-04 13:32:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (26, 4, 1, '', '', '', '1325665448.jpg', '', 1, 'JPG', '2012-01-04 16:24:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (27, 4, 1, '', '', '', '1325665453.jpg', '', 1, 'JPG', '2012-01-04 16:24:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (28, 4, 1, '', '', '', '1325665458.jpg', '', 1, 'JPG', '2012-01-04 16:24:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (30, 7, 1, 'EATON', 'Checker是一款功能强大的视觉传感器，内置光源和镜头，检测距离可调，通过辨别外观检测部件，提供无可比拟的检测性能和可靠性.', '', '1325687213.jpg', '', 1, 'JPG', '2012-01-04 22:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (31, 7, 1, 'TST', '激光位移传感器是采用激光三角原理或回波分析原理进行非接触位置、位移测量的精密传感器.', '', '1325687239.jpg', '', 1, 'JPG', '2012-01-04 22:27:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (32, 7, 1, 'Borries', 'DSP激光安全栅专为折弯机提供安全防护，为操作者的安全和机器的生产效率提供有效的解决方案。拥有前、中、后区域防护.', '', '1325687261.jpg', '', 1, 'JPG', '2012-01-04 22:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (33, 7, 1, 'Sintec Optronics', 'FT20WT体积小巧，设置简单，容易安装。白色光源，可靠检测色彩标志，最微小的差异也不放过，还具体高度的抗震特性.', '', '1325687298.jpg', '', 1, 'JPG', '2012-01-04 22:28:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (49, 8, 1, '', '', '', '1330496402.jpg', '', 1, 'JPG', '2012-02-29 14:20:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (42, 9, 1, '第五个故事', '韩国Motz公司推出的最新品，第五个故事在原有的FM收音机，AUX音箱功能外增加了Micro SD MP3 File Player功能，更迷你更可爱了...', '/productshow.php?dirid=12&amp;pid=20', '1330488801.jpg', '', 1, 'JPG', '2012-02-29 12:13:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (43, 9, 1, 'ACORN SPEAKER', '橡果产品采用天然杏仁树半手工制成的想过造型mini音箱&amp;收音机.大小仅为30mm,样子虽小五脏俱全,主板和其他元件仅为一个硬币...', '/productshow.php?dirid=12&amp;pid=18', '1330491863.jpg', '', 1, 'JPG', '2012-02-29 13:04:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (44, 9, 1, 'WOODEN FRUIT', '苹果音箱采用高级ROSE WOOD精心制作(ROSE WOOD一般用于制作高档乐器),让您的掌上设备有完美无缺的音质...', '/productshow.php?dirid=12&amp;pid=21', '1330491935.jpg', '', 1, 'JPG', '2012-02-29 13:05:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (45, 9, 1, 'TEA DIVER', 'Tea Diver的动机是来自传统潜水员形状。作为一个情感化设计的产品，当您用tea diver喝茶时，将茶潜水员放入杯子或茶壶...', '/productshow.php?dirid=6&amp;pid=11', '1330492017.gif', '', 1, 'GIF', '2012-02-29 13:06:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (46, 9, 1, 'MEMO CLOCK', 'DESIGN ONE公司推出的memo clock,属100% handmade陶瓷产品,显示时间的同时可让你标记重要事件...', '/productshow.php?dirid=71&amp;pid=15', '1330492122.jpg', '', 1, 'JPG', '2012-02-29 13:08:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (47, 9, 1, 'MUG ZERO', 'nothing design公司的mug-zero马克杯,采用国际先进的陶瓷技术,45度的倾斜设计可防止灰尘等空气微小粒子掉入杯内...', '/productshow.php?dirid=5&amp;pid=5', '1330492185.jpg', '', 1, 'JPG', '2012-02-29 13:09:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (48, 9, 1, 'EGG MONEY', 'DESIGN ONE公司的egg money储存罐,属100%handmade陶瓷产品,以可爱蛋壳模样设计,可在光滑的陶瓷表面上...', '/productshow.php?dirid=71&amp;pid=16', '1330492284.jpg', '', 1, 'JPG', '2012-02-29 13:11:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, '新闻动态', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (3, 1, '公司新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (4, 1, '产品新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (5, 1, '行业新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (19, 1, 'Company News', '', 1, 18, 2, 19);
INSERT INTO `newsdir` VALUES (18, 1, 'News', '', 1, 0, 1, 18);
INSERT INTO `newsdir` VALUES (15, 1, '最新公告', '', 1, 1, 2, 15);
INSERT INTO `newsdir` VALUES (16, 1, '加入我们', '', 1, 1, 2, 16);
INSERT INTO `newsdir` VALUES (17, 1, '技术支持', '', 1, 1, 2, 17);
INSERT INTO `newsdir` VALUES (20, 1, 'Product News', '', 1, 18, 2, 20);
INSERT INTO `newsdir` VALUES (21, 1, 'Industry News', '', 1, 18, 2, 21);
INSERT INTO `newsdir` VALUES (22, 1, 'Announcements', '', 1, 18, 2, 22);
INSERT INTO `newsdir` VALUES (23, 1, 'Join Us', '', 1, 18, 2, 23);
INSERT INTO `newsdir` VALUES (24, 1, 'Technical Support', '', 1, 18, 2, 24);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (73, 19, 0, 1, '棉价不是纺织服装企业唯一判断市场的方法 ', '棉价不是纺织服装企业唯一判断市场的方法 ', '<p>　　　eeee春江水暖鸭先知，这是大家熟知的道理。纺织企业在判断市场走向时一般都是把棉花价格作为依据，但从目前的情况看，仅凭这一依据来判断是不够的。今年2月的棉花期货市场价格曾达到每吨34000多元，到本周降到28000多元。现在市场正处于一个渐变的过程，此前棉花大涨是受棉花供求缺口的影响，而现在市场正在悄悄发生变化，棉花价格的回落说明棉纺织企业的生产正处在调整时期。可能有些人认为棉花价格的下跌是件好事，殊不知，企业在高价位时购买的棉花还没销售出去，亏损的买卖还得硬着头皮做下去。</p>\r\n<p>　　影响纺织行业的因素还有很多。例如纺机企业，其所需的原材料价格近来也在逐步回落，从本周期货市场上看，钢材价格上涨的趋势受到遏制，铜的价格与去年年底相比每吨下降了近7000元，橡胶的价格也呈回落趋势。最近人民币的持续加息，加快了资金的回笼，市场上的货币流动性开始收紧。此外，纺织市场上原有的一些不确定因素也频频释出，给纺织企业判断未来市场增加了困难。受上述因素影响，纺机市场也一改年初时的红火局面，一些原来坐在纺机厂门口急着拿货的客户也不见了踪影。河北一家纺机企业负责人说，今年的买卖特别不好做，主要原因是市场波动性大。去年棉花、钢材等价格一路上涨，今年从2月底开始有了较大的起伏，这种剧烈的市场波动不仅在企业心理上造成极大的震撼，而且还给现在的生产带来某种不确定的感觉，市场观望的态度也由此产生。</p>\r\n<p>　　当前，资金紧缺是很多企业面临的共同问题。然而，我们有些同行却乐观地认为，纺织行业一直站在市场经济的最前沿，绝大多数企业的资金基本靠自己解决或者民间借贷，与国家商业银行基本不发生关系，国家的紧缩政策不会对纺织行业造成很大影响。此观点大错特错了。现在所有的行业都相互关联、相互交织，不可能大河没水小河流。市场顺畅大家皆大欢喜；如果资金一天比一天紧张，依照历史经验，毁约的就会增多，麻烦也会增多。因此，我们纺织企业不能只从个别现象看问题，我们必须从货币、原材料、贸易等不同方面、不同角度来全面判断纺织行业的未来走势，这样我们的企业才能立于不败之地。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:25:31', '2012-01-05 11:58:02', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (72, 4, 0, 1, '今年美国棉花种植面积高于预估', '今年美国棉花种植面积高于预估', '<p>　　孟山都公司总裁DavidRhylander称，今年美国农户的棉花种植面积可能将高于政府预估，预计美国2011年棉花种植面积在1280-1300万英亩，</p>\r\n<p>　　因棉价上扬刺激农户的种植兴趣，且可能出现棉花的套种。</p>\r\n<p>　　生物科技种子企业--孟山都公司(MonsantoCo。)总裁David Rhylander称，&ldquo;我认为他们低估了美国2011年棉花种植面积，&rdquo;</p>\r\n<p>　　Rhylander预计美国2011年棉花种植面积在1280-1300万英亩，美国农业部(USDA)上周五公布的4月供需报告显示，美国2010/11年度棉花种植面积预估为1097万英亩，与3月份报告持平。</p>\r\n<p>　　美国2009/10年度棉花种植面积预估为915万英亩，2008/09年度实际种植面积为947万英亩。</p>\r\n<p>　　美国2011年棉花种植面积扩大的关键因素是价格。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:24:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (70, 4, 0, 1, '经济数据多次遭提前泄露 统计局发言人严厉谴责', '经济数据多次遭提前泄露 统计局发言人严厉谴责', '<p>&nbsp;&nbsp;&nbsp; 　国务院新闻办定于2011年4月15日(星期五)上午10时在国务院新闻办新闻发布厅举行新闻发布会，请国家统计局新闻发言人、国民经济综合统计司司长盛来运介绍今年一季度国民经济运行情况，并回答记者提问。</p>\r\n<p>　　彭博新闻社记者：</p>\r\n<p>　　昨天凤凰卫视就已经报道了相关数据，而且这些数据在今天的发布会上也得到了印证，同样的事情在1月份和去年6月份也出现过，这些消息在发布会之前就被泄露出去了，有没有相关的程序来调查这种提前泄露的情况，会不会在未来防止这种情况发生，谁来负责相关的调查？</p>\r\n<p>　　盛来运：</p>\r\n<p>　　国家统计局严厉谴责任何泄露还在保密期数据的行为，我们相信任何违法的行为都必将会受到法律的制裁。国家统计局也一直高度重视发布前数据的保密工作，为此制定了相关的管理制度和程序，进一步缩小了涉密数据的人员和范围。</p>\r\n<p>　　特别是近两年，国家统计局根据公平、公正、公开、透明的原则，建立和进一步规范了统计信息的发布制度，国家统计局也正在听取各方面的意见，研究进一步完善发布制度问题，改进的方向是进一步缩短数据生产到发布的时间，尽可能减少数据被泄露的风险。</p>\r\n<p>　　最后我还想提醒一点，《中华人民共和国保密法》也有规定，一切国家机关、党政团体、企事业单位和公民都有保守国家秘密的义务。</p>\r\n<p>　　同时也规定在互联网和其他公共信息网络上传播国家秘密的也应该给予相应的责任追究。我们国家互联网新闻信息服务管理规定第19条也明确规定，登载发送的新闻信息不得含有危害国家安全、泄露国家秘密的内容。所以，我们希望大家一起来遵守相关的法律和规定。谢谢大家！</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:22:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (71, 5, 0, 1, '江苏鑫缘茧丝绸集团将跨越式发展 ', '江苏鑫缘茧丝绸集团将跨越式发展 ', '<p>　　　近年来，江苏鑫缘茧丝绸集团立足海安传统蚕桑产业资源，彰显精深加工优势，实施品牌经营，推进产品精品化、织造无梭化、品种多样化，成为中国丝绸行业唯一拥有&ldquo;一个中国驰名商标、三个中国名牌、五类国家免检产品&rdquo;的跨国企业。<br />\r\n<br />\r\n　　重研发。集团利用自身技术优势，制定了国际国内先进的蚕茧烘干、制丝、丝织、服饰、床上用品、染整等方面的先进工艺路线，&ldquo;鑫缘&rdquo;牌蚕茧、桑蚕丝、真丝绸、服装及床上用品质量达到国际领先水平。拥有自主知识产权的桑蚕丝和利用新材料、新工艺生产的真丝绸产品，成为国内外客商首选产品。部分桑蚕丝科研成果达到世界先进水平，产品被法国巴黎、荷兰、韩国等地商场指定为专营产品。<br />\r\n　　强引进。集团先后引进和新上飞宇系列自动缫丝机，意大利产剑杆织机、整经机、真丝倍捻机、无捻并丝机，瑞士产精密络筒机，日发牌真丝针织圆机等国际国内一流的生产设备，借助自身拥有先进的生产工艺流程，产品质量达到国际一流，梭织绸和针织绸产品成为市场抢手货。<br />\r\n<br />\r\n　　推攻关。集团创立了国家级星火龙头企业科技创新中心，与苏州大学联合成立了&ldquo;丝绸新技术(产品)研发中心&rdquo;，承担了国家、省、市科研项目20多项。先后承担了国家&ldquo;双高一优&rdquo;工程项目、国家农业综合开发重点项目和茧丝绸风险基金项目。2004年《制丝生产在线质量监控系统软件的研发及推广》项目通过江苏省科技成果鉴定；《纳米级再生蚕丝纤维制品的研制与开发》和《多功能蚕丝被的研究与开发》列为2004年江苏省科技攻关项目。2005年《天然彩色茧丝加工技术研究及生产应用》和《以蚕桑副产品为原料的丝绸草木染加工技术研究》再次列为江苏省科技攻关项目，运用基因工程生产出天然彩色茧，开发出高品位的天然彩色丝、绸及服装，为中国桑蚕丝家庭成员的丰富多彩的发展探索出了一条新路。《制丝生产在线监控网络系统软件的研发及推广》项目被国家商务部茧丝办列为国家茧丝绸发展风险基金第六批发展性项目，《应用缫丝企业信息化管理技术辅助生产高等级蚕丝》项目被国家科技部列为&ldquo;2005年度国家级星火计划项目&rdquo;。科技和管理等方面形成国家专利30项。2010年11月鑫缘集团率先成立博士后工作站。</p>\r\n<p>&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:23:49', '2011-12-30 13:57:33', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (68, 3, 0, 1, '埃及纺织纺纱公司面临严峻材料确实', '埃及纺织纺纱公司面临严峻材料确实', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4月15日讯　埃及的纺织和纺纱公司正面临严峻的材料缺乏，这些材料是他们生产所必需的，纺织工人联合组织的主席说。</p>\r\n<p>　　在新闻发布会上，纺织工人联合组织的主席赛义德.古哈利要求政府立即采取行动，就业纺织和纺纱工业及其工人。</p>\r\n<p>　　部分私营工厂已经停产，这是因为他们不能够在这样的环境下继续生产，古哈利说。</p>\r\n<p>　　古哈利说，政府应当分配土地种植棉花，满足工厂的需求，向公司注入新的投资，改革财政和管理结构，打击倾销和走私行为，保护当地工业。</p>\r\n<p>　　观察家认为，埃及棉纺织工业经历了持续下降，这是由于政府对棉花耕种的补贴不充分。棉花以埃及最古老的作物而闻名。</p>\r\n<p>　　古哈尔强大，有必要发展棉花生产力，在过去的几年，埃及的棉花生产急剧下降，这是由于依赖进口棉花造成的。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:20:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (66, 17, 0, 1, '乌兹别克斯坦将与瑞士成立服装机械合资公司', '乌兹别克斯坦将与瑞士成立服装机械合资公司', '<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 乌兹别克斯坦轻工业公司与瑞士立达纺织机械公司拟在乌成立纺织服装机械生产合资公司――&ldquo;立达乌兹别克斯坦&rdquo;。双方所签协议被&ldquo;关于组织生产现代化纺织机械&rdquo;的总统令确认。瑞士公司将于2011至2012年对该项目投入200万美元进行纺织机械现代化改造和技术设备更新，并逐步在停产的&ldquo;乌兹别克斯坦纺织服装机械公司&rdquo;基础上组织纺织设备生产。项目将分三个阶段实施：第一阶段（2011年）将完成厂房和设施建设，并进行工艺设备安装调试；第二阶段（2012年）将投入生产制带机和梳棉机；第三阶段（2015年）将投入运行金属加工车间。</p>\r\n<p>　　根据乌总统令，2015年7月1日前，&ldquo;立达乌兹别克斯坦&rdquo;公司将被免除包括乌公路基金强制扣除的基本营业税在内的一切税费，同时还享受对乌国内不生产的设备、仪器、机械和其他材料及产品免除进口关税的优惠政策。<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:11', '2011-12-30 13:57:56', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (67, 17, 0, 1, '台纺织产业综合研究所将在盐城成立研究院', '台纺织产业综合研究所将在盐城成立研究院', '<p>&nbsp;&nbsp;&nbsp; ４月１５日电，记者从江苏省盐城市获悉，由台湾纺织产业综合研究所提供技术支持的江苏南纬悦达纺织研究院已在该市成立，将安排台湾专家来盐城培训纺织行业的员工和人才。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 盐城是传统的纺织大市，以棉纺为主，纺织业一直是盐城重要的产业支撑，近年来份额有所减少，但仍占２０％左右。虽然规模较大，但盐城纺织业一直存在创新不够、研发不足等问题，江苏南纬悦达纺织研究院成立后，将借助台湾纺织产业综合研究所的技术支撑，迅速对纺织产业高端课题、纤维、技术、工艺、产品等方面进行研究，并向行业、产业、企业、项目延伸。研究院将安排盐城人员赴台湾接受培训教育，还将安排台湾专家来盐城培训人才和员工。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 台湾纺织产业综合研究所的前身是台湾纺织品试验中心，成立于１９５９年，是台湾地区致力于纺织科技研发、产品检测和技术服务的主要机构，汪雅康于２００８年６月接任董事长。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 汪雅康说，纺织是传统行业，但是，产品有夕阳产品，而产业是没有夕阳的，台湾的纺织产业，特别是新开发的功能性产品，上至太空、下到海洋，处处都有应用，&ldquo;（研究院）将寻求产业链条上新的合作，共同提升纺织产业的发展。&rdquo;<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:49', '2011-12-30 13:57:47', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (9, 77, 1, '', '', '', '1321930838.jpg', '', 1, 'JPG', '2011-11-22 11:00:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 76, 1, '', '', '', '1321842554.JPG', '', 1, 'JPG', '2011-11-21 10:29:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (7, 1, 'Certificate', '', '', '', '', '');
INSERT INTO `pageset` VALUES (6, 1, 'B2B', '', '', '', '', '&nbsp;&nbsp;&nbsp;&nbsp; Email: dainlife@gmail.com<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MSN: guksung0108e@hotmail.com (实体店客户）<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; QQ :&nbsp;29324965(实体店客户） 2651392<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 旺旺: dainlife (阿里巴巴)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; ekdlsfkdlvm (淘宝) - 网店用户<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; ygkim7(淘宝) - 网店用户<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 电话：(021）6402-5607<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 传真：(021）6129-4622<br />');
INSERT INTO `pageset` VALUES (8, 1, '实体店', '', '', '', '', '<strong>沈阳：</strong><br />\r\n辽宁省沈阳市和平区太原南街2号万达广场 139铺<br />\r\n<strong>北京：</strong><br />\r\n北京东城区东直门外大街48号银座MALL 2层17号商铺&nbsp;<br />\r\n<strong>长沙：</strong><br />\r\n长沙市岳麓区麓山南路288号长沙大学城&nbsp;<br />\r\n<strong>广州：</strong><br />\r\n广州白云区云城东路万达广场<br />\r\n<strong>厦门：</strong><br />\r\n厦门市思明区鼓浪屿龙头路57号<br />\r\n<strong>重庆：</strong><br />\r\n重庆江北观音桥步行街<br />\r\n<strong>上海：</strong><br />\r\n上海市杨浦区淞沪路1号&nbsp; 巴黎春天<br />\r\n<strong>深圳：</strong><br />\r\n广东省深圳市深南大道车公庙地铁站丰盛町商业街<br />\r\n<strong>大连：</strong><br />\r\n辽宁大连市西岗区奥林匹克电子城东A区329号<br />\r\n<strong>大连：</strong><br />\r\n大连市新玛特购物广场2楼<br />\r\n<strong>南京：</strong><br />\r\n南京市水游城4搂');
INSERT INTO `pageset` VALUES (9, 1, '网络代理店', '', '', '', '', 'B2C-<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 趣玩<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V创意<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 乐在其中<br />\r\n淘宝商城-<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;玩意生活<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 艾尚家居专营店<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 思迈数码专营店<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; iwill艾薇尔旗舰店<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 优佳家居专营店<br />\r\n淘宝店铺-<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 爱稀奇<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&amp;E LIfe<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ideasba<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEWTOY<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 好生活创意家居<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 猪娃礼物<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;爱新潮<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 渣洗<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 暖暖为你<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 贺美思<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 小鱼之家<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UME创意礼品<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 创意人气<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 爱搜罗<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 先看看');
INSERT INTO `pageset` VALUES (10, 1, 'About us', '', '', '', '', '上海达尹贸易有限公司立足于上海,经营全国,<br />\r\n以最优良的品质为您提供最完善的服务.<br />\r\n我们联合设计师定期推出新产品.<br />\r\n<br />\r\n我们的产品<br />\r\n种类有限,但创意构思无限.<br />\r\n每一款都是设计师的灵感产物.<br />\r\n<br />\r\n我们提供<br />\r\n最优秀的精品,最优良的品质.<br />\r\n最优秀的设计,最完善的服务.<br />');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 

INSERT INTO `pagesetpic` VALUES (19, 6, 1, '', '', '', '1330421074.jpg', '', 1, 'JPG', '2012-02-28 17:24:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (18, 7, 1, '', '', '', '1330420507.jpg', '', 1, 'JPG', '2012-02-28 17:15:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (17, 7, 1, '', '', '', '1330420500.jpg', '', 1, 'JPG', '2012-02-28 17:15:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (15, 10, 1, '', '', '', '1330418614.jpg', '', 1, 'JPG', '2012-02-28 16:43:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `pagesetpic` VALUES (16, 7, 1, '', '', '', '1330420490.jpg', '', 1, 'JPG', '2012-02-28 17:14:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 1, 1, 1, 1, 1, 0, 1, '2011-04-15 02:03:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, 'NO THING', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, 'MOTZ', '', 1, '', 0, 1, 2);
INSERT INTO `productdir` VALUES (3, 0, 'ABEL PARTNERS', '', 1, '', 0, 1, 3);
INSERT INTO `productdir` VALUES (49, 0, 'DESIGN ONE', '', 1, '', 0, 1, 49);
INSERT INTO `productdir` VALUES (4, 0, 'STUDIO FACTORY', '', 1, '', 0, 1, 4);
INSERT INTO `productdir` VALUES (5, 0, 'NO THING', '', 1, '', 1, 2, 5);
INSERT INTO `productdir` VALUES (6, 0, 'ABEL PARTNERS', '', 1, '', 3, 2, 6);
INSERT INTO `productdir` VALUES (12, 0, 'MOTZ', '', 1, '', 2, 2, 12);
INSERT INTO `productdir` VALUES (71, 0, 'DESIGN ONE ', '', 1, '', 49, 2, 71);
INSERT INTO `productdir` VALUES (50, 0, 'NANUM', '', 1, '', 0, 1, 50);
INSERT INTO `productdir` VALUES (53, 0, 'NANUM', '', 1, '', 50, 2, 53);
INSERT INTO `productdir` VALUES (17, 0, 'STUDIO FACTORY', '', 1, '', 4, 2, 17);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (5, 5, 0, 1, 'mug-zero', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3303993077.jpg" />', '', 1, 1, '2012-02-28 11:21:51', '2012-02-28 11:23:42', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (6, 5, 0, 1, 'nothing hanger', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/33039936510.jpg" />', '', 1, 1, '2012-02-28 11:22:50', '2012-02-28 11:23:53', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (7, 5, 0, 1, 'nothing rose', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3303994147.jpg" />', '', 1, 1, '2012-02-28 11:23:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (8, 5, 0, 1, 'vase 2012', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3303994784.jpg" />', '', 1, 1, '2012-02-28 11:24:40', '2012-02-28 11:24:49', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (9, 5, 0, 1, 'mobile phone ring', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3303995457.jpg" />', '', 1, 1, '2012-02-28 11:25:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (10, 5, 0, 1, 'earphone winder', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3303995821.jpg" />', '', 1, 1, '2012-02-28 11:26:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (11, 6, 0, 1, 'TEA DIVER', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3304129501.jpg" />', '', 1, 1, '2012-02-28 15:09:07', '2012-02-28 15:09:19', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (12, 6, 0, 1, 'TEA FISHING', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3304130102.jpg" />', '', 1, 1, '2012-02-28 15:10:11', '2012-02-28 15:10:18', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (13, 17, 0, 1, 'mobile tail', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304136291.jpg" />', '', 1, 1, '2012-02-28 15:20:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (14, 71, 0, 1, 'photo frame', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304137722.jpg" />', '', 1, 1, '2012-02-28 15:22:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (15, 71, 0, 1, 'memo clock', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/33041381510.jpg" />', '', 1, 1, '2012-02-28 15:23:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (16, 71, 0, 1, 'egg money', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3304138777.jpg" />', '', 1, 1, '2012-02-28 15:24:32', '2012-02-28 15:24:40', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (17, 53, 0, 1, '触摸感温杯', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304140281.jpg" />', '', 1, 1, '2012-02-28 15:27:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (18, 12, 0, 1, '橡果迷你音箱', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304142405.jpg" />', '', 1, 1, '2012-02-28 15:30:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (19, 12, 0, 1, '狗狗迷你音箱', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304144202.jpg" />', '', 1, 1, '2012-02-28 15:33:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (20, 12, 0, 1, '第五个故事', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304144852.jpg" />', '', 1, 1, '2012-02-28 15:34:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (21, 12, 0, 1, 'Wooden fruit', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304145737.jpg" />', '', 1, 1, '2012-02-28 15:36:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (22, 12, 0, 1, 'Wooden stand', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304146521.jpg" />', '', 1, 1, '2012-02-28 15:37:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (23, 12, 0, 1, 'Wood speaker', '', '<br />\r\n<img alt="" width="750" height="900" src="/upload/other/3304146963.jpg" />', '', 1, 1, '2012-02-28 15:38:17', '2012-02-28 15:38:26', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (24, 12, 0, 1, 'Alarm musicbox', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304162738.jpg" />', '', 0, 1, '2012-02-28 16:04:29', '0000-00-00 00:00:00', '2012-02-28 16:04:40', 0);
INSERT INTO `productinfo` VALUES (25, 12, 0, 1, 'Power LED', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304163941.jpg" />', '', 0, 1, '2012-02-28 16:06:34', '0000-00-00 00:00:00', '2012-02-28 16:06:44', 0);
INSERT INTO `productinfo` VALUES (26, 12, 0, 1, '第四个故事', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304164748.jpg" />', '', 0, 1, '2012-02-28 16:07:51', '0000-00-00 00:00:00', '2012-02-28 16:08:00', 0);
INSERT INTO `productinfo` VALUES (27, 12, 0, 1, '第三个故事', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304165364.jpg" />', '', 0, 1, '2012-02-28 16:08:56', '0000-00-00 00:00:00', '2012-02-28 16:09:06', 0);
INSERT INTO `productinfo` VALUES (28, 12, 0, 1, '第二个故事', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304166727.jpg" />', '', 0, 1, '2012-02-28 16:11:10', '0000-00-00 00:00:00', '2012-02-28 16:11:20', 0);
INSERT INTO `productinfo` VALUES (29, 12, 0, 1, '第一个故事', '', '<p class=''txt''>图片更新中。。。</p>', '', 0, 1, '2012-02-28 16:13:52', '2012-02-28 16:14:55', '2012-02-28 16:15:02', 0);
INSERT INTO `productinfo` VALUES (30, 12, 0, 1, '迷你书本DIY KIT', '', '<br />\r\n<img width="750" height="900" alt="" src="/upload/other/3304169657.jpg" />', '', 0, 1, '2012-02-28 16:16:04', '0000-00-00 00:00:00', '2012-02-28 16:16:14', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (91, 31, 1, '', '', '', '1321873575.jpg', '', 1, 'JPG', '2011-11-21 19:06:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (92, 32, 1, '', '', '', '1321873765.jpg', '', 1, 'JPG', '2011-11-21 19:09:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (93, 33, 1, '', '', '', '1321873876.jpg', '', 1, 'JPG', '2011-11-21 19:11:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (94, 34, 1, '', '', '', '1321874050.jpg', '', 1, 'JPG', '2011-11-21 19:14:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (95, 35, 1, '', '', '', '1321874167.jpg', '', 1, 'JPG', '2011-11-21 19:16:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (96, 36, 1, '', '', '', '1321874268.jpg', '', 1, 'JPG', '2011-11-21 19:17:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (97, 37, 1, '', '', '', '1321874387.jpg', '', 1, 'JPG', '2011-11-21 19:19:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (98, 38, 1, '', '', '', '1321874485.jpg', '', 1, 'JPG', '2011-11-21 19:21:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (60, 1, 1, '', '', '', '1321859605.jpg', '', 1, 'JPG', '2011-11-21 15:13:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (61, 2, 1, '', '', '', '1325234364.jpg', '', 1, 'JPG', '2011-11-21 15:41:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (62, 3, 1, '', '', '', '1325247292.jpg', '', 1, 'JPG', '2011-11-21 15:45:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (63, 4, 1, '', '', '', '1325248670.jpg', '', 1, 'JPG', '2011-11-21 15:49:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (99, 39, 1, '', '', '', '1321874646.jpg', '', 1, 'JPG', '2011-11-21 19:24:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '[DainLife]上海达尹贸易有限公司:::::: dainlife.com ::::::进口创意礼品,设计师原创品牌,创意礼品,高档礼品,企业礼品,客户礼品', '达银生活 dainlife 进口礼品 创意礼品 上海达尹贸易有限公司 礼品团购 韩国进口 时尚礼品 上海礼品 dainlife.com', '上海达尹贸易有限公司专做海外进口正品创意产品,以第一手货源提供给礼品公司,各地创意产品零售商以及网络商城客户.专注于设计定制会议礼品,商务礼品,广告礼品,促销礼品,工艺礼品,办公用品,dainlife.com', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, 'Main', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, 'Company', '/about.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, 'Product', '/productdir.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, 'Agent', '/agent.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, 'Certificate', '/cert.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (8, 1, 'Contact', '/contact.php', 1, 0, 1, 1);
