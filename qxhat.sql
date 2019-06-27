/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : qxhat

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2017-10-21 15:33:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qxhat_about
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_about`;
CREATE TABLE `qxhat_about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_about
-- ----------------------------
INSERT INTO `qxhat_about` VALUES ('1', '<p><span style=\"top: -4.4557px;\"><br/> &nbsp; &nbsp;							虔信草帽厂专注草帽18年，地处浙江省慈溪市长河镇， 生产各种中高档草帽， 牛仔帽， 女帽， 小礼帽， 沙滩帽，墨西哥帽等。 品种齐全 款式新颖， 交货及时， 性价比高。可安排从宁波和上海出集装箱。本厂可承接淘宝，天猫，速卖通，亚马逊等小额批发来样定做。可开发票，做检测. 拥有完整、科学的质量管理体系。本着“服务第一，品质至上”的原则服务于广大客户，欢迎各界朋友莅临参观、指导和业务洽谈。<br/><br/>CIXI CITY QIANXIN HAT FACTORY speciiza in in straw hat 18 years,produce variety of natural grass hats , cowboy hats , woman hats , topper , beach hats etc. good quality , good packing , timely deliver , reasonable price .We accept OEM , we can do Test report and do export work from Ningbo and Shanghai port .Accept taobvao ,tmall,aliexpress and other partform order.best ,service,quality first. Welcome to our factory to business negotiations.<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>');
INSERT INTO `qxhat_about` VALUES ('2', '<p>诚招微商代理13131134164031</p><p>&quot;&nbsp;&nbsp;微商时代，机会留给勇敢的你。你有野心，我有货源。我们一起合作共赢！&nbsp;&nbsp;&quot;</p><p>用<span class=\"mh-color-red\" style=\"color: rgb(255, 88, 0);\">采源宝</span>扫码成为代理</p><p><br/></p><p><img class=\"mh-broadcast-background\" src=\"/ueditor/php/upload/image/20171021/1508567765102678.png\" style=\"border: none; width: 1190px;\"/></p><p><br/></p>');

-- ----------------------------
-- Table structure for qxhat_admin
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_admin`;
CREATE TABLE `qxhat_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_admin
-- ----------------------------
INSERT INTO `qxhat_admin` VALUES ('1', 'admin', 'admin', '卢洁辉');

-- ----------------------------
-- Table structure for qxhat_agent
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_agent`;
CREATE TABLE `qxhat_agent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_agent
-- ----------------------------
INSERT INTO `qxhat_agent` VALUES ('1', '卢洁辉', '13216698987', '13216698987@163.com', null, null, '我在测试啊申请信息');
INSERT INTO `qxhat_agent` VALUES ('2', '卢洁辉', '13216698987', '13216698987@163.com', null, null, '我在测试啊申请信息');
INSERT INTO `qxhat_agent` VALUES ('3', '卢洁辉', '13216698987', '13216698987@163.com', null, null, '我在测试啊申请信息');
INSERT INTO `qxhat_agent` VALUES ('4', '卢洁辉', '13216698987', '13216698987@163.com', null, null, '我在测试啊申请信息');
INSERT INTO `qxhat_agent` VALUES ('5', '卢洁辉', '13216698987', '13216698987@163.com', null, null, '我在测试啊申请信息');
INSERT INTO `qxhat_agent` VALUES ('6', '卢洁辉', '13216698987', '1@1.c', null, null, 'nihao');
INSERT INTO `qxhat_agent` VALUES ('7', '卢洁辉', '13216698987', '1@1.c', null, null, 'nihao');
INSERT INTO `qxhat_agent` VALUES ('8', '卢洁辉', '13216698987', '1@1.c', null, null, 'nihao');
INSERT INTO `qxhat_agent` VALUES ('9', '卢洁辉', '13216698987', null, null, null, null);
INSERT INTO `qxhat_agent` VALUES ('10', '卢洁辉', '13216698888', '13216698987@163.com', null, null, 'nihao');

-- ----------------------------
-- Table structure for qxhat_information
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_information`;
CREATE TABLE `qxhat_information` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `category_id` int(1) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `abstract` varchar(500) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `sort` int(4) DEFAULT '100',
  PRIMARY KEY (`id`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_information
-- ----------------------------
INSERT INTO `qxhat_information` VALUES ('1', '你好啊，你真棒', '3', '卢洁辉修改', '1507275260', '1507275260', '1', '<p>资料图：山西太原，私家车正在加油站加油。<img src=\"http://inews.gtimg.com/newsapp_bt/0/2179938173/641\" style=\"white-space: normal;\"/></p><p>张云 摄&nbsp;</p><p>&nbsp;中新网北京10月19日电(邱宇) 新一轮成品油调价窗口将于10月19日24时开启，多家机构预测本轮调价将迎来搁浅。\r\n\r\n据隆众资讯、卓创资讯、中宇资讯等多家机构测算，截至10月17日，参考原油综合变化率来看，对应油价调整幅度不足50元/吨。\r\n\r\n根据《石油价格管理办法》，国内汽柴油最高零售价与国际油价挂钩。“当调价幅度低于每吨50元时，不作调整，纳入下次调价时累加或冲抵。”\r\n\r\n这将是2017年以来第六次搁浅，迄今为止，汽油累计下调50元/吨，柴油下调50元/吨。\r\n\r\n近期，国际油价先跌后涨。卓创资讯成品油分析师张肇欣表示，本计价周期以来，受美元走强、全球原油产量上升及美国原油出口激增的影响，市场对全球供应过剩的担忧情绪加重，国际油价出现下跌。</p><p>&nbsp;“‘十一’假期结束后，由于沙特阿拉伯进一步削减原油出口量，且欧佩克上调对2018年全球石油需求预测，加之中东地缘局势紧张，在多重因素影响下，国际油价呈现涨势。”张肇欣说。\r\n\r\n\r\n\r\n2017年10月2日至10月18日美国WTI原油期货价格走势图。来源：Wind资讯\r\n\r\n10月17日，美国WTI原油期货收涨0.01美元，报51.88美元/桶。布伦特原油期货收涨0.06美元，报57.88美元/桶。\r\n\r\n从零售方面来看，本轮汽柴油价格或不会调整。隆众资讯油品分析师李彦表示，近来主营和民营加油站继续前期表现，中石化等主营加油站优惠幅度多在0.5-1元/升，而民营加油站的优惠幅度多在0.4-1.2元/升。\r\n\r\n下一轮调价窗口将于2017年11月2日24时开启。李彦认为，目前来看，国际油价变化有待于欧佩克会议指引，欧佩克可能会从官方态度上继续支持减产，比如暗示延长减产协议等。而当下空好均无压倒性优势，预计下一轮成品油调价小涨或搁浅的可能性较大。(完)</p>', '测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要测试摘要', '20171006\\27022c63b684b50f63b4c397cf9652de.PNG', '1');
INSERT INTO `qxhat_information` VALUES ('2', '虔信草帽厂欢迎您', '2', '卢洁辉', '1508288514', '1508288514', '0', '<p>欢迎来到虔信草帽厂<br/></p>', '', '20171018\\0f28bde8374e1b9ca3cbe57dc19dc9da.jpg', '2');
INSERT INTO `qxhat_information` VALUES ('3', '你好草帽32112313131', '1', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '3');
INSERT INTO `qxhat_information` VALUES ('4', '你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好草帽你好', '3', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '4');
INSERT INTO `qxhat_information` VALUES ('5', '你好草帽1', '3', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('6', '你好草帽1', '3', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('7', '你好草帽1', '3', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('8', '你好草帽1', '2', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('9', '你好草帽1', '2', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('10', '你好草帽aaaa', '2', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('11', '你好草帽1', '2', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('12', '你好草帽1', '2', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('13', '你好草帽1', '1', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('14', '你好草帽1', '1', '虔信草帽厂', '1508288638', '1508288638', '0', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('15', '你好草帽1', '1', '虔信草帽厂', '1508288638', '1508288638', '1', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('16', '你好草帽1', '1', '虔信草帽厂', '1508288638', '1508288638', '1', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('17', '你好草帽1', '1', '虔信草帽厂', '1508288638', '1508288638', '1', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('18', '你好草帽1', '2', '虔信草帽厂', '1508288638', '1508288638', '1', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');
INSERT INTO `qxhat_information` VALUES ('19', '你好草帽1', '3', '虔信草帽厂', '1508288638', '1508288638', '1', '<p>喂！我有草帽啊！</p>', '', '20171018\\c87ee5d51a6e9efea8d83a2c74580974.png', '101');

-- ----------------------------
-- Table structure for qxhat_information_category
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_information_category`;
CREATE TABLE `qxhat_information_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_information_category
-- ----------------------------
INSERT INTO `qxhat_information_category` VALUES ('1', '行业资讯');
INSERT INTO `qxhat_information_category` VALUES ('2', '本站新闻');
INSERT INTO `qxhat_information_category` VALUES ('3', '行业科普');

-- ----------------------------
-- Table structure for qxhat_products
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_products`;
CREATE TABLE `qxhat_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL COMMENT '名字',
  `no` varchar(30) DEFAULT NULL COMMENT '货号',
  `picture` varchar(255) NOT NULL COMMENT '封面图',
  `brand_id` int(5) NOT NULL COMMENT '品牌ID',
  `product_style_id` varchar(20) NOT NULL COMMENT '风格ID',
  `price` decimal(10,2) NOT NULL COMMENT '原价',
  `discount` decimal(10,2) DEFAULT '1.00' COMMENT '折扣',
  `status` int(1) NOT NULL COMMENT '产品是否展示 0下架 1正常 2推荐',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `size` varchar(50) DEFAULT NULL COMMENT '尺码',
  `materials` varchar(60) DEFAULT NULL COMMENT '材料',
  `style` varchar(60) DEFAULT NULL COMMENT '风格',
  `target` varchar(80) DEFAULT NULL COMMENT '适用对象',
  `season` varchar(40) NOT NULL COMMENT '季节',
  `design` varchar(255) DEFAULT NULL COMMENT '款式',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `images_id` int(10) DEFAULT NULL COMMENT '组图ID',
  `content` text COMMENT '商品介绍',
  PRIMARY KEY (`id`,`brand_id`,`product_style_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_products
-- ----------------------------
INSERT INTO `qxhat_products` VALUES ('1', '产品', 'cp', '20171016\\290fc28bbc1e40d23d4791816186054e.jpg', '2', '1', '1000.00', '0.80', '1', '红、黄、绿、蓝、锭、紫', '1', '草', '好1', '好', '好', '好', '1507792656', '1507795368', null, '<p>棒棒的帽子1</p>');
INSERT INTO `qxhat_products` VALUES ('2', '日本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '1', '20171016\\290fc28bbc1e40d23d4791816186054e.jpg', '2', '1', '100.00', '0.90', '2', '红、黄、绿', '12', '棉布', '可爱', '全部', '全部', '不错的款式', '1508141324', '1508141324', null, '<p><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('3', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '1', '100.00', '1.00', '0', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508393608', null, '<p><img src=\"/ueditor/php/upload/image/20171019/1508393227140606.jpg\"/> &nbsp;<img src=\"/ueditor/php/upload/image/20171019/1508393227139186.jpg\"/> &nbsp;<img src=\"/ueditor/php/upload/image/20171019/1508393228126681.jpg\"/></p><p>w you y g z d meng&nbsp;我有一个中单梦&nbsp;w you y g z d meng&nbsp;我有一个中单梦&nbsp;w you y g z d meng&nbsp;我有一个中单梦&nbsp;w you y g z d meng&nbsp;我有一个中单梦</p><p><img src=\"/ueditor/php/upload/image/20171019/1508393305695135.jpg\"/></p><p>10月19日，新赛季西北赛区迎来一场内战，爵士坐镇主场迎战掘金，从森林狼交易而来的卢比奥和新秀多诺万-米切尔联袂出任爵士首发后场，前场依然是伤愈的戈贝尔、英格尔斯和费沃斯。掘金方面，今夏加盟的米尔萨普和约基奇搭档，刚刚签下大合同的加里-哈里斯在后场穆雷搭档。首节之后就没能领先的爵士凭借替补的发挥和卢比奥的组织，在第四节打出一波进攻潮，最终以106-96逆转战胜来访的掘金队。</p>');
INSERT INTO `qxhat_products` VALUES ('4', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '2', '100.00', '1.00', '0', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('5', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '2', '100.00', '0.80', '2', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('6', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '2', '100.00', '1.00', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('7', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '3', '100.00', '1.00', '2', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('8', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '3', '100.00', '1.00', '2', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('9', '海边沙滩草帽', '110', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '3', '100.00', '0.90', '2', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508396316', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('10', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '4', '100.00', '1.00', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('11', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '4', '100.00', '1.00', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('12', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '4', '100.00', '0.10', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('13', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '5', '100.00', '0.50', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('14', '下架的帽子', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '5', '100.00', '1.00', '0', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508396615', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('15', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '5', '100.00', '1.00', '2', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('16', '本专柜双M标可折叠礼帽夏季女士出游遮阳帽休闲海边沙滩草帽', '101', '20171016\\7875d0fcdaeeb383932050aff428bd2d.jpg', '1', '6', '100.00', '0.60', '1', '红、黄、绿', '12', '棉布', '潮流', '全部', '全部', '不错的款式', '1508141472', '1508141472', null, '<p><img src=\"https://img.alicdn.com/imgextra/i1/163457446/TB2N7RtrxtmpuFjSZFqXXbHFpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/163457446/TB214g5orplpuFjSspiXXcdfFXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/163457446/TB2VgOnrstnpuFjSZFvXXbcTpXa_!!163457446.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); max-width: 750px;\"/></p>');
INSERT INTO `qxhat_products` VALUES ('17', '一个好帽子', 'hmz-01', '20171019\\48ae03449b11b476637be6e894bf37d8.jpg', '2', '6', '98.00', '0.70', '1', '红、黄、绿', '12', '好', '好', '好', '好', '好', '1508226616', '1508401241', null, '<p>very&nbsp;good</p>');

-- ----------------------------
-- Table structure for qxhat_products_brand
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_products_brand`;
CREATE TABLE `qxhat_products_brand` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `brand_describe` text,
  `brand_logo` varchar(255) NOT NULL,
  `brand_name_en` varchar(255) NOT NULL COMMENT '英文名字',
  PRIMARY KEY (`brand_id`,`brand_name`,`brand_name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_products_brand
-- ----------------------------
INSERT INTO `qxhat_products_brand` VALUES ('1', '花花公子', '<p>花花公子这个品牌哦！</p>', '20171009\\dc9c9e86ab5c851c20e6f6a9e4989e89.png', 'playBoy');
INSERT INTO `qxhat_products_brand` VALUES ('2', '耐克', '<p>这个是耐克哦！</p>', '20171009\\f34e21ea2028d252ff029485d1bc7511.jpg', 'nike');

-- ----------------------------
-- Table structure for qxhat_products_image
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_products_image`;
CREATE TABLE `qxhat_products_image` (
  `img_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_products_image
-- ----------------------------
INSERT INTO `qxhat_products_image` VALUES ('4', '1', '20171017\\5570f1606bccb4dbe8a2b273f3b86003.jpg');
INSERT INTO `qxhat_products_image` VALUES ('5', '1', '20171017\\27dc7623d0c2c93f44188ad115bc8594.jpg');
INSERT INTO `qxhat_products_image` VALUES ('6', '1', '20171017\\733b1ed17ebe1488dec07877a0e8019d.jpg');
INSERT INTO `qxhat_products_image` VALUES ('7', '1', '20171016\\51c0b82e3824d3d884d7c2c22d1e5c8b.jpg');
INSERT INTO `qxhat_products_image` VALUES ('8', '1', '20171016\\1624def315074df6eb8eb7c2944562d2.jpg');
INSERT INTO `qxhat_products_image` VALUES ('9', '1', '20171016\\d679b8b5a18555086ec6a5b931b4c788.jpg');
INSERT INTO `qxhat_products_image` VALUES ('10', '1', '20171016\\3c46e59346ab415d69ed314b650e285d.jpg');
INSERT INTO `qxhat_products_image` VALUES ('11', '2', '20171016\\83775f763368caececb417056d4fe4c8.jpg');
INSERT INTO `qxhat_products_image` VALUES ('12', '2', '20171016\\48be810178bb4e1b5aa67232b82e9aac.jpg');
INSERT INTO `qxhat_products_image` VALUES ('13', '3', '20171016\\e07eebe6d439493fa8af70c1cca0104b.jpg');
INSERT INTO `qxhat_products_image` VALUES ('14', '3', '20171016\\f30b2df3512a18a4ee6874eb2e585980.jpg');
INSERT INTO `qxhat_products_image` VALUES ('15', '2', '20171017\\5570f1606bccb4dbe8a2b273f3b86003.jpg');
INSERT INTO `qxhat_products_image` VALUES ('16', '2', '20171017\\27dc7623d0c2c93f44188ad115bc8594.jpg');
INSERT INTO `qxhat_products_image` VALUES ('17', '2', '20171017\\733b1ed17ebe1488dec07877a0e8019d.jpg');

-- ----------------------------
-- Table structure for qxhat_products_style
-- ----------------------------
DROP TABLE IF EXISTS `qxhat_products_style`;
CREATE TABLE `qxhat_products_style` (
  `product_style_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_style_name` varchar(255) DEFAULT NULL,
  `product_style_status` int(1) NOT NULL,
  PRIMARY KEY (`product_style_id`,`product_style_status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qxhat_products_style
-- ----------------------------
INSERT INTO `qxhat_products_style` VALUES ('1', '欧美风', '1');
INSERT INTO `qxhat_products_style` VALUES ('2', '中式风', '1');
INSERT INTO `qxhat_products_style` VALUES ('3', '清新', '1');
INSERT INTO `qxhat_products_style` VALUES ('4', '现在潮流', '0');
INSERT INTO `qxhat_products_style` VALUES ('5', '复古风', '0');
INSERT INTO `qxhat_products_style` VALUES ('6', '新风格', '0');
