/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : gd-blog

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 01/12/2020 22:09:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bg_blog
-- ----------------------------
DROP TABLE IF EXISTS `bg_blog`;
CREATE TABLE `bg_blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `author` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `summary` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `commend` int(2) NULL DEFAULT 0 COMMENT '是否推荐，0不推荐，1推荐',
  `status` int(2) NULL DEFAULT 1 COMMENT '文章状态，1表示已经发表，0表示在草稿箱，2表示在垃圾箱',
  `header_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '博客预览图',
  `category_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类id',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog
-- ----------------------------
INSERT INTO `bg_blog` VALUES (1, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', '2020-04-08 16:30:13', '2020-04-09 16:49:59', NULL, NULL);
INSERT INTO `bg_blog` VALUES (3, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '2', '2020-04-09 16:30:14', '2020-04-09 16:30:14', NULL, NULL);
INSERT INTO `bg_blog` VALUES (4, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '3', '2020-04-09 21:16:10', '2020-04-09 21:16:10', NULL, NULL);
INSERT INTO `bg_blog` VALUES (5, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', '2020-04-09 16:30:16', '2020-04-09 16:30:16', NULL, NULL);
INSERT INTO `bg_blog` VALUES (6, '深入理解SpringBoot多数据源', 'gourddoll', 'p><strong>说明</stron', '<p><strong>说明</strong><span style=\"color: #e03e2d;\">SpringBoot2</span>配置Dru<em>id多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决</em>定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。</p>', 1, 1, '1', '2', '2020-04-09 16:30:16', '2020-04-24 00:00:00', NULL, NULL);
INSERT INTO `bg_blog` VALUES (7, 'test2', 'gourddoll', 'table style=\"border', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 25%;\">saf</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>\n<p>ss<strong>sssssssssssssssssssssgxxxxxxxxxg</strong></p>', 1, 1, '1', '1', '2020-04-09 16:30:16', '2020-04-24 00:00:00', NULL, NULL);
INSERT INTO `bg_blog` VALUES (8, 'test', 'lisi', 'p>dsfffffffffffffff', '<p>dsfffffffffffffffffffffffffffs</p>', 1, 1, '1', '3', '2020-04-09 16:30:16', '2020-04-25 00:00:00', NULL, NULL);
INSERT INTO `bg_blog` VALUES (9, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', '2020-04-09 21:15:54', '2020-04-09 21:15:54', NULL, NULL);
INSERT INTO `bg_blog` VALUES (10, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '3', '2020-04-09 21:15:57', '2020-04-09 21:15:57', NULL, NULL);
INSERT INTO `bg_blog` VALUES (11, '深入理解SpringBoot多数据源', 'test1', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', '2020-04-09 16:30:17', '2020-04-09 16:30:17', NULL, NULL);
INSERT INTO `bg_blog` VALUES (12, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '2', '2020-04-09 21:15:59', '2020-04-09 21:15:59', NULL, NULL);
INSERT INTO `bg_blog` VALUES (14, 'addTest', 'wangba', 'p style=\"text-align', '<p style=\"text-align: center;\">啊哈哈哈哈哈哈哈</p>\n<p style=\"text-align: left;\"><img src=\"img/ban1.png\" alt=\"\" width=\"480\" height=\"300\" /></p>', 1, 1, '1', '5', '2020-04-09 21:15:59', '2020-04-25 21:20:22', NULL, NULL);

-- ----------------------------
-- Table structure for bg_blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `bg_blog_comment`;
CREATE TABLE `bg_blog_comment`  (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL COMMENT '评论的博客',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `create_time` datetime(6) NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '根据时间降序',
  `commentator` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是谁评论的',
  `parent` int(11) NULL DEFAULT NULL COMMENT '0直接评论blog_id的，其他都是回复的评论 的id',
  `layer` int(11) NULL DEFAULT NULL COMMENT '评论层级',
  `lft` int(11) NULL DEFAULT NULL COMMENT '左编码值',
  `rft` int(11) NULL DEFAULT NULL COMMENT '右编码值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog_comment
-- ----------------------------
INSERT INTO `bg_blog_comment` VALUES (1, 1, '说的好啊', '2019-11-10 13:36:25.793654', '2', 0, NULL, NULL, NULL);
INSERT INTO `bg_blog_comment` VALUES (2, 1, '你就只会水评论', '2019-11-10 00:00:00.000000', '3', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bg_blog_statistics
-- ----------------------------
DROP TABLE IF EXISTS `bg_blog_statistics`;
CREATE TABLE `bg_blog_statistics`  (
  `blog_id` int(11) NOT NULL,
  `read_times` int(11) NULL DEFAULT NULL COMMENT '阅读次数',
  `like_times` int(11) NULL DEFAULT NULL COMMENT '点赞次数',
  `dislike_times` int(11) NULL DEFAULT NULL COMMENT '不喜欢次数',
  `comment_times` int(11) NULL DEFAULT NULL COMMENT '评论次数',
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for bg_blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `bg_blog_tag`;
CREATE TABLE `bg_blog_tag`  (
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `blog_id` int(11) NOT NULL COMMENT '博客id',
  PRIMARY KEY (`tag_id`, `blog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog_tag
-- ----------------------------
INSERT INTO `bg_blog_tag` VALUES (1, 1);
INSERT INTO `bg_blog_tag` VALUES (2, 6);
INSERT INTO `bg_blog_tag` VALUES (2, 8);
INSERT INTO `bg_blog_tag` VALUES (3, 1);
INSERT INTO `bg_blog_tag` VALUES (3, 6);
INSERT INTO `bg_blog_tag` VALUES (4, 1);
INSERT INTO `bg_blog_tag` VALUES (4, 5);
INSERT INTO `bg_blog_tag` VALUES (5, 1);
INSERT INTO `bg_blog_tag` VALUES (5, 7);
INSERT INTO `bg_blog_tag` VALUES (5, 14);
INSERT INTO `bg_blog_tag` VALUES (6, 7);
INSERT INTO `bg_blog_tag` VALUES (6, 8);
INSERT INTO `bg_blog_tag` VALUES (6, 14);
INSERT INTO `bg_blog_tag` VALUES (7, 14);
INSERT INTO `bg_blog_tag` VALUES (8, 5);
INSERT INTO `bg_blog_tag` VALUES (8, 6);
INSERT INTO `bg_blog_tag` VALUES (8, 7);
INSERT INTO `bg_blog_tag` VALUES (9, 6);
INSERT INTO `bg_blog_tag` VALUES (9, 8);
INSERT INTO `bg_blog_tag` VALUES (12, 8);

-- ----------------------------
-- Table structure for bg_category
-- ----------------------------
DROP TABLE IF EXISTS `bg_category`;
CREATE TABLE `bg_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父分类ID',
  `category_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '分类类型（0博客 1资源）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '分类状态（0正常 1停用）',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_category
-- ----------------------------
INSERT INTO `bg_category` VALUES (1, 'Java', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (2, 'C/C++', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (3, 'Spring Boot', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (4, 'Python', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (5, '深度学习', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (6, 'Vue', 0, '0', '0', 0, '', NULL, '', NULL, '');
INSERT INTO `bg_category` VALUES (7, '闲言碎语', 0, '0', '0', 0, '', NULL, '', NULL, '');

-- ----------------------------
-- Table structure for bg_followee
-- ----------------------------
DROP TABLE IF EXISTS `bg_followee`;
CREATE TABLE `bg_followee`  (
  `followee_id` int(11) NOT NULL COMMENT '被关注的人的id',
  `fan_id` int(11) NULL DEFAULT NULL COMMENT '关注人的id',
  PRIMARY KEY (`followee_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关注博主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_followee
-- ----------------------------
INSERT INTO `bg_followee` VALUES (1, 2);
INSERT INTO `bg_followee` VALUES (3, 1);

-- ----------------------------
-- Table structure for bg_leave_message
-- ----------------------------
DROP TABLE IF EXISTS `bg_leave_message`;
CREATE TABLE `bg_leave_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被留言人',
  `message_people` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言者',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `parent` int(45) NULL DEFAULT NULL COMMENT '0代表留的言，1代表留言的回复，按时间降序',
  `layer` int(11) NULL DEFAULT NULL COMMENT '留言层级',
  `lft` int(11) NULL DEFAULT NULL COMMENT '左编码',
  `rft` int(11) NULL DEFAULT NULL COMMENT '右编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_leave_message
-- ----------------------------
INSERT INTO `bg_leave_message` VALUES (1, 'wuliang', 'test1', '我最近导入你的一个项目报错404，你可以帮我解决下吗', '2020-04-09 18:37:36', 0, NULL, NULL, NULL);
INSERT INTO `bg_leave_message` VALUES (2, 'wuliang', 'zhangsan', '好的，加我qq1726436515，我帮你解决', '2020-04-09 18:31:02', 0, NULL, NULL, NULL);
INSERT INTO `bg_leave_message` VALUES (3, 'zhangsan', 'wuliang', '看看', '2020-04-09 18:31:00', 0, NULL, NULL, NULL);
INSERT INTO `bg_leave_message` VALUES (4, 'wuliang', 'test1', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2020-04-09 18:30:57', 0, NULL, NULL, NULL);
INSERT INTO `bg_leave_message` VALUES (5, 'zhangsan', 'wuliang', '是的快捷方式的空间', '2020-04-09 18:37:54', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bg_like
-- ----------------------------
DROP TABLE IF EXISTS `bg_like`;
CREATE TABLE `bg_like`  (
  `id` int(11) NOT NULL,
  `biz_type` int(255) NULL DEFAULT NULL COMMENT '业务类型，1博客，2评论，3留言',
  `biz_id` int(255) NULL DEFAULT NULL COMMENT '业务id',
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对评论 点赞或点踩 的人',
  `status` int(2) NULL DEFAULT NULL COMMENT '0代表踩，1代表赞',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_like
-- ----------------------------
INSERT INTO `bg_like` VALUES (2, NULL, NULL, 'zhangsan', 1, '2019-11-10 00:00:00.000000', NULL);

-- ----------------------------
-- Table structure for bg_link
-- ----------------------------
DROP TABLE IF EXISTS `bg_link`;
CREATE TABLE `bg_link`  (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '友链用户名',
  `linked_username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被友链用户名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被友链地址',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简述',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被友链头像',
  `status` int(11) NULL DEFAULT NULL COMMENT '1表示审核通过,0表示未审核',
  `weight` int(11) NULL DEFAULT NULL COMMENT '权重',
  `display` int(11) NULL DEFAULT NULL COMMENT '是否显示',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_link
-- ----------------------------

-- ----------------------------
-- Table structure for bg_medal
-- ----------------------------
DROP TABLE IF EXISTS `bg_medal`;
CREATE TABLE `bg_medal`  (
  `id` int(11) NOT NULL,
  `medal_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章名字',
  `img` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章图片',
  `description` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '勋章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_medal
-- ----------------------------
INSERT INTO `bg_medal` VALUES (1, '博览群文', 'img', '阅读总文章超过30篇');
INSERT INTO `bg_medal` VALUES (2, '勤写标兵', 'img', '每个星期至少发表一篇文章，持续四周以上，之后两个星期未发文取消勋章');
INSERT INTO `bg_medal` VALUES (3, '推荐红人', 'img', '超过1篇文章被推荐到博客社区');
INSERT INTO `bg_medal` VALUES (4, 'GitHub', 'img', '绑定GitHub即可获得');
INSERT INTO `bg_medal` VALUES (5, '博客专家', 'img', '博客等级达到6级以上即可获得');

-- ----------------------------
-- Table structure for bg_tag
-- ----------------------------
DROP TABLE IF EXISTS `bg_tag`;
CREATE TABLE `bg_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_tag
-- ----------------------------
INSERT INTO `bg_tag` VALUES (1, 'Java', NULL);
INSERT INTO `bg_tag` VALUES (2, 'C', NULL);
INSERT INTO `bg_tag` VALUES (3, 'C++', NULL);
INSERT INTO `bg_tag` VALUES (4, 'Python', NULL);
INSERT INTO `bg_tag` VALUES (5, 'Spring Boot', NULL);
INSERT INTO `bg_tag` VALUES (6, 'Linux', NULL);
INSERT INTO `bg_tag` VALUES (7, 'MySQL', NULL);
INSERT INTO `bg_tag` VALUES (8, '算法', NULL);
INSERT INTO `bg_tag` VALUES (9, '深度学习', NULL);
INSERT INTO `bg_tag` VALUES (10, '机器学习', NULL);
INSERT INTO `bg_tag` VALUES (11, 'SSM', NULL);
INSERT INTO `bg_tag` VALUES (12, 'Spring', NULL);

-- ----------------------------
-- Table structure for bg_user_medal
-- ----------------------------
DROP TABLE IF EXISTS `bg_user_medal`;
CREATE TABLE `bg_user_medal`  (
  `user_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `medal_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `medal_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户勋章关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_user_medal
-- ----------------------------
INSERT INTO `bg_user_medal` VALUES ('1', 1);
INSERT INTO `bg_user_medal` VALUES ('1', 2);
INSERT INTO `bg_user_medal` VALUES ('1', 3);
INSERT INTO `bg_user_medal` VALUES ('1', 4);
INSERT INTO `bg_user_medal` VALUES ('1', 5);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (24, 'bg_blog', '博客表', 'BgBlog', 'crud', 'com.gourddoll.blog', 'blog', 'blog', '博客管理', 'gourddoll', '0', '/', '{\"parentMenuId\":\"1066\"}', 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43', NULL);
INSERT INTO `gen_table` VALUES (25, 'bg_blog_comment', '博客评论表', 'BgBlogComment', 'crud', 'com.gourddoll.blog', 'blog', 'comment', '评论管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41', NULL);
INSERT INTO `gen_table` VALUES (26, 'bg_blog_statistics', '博客统计表', 'BgBlogStatistics', 'crud', 'com.gourddoll.blog', 'blog', 'statistics', '博客统计', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:49:21', NULL);
INSERT INTO `gen_table` VALUES (28, 'bg_category', '分类信息表', 'BgCategory', 'crud', 'com.gourddoll.blog', 'blog', 'category', '分类管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44', NULL);
INSERT INTO `gen_table` VALUES (29, 'bg_followee', '关注博主表', 'BgFollowee', 'crud', 'com.gourddoll.blog', 'blog', 'followee', '关注管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:50:28', NULL);
INSERT INTO `gen_table` VALUES (30, 'bg_leave_message', '留言表', 'BgLeaveMessage', 'crud', 'com.gourddoll.blog', 'blog', 'leave', '留言管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1072}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30', NULL);
INSERT INTO `gen_table` VALUES (31, 'bg_like', '点赞表', 'BgLike', 'crud', 'com.gourddoll.blog', 'blog', 'like', '点赞管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1072}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48', NULL);
INSERT INTO `gen_table` VALUES (32, 'bg_link', '友情链接表', 'BgLink', 'crud', 'com.gourddoll.blog', 'blog', 'link', '友链管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28', NULL);
INSERT INTO `gen_table` VALUES (33, 'bg_medal', '徽章表', 'BgMedal', 'crud', 'com.gourddoll.blog', 'blog', 'medal', '勋章管理', 'gourddoll', '0', '/', '{\"parentMenuId\":1066}', 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:54:42', NULL);
INSERT INTO `gen_table` VALUES (34, 'bg_tag', '标签表', 'BgTag', 'crud', 'com.gourddoll.blog', 'blog', 'tag', '标签管理', 'gourddoll', '0', '/', '{}', 'admin', '2020-11-28 13:44:25', '', '2020-11-28 13:55:11', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (158, '24', 'id', '博客id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (159, '24', 'title', '标题', 'varchar(45)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (160, '24', 'author', '作者', 'varchar(11)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (161, '24', 'summary', '简介', 'varchar(45)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (162, '24', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (163, '24', 'commend', '是否推荐，0不推荐，1推荐', 'int(2)', 'Integer', 'commend', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (164, '24', 'status', '文章状态，1表示已经发表，0表示在草稿箱，2表示在垃圾箱', 'int(2)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (165, '24', 'header_img', '博客预览图', 'varchar(255)', 'String', 'headerImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (166, '24', 'category_id', '分类id', 'varchar(11)', 'String', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (167, '24', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (168, '24', 'update_time', '更新时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (169, '24', 'create_by', '创建人', 'int(11)', 'Long', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (170, '24', 'update_by', '更新人', 'int(11)', 'Long', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:55:43');
INSERT INTO `gen_table_column` VALUES (171, '25', 'id', NULL, 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (172, '25', 'blog_id', '评论的博客', 'int(11)', 'Long', 'blogId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (173, '25', 'content', '评论内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (174, '25', 'create_time', '根据时间降序', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (175, '25', 'commentator', '是谁评论的', 'varchar(45)', 'String', 'commentator', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (176, '25', 'parent', '0直接评论blog_id的，其他都是回复的评论 的id', 'int(11)', 'Long', 'parent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (177, '25', 'layer', '评论层级', 'int(11)', 'Long', 'layer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (178, '25', 'lft', '左编码值', 'int(11)', 'Long', 'lft', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (179, '25', 'rft', '右编码值', 'int(11)', 'Long', 'rft', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-28 13:44:16', '', '2020-11-28 13:48:41');
INSERT INTO `gen_table_column` VALUES (180, '26', 'blog_id', NULL, 'int(11)', 'Long', 'blogId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:21');
INSERT INTO `gen_table_column` VALUES (181, '26', 'read_times', '阅读次数', 'int(11)', 'Long', 'readTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:21');
INSERT INTO `gen_table_column` VALUES (182, '26', 'like_times', '点赞次数', 'int(11)', 'Long', 'likeTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:21');
INSERT INTO `gen_table_column` VALUES (183, '26', 'dislike_times', '不喜欢次数', 'int(11)', 'Long', 'dislikeTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:21');
INSERT INTO `gen_table_column` VALUES (184, '26', 'comment_times', '评论次数', 'int(11)', 'Long', 'commentTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:21');
INSERT INTO `gen_table_column` VALUES (187, '28', 'id', '分类ID', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (188, '28', 'category_name', '分类名称', 'varchar(50)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (189, '28', 'parent_id', '父分类ID', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (190, '28', 'category_type', '分类类型（0博客 1资源）', 'char(1)', 'String', 'categoryType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (191, '28', 'status', '分类状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (192, '28', 'order_num', '显示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (193, '28', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (194, '28', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (195, '28', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (196, '28', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (197, '28', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:49:44');
INSERT INTO `gen_table_column` VALUES (198, '29', 'followee_id', '被关注的人的id', 'int(11)', 'Long', 'followeeId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:50:28');
INSERT INTO `gen_table_column` VALUES (199, '29', 'fan_id', '关注人的id', 'int(11)', 'Long', 'fanId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:50:28');
INSERT INTO `gen_table_column` VALUES (200, '30', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (201, '30', 'user_name', '被留言人', 'varchar(45)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (202, '30', 'message_people', '留言者', 'varchar(45)', 'String', 'messagePeople', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (203, '30', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (204, '30', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (205, '30', 'parent', '0代表留的言，1代表留言的回复，按时间降序', 'int(45)', 'Long', 'parent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (206, '30', 'layer', '留言层级', 'int(11)', 'Long', 'layer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (207, '30', 'lft', '左编码', 'int(11)', 'Long', 'lft', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (208, '30', 'rft', '右编码', 'int(11)', 'Long', 'rft', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:30');
INSERT INTO `gen_table_column` VALUES (209, '31', 'id', NULL, 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (210, '31', 'biz_type', '业务类型，1博客，2评论，3留言', 'int(255)', 'Long', 'bizType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (211, '31', 'biz_id', '业务id', 'int(255)', 'Long', 'bizId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (212, '31', 'user_name', '对评论 点赞或点踩 的人', 'varchar(45)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (213, '31', 'status', '0代表踩，1代表赞', 'int(2)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (214, '31', 'create_time', '创建时间', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (215, '31', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:51:48');
INSERT INTO `gen_table_column` VALUES (216, '32', 'id', NULL, 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (217, '32', 'user_name', '友链用户名', 'varchar(45)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (218, '32', 'linked_username', '被友链用户名', 'varchar(45)', 'String', 'linkedUsername', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (219, '32', 'url', '被友链地址', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (220, '32', 'summary', '简述', 'varchar(255)', 'String', 'summary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (221, '32', 'img', '被友链头像', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (222, '32', 'status', '1表示审核通过,0表示未审核', 'int(11)', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (223, '32', 'weight', '权重', 'int(11)', 'Long', 'weight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (224, '32', 'display', '是否显示', 'int(11)', 'Long', 'display', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (225, '32', 'email', '邮箱', 'varchar(45)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:52:28');
INSERT INTO `gen_table_column` VALUES (226, '33', 'id', NULL, 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:54:42');
INSERT INTO `gen_table_column` VALUES (227, '33', 'medal_name', '勋章名字', 'varchar(45)', 'String', 'medalName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:54:42');
INSERT INTO `gen_table_column` VALUES (228, '33', 'img', '勋章图片', 'varchar(45)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:54:42');
INSERT INTO `gen_table_column` VALUES (229, '33', 'description', '勋章描述', 'varchar(65)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-28 13:44:17', '', '2020-11-28 13:54:42');
INSERT INTO `gen_table_column` VALUES (230, '34', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-28 13:44:25', '', '2020-11-28 13:55:11');
INSERT INTO `gen_table_column` VALUES (231, '34', 'tag_name', '标签名', 'varchar(11)', 'String', 'tagName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-28 13:44:25', '', '2020-11-28 13:55:11');
INSERT INTO `gen_table_column` VALUES (232, '34', 'description', '描述', 'varchar(255)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-28 13:44:25', '', '2020-11-28 13:55:11');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.gourddoll.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E676F757264646F6C6C2E6A6F622E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002F636F6D2E676F757264646F6C6C2E636F6D6D6F6E2E636F72652E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.gourddoll.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E676F757264646F6C6C2E6A6F622E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002F636F6D2E676F757264646F6C6C2E636F6D6D6F6E2E636F72652E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.gourddoll.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E676F757264646F6C6C2E6A6F622E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002F636F6D2E676F757264646F6C6C2E636F6D6D6F6E2E636F72652E7765622E646F6D61696E2E42617365456E7469747900000000000000010200094C0009626567696E54696D6571007E00094C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0007656E6454696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C78707074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E07870707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-CU8OFQD1605454055897', 1605455017242, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1605454060000, -1, 5, 'PAUSED', 'CRON', 1605454058000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1605454065000, -1, 5, 'PAUSED', 'CRON', 1605454058000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1605454060000, -1, 5, 'PAUSED', 'CRON', 1605454058000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '量子科技', 0, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '上海总公司', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '成都分公司', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '授权码模式', 'authorization_code', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权码模式');
INSERT INTO `sys_dict_data` VALUES (30, 2, '密码模式', 'password', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '密码模式');
INSERT INTO `sys_dict_data` VALUES (31, 3, '客户端模式', 'client_credentials', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '客户端模式');
INSERT INTO `sys_dict_data` VALUES (32, 4, '简化模式', 'implicit', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '简化模式');
INSERT INTO `sys_dict_data` VALUES (33, 5, '刷新模式', 'refresh_token', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '刷新模式');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '授权类型', 'sys_grant_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权类型列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-11 21:43:41');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-11 21:44:08');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-15 18:54:03');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '192.168.2.104', '0', '登录成功', '2020-11-15 23:26:33');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 11:27:13');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-28 14:23:38');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 20:46:06');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 20:50:01');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-28 20:50:12');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 20:57:29');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-28 21:04:15');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 21:35:53');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-28 21:46:00');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 22:00:21');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-28 22:09:52');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 22:11:30');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-28 23:18:13');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '192.168.31.252', '0', '登录成功', '2020-11-29 11:59:03');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '192.168.31.252', '0', '退出成功', '2020-11-29 15:13:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1136 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 5, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-28 11:49:18', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 4, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-28 11:49:01', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '葫芦娃官网', 0, 6, 'http://39.99.195.107', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-28 11:49:29', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 9, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 10, 'log', 'system/log/index', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, 'Sentinel控制台', 2, 3, 'http://localhost:8718', '', 1, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流量控制菜单');
INSERT INTO `sys_menu` VALUES (112, 'Nacos控制台', 2, 4, 'http://localhost:8848/nacos', '', 1, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务治理菜单');
INSERT INTO `sys_menu` VALUES (113, 'Admin控制台', 2, 5, 'http://localhost:9100/login', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'http://39.99.195.107:8080/swagger-ui.html', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1062, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1063, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1064, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1065, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1066, '博客管理', 0, 1, 'blog', 'blog/blog/index', 1, 0, 'M', '0', '0', '', 'education', 'admin', '2020-11-28 11:37:18', 'admin', '2020-11-28 11:46:02', '');
INSERT INTO `sys_menu` VALUES (1072, '消息管理', 0, 2, 'message', NULL, 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2020-11-28 11:50:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '博客管理', 1066, 1, 'blog', 'blog/blog/index', 1, 0, 'C', '0', '0', 'blog:blog:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '博客管理菜单');
INSERT INTO `sys_menu` VALUES (1077, '博客管理查询', 1076, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:blog:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1078, '博客管理新增', 1076, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:blog:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1079, '博客管理修改', 1076, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:blog:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1080, '博客管理删除', 1076, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:blog:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '博客管理导出', 1076, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:blog:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1082, '分类管理', 1066, 2, 'category', 'blog/category/index', 1, 0, 'C', '0', '0', 'blog:category:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:00:43', '分类管理菜单');
INSERT INTO `sys_menu` VALUES (1083, '分类管理查询', 1082, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:category:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1084, '分类管理新增', 1082, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:category:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1085, '分类管理修改', 1082, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:category:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1086, '分类管理删除', 1082, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:category:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1087, '分类管理导出', 1082, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:category:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1088, '评论管理', 1072, 2, 'comment', 'blog/comment/index', 1, 0, 'C', '0', '0', 'blog:comment:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:02:38', '评论管理菜单');
INSERT INTO `sys_menu` VALUES (1089, '评论管理查询', 1088, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:comment:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1090, '评论管理新增', 1088, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:comment:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1091, '评论管理修改', 1088, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:comment:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1092, '评论管理删除', 1088, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:comment:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1093, '评论管理导出', 1088, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:comment:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1094, '关注管理', 1066, 6, 'followee', 'blog/followee/index', 1, 0, 'C', '0', '0', 'blog:followee:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:34', '关注管理菜单');
INSERT INTO `sys_menu` VALUES (1095, '关注管理查询', 1094, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:followee:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1096, '关注管理新增', 1094, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:followee:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1097, '关注管理修改', 1094, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:followee:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1098, '关注管理删除', 1094, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:followee:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1099, '关注管理导出', 1094, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:followee:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1100, '留言管理', 1072, 1, 'leave', 'blog/leave/index', 1, 0, 'C', '0', '0', 'blog:leave:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '留言管理菜单');
INSERT INTO `sys_menu` VALUES (1101, '留言管理查询', 1100, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:leave:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1102, '留言管理新增', 1100, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:leave:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1103, '留言管理修改', 1100, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:leave:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1104, '留言管理删除', 1100, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:leave:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1105, '留言管理导出', 1100, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:leave:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1106, '点赞管理', 1072, 3, 'like', 'blog/like/index', 1, 0, 'C', '0', '0', 'blog:like:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:02:44', '点赞管理菜单');
INSERT INTO `sys_menu` VALUES (1107, '点赞管理查询', 1106, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:like:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1108, '点赞管理新增', 1106, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:like:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1109, '点赞管理修改', 1106, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:like:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1110, '点赞管理删除', 1106, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:like:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1111, '点赞管理导出', 1106, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:like:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1112, '友链管理', 1066, 5, 'link', 'blog/link/index', 1, 0, 'C', '0', '0', 'blog:link:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:24', '友链管理菜单');
INSERT INTO `sys_menu` VALUES (1113, '友链管理查询', 1112, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:link:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1114, '友链管理新增', 1112, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:link:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1115, '友链管理修改', 1112, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:link:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1116, '友链管理删除', 1112, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:link:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1117, '友链管理导出', 1112, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:link:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1118, '勋章管理', 1066, 4, 'medal', 'blog/medal/index', 1, 0, 'C', '0', '0', 'blog:medal:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:15', '勋章管理菜单');
INSERT INTO `sys_menu` VALUES (1119, '勋章管理查询', 1118, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:medal:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1120, '勋章管理新增', 1118, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:medal:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1121, '勋章管理修改', 1118, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:medal:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1122, '勋章管理删除', 1118, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:medal:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1123, '勋章管理导出', 1118, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:medal:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1124, '博客统计', 1066, 1, 'statistics', 'blog/statistics/index', 1, 0, 'C', '0', '0', 'blog:statistics:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '博客统计菜单');
INSERT INTO `sys_menu` VALUES (1125, '博客统计查询', 1124, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:statistics:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1126, '博客统计新增', 1124, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:statistics:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1127, '博客统计修改', 1124, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:statistics:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1128, '博客统计删除', 1124, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:statistics:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1129, '博客统计导出', 1124, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:statistics:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1130, '标签管理', 1066, 3, 'tag', 'blog/tag/index', 1, 0, 'C', '0', '0', 'blog:tag:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:00:54', '标签管理菜单');
INSERT INTO `sys_menu` VALUES (1131, '标签管理查询', 1130, 1, '#', '', 1, 0, 'F', '0', '0', 'blog:tag:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1132, '标签管理新增', 1130, 2, '#', '', 1, 0, 'F', '0', '0', 'blog:tag:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1133, '标签管理修改', 1130, 3, '#', '', 1, 0, 'F', '0', '0', 'blog:tag:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1134, '标签管理删除', 1130, 4, '#', '', 1, 0, 'F', '0', '0', 'blog:tag:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1135, '标签管理导出', 1130, 5, '#', '', 1, 0, 'F', '0', '0', 'blog:tag:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/role/changeStatus', '127.0.0.1', '', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"params\":{},\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"status\":\"1\"}', 'null', 1, '不允许操作超级管理员角色', '2020-11-11 22:39:56');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_blog,bg_blog_comment,bg_blog_comment_like,bg_blog_like,bg_blog_statistics,bg_category,bg_followee,bg_leave_message,bg_link', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:29:25');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_medal,bg_tag', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:29:50');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.gourddoll.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, 'null', 0, NULL, '2020-11-28 11:30:33');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog/blog/index\",\"component\":\"blog/blog/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:37:19');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog/blog/index\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:38:55');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:39:05');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/log/index\",\"component\":\"blog/log/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:39:45');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/blog/index\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534785000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1067,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:40:03');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:40:49');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"2\",\"menuName\":\"分类管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/category/index\",\"component\":\"blog/category/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:42:36');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"3\",\"menuName\":\"标签管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/tag/index\",\"component\":\"blog/tag/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:43:54');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"友链管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog/link/index\",\"component\":\"blog/link/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:45:04');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:45:50');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"blog\",\"component\":\"blog/blog/index\",\"children\":[],\"createTime\":1606534638000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1066,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:46:02');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"4\",\"menuName\":\"友链管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/link/index\",\"component\":\"blog/link/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:46:32');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"5\",\"menuName\":\"勋章管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"blog/medal/index\",\"component\":\"blog/medal/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:48:07');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"2\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:48:41');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"3\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:48:51');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"monitor\",\"orderNum\":\"4\",\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:49:01');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"5\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:49:18');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://39.99.195.107\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:49:29');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"2\",\"menuName\":\"消息管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"message\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:50:27');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"博客评论管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"message/comment/index\",\"component\":\"message/comment/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:51:08');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"2\",\"menuName\":\"留言管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"message/leave/index\",\"component\":\"message/leave/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:51:43');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"3\",\"menuName\":\"点赞管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"message/like/index\",\"component\":\"message/like/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:52:43');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"1\",\"menuName\":\"评论管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"message/comment/index\",\"component\":\"message/comment/index\",\"children\":[],\"createTime\":1606535468000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1073,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:52:51');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 3, 'com.gourddoll.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/1,2,3,4,5,6,7,8,9,10', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:59:02');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 3, 'com.gourddoll.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/11', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 11:59:06');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_blog,bg_blog_comment,bg_blog_statistics,bg_blog_tag,bg_category,bg_followee,bg_leave_message,bg_like,bg_link,bg_medal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 12:04:24');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_tag', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 12:05:21');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 3, 'com.gourddoll.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/19,15', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 12:06:34');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_like', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 12:06:40');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 3, 'com.gourddoll.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/12,13,14,16,17,18,20,21,22,23', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 13:44:11');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_blog,bg_blog_comment,bg_blog_statistics,bg_blog_tag,bg_category,bg_followee,bg_leave_message,bg_like,bg_link,bg_medal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 13:44:17');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 6, 'com.gourddoll.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'bg_tag', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 13:44:25');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 3, 'com.gourddoll.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/27', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 13:44:32');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'com.gourddoll.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, 'null', 0, NULL, '2020-11-28 13:55:53');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"标签管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"tag\",\"component\":\"blog/tag/index\",\"children\":[],\"createTime\":1519833600000,\"isFrame\":\"1\",\"menuId\":1130,\"menuType\":\"C\",\"perms\":\"blog:tag:list\",\"status\":\"0\"}', '{\"msg\":\"修改菜单\'标签管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2020-11-28 20:59:03');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1067', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 20:59:33');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1069', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 20:59:58');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1068', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:01');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1070', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:04');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1071', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:08');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"6\",\"menuName\":\"标签管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"tag\",\"component\":\"blog/tag/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1130,\"menuType\":\"C\",\"perms\":\"blog:tag:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:22');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"分类管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"category\",\"component\":\"blog/category/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1082,\"menuType\":\"C\",\"perms\":\"blog:category:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:43');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"标签管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"tag\",\"component\":\"blog/tag/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1130,\"menuType\":\"C\",\"perms\":\"blog:tag:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:00:54');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"评论管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"comment\",\"component\":\"blog/comment/index\",\"children\":[],\"createTime\":1519833600000,\"isFrame\":\"1\",\"menuId\":1088,\"menuType\":\"C\",\"perms\":\"blog:comment:list\",\"status\":\"0\"}', '{\"msg\":\"修改菜单\'评论管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2020-11-28 21:01:19');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1073', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:01:34');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1074', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:01:43');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1075', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:02:10');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"评论管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"comment\",\"component\":\"blog/comment/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1088,\"menuType\":\"C\",\"perms\":\"blog:comment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:02:19');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"评论管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"comment\",\"component\":\"blog/comment/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1088,\"menuType\":\"C\",\"perms\":\"blog:comment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:02:38');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"点赞管理\",\"params\":{},\"parentId\":1072,\"isCache\":\"0\",\"path\":\"like\",\"component\":\"blog/like/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1106,\"menuType\":\"C\",\"perms\":\"blog:like:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:02:44');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"勋章管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"medal\",\"component\":\"blog/medal/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1118,\"menuType\":\"C\",\"perms\":\"blog:medal:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:03:15');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"友链管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"link\",\"component\":\"blog/link/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1112,\"menuType\":\"C\",\"perms\":\"blog:link:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:03:24');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"6\",\"menuName\":\"关注管理\",\"params\":{},\"parentId\":1066,\"isCache\":\"0\",\"path\":\"followee\",\"component\":\"blog/followee/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1094,\"menuType\":\"C\",\"perms\":\"blog:followee:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-11-28 21:03:34');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 1062);
INSERT INTO `sys_role_menu` VALUES (2, 1063);
INSERT INTO `sys_role_menu` VALUES (2, 1064);
INSERT INTO `sys_role_menu` VALUES (2, 1065);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '红娃', '00', 'gd@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'hw', '黄娃', '00', 'gd@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
