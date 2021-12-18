/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 127.0.0.1:3306
 Source Schema         : gd-blog

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 18/12/2021 17:35:15
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
  `category_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog
-- ----------------------------
INSERT INTO `bg_blog` VALUES (1, '深入理解SpringBoot多数据源10', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 2, 1, '1', '4', NULL, '2020-04-08 16:30:13', '2021-10-06 17:49:28', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (3, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '2', NULL, '2020-04-09 16:30:14', '2020-04-09 16:30:14', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (4, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '3', NULL, '2020-04-09 21:16:10', '2020-04-09 21:16:10', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (5, '深入理解SpringBoot多数据源', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', NULL, '2020-04-09 16:30:16', '2020-04-09 16:30:16', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (6, '深入理解SpringBoot多数据源', 'gourddoll', 'p><strong>说明</stron', '<p><strong>说明</strong><span style=\"color: #e03e2d;\">SpringBoot2</span>配置Dru<em>id多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决</em>定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。</p>', 1, 1, '1', '2', NULL, '2020-04-09 16:30:16', '2020-04-24 00:00:00', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (7, 'test2', 'gourddoll', 'table style=\"border', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 25%;\">saf</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n<td style=\"width: 25%;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>\n<p>ss<strong>sssssssssssssssssssssgxxxxxxxxxg</strong></p>', 1, 1, '1', '1', NULL, '2020-04-09 16:30:16', '2020-04-24 00:00:00', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (8, 'test', 'lisi', 'p>dsfffffffffffffff', '<p>dsfffffffffffffffffffffffffffs</p>', 1, 1, '1', '3', NULL, '2020-04-09 16:30:16', '2020-04-25 00:00:00', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (9, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', NULL, '2020-04-09 21:15:54', '2020-04-09 21:15:54', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (10, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '3', NULL, '2020-04-09 21:15:57', '2020-04-09 21:15:57', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (11, '深入理解SpringBoot多数据源', 'test1', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '1', NULL, '2020-04-09 16:30:17', '2020-04-09 16:30:17', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (12, '深入理解SpringBoot多数据源', 'zhangsan', '本文主要说明SpringBoot2配置Druid多数据源。', '本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。', 1, 1, '1', '2', NULL, '2020-04-09 21:15:59', '2020-04-09 21:15:59', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (14, 'addTest', 'wangba', 'p style=\"text-align', '<p style=\"text-align: center;\">啊哈哈哈哈哈哈哈</p>\n<p style=\"text-align: left;\"><img src=\"img/ban1.png\" alt=\"\" width=\"480\" height=\"300\" /></p>', 1, 1, '1', '5', NULL, '2020-04-09 21:15:59', '2020-04-25 21:20:22', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (15, '标签测试', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '标签测试', 2, 1, '1', '6', 'Vue', '2021-10-06 23:51:08', '2021-10-05 20:52:42', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (16, '标签测试', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '标签测试', 2, 1, '1', '6', 'Vue', '2021-10-06 23:52:33', '2021-10-05 20:52:42', NULL, NULL, NULL);
INSERT INTO `bg_blog` VALUES (17, '标签测试', 'gourddoll', '本文主要说明SpringBoot2配置Druid多数据源。', '标签测试', 2, 1, '1', '6', 'Vue', '2021-10-07 00:11:59', '2021-10-05 20:52:42', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bg_blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `bg_blog_comment`;
CREATE TABLE `bg_blog_comment`  (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL COMMENT '评论的博客',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `commentator` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是谁评论的',
  `parent` int(11) NULL DEFAULT NULL COMMENT '0直接评论blog_id的，其他都是回复的评论 的id',
  `layer` int(11) NULL DEFAULT NULL COMMENT '评论层级',
  `lft` int(11) NULL DEFAULT NULL COMMENT '左编码值',
  `rft` int(11) NULL DEFAULT NULL COMMENT '右编码值',
  `rate` int(2) NULL DEFAULT NULL COMMENT '评分',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_blog_comment
-- ----------------------------
INSERT INTO `bg_blog_comment` VALUES (1, 1, '说的好啊22', '2', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-09 22:09:51', NULL, NULL, NULL);
INSERT INTO `bg_blog_comment` VALUES (2, 1, '你就只会水评论', '3', 1, NULL, NULL, NULL, NULL, NULL, '2021-08-09 22:09:51', NULL, NULL, NULL);

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
INSERT INTO `bg_blog_tag` VALUES (1, 15);
INSERT INTO `bg_blog_tag` VALUES (1, 16);
INSERT INTO `bg_blog_tag` VALUES (1, 17);
INSERT INTO `bg_blog_tag` VALUES (2, 6);
INSERT INTO `bg_blog_tag` VALUES (2, 8);
INSERT INTO `bg_blog_tag` VALUES (2, 15);
INSERT INTO `bg_blog_tag` VALUES (2, 16);
INSERT INTO `bg_blog_tag` VALUES (2, 17);
INSERT INTO `bg_blog_tag` VALUES (3, 1);
INSERT INTO `bg_blog_tag` VALUES (3, 6);
INSERT INTO `bg_blog_tag` VALUES (3, 15);
INSERT INTO `bg_blog_tag` VALUES (3, 16);
INSERT INTO `bg_blog_tag` VALUES (3, 17);
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_type` int(255) NULL DEFAULT NULL COMMENT '业务类型，1博客，2评论，3留言',
  `biz_id` int(255) NULL DEFAULT NULL COMMENT '业务id',
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对评论 点赞或点踩 的人',
  `status` int(2) NULL DEFAULT NULL COMMENT '0代表踩，1代表赞',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_like
-- ----------------------------
INSERT INTO `bg_like` VALUES (2, NULL, NULL, 'zhangsan', 1, '2019-11-10 00:00:00.000000', NULL);

-- ----------------------------
-- Table structure for bg_link
-- ----------------------------
DROP TABLE IF EXISTS `bg_link`;
CREATE TABLE `bg_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_link
-- ----------------------------
INSERT INTO `bg_link` VALUES (1, '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bg_medal
-- ----------------------------
DROP TABLE IF EXISTS `bg_medal`;
CREATE TABLE `bg_medal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medal_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章名字',
  `img` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章图片',
  `description` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '勋章描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '勋章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bg_medal
-- ----------------------------
INSERT INTO `bg_medal` VALUES (1, '博览群文', 'img', '阅读总文章超过31篇');
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
INSERT INTO `bg_tag` VALUES (1, 'Java2', NULL);
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
-- Table structure for num
-- ----------------------------
DROP TABLE IF EXISTS `num`;
CREATE TABLE `num`  (
  `i` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of num
-- ----------------------------
INSERT INTO `num` VALUES (0);
INSERT INTO `num` VALUES (1);
INSERT INTO `num` VALUES (2);
INSERT INTO `num` VALUES (3);
INSERT INTO `num` VALUES (4);
INSERT INTO `num` VALUES (5);
INSERT INTO `num` VALUES (6);
INSERT INTO `num` VALUES (7);
INSERT INTO `num` VALUES (8);
INSERT INTO `num` VALUES (9);
INSERT INTO `num` VALUES (10);
INSERT INTO `num` VALUES (11);
INSERT INTO `num` VALUES (12);
INSERT INTO `num` VALUES (13);
INSERT INTO `num` VALUES (14);
INSERT INTO `num` VALUES (15);
INSERT INTO `num` VALUES (16);
INSERT INTO `num` VALUES (17);
INSERT INTO `num` VALUES (18);
INSERT INTO `num` VALUES (19);
INSERT INTO `num` VALUES (20);
INSERT INTO `num` VALUES (21);
INSERT INTO `num` VALUES (22);
INSERT INTO `num` VALUES (23);
INSERT INTO `num` VALUES (24);
INSERT INTO `num` VALUES (25);
INSERT INTO `num` VALUES (26);
INSERT INTO `num` VALUES (27);
INSERT INTO `num` VALUES (28);
INSERT INTO `num` VALUES (29);
INSERT INTO `num` VALUES (30);
INSERT INTO `num` VALUES (31);
INSERT INTO `num` VALUES (32);
INSERT INTO `num` VALUES (33);
INSERT INTO `num` VALUES (34);
INSERT INTO `num` VALUES (35);
INSERT INTO `num` VALUES (36);
INSERT INTO `num` VALUES (37);
INSERT INTO `num` VALUES (38);
INSERT INTO `num` VALUES (39);
INSERT INTO `num` VALUES (40);
INSERT INTO `num` VALUES (41);
INSERT INTO `num` VALUES (42);
INSERT INTO `num` VALUES (43);
INSERT INTO `num` VALUES (44);
INSERT INTO `num` VALUES (45);
INSERT INTO `num` VALUES (46);
INSERT INTO `num` VALUES (47);
INSERT INTO `num` VALUES (48);
INSERT INTO `num` VALUES (49);
INSERT INTO `num` VALUES (50);
INSERT INTO `num` VALUES (51);
INSERT INTO `num` VALUES (52);
INSERT INTO `num` VALUES (53);
INSERT INTO `num` VALUES (54);
INSERT INTO `num` VALUES (55);
INSERT INTO `num` VALUES (56);
INSERT INTO `num` VALUES (57);
INSERT INTO `num` VALUES (58);
INSERT INTO `num` VALUES (59);
INSERT INTO `num` VALUES (60);
INSERT INTO `num` VALUES (61);
INSERT INTO `num` VALUES (62);
INSERT INTO `num` VALUES (63);
INSERT INTO `num` VALUES (64);
INSERT INTO `num` VALUES (65);
INSERT INTO `num` VALUES (66);
INSERT INTO `num` VALUES (67);
INSERT INTO `num` VALUES (68);
INSERT INTO `num` VALUES (69);

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
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark4', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2021-09-26 23:35:29', '深色主题theme-dark，浅色主题theme-light');

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
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '量子科技', 0, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-07 23:02:02');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '上海总公司', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '成都分公司', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-07 23:02:02');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'gourddoll', '15888888888', 'gd@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (110, 103, '0,100,101,103', '大队', 5, NULL, NULL, NULL, '0', '2', 'admin', '2021-02-21 23:30:42', '', NULL);
INSERT INTO `sys_dept` VALUES (111, 102, '0,100,102', '3', 1, '吴亮', NULL, NULL, '0', '0', 'admin', '2021-03-07 22:54:41', 'admin', '2021-03-07 23:02:02');

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
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '授权码模式', 'authorization_code', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '授权码模式');
INSERT INTO `sys_dict_data` VALUES (30, 2, '密码模式', 'password', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '密码模式');
INSERT INTO `sys_dict_data` VALUES (31, 3, '客户端模式', 'client_credentials', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '客户端模式');
INSERT INTO `sys_dict_data` VALUES (32, 4, '简化模式', 'implicit', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '简化模式');
INSERT INTO `sys_dict_data` VALUES (33, 5, '刷新模式', 'refresh_token', 'sys_grant_type', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '刷新模式');

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
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '授权类型', 'sys_grant_type', '0', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '授权类型列表');

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
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 432 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '192.168.2.104', '0', '登录成功', '2020-12-06 11:56:03');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-12 11:47:28');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 14:34:08');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 14:42:50');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 16:08:17');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 18:45:24');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 18:58:00');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-12 21:23:56');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:09:57');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:44:19');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:45:01');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:45:04');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:45:26');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:45:30');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:46:15');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:46:19');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:46:27');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:46:34');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:46:56');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:47:00');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:47:05');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:47:11');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:48:25');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:48:41');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-13 03:48:55');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-13 03:50:07');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-14 05:19:43');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-14 05:20:03');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-16 19:28:28');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-16 19:29:22');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-16 19:29:26');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-16 19:29:32');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-16 19:29:38');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-16 19:29:56');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-16 19:30:00');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 14:32:14');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 14:39:37');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 14:39:41');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 14:51:22');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 14:53:06');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 14:53:53');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 14:53:56');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 15:21:07');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 15:24:16');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 15:26:06');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 17:31:08');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-17 18:12:13');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-17 18:12:19');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 01:31:33');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 01:32:26');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '192.168.123.117', '0', '登录成功', '2020-12-18 15:44:59');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:07:26');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:09:37');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:12:55');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:14:31');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:20:36');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:23:27');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 17:42:40');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:04:51');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:05:02');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:09:13');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:09:27');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:10:15');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:10:22');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:12:44');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:12:47');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:15:59');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:16:06');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:24:34');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:24:39');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:26:43');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:26:46');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:26:51');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:31:28');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:31:34');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:32:53');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:32:56');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:34:52');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:34:55');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:43:18');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:43:23');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:44:13');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:44:22');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:47:08');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:47:13');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:48:31');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:48:34');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 18:53:59');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:54:03');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 18:55:54');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:02:59');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:04:48');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:07:51');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 19:10:23');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:10:28');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 19:18:21');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:18:30');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 19:23:18');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:23:36');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 19:28:13');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 19:28:16');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 20:29:55');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 20:30:01');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 20:47:11');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 20:47:16');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 20:47:19');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 20:47:27');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 20:47:40');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 20:59:37');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 21:00:35');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 21:00:38');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-18 21:00:45');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-18 21:01:04');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:01:00');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:01:20');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:01:22');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:04:18');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:04:26');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:10:34');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:10:45');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:16:59');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:17:04');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:17:38');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:17:47');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:19:01');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:19:07');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:19:10');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:22:57');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:23:00');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:23:03');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-19 14:23:33');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-19 14:23:38');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 15:48:55');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 15:49:01');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 15:49:18');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 16:29:51');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 16:30:08');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 16:30:16');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-20 16:32:13');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-20 16:32:36');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-20 16:33:29');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '172.26.176.166', '1', '用户密码错误', '2020-12-21 08:37:51');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-21 08:38:00');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-21 08:44:45');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:12:44');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:12:58');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:23:47');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-22 15:25:49');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:25:58');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-22 15:36:06');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:36:14');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-22 15:36:45');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:41:00');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-22 15:41:16');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-22 15:41:19');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 05:59:56');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 10:20:57');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 10:21:42');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 10:35:58');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 10:36:10');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 13:13:47');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 13:13:59');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 13:14:09');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 13:14:12');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 15:38:27');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 15:38:37');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 15:38:54');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 15:39:02');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 15:39:42');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 15:39:45');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 17:25:58');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 17:26:02');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 17:31:35');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 17:31:38');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 19:14:04');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-26 19:14:27');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-26 19:14:30');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-28 15:29:10');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-28 18:54:57');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-28 18:55:02');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-29 13:03:32');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '172.26.176.166', '0', '退出成功', '2020-12-29 16:13:36');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '172.26.176.166', '0', '登录成功', '2020-12-29 16:13:44');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-02 02:18:44');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-03 08:17:09');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-03 13:46:10');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-03 13:46:14');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-04 15:52:22');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-08 14:55:06');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-09 13:56:25');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-10 02:03:12');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-10 15:21:37');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '172.26.176.166', '1', '用户密码错误', '2021-01-10 15:42:51');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '172.26.176.166', '1', '用户密码错误', '2021-01-10 15:43:17');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-10 15:43:25');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-10 15:48:01');
INSERT INTO `sys_logininfor` VALUES (315, 'hw', '172.26.176.166', '1', '用户密码错误', '2021-01-10 15:48:16');
INSERT INTO `sys_logininfor` VALUES (316, 'hw', '172.26.176.166', '1', '用户密码错误', '2021-01-10 15:48:27');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-10 15:48:38');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-10 15:49:26');
INSERT INTO `sys_logininfor` VALUES (319, 'hw', '172.26.176.166', '1', '用户密码错误', '2021-01-10 15:49:37');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-11 15:24:55');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-12 14:12:14');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-12 15:05:35');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-12 15:39:21');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-12 15:39:28');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-13 16:04:37');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-15 15:48:47');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-16 14:56:35');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-16 17:15:49');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-16 17:53:45');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-16 17:53:58');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 05:55:58');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 10:03:23');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-17 10:12:50');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 10:12:55');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-17 10:16:27');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-17 10:46:06');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 10:46:18');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-17 10:55:58');
INSERT INTO `sys_logininfor` VALUES (339, 'test20', '172.26.176.166', '1', '用户密码错误', '2021-01-17 10:56:12');
INSERT INTO `sys_logininfor` VALUES (340, 'test20', '172.26.176.166', '1', '用户密码错误', '2021-01-17 10:56:24');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 10:56:34');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-17 12:51:45');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-17 12:51:47');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-18 13:38:52');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-21 06:25:11');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '172.26.176.166', '0', '退出成功', '2021-01-21 08:41:19');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-21 08:41:24');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '172.26.176.166', '0', '登录成功', '2021-01-21 08:53:24');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-05 12:17:08');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-06 03:28:48');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-07 03:22:37');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 02:06:17');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 02:13:52');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 02:20:12');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 02:23:43');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 02:26:02');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:37:47');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:38:24');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:38:28');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:39:11');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:39:34');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:39:59');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:41:46');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:44:37');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '172.26.176.166', '0', '退出成功', '2021-02-08 07:49:20');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:49:23');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '172.26.176.166', '0', '退出成功', '2021-02-08 07:49:32');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-08 07:49:42');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '172.26.176.166', '0', '登录成功', '2021-02-09 02:34:02');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-16 17:43:29');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-16 17:44:18');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-16 17:44:56');
INSERT INTO `sys_logininfor` VALUES (373, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-16 17:46:50');
INSERT INTO `sys_logininfor` VALUES (374, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-17 09:53:00');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-17 09:53:18');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-17 09:55:25');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-18 10:45:56');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-19 17:48:59');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '192.168.0.112', '0', '登录成功', '2021-02-21 20:11:25');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-07 14:18:59');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '192.168.3.121', '0', '退出成功', '2021-03-07 14:20:54');
INSERT INTO `sys_logininfor` VALUES (382, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-07 14:26:10');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-07 18:17:32');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-07 18:18:23');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '192.168.3.121', '0', '退出成功', '2021-03-07 18:20:49');
INSERT INTO `sys_logininfor` VALUES (386, 'usertest1', '192.168.3.121', '0', '登录成功', '2021-03-07 18:21:00');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-07 18:24:44');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '192.168.3.121', '0', '登录成功', '2021-03-14 23:32:25');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '172.16.116.236', '0', '登录成功', '2021-04-14 13:18:41');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-08 16:32:36');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-08 21:59:45');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-09 19:10:53');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 18:08:14');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 22:04:43');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:05:31');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 22:09:12');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:09:17');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 22:17:19');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:17:25');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 22:27:15');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:27:18');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:27:59');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:29:46');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:38:05');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:38:28');
INSERT INTO `sys_logininfor` VALUES (406, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:40:38');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:42:28');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:43:04');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:43:41');
INSERT INTO `sys_logininfor` VALUES (410, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:50:42');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 22:56:51');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 23:12:41');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 23:12:45');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 23:13:36');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 23:13:41');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '192.168.0.102', '0', '退出成功', '2021-08-15 23:13:59');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 23:14:02');
INSERT INTO `sys_logininfor` VALUES (418, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-15 23:16:17');
INSERT INTO `sys_logininfor` VALUES (419, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-21 15:52:20');
INSERT INTO `sys_logininfor` VALUES (420, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-22 22:28:56');
INSERT INTO `sys_logininfor` VALUES (421, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-22 23:11:09');
INSERT INTO `sys_logininfor` VALUES (422, 'admin', '192.168.0.102', '0', '登录成功', '2021-08-29 21:41:43');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '192.168.0.102', '0', '登录成功', '2021-09-04 17:53:42');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '192.168.0.102', '0', '登录成功', '2021-09-12 10:25:31');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '192.168.0.102', '0', '登录成功', '2021-09-12 20:49:43');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '192.168.0.102', '0', '登录成功', '2021-09-26 23:05:14');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '192.168.0.102', '0', '登录成功', '2021-09-26 23:05:14');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '192.168.0.106', '0', '登录成功', '2021-10-05 13:13:53');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '192.168.0.106', '0', '登录成功', '2021-10-06 00:05:08');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '192.168.0.106', '0', '登录成功', '2021-10-06 12:59:28');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '192.168.0.102', '0', '登录成功', '2021-12-18 17:30:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由唯一标识',
  `path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` tinyint(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` tinyint(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（C菜单 F按钮）',
  `visible` tinyint(1) NULL DEFAULT 0 COMMENT '菜单状态（0显示 1隐藏）',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
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
INSERT INTO `sys_menu` VALUES (1, 'Dashboard', 0, 1, 'Dashboard', '/dashboard', '', 1, 0, 'M', 1, '0', 'system:index', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2018-03-01 00:00:00', '首页+数据分析');
INSERT INTO `sys_menu` VALUES (2, '系统管理', 0, 5, 'System', '/system', '', 1, 0, 'M', 1, '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-28 11:49:18', '系统管理目录');
INSERT INTO `sys_menu` VALUES (3, '系统监控', 0, 4, 'Monitor', '/monitor', NULL, 1, 0, 'M', 1, '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-28 11:49:01', '系统监控目录');
INSERT INTO `sys_menu` VALUES (4, '系统工具', 0, 3, 'Tool', '/tool', NULL, 1, 0, 'M', 1, '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (5, '葫芦娃博客主页', 0, 6, 'https://www.baidu.com/', 'https://www.baidu.com/', NULL, 0, 0, 'M', 1, '0', '', 'guide', 'admin', '2018-03-16 11:33:00', 'admin', '2021-02-17 18:43:08', '博客官网地址');
INSERT INTO `sys_menu` VALUES (7, '分析页', 1, 1, 'Analysis', '/dashboard/analysis', '/dashboard/analysis/List', 1, 0, 'C', 1, '0', 'system:index', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2018-03-01 00:00:00', '首页+数据分析');
INSERT INTO `sys_menu` VALUES (8, '工作台', 1, 2, 'Workbench', 'dashboard/workbench', 'dashboard/workbench/List', 1, 0, 'C', 1, '0', 'system:index', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2018-03-01 00:00:00', '首页+数据分析');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 2, 1, 'SystemUser', '/system/user', 'system/user/List', 1, 0, 'C', 1, '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 2, 2, 'SystemRole', '/system/role', 'system/role/List', 1, 0, 'C', 1, '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 2, 3, 'SystemMenu', '/system/menu', 'system/menu/List', 1, 0, 'C', 1, '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 2, 4, 'SystemDept', '/system/dept', 'system/dept/List', 1, 0, 'C', 1, '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 2, 5, 'SystemPost', '/system/post', 'system/post/List', 1, 0, 'C', 1, '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 2, 6, 'SystemDict', '/system/dict', 'system/dict/List', 1, 0, 'C', 1, '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 2, 7, 'SystemConfig', '/system/config', 'system/config/List', 1, 0, 'C', 1, '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 2, 9, 'SystemNotice', '/system/notice', 'system/notice/List', 1, 0, 'C', 1, '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 2, 10, 'SystemLog', '/system/log', '', 1, 0, 'M', 1, '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 3, 1, 'MonitorOnline', '/monitor/online', 'monitor/online/List', 1, 0, 'C', 1, '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 3, 2, 'MonitorJob', '/monitor/job', 'monitor/job/List', 1, 0, 'C', 1, '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, 'Sentinel控制台', 3, 3, 'http://39.99.195.107:8718', 'http://39.99.195.107:8718', '', 1, 0, 'C', 1, '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '流量控制菜单');
INSERT INTO `sys_menu` VALUES (112, 'Nacos控制台', 3, 4, 'http://39.99.195.107:8848/nacos', 'http://39.99.195.107:8848/nacos', '', 1, 0, 'C', 1, '0', 'monitor:nacos:list', 'nacos', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '服务治理菜单');
INSERT INTO `sys_menu` VALUES (113, 'Admin控制台', 3, 5, 'http://39.99.195.107:9100/login', 'http://39.99.195.107:9100/login', '', 1, 0, 'C', 1, '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 4, 1, 'ToolBuild', '/tool/build', 'tool/build/Build', 1, 0, 'C', 1, '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 4, 2, 'ToolGen', '/tool/gen', 'tool/gen/Gen', 1, 0, 'C', 1, '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 4, 3, 'http://39.99.195.107:8080/swagger-ui.html', 'http://39.99.195.107:8080/swagger-ui.html', '', 1, 0, 'C', 1, '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'SystemLogOperlog', '/system/log/operlog', 'system/log/operlog/List', 1, 0, 'C', 1, '0', 'system:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'SystemLogLogininfor', '/system/log/logininfor', 'system/log/logininfor/List', 1, 0, 'C', 1, '0', 'system:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', 1, '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', 1, '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', 1, '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', 1, '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', 1, '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', 1, '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', 1, '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', 1, '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', 1, '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', 1, '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', 1, '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', 1, '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', 1, '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', 1, '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', 1, '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', 1, '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', 1, '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', 1, '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', 1, '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', 1, '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', 1, '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', 1, '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', 1, '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', 1, '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', 1, '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '', '#', '', 1, 0, 'F', 1, '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '', '#', '', 1, 0, 'F', 1, '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '', '#', '', 1, 0, 'F', 1, '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '', '#', '', 1, 0, 'F', 1, '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '', '#', '', 1, 0, 'F', 1, '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '', '#', '', 1, 0, 'F', 1, '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '', '#', '', 1, 0, 'F', 1, '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '', '#', '', 1, 0, 'F', 1, '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '', '#', '', 1, 0, 'F', 1, '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '', '#', '', 1, 0, 'F', 1, '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '公告查询', 107, 1, '', '#', '', 1, 0, 'F', 1, '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '公告新增', 107, 2, '', '#', '', 1, 0, 'F', 1, '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '公告修改', 107, 3, '', '#', '', 1, 0, 'F', 1, '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '公告删除', 107, 4, '', '#', '', 1, 0, 'F', 1, '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '操作查询', 500, 1, '', '#', '', 1, 0, 'F', 1, '0', 'system:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '操作删除', 500, 2, '', '#', '', 1, 0, 'F', 1, '0', 'system:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '日志导出', 500, 4, '', '#', '', 1, 0, 'F', 1, '0', 'system:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '登录查询', 501, 1, '', '#', '', 1, 0, 'F', 1, '0', 'system:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '登录删除', 501, 2, '', '#', '', 1, 0, 'F', 1, '0', 'system:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '日志导出', 501, 3, '', '#', '', 1, 0, 'F', 1, '0', 'system:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '在线查询', 109, 1, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '批量强退', 109, 2, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '单条强退', 109, 3, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务查询', 110, 1, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务新增', 110, 2, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务修改', 110, 3, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '任务删除', 110, 4, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '状态修改', 110, 5, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '任务导出', 110, 7, '', '#', '', 1, 0, 'F', 1, '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成查询', 115, 1, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成修改', 115, 2, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1062, '生成删除', 115, 3, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1063, '导入代码', 115, 2, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1064, '预览代码', 115, 4, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1065, '生成代码', 115, 5, '', '#', '', 1, 0, 'F', 1, '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'gd', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1066, '博客管理', 0, 1, 'Blog', '/blog', '', 1, 0, 'M', 1, '0', '', 'education', 'admin', '2020-11-28 11:37:18', 'admin', '2020-11-28 11:46:02', '');
INSERT INTO `sys_menu` VALUES (1072, '消息管理', 0, 2, 'Message', '/message', NULL, 1, 0, 'M', 1, '0', NULL, 'education', 'admin', '2020-11-28 11:50:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '博客管理', 1066, 1, 'BlogBlog', '/blog/blog', 'blog/blog/List', 1, 0, 'C', 1, '0', 'blog:blog:list', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '博客管理菜单');
INSERT INTO `sys_menu` VALUES (1077, '博客管理查询', 1076, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:blog:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1078, '博客管理新增', 1076, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:blog:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1079, '博客管理修改', 1076, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:blog:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1080, '博客管理删除', 1076, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:blog:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '博客管理导出', 1076, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:blog:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1082, '分类管理', 1066, 2, 'BlogCategory', '/blog/category', 'blog/category/List', 1, 0, 'C', 1, '0', 'blog:category:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:00:43', '分类管理菜单');
INSERT INTO `sys_menu` VALUES (1083, '分类管理查询', 1082, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:category:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1084, '分类管理新增', 1082, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:category:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1085, '分类管理修改', 1082, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:category:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1086, '分类管理删除', 1082, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:category:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1087, '分类管理导出', 1082, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:category:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1088, '评论管理', 1072, 2, 'MessageComment', '/message/comment', 'message/comment/List', 1, 0, 'C', 1, '0', 'blog:comment:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:02:38', '评论管理菜单');
INSERT INTO `sys_menu` VALUES (1089, '评论管理查询', 1088, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:comment:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1090, '评论管理新增', 1088, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:comment:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1091, '评论管理修改', 1088, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:comment:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1092, '评论管理删除', 1088, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:comment:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1093, '评论管理导出', 1088, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:comment:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1094, '关注管理', 1066, 6, 'BlogFollowee', '/blog/followee', 'blog/followee/List', 1, 0, 'C', 1, '0', 'blog:followee:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:34', '关注管理菜单');
INSERT INTO `sys_menu` VALUES (1095, '关注管理查询', 1094, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:followee:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1096, '关注管理新增', 1094, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:followee:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1097, '关注管理修改', 1094, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:followee:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1098, '关注管理删除', 1094, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:followee:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1099, '关注管理导出', 1094, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:followee:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1100, '留言管理', 1072, 1, 'MessageLeave', '/message/leave', 'message/leave/List', 1, 0, 'C', 1, '0', 'blog:leave:list', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '留言管理菜单');
INSERT INTO `sys_menu` VALUES (1101, '留言管理查询', 1100, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:leave:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1102, '留言管理新增', 1100, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:leave:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1103, '留言管理修改', 1100, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:leave:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1104, '留言管理删除', 1100, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:leave:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1105, '留言管理导出', 1100, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:leave:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1106, '点赞管理', 1072, 3, 'MessageLike', '/message/like', 'message/like/List', 1, 0, 'C', 1, '0', 'blog:like:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:02:44', '点赞管理菜单');
INSERT INTO `sys_menu` VALUES (1107, '点赞管理查询', 1106, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:like:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1108, '点赞管理新增', 1106, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:like:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1109, '点赞管理修改', 1106, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:like:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1110, '点赞管理删除', 1106, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:like:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1111, '点赞管理导出', 1106, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:like:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1112, '友链管理', 1066, 5, 'BlogLink', '/blog/link', 'blog/link/List', 1, 0, 'C', 1, '0', 'blog:link:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:24', '友链管理菜单');
INSERT INTO `sys_menu` VALUES (1113, '友链管理查询', 1112, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:link:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1114, '友链管理新增', 1112, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:link:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1115, '友链管理修改', 1112, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:link:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1116, '友链管理删除', 1112, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:link:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1117, '友链管理导出', 1112, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:link:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1118, '勋章管理', 1066, 4, 'BlogMedal', '/blog/medal', 'blog/medal/List', 1, 0, 'C', 1, '0', 'blog:medal:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:03:15', '勋章管理菜单');
INSERT INTO `sys_menu` VALUES (1119, '勋章管理查询', 1118, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:medal:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1120, '勋章管理新增', 1118, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:medal:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1121, '勋章管理修改', 1118, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:medal:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1122, '勋章管理删除', 1118, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:medal:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1123, '勋章管理导出', 1118, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:medal:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1124, '博客统计', 1066, 1, 'BlogStatistics', '/blog/statistics', 'blog/statistics/List', 1, 0, 'C', 1, '0', 'blog:statistics:list', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '博客统计菜单');
INSERT INTO `sys_menu` VALUES (1125, '博客统计查询', 1124, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:statistics:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1126, '博客统计新增', 1124, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:statistics:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1127, '博客统计修改', 1124, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:statistics:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1128, '博客统计删除', 1124, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:statistics:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1129, '博客统计导出', 1124, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:statistics:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1130, '标签管理', 1066, 3, 'BlogTag', '/blog/tag', 'blog/tag/List', 1, 0, 'C', 1, '0', 'blog:tag:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-11-28 21:00:54', '标签管理菜单');
INSERT INTO `sys_menu` VALUES (1131, '标签管理查询', 1130, 1, '', '#', '', 1, 0, 'F', 1, '0', 'blog:tag:query', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1132, '标签管理新增', 1130, 2, '', '#', '', 1, 0, 'F', 1, '0', 'blog:tag:add', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1133, '标签管理修改', 1130, 3, '', '#', '', 1, 0, 'F', 1, '0', 'blog:tag:edit', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1134, '标签管理删除', 1130, 4, '', '#', '', 1, 0, 'F', 1, '0', 'blog:tag:remove', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1135, '标签管理导出', 1130, 5, '', '#', '', 1, 0, 'F', 1, '0', 'blog:tag:export', '#', 'admin', '2018-03-01 00:00:00', 'gd', '2018-03-01 00:00:00', '');

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
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2021-07-01 葫芦娃新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AE3F, '0', 'admin', '2021-03-16 11:33:00', 'gd', '2021-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2021-07-01 葫芦娃系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-03-16 11:33:00', 'gd', '2021-03-16 11:33:00', '管理员');

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
) ENGINE = InnoDB AUTO_INCREMENT = 428 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"12358893502\",\"admin\":false,\"remark\":\"test1备注\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest1\",\"createBy\":\"admin\"}', 'null', 1, 'rawPassword cannot be null', '2021-01-03 12:19:03');
INSERT INTO `sys_oper_log` VALUES (158, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"password\":\"$2a$10$lXvZ7/AqspQCwrcSFGAnQu7Wk/HnCJydJQRL875gwRoW5zDaZVYle\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-03 12:24:37');
INSERT INTO `sys_oper_log` VALUES (159, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"123\",\"admin\":false,\"remark\":\"test2备注\",\"password\":\"$2a$10$OXLHOf8WzbuEHCU6Zmmf6Odr7/cSpLa54jvt7ufXHA.8v4nKCNHtS\",\"email\":\"\",\"nickName\":\"test2\",\"sex\":\"2\",\"params\":{},\"userName\":\"usertest2\",\"userId\":4,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-03 12:33:11');
INSERT INTO `sys_oper_log` VALUES (160, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"123131\",\"admin\":false,\"remark\":\"test3备注\",\"password\":\"$2a$10$bHVzot6jpip1nwI8iVtJx.VbkW156a7cnBWnra1Y6egM9RwmIvB/u\",\"email\":\"test3@ff.cn\",\"nickName\":\"test3\",\"sex\":\"2\",\"params\":{},\"userName\":\"test3user\",\"userId\":5,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-03 12:36:36');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"424324234\",\"admin\":false,\"remark\":\"test4备注\",\"password\":\"$2a$10$TOTdDrHa6qM2URAM0hvLWOpzGyxS6ICicY2omjo7uWrbNG1yc73lO\",\"email\":\"test4@pwd.red\",\"nickName\":\"test4\",\"sex\":\"1\",\"params\":{},\"userName\":\"usertest4\",\"userId\":6,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-03 12:38:11');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"137test5\",\"admin\":false,\"remark\":\"test5备注\",\"password\":\"$2a$10$csCiQMgORA9TbeqN0v3ymOiNwQqrPAnGMDqikeVe8l0Enyor8G4Nq\",\"email\":\"test5@qq.cn\",\"nickName\":\"test5\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest5\",\"userId\":7,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-03 13:46:49');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"1231312\",\"admin\":false,\"remark\":\"test6备注\",\"password\":\"$2a$10$85v9CjA2a3UV9W5vEdW1tuzjUtfd8npsndKRR1Clr.EOngTZcrNXO\",\"email\":\"test6@qq.com\",\"nickName\":\"test6\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest6\",\"userId\":8,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-04 16:53:14');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"test7\",\"admin\":false,\"remark\":\"test7备注\",\"password\":\"$2a$10$OT98zCq6xc3XRVuHLhH.OOHei.7xbAfnjfGB8LlotF21pgbPmK7bm\",\"email\":\"test7@qq.cn\",\"nickName\":\"test7\",\"sex\":\"1\",\"params\":{},\"userName\":\"usertest7\",\"userId\":9,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-04 16:53:45');
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"12312313\",\"admin\":false,\"remark\":\"test8备注\",\"password\":\"$2a$10$vOj0/kEvaPXmeTTsUPDFaORtZFmjyQqt0YdC.eM3Eh9lWCxz/G5gS\",\"email\":\"test8@dd.cn\",\"nickName\":\"test8\",\"sex\":\"2\",\"params\":{},\"userName\":\"usertest8\",\"userId\":10,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-04 16:54:18');
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"4424242342\",\"admin\":false,\"remark\":\"test9备注\",\"password\":\"$2a$10$V/.UbzmtRy6x/AaLoZn0COWHC0QGLzDM7eef5te5XcBN88MUpgqwy\",\"email\":\"test9@rr.cn\",\"nickName\":\"test9\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest9\",\"userId\":11,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-04 16:54:54');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.8.253', '', '{\"phonenumber\":\"2323131\",\"admin\":false,\"remark\":\"test10备注\",\"password\":\"$2a$10$tDTFnGUxuICAvW4c7IOIher/mhNIk55nWGstF5X2iQdPXgqkJiXja\",\"email\":\"test10@ww.cn\",\"nickName\":\"test10\",\"sex\":\"1\",\"params\":{},\"userName\":\"usertest10\",\"userId\":12,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-04 16:57:21');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.10.0', '', '{\"roles\":[],\"phonenumber\":\"2323131\",\"admin\":false,\"remark\":\"test10备注1\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test10@ww.cn\",\"nickName\":\"test10\",\"sex\":\"1\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest10\",\"userId\":12,\"createBy\":\"admin\",\"createTime\":1609750641000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-09 14:30:59');
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.10.0', '', '{\"roles\":[],\"phonenumber\":\"2323131\",\"admin\":false,\"remark\":\"test10备注1aaa\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test10@ww.cn\",\"nickName\":\"test10\",\"sex\":\"1\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest10\",\"userId\":12,\"createBy\":\"admin\",\"createTime\":1609750641000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-09 14:31:15');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.10.0', '', '{\"roles\":[],\"phonenumber\":\"23231311\",\"admin\":false,\"remark\":\"test10备注1aaa1\",\"delFlag\":\"0\",\"password\":\"1\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test10@ww1.cn\",\"nickName\":\"test101\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest101\",\"userId\":12,\"createBy\":\"admin\",\"createTime\":1609750641000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-09 15:07:31');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.10.0', '', '{\"phonenumber\":\"12321313213\",\"admin\":false,\"remark\":\"test11备注\",\"password\":\"$2a$10$hgS0Anq478jQMjfMtNWwFuJBRUL5Gh5oTAM1ZPX2ZPC7K/yFPWLLy\",\"email\":\"test11@22.com\",\"nickName\":\"test11\",\"sex\":\"0\",\"params\":{},\"userName\":\"test11\",\"userId\":13,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 02:11:54');
INSERT INTO `sys_oper_log` VALUES (172, '用户管理', 3, 'com.gourddoll.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/12%2C13', '183.195.10.0', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 03:14:07');
INSERT INTO `sys_oper_log` VALUES (173, '用户管理', 3, 'com.gourddoll.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/10%2C11', '183.195.10.0', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 03:15:02');
INSERT INTO `sys_oper_log` VALUES (174, '用户管理', 3, 'com.gourddoll.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/9', '183.195.10.0', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 03:16:07');
INSERT INTO `sys_oper_log` VALUES (175, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '110.184.182.211', '', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试管理员\",\"delFlag\":\"0\",\"password\":\"admin123\",\"updateBy\":\"admin\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@qq.com\",\"nickName\":\"黄娃\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"gourddoll\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"hw\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 15:47:50');
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '110.184.182.211', '', '{\"roles\":[],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试管理员\",\"delFlag\":\"0\",\"password\":\"admin123\",\"updateBy\":\"admin\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@qq.com\",\"nickName\":\"黄娃\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"gourddoll\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"hw\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-10 15:49:15');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"admin123\",\"email\":\"\",\"nickName\":\"usertest7\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest7\"}', '{\"msg\":\"新增用户\'usertest7\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-12 14:13:30');
INSERT INTO `sys_oper_log` VALUES (178, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"admin123\",\"email\":\"\",\"nickName\":\"usertest8\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest8\"}', '{\"msg\":\"新增用户\'usertest8\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-12 14:13:55');
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"admin123\",\"email\":\"\",\"nickName\":\"usertest8\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest8\"}', '{\"msg\":\"新增用户\'usertest8\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-12 14:13:56');
INSERT INTO `sys_oper_log` VALUES (180, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"admin123\",\"email\":\"\",\"nickName\":\"张三\",\"sex\":\"0\",\"params\":{},\"userName\":\"zhangsan\"}', '{\"msg\":\"新增用户\'zhangsan\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-12 14:14:42');
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"$2a$10$q3vDwv67R76nH2/OPNjO0eclzHzQXM3jfkkl1k0vxC/XpTU7gdWha\",\"email\":\"564131564@qq.com\",\"nickName\":\"张三\",\"sex\":\"0\",\"params\":{},\"userName\":\"zhangsan\",\"userId\":14,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-12 14:14:59');
INSERT INTO `sys_oper_log` VALUES (182, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"\",\"admin\":false,\"remark\":\"\",\"password\":\"admin123\",\"email\":\"564131534@qq.com\",\"nickName\":\"张三2\",\"sex\":\"0\",\"params\":{},\"userName\":\"zhangsan2\"}', '{\"msg\":\"新增用户\'zhangsan2\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2021-01-12 14:15:19');
INSERT INTO `sys_oper_log` VALUES (183, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"234234324\",\"admin\":false,\"remark\":\"\",\"password\":\"$2a$10$vhDbKDYbrunKknXrwjKzZONeKRidawZozRsNw/Fab6Mc29wxswuIu\",\"email\":\"564131534@qq.com\",\"nickName\":\"张三2\",\"sex\":\"0\",\"params\":{},\"userName\":\"zhangsan2\",\"userId\":15,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-12 14:15:38');
INSERT INTO `sys_oper_log` VALUES (184, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '103.116.47.212', '', '{\"phonenumber\":\"5465115\",\"admin\":false,\"remark\":\"\",\"password\":\"$2a$10$xlm.vCr.fnZ8RjYXmajpwOc.viRaNmXNcUDjaaTJD3s0XkEB8W0k6\",\"email\":\"6856462@qq.com\",\"nickName\":\"张三3\",\"sex\":\"0\",\"params\":{},\"userName\":\"zhangsan3\",\"userId\":16,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-12 14:16:53');
INSERT INTO `sys_oper_log` VALUES (185, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '103.116.47.55', '', '{\"roles\":[],\"phonenumber\":\"234234324\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"123456\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"564131534@qq.com\",\"nickName\":\"张三2\",\"sex\":\"1\",\"avatar\":\"\",\"params\":{},\"userName\":\"zhangsan2\",\"userId\":15,\"createBy\":\"admin\",\"createTime\":1610432138000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-12 14:35:34');
INSERT INTO `sys_oper_log` VALUES (186, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"phonenumber\":\"usertest8\",\"admin\":false,\"remark\":\"usertest8备注\",\"password\":\"pwdusertest8\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"usertest8\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest8\"}', '{\"msg\":\"新增用户\'usertest8\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-15 20:28:36');
INSERT INTO `sys_oper_log` VALUES (187, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"phonenumber\":\"usertest8\",\"admin\":false,\"remark\":\"usertest8备注\",\"password\":\"pwdusertest8\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"usertest9\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest9\"}', '{\"msg\":\"新增用户\'usertest9\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-15 20:28:43');
INSERT INTO `sys_oper_log` VALUES (188, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"phonenumber\":\"usertest8\",\"admin\":false,\"remark\":\"usertest8备注\",\"password\":\"$2a$10$NrlmSqCRWyZt6s0cqpu8WuC4eP6bIfB3uUWNOaBnSP4LfAobJnQoe\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"usertest14\",\"sex\":\"0\",\"params\":{},\"userName\":\"usertest14\",\"userId\":17,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-15 20:28:51');
INSERT INTO `sys_oper_log` VALUES (189, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注\",\"password\":\"$2a$10$CrG7Aayy5fGs2pDLBfsCQe64pw8a5oDj5PMl3H.uwJ8.cXuMIB2xC\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:02:35');
INSERT INTO `sys_oper_log` VALUES (190, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:03:16');
INSERT INTO `sys_oper_log` VALUES (191, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈111\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:04:45');
INSERT INTO `sys_oper_log` VALUES (192, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:06:24');
INSERT INTO `sys_oper_log` VALUES (193, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:06:42');
INSERT INTO `sys_oper_log` VALUES (194, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:09:43');
INSERT INTO `sys_oper_log` VALUES (195, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:09:53');
INSERT INTO `sys_oper_log` VALUES (196, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '103.116.47.49', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333dd\",\"delFlag\":\"0\",\"password\":\"123456\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 17:16:46');
INSERT INTO `sys_oper_log` VALUES (197, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaa\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 17:24:05');
INSERT INTO `sys_oper_log` VALUES (198, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test20@q.com\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 17:25:01');
INSERT INTO `sys_oper_log` VALUES (199, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:25');
INSERT INTO `sys_oper_log` VALUES (200, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:39');
INSERT INTO `sys_oper_log` VALUES (201, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:40');
INSERT INTO `sys_oper_log` VALUES (202, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:40');
INSERT INTO `sys_oper_log` VALUES (203, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:40');
INSERT INTO `sys_oper_log` VALUES (204, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:40');
INSERT INTO `sys_oper_log` VALUES (205, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:41');
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[],\"phonenumber\":\"test20213\",\"admin\":false,\"remark\":\"test20备注哈哈哈11122333ddaagggg\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"\",\"email\":\"usertest8@qq.cn\",\"nickName\":\"test20\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test20\",\"userId\":18,\"createBy\":\"admin\",\"createTime\":1610780555000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'test20\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-01-16 17:25:41');
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '183.195.11.13', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@163.com\",\"nickName\":\"红娃\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"gourddoll\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2021-01-17 05:56:05');
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 3, 'com.gourddoll.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/18', '103.116.47.211', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-21 06:26:30');
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 3, 'com.gourddoll.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/17', '103.116.47.211', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-21 06:26:54');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"phonenumber\":\"17608043865\",\"admin\":false,\"remark\":\"32423\",\"password\":\"$2a$10$VBo2iP8sjiOoujCJqn7uBueF6VFvxtX2gqcQ4Qzx7fukRBjNcn6dO\",\"email\":\"gourddoll176@gmail.com\",\"nickName\":\"Wu Liang\",\"sex\":\"0\",\"params\":{},\"userName\":\"wl\",\"userId\":19,\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-21 09:13:14');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"17608043865\",\"admin\":false,\"remark\":\"32423\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"gourddoll176@gmail.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"wl\",\"userId\":19,\"createBy\":\"admin\",\"createTime\":1611191594000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-21 09:13:45');
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试管理员\",\"delFlag\":\"0\",\"password\":\"admin123\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@qq.com\",\"nickName\":\"黄娃\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"gourddoll\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"hw\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'hw\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-21 09:57:06');
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试管理员\",\"delFlag\":\"0\",\"password\":\"admin123\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@qq.com\",\"nickName\":\"黄娃\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"gourddoll\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"hw\",\"userId\":2,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'hw\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-21 09:57:09');
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"admin123\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'usertest1\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-21 09:57:26');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"$2a$10$ifIlqJ4LGMl1CFHAbj3IMuKSPykw0m1oSOxpn38VUzHvK9moxD8pm\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\n### The error may exist in class path resource [mapper/system/SysUserMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysUserMapper.insertUser-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_user(      user_id,             user_name,       nick_name,       email,             phonenumber,       sex,       password,       status,       create_by,       remark,      create_time    )values(      ?,             ?,       ?,       ?,             ?,       ?,       ?,       ?,       ?,       ?,      sysdate()    )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\n; Duplicate entry \'3\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'', '2021-01-21 09:57:46');
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '124.161.16.163', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"$2a$10$TTw3.UDxrZ3d.GRPR1ZLe.anULtpUhq.8uZadSe9sVKHnQPZD3yxi\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\n### The error may exist in class path resource [mapper/system/SysUserMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysUserMapper.insertUser-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_user(      user_id,             user_name,       nick_name,       email,             phonenumber,       sex,       password,       status,       create_by,       remark,      create_time    )values(      ?,             ?,       ?,       ?,             ?,       ?,       ?,       ?,       ?,       ?,      sysdate()    )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\n; Duplicate entry \'3\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'', '2021-01-21 09:58:54');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"999\",\"menuName\":\"1fafaffafdaafaf\",\"remark\":\"\",\"path\":\"\",\"children\":[],\"visible\":\"0\",\"params\":{},\"component\":\"\",\"createBy\":\"admin\",\"pathCode\":\"\",\"menuType\":\"F\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'path_code\' doesn\'t have a default value\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(            menu_name,     order_num,                         menu_type,     visible,     status,                 create_by,    create_time   )values(            ?,     ?,                         ?,     ?,     ?,                 ?,    sysdate()   )\n### Cause: java.sql.SQLException: Field \'path_code\' doesn\'t have a default value\n; Field \'path_code\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'path_code\' doesn\'t have a default value', '2021-02-07 15:21:31');
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"999\",\"menuName\":\"1fafaffafdaafaf\",\"remark\":\"\",\"path\":\"\",\"children\":[],\"visible\":\"0\",\"params\":{},\"component\":\"\",\"createBy\":\"admin\",\"pathCode\":\"\",\"menuType\":\"F\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-07 15:34:49');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"123\",\"menuName\":\"管理管理测试\",\"remark\":\"123\",\"path\":\"123\",\"children\":[],\"visible\":\"1\",\"params\":{},\"parentId\":1066,\"component\":\"123\",\"createBy\":\"admin\",\"pathCode\":\"123\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-07 15:56:20');
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1136', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-08 08:29:50');
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1137', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-08 08:34:47');
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试1\",\"remark\":\"测试1备注\",\"path\":\"测试1\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试1\",\"createBy\":\"admin\",\"pathCode\":\"测试1\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 15:41:49');
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"\",\"menuName\":\"测试2\",\"remark\":\"测试2备注\",\"path\":\"测试2\",\"children\":[],\"isFrame\":true,\"menuId\":1138,\"perms\":\"\",\"visible\":false,\"params\":{},\"isCache\":false,\"component\":\"测试2\",\"createBy\":\"admin\",\"createTime\":1612856509000,\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(    menu_id,        order_num,    menu_name,         path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(    ?,              (select max(m.order_num)+10 from sys_menu m where m.parent_id = ?),         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'\n; Duplicate entry \'1138\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'', '2021-02-09 15:45:13');
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"\",\"menuName\":\"测试2\",\"remark\":\"测试2备注\",\"path\":\"测试2\",\"children\":[],\"isFrame\":true,\"menuId\":1138,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"component\":\"测试2\",\"createBy\":\"admin\",\"createTime\":1612856509000,\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(    menu_id,        order_num,    menu_name,         path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(    ?,              (select max(m.order_num)+10 from sys_menu m where m.parent_id = ?),         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'\n; Duplicate entry \'1138\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1138\' for key \'PRIMARY\'', '2021-02-09 15:47:16');
INSERT INTO `sys_oper_log` VALUES (225, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.9.255', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"用户测试1\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"用户测试1备注\",\"delFlag\":\"0\",\"password\":\"用户测试1\",\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"用户测试1\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"gourddoll\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"用户测试1\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'用户测试1\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-02-09 15:50:52');
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.9.255', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"用户测试1-1\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"用户测试1-1备注\",\"delFlag\":\"0\",\"password\":\"用户测试1-1\",\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"用户测试1-1\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"gourddoll\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"用户测试1-1\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'用户测试1-1\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-02-09 15:51:09');
INSERT INTO `sys_oper_log` VALUES (227, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '183.195.9.255', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"用户测试1-1fdsf\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"用户测试1-1备注\",\"delFlag\":\"0\",\"password\":\"用户测试1-1fdsfafasfaf\",\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"用户测试1-1fdsfafasfaf\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"gourddoll\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"用户测试1-1fdsfafasfaf\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'用户测试1-1fdsfafasfaf\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-02-09 15:51:51');
INSERT INTO `sys_oper_log` VALUES (228, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试2\",\"remark\":\"测试2备注\",\"path\":\"测试2\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试2\",\"createBy\":\"admin\",\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 15:55:46');
INSERT INTO `sys_oper_log` VALUES (229, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"orderNum\":\"\",\"menuName\":\"测试2\",\"remark\":\"测试2备注\",\"path\":\"测试2\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试2\",\"createBy\":\"admin\",\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 15:58:40');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"orderNum\":\"\",\"menuName\":\"测试3\",\"remark\":\"测试3备注\",\"path\":\"测试2\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试2\",\"createBy\":\"admin\",\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:00:29');
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"测试2\",\"remark\":\"测试2备注\",\"path\":\"测试2\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1139,\"perms\":\"\",\"visible\":false,\"params\":{},\"isCache\":false,\"component\":\"测试2\",\"createTime\":1612857346000,\"pathCode\":\"测试2\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:00:33');
INSERT INTO `sys_oper_log` VALUES (232, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"测试2-01\",\"path\":\"测试2-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1139,\"perms\":\"\",\"visible\":false,\"params\":{},\"isCache\":false,\"component\":\"测试2-01\",\"createTime\":1612857346000,\"pathCode\":\"测试2-01\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:04:36');
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"测试2-01\",\"path\":\"测试2-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1139,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1066,\"isCache\":false,\"component\":\"测试2-01\",\"createTime\":1612857346000,\"pathCode\":\"测试2-01\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:05:04');
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"测试2-01\",\"path\":\"测试2-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1139,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":1066,\"isCache\":false,\"component\":\"测试2-01\",\"createTime\":1612857346000,\"pathCode\":\"测试2-01\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:05:33');
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"测试2-01\",\"path\":\"测试2-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1139,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1066,\"isCache\":false,\"component\":\"测试2-01\",\"createTime\":1612857346000,\"pathCode\":\"测试2-01\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:05:38');
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:07:44');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:07:50');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:08:38');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:15:55');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:16:14');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"11\",\"menuName\":\"测试-ly-00-1\",\"remark\":\"测试-ly-00-1备注\",\"path\":\"测试-ly-00-1\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":4,\"component\":\"测试-ly-00-1\",\"createBy\":\"admin\",\"pathCode\":\"测试-ly-00-1\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:19:43');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"11\",\"menuName\":\"测试-ly-00-1\",\"remark\":\"测试-ly-00-1备注\",\"path\":\"测试-ly-00-1\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":4,\"component\":\"测试-ly-00-1\",\"createBy\":\"admin\",\"pathCode\":\"测试-ly-00-1\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:19:56');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"11\",\"menuName\":\"测试ly01\",\"remark\":\"测试ly01备注\",\"path\":\"测试ly01\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":4,\"component\":\"测试ly01\",\"createBy\":\"admin\",\"pathCode\":\"测试ly01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:20:21');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"11\",\"menuName\":\"测试ly01\",\"remark\":\"测试ly01备注\",\"path\":\"测试ly01\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":4,\"component\":\"测试ly01\",\"createBy\":\"admin\",\"pathCode\":\"测试ly01\",\"menuType\":\"F\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:20:39');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"11\",\"menuName\":\"测试ly01\",\"remark\":\"\",\"path\":\"测试ly01\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":4,\"component\":\"测试ly01\",\"createBy\":\"admin\",\"pathCode\":\"测试ly01\",\"menuType\":\"F\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,             menu_type,     visible,     status,                 create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,                 ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:20:50');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试ly01\",\"remark\":\"\",\"path\":\"测试ly01\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":4,\"component\":\"测试ly01\",\"createBy\":\"admin\",\"pathCode\":\"测试ly01\",\"menuType\":\"F\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:20:57');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"13\",\"menuName\":\"测试ly01\",\"path\":\"测试ly01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1142,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":4,\"isCache\":false,\"component\":\"测试ly01\",\"createTime\":1612858857000,\"pathCode\":\"测试ly01\",\"menuType\":\"F\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:30:29');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"menuName\":\"测试ly02\",\"remark\":\"测试ly02\",\"path\":\"测试ly02\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":4,\"isCache\":false,\"component\":\"测试ly02\",\"createBy\":\"admin\",\"createTime\":1612858857000,\"pathCode\":\"测试ly02\",\"menuType\":\"F\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:31:05');
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"23\",\"menuName\":\"测试ly02\",\"path\":\"测试ly02\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1143,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":4,\"isCache\":false,\"component\":\"测试ly02\",\"createTime\":1612859465000,\"pathCode\":\"测试ly02\",\"menuType\":\"F\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:31:33');
INSERT INTO `sys_oper_log` VALUES (250, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"23\",\"menuName\":\"测试ly02\",\"path\":\"测试ly02\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1143,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":4,\"isCache\":false,\"component\":\"测试ly02\",\"createTime\":1612859465000,\"pathCode\":\"测试ly02\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:31:43');
INSERT INTO `sys_oper_log` VALUES (251, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"23\",\"menuName\":\"测试ly02\",\"path\":\"测试ly02\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1143,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":4,\"isCache\":false,\"component\":\"测试ly02\",\"createTime\":1612859465000,\"pathCode\":\"测试ly02\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:31:49');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 16:32:14');
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1138', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 16:39:07');
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, 'Redis command timed out; nested exception is io.lettuce.core.RedisCommandTimeoutException: Command timed out after 1 minute(s)', '2021-02-09 17:03:06');
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 17:04:15');
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-09 17:04:50');
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试ly1\",\"remark\":\"测试ly1\",\"path\":\"测试ly1\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试ly1\",\"createBy\":\"admin\",\"pathCode\":\"测试ly1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 17:05:53');
INSERT INTO `sys_oper_log` VALUES (258, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"menuName\":\"测试ly2\",\"remark\":\"测试ly2\",\"path\":\"测试ly2\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"isCache\":false,\"component\":\"测试ly2\",\"createBy\":\"admin\",\"createTime\":1612861553000,\"pathCode\":\"测试ly2\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-09 17:08:23');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-10 01:19:53');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.211', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-10 01:28:09');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(        parent_id,    order_num,    menu_name,     order_num,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(        ?,          ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2021-02-10 02:10:37');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"icon\":\"#\",\"orderNum\":\"9\",\"menuName\":\"测试-ly-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 03:03:02');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 03:31:45');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"icon\":\"#\",\"menuName\":\"测试-wl-01\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 03:35:17');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"icon\":\"#\",\"menuName\":\"测试-wl-02\",\"remark\":\"测试-ly-01备注\",\"path\":\"测试-ly-01\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":false,\"params\":{},\"parentId\":1072,\"isCache\":false,\"component\":\"测试-ly-01\",\"createBy\":\"admin\",\"createTime\":1612857346000,\"pathCode\":\"测试-ly-01\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 03:36:57');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 03:37:25');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:04:21');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:05:11');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:40:01');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.132', '', '{\"orderNum\":\"1\",\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:46:33');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1147%2C1152%2C1153', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:47:24');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1152%2C1153', '183.195.9.255', '', NULL, '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-10 04:47:32');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1140%2C1141%2C1144', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:47:56');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1145%2C1154', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:48:41');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1139', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:57:17');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1146%2C1148%2C1149', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:57:35');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1142%2C1143', '183.195.9.255', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 04:57:45');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(           order_num,    menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(                 ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 04:58:24');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(           order_num,    menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(                 ?,         ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 04:58:41');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.206', '', '{\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 05:50:12');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '103.116.47.206', '', '{\"orderNum\":\"123\",\"menuName\":\"测试-21021001\",\"remark\":\"测试-21021001\",\"path\":\"测试-21021001\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试-21021001\",\"createBy\":\"admin\",\"pathCode\":\"测试-21021001\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 05:50:27');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 06:56:18');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 12:00:24');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:07:50');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:08:00');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:09:08');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:25:05');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:25:13');
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试01\",\"remark\":\"测试01备注\",\"path\":\"测试01\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试01\",\"createBy\":\"admin\",\"pathCode\":\"测试01\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:26:34');
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"orderNum\":\"\",\"menuName\":\"测试02\",\"remark\":\"测试02备注\",\"path\":\"测试02\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试02\",\"createBy\":\"admin\",\"pathCode\":\"测试02\",\"menuType\":\"C\",\"status\":\"0\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n### The error may exist in class path resource [mapper/system/SysMenuMapper.xml]\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\n### The error occurred while setting parameters\n### SQL: insert into sys_menu(   order_num,            menu_name,     path_code,     path,     component,             menu_type,     visible,     status,             remark,     create_by,    create_time   )values(         ?,                 ?,     ?,     ?,     ?,             ?,     ?,     ?,             ?,     ?,    sysdate()   )\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'order_num\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'order_num\' at row 1', '2021-02-10 13:27:13');
INSERT INTO `sys_oper_log` VALUES (291, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"menuName\":\"测试02\",\"remark\":\"测试02备注\",\"path\":\"测试02\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":0,\"component\":\"测试02\",\"createBy\":\"admin\",\"pathCode\":\"测试02\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:27:36');
INSERT INTO `sys_oper_log` VALUES (292, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"144\",\"menuName\":\"测试02-01\",\"remark\":\"测试02-01备注\",\"path\":\"测试02-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1158,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"component\":\"测试02-01\",\"createTime\":1612934856000,\"pathCode\":\"测试02-01\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:28:28');
INSERT INTO `sys_oper_log` VALUES (293, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"144\",\"menuName\":\"测试02-01\",\"remark\":\"测试02-01备注[哈哈]\",\"path\":\"测试02-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1158,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"component\":\"测试02-01\",\"createTime\":1612934856000,\"pathCode\":\"测试02-01\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:31:20');
INSERT INTO `sys_oper_log` VALUES (294, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"145\",\"menuName\":\"测试02-01-btn\",\"remark\":\"测试02-01备注[哈哈]-btn\",\"path\":\"测试02-01\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1158,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":1066,\"isCache\":false,\"component\":\"测试02-01\",\"createTime\":1612934856000,\"pathCode\":\"测试02-01-btn\",\"menuType\":\"F\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:33:17');
INSERT INTO `sys_oper_log` VALUES (295, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '183.195.9.255', '', '{\"icon\":\"#\",\"orderNum\":\"123\",\"menuName\":\"测试03\",\"remark\":\"测试03备注\",\"path\":\"测试03\",\"children\":[],\"isFrame\":true,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":1158,\"isCache\":false,\"component\":\"测试03\",\"createBy\":\"admin\",\"createTime\":1612934856000,\"pathCode\":\"测试03\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-10 13:37:17');
INSERT INTO `sys_oper_log` VALUES (296, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1155%2C1156%2C1157%2C1158%2C1159', '183.195.9.255', '', NULL, '{\"msg\":\"1158存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-02-10 13:37:54');
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1155%2C1156%2C1157%2C1158%2C1159', '183.195.9.255', '', NULL, '{\"msg\":\"1158存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-02-10 13:38:00');
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1155%2C1156%2C1157%2C1158%2C1159', '183.195.9.255', '', NULL, '{\"msg\":\"1158存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-02-10 13:41:04');
INSERT INTO `sys_oper_log` VALUES (299, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"5646\",\"loginIp\":\"127.0.0.1\",\"email\":\"gd@163.com\",\"nickName\":\"红娃\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"gourddoll\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'admin\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-02-16 17:52:52');
INSERT INTO `sys_oper_log` VALUES (300, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17608043865\",\"admin\":false,\"remark\":\"32423\",\"delFlag\":\"0\",\"password\":\"123456\",\"loginIp\":\"\",\"email\":\"gourddoll176@gmail.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"wl\",\"userId\":19,\"createBy\":\"admin\",\"createTime\":1611191594000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'wl\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-02-16 17:53:08');
INSERT INTO `sys_oper_log` VALUES (301, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17608043865\",\"admin\":false,\"remark\":\"32423\",\"delFlag\":\"0\",\"password\":\"123456\",\"loginIp\":\"\",\"email\":\"gourddoll176@gmail.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"wl\",\"userId\":19,\"createBy\":\"admin\",\"createTime\":1611191594000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'wl\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-02-16 17:53:12');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"orderNum\":\"2\",\"menuName\":\"test\",\"remark\":\"2\",\"path\":\"2131\",\"children\":[],\"visible\":true,\"params\":{},\"parentId\":0,\"component\":\"213\",\"createBy\":\"admin\",\"pathCode\":\"22\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-16 17:54:12');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"#\",\"orderNum\":\"99\",\"menuName\":\"test\",\"remark\":\"2\",\"path\":\"2131\",\"children\":[],\"isFrame\":true,\"menuId\":1160,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":0,\"isCache\":false,\"component\":\"213\",\"createBy\":\"admin\",\"createTime\":1613469252000,\"pathCode\":\"22\",\"menuType\":\"C\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1160\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysMenuMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_menu(   order_num,    menu_id,         menu_name,     path_code,     path,     component,     is_frame,         menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(         ?,         ?,         ?,     ?,     ?,     ?,     ?,         ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1160\' for key \'PRIMARY\'\n; Duplicate entry \'1160\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1160\' for key \'PRIMARY\'', '2021-02-16 17:54:35');
INSERT INTO `sys_oper_log` VALUES (304, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17608043865\",\"admin\":false,\"remark\":\"32423\",\"delFlag\":\"0\",\"password\":\"24234\",\"loginIp\":\"\",\"email\":\"gourddoll176@gmail.com\",\"nickName\":\"zhangsan\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"wl\",\"userId\":19,\"createBy\":\"admin\",\"createTime\":1611191594000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'wl\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-02-16 17:55:36');
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"#\",\"orderNum\":\"99\",\"menuName\":\"test\",\"remark\":\"2\",\"path\":\"2131\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":true,\"menuId\":1160,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"component\":\"213\",\"createTime\":1613469252000,\"pathCode\":\"22\",\"menuType\":\"C\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-16 20:56:47');
INSERT INTO `sys_oper_log` VALUES (306, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:09:18');
INSERT INTO `sys_oper_log` VALUES (307, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:09:33');
INSERT INTO `sys_oper_log` VALUES (308, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, 'Redis exception; nested exception is io.lettuce.core.RedisException: java.io.IOException: 远程主机强迫关闭了一个现有的连接。', '2021-02-17 16:18:40');
INSERT INTO `sys_oper_log` VALUES (309, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:18:40');
INSERT INTO `sys_oper_log` VALUES (310, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":6,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:18:43');
INSERT INTO `sys_oper_log` VALUES (311, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":7,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:21:07');
INSERT INTO `sys_oper_log` VALUES (312, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":8,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:24:26');
INSERT INTO `sys_oper_log` VALUES (313, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":9,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:24:26');
INSERT INTO `sys_oper_log` VALUES (314, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":10,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:26:08');
INSERT INTO `sys_oper_log` VALUES (315, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":11,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', 'null', 1, '', '2021-02-17 16:26:20');
INSERT INTO `sys_oper_log` VALUES (316, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":12,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 16:26:35');
INSERT INTO `sys_oper_log` VALUES (317, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"admin\":false,\"remark\":\"test\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"2\"}', '{\"msg\":\"新增角色\'test\'失败，角色名称已存在\",\"code\":500}', 0, NULL, '2021-02-17 16:26:57');
INSERT INTO `sys_oper_log` VALUES (318, '角色管理', 3, 'com.gourddoll.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/role/12', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 16:47:07');
INSERT INTO `sys_oper_log` VALUES (319, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"admin\":false,\"remark\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"新增角色\'test\'失败，角色名称已存在\",\"code\":500}', 0, NULL, '2021-02-17 16:47:18');
INSERT INTO `sys_oper_log` VALUES (320, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 16:47:44');
INSERT INTO `sys_oper_log` VALUES (321, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"admin\":false,\"remark\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"新增角色\'test\'失败，角色名称已存在\",\"code\":500}', 0, NULL, '2021-02-17 16:47:47');
INSERT INTO `sys_oper_log` VALUES (322, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 17:07:18');
INSERT INTO `sys_oper_log` VALUES (323, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 17:07:23');
INSERT INTO `sys_oper_log` VALUES (324, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 17:07:51');
INSERT INTO `sys_oper_log` VALUES (325, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 17:08:33');
INSERT INTO `sys_oper_log` VALUES (326, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 17:08:56');
INSERT INTO `sys_oper_log` VALUES (327, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 17:31:15');
INSERT INTO `sys_oper_log` VALUES (328, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 18:08:58');
INSERT INTO `sys_oper_log` VALUES (329, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 18:09:16');
INSERT INTO `sys_oper_log` VALUES (330, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 18:09:17');
INSERT INTO `sys_oper_log` VALUES (331, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-02-17 18:09:59');
INSERT INTO `sys_oper_log` VALUES (332, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:21:51');
INSERT INTO `sys_oper_log` VALUES (333, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 18:23:25');
INSERT INTO `sys_oper_log` VALUES (334, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:24:14');
INSERT INTO `sys_oper_log` VALUES (335, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:24:26');
INSERT INTO `sys_oper_log` VALUES (336, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:24:44');
INSERT INTO `sys_oper_log` VALUES (337, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:25:24');
INSERT INTO `sys_oper_log` VALUES (338, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:25:38');
INSERT INTO `sys_oper_log` VALUES (339, '角色管理', 1, 'com.gourddoll.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":false,\"createBy\":\"admin\",\"createTime\":1613551664000,\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysRoleMapper.insertRole-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_role(      role_id,       role_name,       role_key,       role_sort,       data_scope,               menu_check_strictly,       dept_check_strictly,       status,       remark,       create_by,      create_time    )values(      ?,       ?,       ?,       ?,       ?,               ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'\n; Duplicate entry \'13\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'13\' for key \'PRIMARY\'', '2021-02-17 18:35:20');
INSERT INTO `sys_oper_log` VALUES (340, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"123456\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', '{\"msg\":\"新增用户\'usertest1\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-02-17 18:39:15');
INSERT INTO `sys_oper_log` VALUES (341, '用户管理', 1, 'com.gourddoll.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"12345678913\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"$2a$10$B2KbnbsqTaUsWGiD9NEa8uhmE.rTmN7qOv16DUbhzThLMHJRy6Jye\",\"loginIp\":\"\",\"email\":\"test12@qq.com\",\"nickName\":\"test1\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest12\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysUserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(      user_id,             user_name,       nick_name,       email,             phonenumber,       sex,       password,       status,       create_by,       remark,      create_time    )values(      ?,             ?,       ?,       ?,             ?,       ?,       ?,       ?,       ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'\n; Duplicate entry \'3\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'PRIMARY\'', '2021-02-17 18:39:44');
INSERT INTO `sys_oper_log` VALUES (342, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 18:40:32');
INSERT INTO `sys_oper_log` VALUES (343, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页2\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 18:40:41');
INSERT INTO `sys_oper_log` VALUES (344, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页2\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 18:43:01');
INSERT INTO `sys_oper_log` VALUES (345, '菜单管理', 2, 'com.gourddoll.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"updateBy\":\"admin\",\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"isCache\":false,\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 18:43:08');
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页2\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":0,\"isCache\":false,\"createBy\":\"admin\",\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysMenuMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_menu(   order_num,    menu_id,         menu_name,     path_code,     path,                 menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(         ?,         ?,         ?,     ?,     ?,                 ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\n; Duplicate entry \'5\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'', '2021-02-17 20:06:24');
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页2\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":0,\"isCache\":false,\"createBy\":\"admin\",\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysMenuMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_menu(   order_num,    menu_id,         menu_name,     path_code,     path,                 menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(         ?,         ?,         ?,     ?,     ?,                 ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\n; Duplicate entry \'5\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'', '2021-02-17 20:06:35');
INSERT INTO `sys_oper_log` VALUES (348, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"icon\":\"guide\",\"orderNum\":\"6\",\"menuName\":\"葫芦娃博客主页2\",\"remark\":\"博客官网地址\",\"path\":\"https://www.baidu.com/\",\"children\":[],\"isFrame\":false,\"menuId\":5,\"perms\":\"\",\"visible\":true,\"params\":{},\"parentId\":0,\"isCache\":false,\"createBy\":\"admin\",\"createTime\":1521171180000,\"pathCode\":\"https://www.baidu.com/\",\"menuType\":\"M\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysMenuMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysMenuMapper.insertMenu-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_menu(   order_num,    menu_id,         menu_name,     path_code,     path,                 menu_type,     visible,     status,         icon,     remark,     create_by,    create_time   )values(         ?,         ?,         ?,     ?,     ?,                 ?,     ?,     ?,         ?,     ?,     ?,    sysdate()   )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'\n; Duplicate entry \'5\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'5\' for key \'PRIMARY\'', '2021-02-17 20:07:05');
INSERT INTO `sys_oper_log` VALUES (349, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test12\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:37:13');
INSERT INTO `sys_oper_log` VALUES (350, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test2\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:38:09');
INSERT INTO `sys_oper_log` VALUES (351, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:38:36');
INSERT INTO `sys_oper_log` VALUES (352, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:39:19');
INSERT INTO `sys_oper_log` VALUES (353, '角色管理', 2, 'com.gourddoll.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":13,\"admin\":false,\"remark\":\"1\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1613551664000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"test\",\"roleName\":\"test2\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:41:34');
INSERT INTO `sys_oper_log` VALUES (354, '角色管理', 3, 'com.gourddoll.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/role/13', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-17 23:44:41');
INSERT INTO `sys_oper_log` VALUES (355, '部门管理', 1, 'com.gourddoll.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"大队\",\"orderNum\":\"5\",\"remark\":\"实施\",\"params\":{},\"parentId\":103,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,101,103\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-21 23:30:45');
INSERT INTO `sys_oper_log` VALUES (356, '部门管理', 3, 'com.gourddoll.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/dept/110', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-21 23:31:13');
INSERT INTO `sys_oper_log` VALUES (357, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"123456\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test12\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 14:20:48');
INSERT INTO `sys_oper_log` VALUES (358, '用户管理', 2, 'com.gourddoll.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"12345678912\",\"admin\":false,\"remark\":\"test1备注\",\"delFlag\":\"0\",\"password\":\"$2a$10$0aREgcITxhjlpSpEbR99Q.4jqWWImw8eD8FSvNcoRsd4dc21mosce\",\"updateBy\":\"admin\",\"loginIp\":\"\",\"email\":\"test1@qq.com\",\"nickName\":\"test12\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"usertest1\",\"userId\":3,\"createBy\":\"admin\",\"createTime\":1609647877000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 18:20:36');
INSERT INTO `sys_oper_log` VALUES (359, '菜单管理', 1, 'com.gourddoll.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"orderNum\":\"1\",\"menuName\":\"test\",\"remark\":\"22\",\"path\":\"\",\"children\":[],\"visible\":false,\"params\":{},\"parentId\":2,\"component\":\"\",\"createBy\":\"admin\",\"pathCode\":\"test\",\"menuType\":\"F\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 22:34:26');
INSERT INTO `sys_oper_log` VALUES (360, '菜单管理', 3, 'com.gourddoll.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/1161', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 22:34:51');
INSERT INTO `sys_oper_log` VALUES (361, '部门管理', 1, 'com.gourddoll.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"32\",\"leader\":\"\",\"orderNum\":\"1\",\"remark\":\"21\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"true\"}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-system\\target\\classes\\mapper\\system\\SysDeptMapper.xml]\r\n### The error may involve com.gourddoll.system.mapper.SysDeptMapper.insertDept-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dept(            parent_id,       dept_name,       ancestors,       order_num,                         status,       create_by,      create_time    )values(            ?,       ?,       ?,       ?,                         ?,       ?,      sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2021-03-07 22:52:10');
INSERT INTO `sys_oper_log` VALUES (362, '部门管理', 1, 'com.gourddoll.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"leader\":\"\",\"orderNum\":\"1\",\"remark\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"\",\"ancestors\":\"0,100\",\"email\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 22:54:41');
INSERT INTO `sys_oper_log` VALUES (363, '部门管理', 2, 'com.gourddoll.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"deptId\":111,\"orderNum\":\"1\",\"remark\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1615128881000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 22:55:02');
INSERT INTO `sys_oper_log` VALUES (364, '部门管理', 2, 'com.gourddoll.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"deptId\":111,\"orderNum\":\"1\",\"remark\":\"123\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1615128881000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 22:55:28');
INSERT INTO `sys_oper_log` VALUES (365, '部门管理', 2, 'com.gourddoll.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"leader\":\"吴亮\",\"deptId\":111,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1615128881000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 23:01:42');
INSERT INTO `sys_oper_log` VALUES (366, '部门管理', 2, 'com.gourddoll.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"leader\":\"吴亮\",\"deptId\":111,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":111,\"createBy\":\"admin\",\"children\":[],\"createTime\":1615128881000,\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"修改部门\'3\'失败，上级部门不能是自己\",\"code\":500}', 0, NULL, '2021-03-07 23:01:56');
INSERT INTO `sys_oper_log` VALUES (367, '部门管理', 2, 'com.gourddoll.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"3\",\"leader\":\"吴亮\",\"deptId\":111,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1615128881000,\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-07 23:02:03');
INSERT INTO `sys_oper_log` VALUES (368, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"22\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:55:26');
INSERT INTO `sys_oper_log` VALUES (369, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"22\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:55:26');
INSERT INTO `sys_oper_log` VALUES (370, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"222\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:55:46');
INSERT INTO `sys_oper_log` VALUES (371, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"11\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"rate\":4,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:56:49');
INSERT INTO `sys_oper_log` VALUES (372, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"11\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"rate\":4,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:58:14');
INSERT INTO `sys_oper_log` VALUES (373, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":1,\"remark\":\"22\",\"params\":{},\"content\":\"你就只会水评论\",\"commentator\":\"3\",\"children\":[],\"createTime\":1573315200000,\"rate\":4,\"id\":2,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 21:59:13');
INSERT INTO `sys_oper_log` VALUES (374, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"remark\":\"44\",\"params\":{},\"content\":\"说的好啊\",\"commentator\":\"2\",\"children\":[],\"createTime\":1573364185000,\"rate\":5,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 22:08:27');
INSERT INTO `sys_oper_log` VALUES (375, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"params\":{},\"content\":\"说的好啊22\",\"commentator\":\"2\",\"children\":[],\"createTime\":1628518191000,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 22:15:25');
INSERT INTO `sys_oper_log` VALUES (376, '标签管理', 2, 'com.gourddoll.blog.controller.BgTagController.edit()', 'PUT', 1, NULL, NULL, '/tag/', '127.0.0.1', '', '{\"id\":1,\"params\":{},\"tagName\":\"Java1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-09 22:41:51');
INSERT INTO `sys_oper_log` VALUES (377, '配置管理', 1, 'com.gourddoll.system.controller.SysConfigController.add()', 'POST', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"2\",\"configType\":\"2\",\"configValue\":\"2\",\"params\":{},\"configKey\":\"2\",\"createBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-21 18:05:17');
INSERT INTO `sys_oper_log` VALUES (378, '配置管理', 2, 'com.gourddoll.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"2\",\"configType\":\"2\",\"configValue\":\"2\",\"params\":{},\"configKey\":\"3\",\"createBy\":\"admin\",\"createTime\":1629540314000,\"updateBy\":\"admin\",\"configId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-21 18:05:21');
INSERT INTO `sys_oper_log` VALUES (379, '配置管理', 3, 'com.gourddoll.system.controller.SysConfigController.remove()', 'DELETE', 1, 'admin', NULL, '/config/4', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-21 18:05:27');
INSERT INTO `sys_oper_log` VALUES (380, '通知公告', 2, 'com.gourddoll.system.controller.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/notice', '127.0.0.1', '', '{\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"1\",\"noticeContent\":\"1\",\"createBy\":\"admin\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-21 19:50:55');
INSERT INTO `sys_oper_log` VALUES (381, '通知公告', 3, 'com.gourddoll.system.controller.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/notice/3', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-21 19:51:00');
INSERT INTO `sys_oper_log` VALUES (382, '勋章管理', 1, 'com.gourddoll.blog.controller.BgMedalController.add()', 'POST', 1, 'admin', NULL, '/medal', '127.0.0.1', '', '{\"img\":\"1\",\"medalName\":\"1\",\"description\":\"1\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-blog\\target\\classes\\mapper\\blog\\BgMedalMapper.xml]\r\n### The error may involve com.gourddoll.blog.mapper.BgMedalMapper.insertBgMedal-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bg_medal          ( medal_name,             img,             description )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-08-22 00:09:15');
INSERT INTO `sys_oper_log` VALUES (383, '勋章管理', 1, 'com.gourddoll.blog.controller.BgMedalController.add()', 'POST', 1, 'admin', NULL, '/medal', '127.0.0.1', '', '{\"img\":\"1\",\"medalName\":\"1\",\"description\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:10:09');
INSERT INTO `sys_oper_log` VALUES (384, '勋章管理', 2, 'com.gourddoll.blog.controller.BgMedalController.edit()', 'PUT', 1, 'admin', NULL, '/medal', '127.0.0.1', '', '{\"img\":\"1\",\"medalName\":\"1\",\"description\":\"2\",\"params\":{},\"id\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:10:14');
INSERT INTO `sys_oper_log` VALUES (385, '友链管理', 1, 'com.gourddoll.blog.controller.BgLinkController.add()', 'POST', 1, 'admin', NULL, '/link', '127.0.0.1', '', '{\"summary\":\"\",\"remark\":\"1\",\"params\":{},\"userName\":\"\",\"url\":\"\",\"linkedUsername\":\"\",\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-blog\\target\\classes\\mapper\\blog\\BgLinkMapper.xml]\r\n### The error may involve com.gourddoll.blog.mapper.BgLinkMapper.insertBgLink-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bg_link          ( user_name,             linked_username,             url,             summary,                          status )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-08-22 00:27:04');
INSERT INTO `sys_oper_log` VALUES (386, '友链管理', 1, 'com.gourddoll.blog.controller.BgLinkController.add()', 'POST', 1, 'admin', NULL, '/link', '127.0.0.1', '', '{\"summary\":\"\",\"remark\":\"1\",\"params\":{},\"userName\":\"\",\"url\":\"\",\"linkedUsername\":\"\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:27:33');
INSERT INTO `sys_oper_log` VALUES (387, '友链管理', 2, 'com.gourddoll.blog.controller.BgLinkController.edit()', 'PUT', 1, 'admin', NULL, '/link', '127.0.0.1', '', '{\"summary\":\"1\",\"params\":{},\"userName\":\"\",\"url\":\"1\",\"id\":1,\"linkedUsername\":\"1\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:30:44');
INSERT INTO `sys_oper_log` VALUES (388, '友链管理', 3, 'com.gourddoll.blog.controller.BgLinkController.remove()', 'DELETE', 1, NULL, NULL, '/link/1', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:31:37');
INSERT INTO `sys_oper_log` VALUES (389, '勋章管理', 3, 'com.gourddoll.blog.controller.BgMedalController.remove()', 'DELETE', 1, NULL, NULL, '/medal/6', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-08-22 00:32:29');
INSERT INTO `sys_oper_log` VALUES (390, '评论管理', 2, 'com.gourddoll.blog.controller.BgBlogCommentController.edit()', 'PUT', 1, NULL, NULL, '/comment/', '127.0.0.1', '', '{\"parent\":0,\"params\":{},\"content\":\"说的好啊22\",\"commentator\":\"2\",\"children\":[],\"createTime\":1628518191000,\"rate\":4,\"id\":1,\"blogId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-26 23:29:56');
INSERT INTO `sys_oper_log` VALUES (391, '配置管理', 2, 'com.gourddoll.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1521171180000,\"configType\":\"Y\",\"configValue\":\"theme-dark3\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-26 23:35:17');
INSERT INTO `sys_oper_log` VALUES (392, '配置管理', 2, 'com.gourddoll.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1521171180000,\"configType\":\"Y\",\"configValue\":\"theme-dark3\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-26 23:35:17');
INSERT INTO `sys_oper_log` VALUES (393, '配置管理', 2, 'com.gourddoll.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1521171180000,\"configType\":\"Y\",\"configValue\":\"theme-dark3\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-26 23:35:17');
INSERT INTO `sys_oper_log` VALUES (394, '配置管理', 2, 'com.gourddoll.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"主框架页-侧边栏主题\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1632670509000,\"configType\":\"Y\",\"configValue\":\"theme-dark4\",\"params\":{},\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"configId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-09-26 23:35:29');
INSERT INTO `sys_oper_log` VALUES (395, '标签管理', 2, 'com.gourddoll.blog.controller.BgTagController.edit()', 'PUT', 1, NULL, NULL, '/tag/', '127.0.0.1', '', '{\"id\":1,\"params\":{},\"tagName\":\"Java2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 00:29:35');
INSERT INTO `sys_oper_log` VALUES (396, '勋章管理', 2, 'com.gourddoll.blog.controller.BgMedalController.edit()', 'PUT', 1, 'admin', NULL, '/medal', '127.0.0.1', '', '{\"img\":\"img\",\"medalName\":\"博览群文\",\"description\":\"阅读总文章超过31篇\",\"params\":{},\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 00:30:03');
INSERT INTO `sys_oper_log` VALUES (397, '友链管理', 1, 'com.gourddoll.blog.controller.BgLinkController.add()', 'POST', 1, 'admin', NULL, '/link', '127.0.0.1', '', '{\"summary\":\"1\",\"params\":{},\"userName\":\"1\",\"url\":\"1\",\"linkedUsername\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 00:30:30');
INSERT INTO `sys_oper_log` VALUES (398, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.edit()', 'PUT', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"commend\":2,\"updateTime\":1633452562895,\"params\":{},\"title\":\"深入理解SpringBoot多数据源10\",\"content\":\"本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。\",\"createTime\":1586334613000,\"id\":1,\"categoryId\":\"1\",\"headerImg\":\"1\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 00:49:30');
INSERT INTO `sys_oper_log` VALUES (399, '博客管理', 3, 'com.gourddoll.blog.controller.BgBlogController.edit()', 'PUT', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"commend\":2,\"updateTime\":1633496464446,\"params\":{},\"title\":\"深入理解SpringBoot多数据源10\",\"content\":\"本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。\",\"createTime\":1586334613000,\"id\":1,\"categoryId\":\"1\",\"headerImg\":\"1\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 13:01:14');
INSERT INTO `sys_oper_log` VALUES (400, '博客管理', 1, 'com.gourddoll.blog.controller.BgBlogController.getInfo()', 'GET', 1, 'admin', NULL, '/blog/1', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"author\":\"gourddoll\",\"categoryId\":\"1\",\"commend\":2,\"content\":\"本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。\",\"createTime\":1586334613000,\"headerImg\":\"1\",\"id\":1,\"params\":{},\"status\":1,\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"title\":\"深入理解SpringBoot多数据源10\",\"updateTime\":1633496464000}}', 0, NULL, '2021-10-06 13:05:39');
INSERT INTO `sys_oper_log` VALUES (401, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-10-06 13:20:38');
INSERT INTO `sys_oper_log` VALUES (402, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-10-06 13:21:32');
INSERT INTO `sys_oper_log` VALUES (403, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-09-06 13:21:42');
INSERT INTO `sys_oper_log` VALUES (404, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-10-06 13:21:51');
INSERT INTO `sys_oper_log` VALUES (405, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-08-06 13:22:44');
INSERT INTO `sys_oper_log` VALUES (406, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-07-06 13:22:50');
INSERT INTO `sys_oper_log` VALUES (407, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-05-06 13:22:57');
INSERT INTO `sys_oper_log` VALUES (408, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-04-06 13:23:04');
INSERT INTO `sys_oper_log` VALUES (409, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-02-06 13:23:08');
INSERT INTO `sys_oper_log` VALUES (410, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-01-06 13:23:10');
INSERT INTO `sys_oper_log` VALUES (411, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2020-10-06 13:23:12');
INSERT INTO `sys_oper_log` VALUES (412, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2022-12-06 13:23:14');
INSERT INTO `sys_oper_log` VALUES (413, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-10-06 14:38:37');
INSERT INTO `sys_oper_log` VALUES (414, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[5,3,3,0,1,0,0]}}', 0, NULL, '2021-10-06 15:38:48');
INSERT INTO `sys_oper_log` VALUES (415, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633534521544,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', NULL, 1, 'Invalid bound statement (not found): com.gourddoll.blog.mapper.BgBlogTagMapper.batchBlogTag', '2021-10-06 23:35:23');
INSERT INTO `sys_oper_log` VALUES (416, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633534915633,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', NULL, 1, 'Invalid bound statement (not found): com.gourddoll.blog.mapper.BgBlogTagMapper.batchBlogTag', '2021-10-06 23:41:55');
INSERT INTO `sys_oper_log` VALUES (417, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"tagIds\":[1,2,3],\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633535202967,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-blog\\target\\classes\\mapper\\blog\\SysUserRoleMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into bg_blog_tag(blog_id, tag_id) values         (?,?)    ,     (?,?)    ,     (?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\n; Column \'blog_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null', '2021-10-06 23:46:47');
INSERT INTO `sys_oper_log` VALUES (418, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"tagIds\":[1,2,3],\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633535286300,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-blog\\target\\classes\\mapper\\blog\\SysUserRoleMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into bg_blog_tag(blog_id, tag_id) values         (?,?)    ,     (?,?)    ,     (?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\n; Column \'blog_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null', '2021-10-06 23:48:06');
INSERT INTO `sys_oper_log` VALUES (419, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"tagIds\":[1,2,3],\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633535382007,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\r\n### The error may exist in file [E:\\MyFold\\Idea\\vue\\GourdDoll-Blog\\GourdDoll-Blog\\gourddoll-modules\\gourddoll-blog\\target\\classes\\mapper\\blog\\SysUserRoleMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into bg_blog_tag(blog_id, tag_id) values         (?,?)    ,     (?,?)    ,     (?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null\n; Column \'blog_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'blog_id\' cannot be null', '2021-10-06 23:49:42');
INSERT INTO `sys_oper_log` VALUES (420, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"tagIds\":[1,2,3],\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633535553363,\"id\":16,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 23:53:26');
INSERT INTO `sys_oper_log` VALUES (421, '博客管理', 2, 'com.gourddoll.blog.controller.BgBlogController.add()', 'POST', 1, 'admin', NULL, '/blog', '127.0.0.1', '', '{\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"author\":\"gourddoll\",\"tagIds\":[1,2,3],\"commend\":2,\"updateTime\":1633438362000,\"params\":{},\"title\":\"标签测试\",\"categoryName\":\"Vue\",\"content\":\"标签测试\",\"createTime\":1633535467637,\"id\":15,\"categoryId\":\"6\",\"headerImg\":\"1\",\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-06 23:53:52');
INSERT INTO `sys_oper_log` VALUES (422, '博客管理', 1, 'com.gourddoll.blog.controller.BgBlogController.getInfo()', 'GET', 1, 'admin', NULL, '/blog/16', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"author\":\"gourddoll\",\"categoryId\":\"6\",\"categoryName\":\"Vue\",\"commend\":2,\"content\":\"标签测试\",\"createTime\":1633535553000,\"headerImg\":\"1\",\"id\":16,\"params\":{},\"status\":1,\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"title\":\"标签测试\",\"updateTime\":1633438362000}}', 0, NULL, '2021-10-07 16:40:03');
INSERT INTO `sys_oper_log` VALUES (423, '博客管理', 1, 'com.gourddoll.blog.controller.BgBlogController.getInfo()', 'GET', 1, 'admin', NULL, '/blog/16', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"author\":\"gourddoll\",\"categoryId\":\"6\",\"categoryName\":\"Vue\",\"commend\":2,\"content\":\"标签测试\",\"createTime\":1633535553000,\"headerImg\":\"1\",\"id\":16,\"params\":{},\"status\":1,\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"title\":\"标签测试\",\"updateTime\":1633438362000}}', 0, NULL, '2021-10-07 16:56:50');
INSERT INTO `sys_oper_log` VALUES (424, '博客管理', 1, 'com.gourddoll.blog.controller.BgBlogController.getInfo()', 'GET', 1, 'admin', NULL, '/blog/16', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"author\":\"gourddoll\",\"categoryId\":\"6\",\"categoryName\":\"Vue\",\"commend\":2,\"content\":\"标签测试\",\"createTime\":1633535553000,\"headerImg\":\"1\",\"id\":16,\"params\":{},\"status\":1,\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"tagIds\":[1,2,3],\"title\":\"标签测试\",\"updateTime\":1633438362000}}', 0, NULL, '2021-10-07 16:57:31');
INSERT INTO `sys_oper_log` VALUES (425, '博客管理', 1, 'com.gourddoll.blog.controller.BgBlogController.list()', 'GET', 1, 'admin', NULL, '/blog/list', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"rows\":[{\"author\":\"gourddoll\",\"categoryId\":\"4\",\"commend\":2,\"content\":\"本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。该方法的作用的通过determineCurrentLookupKey方法是用于获取当前指定的数据源的key，根据这个key获取到指定的数据源，如果数据源为空那么使用默认的。那么可以想到通过重写此方法就可以改变数据源。\",\"createTime\":1586334613000,\"headerImg\":\"1\",\"id\":1,\"params\":{},\"status\":1,\"summary\":\"本文主要说明SpringBoot2配置Druid多数据源。\",\"title\":\"深入理解SpringBoot多数据源10\",\"updateTime\":1633513768000},{\"author\":\"gourddoll\",\"categoryId\":\"2\",\"commend\":1,\"content\":\"本文主要说明SpringBoot2配置Druid多数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态的决定使用哪个数据源。在Springboot2中引入了AbstractRoutingDataSource这个类，这个类的作用是充当DataSource的路由中介，能够在运行时，根据key来动态切换DataSource。使用多数据源能够对多个数据库实例进行管理，这样可以有效的提升系统的水平伸缩性。而这样的方案就不同于传统的单一数据源，需要在运行时，根据请求上下文来动态', 0, NULL, '2021-10-07 16:58:23');
INSERT INTO `sys_oper_log` VALUES (426, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[4,3,3,1,1,3,0]}}', 0, NULL, '2021-12-18 17:30:33');
INSERT INTO `sys_oper_log` VALUES (427, '分析接口', 1, 'com.gourddoll.blog.controller.BgStatisticsController.getCategoryBlogs()', 'GET', 1, 'admin', NULL, '/statistics/getCategoryBlogs', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"xData\":[\"Java\",\"C/C++\",\"Spring Boot\",\"Python\",\"深度学习\",\"Vue\",\"闲言碎语\"],\"yData\":[4,3,3,1,1,3,0]}}', 0, NULL, '2021-12-18 17:34:01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
INSERT INTO `sys_role` VALUES (13, 'test2', 'test', 2, '1', 0, 0, '1', '0', 'admin', '2021-02-17 16:47:44', 'admin', '2021-02-17 23:41:34', '1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '红娃', '00', 'gd@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'hw', '黄娃', '00', 'gd@qq.com', '15666666666', '1', '', 'admin123', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2021-01-10 15:49:15', '测试管理员');
INSERT INTO `sys_user` VALUES (3, NULL, 'usertest1', 'test12', '00', 'test1@qq.com', '12345678912', '0', '', '$2a$10$0aREgcITxhjlpSpEbR99Q.4jqWWImw8eD8FSvNcoRsd4dc21mosce', '0', '0', '', NULL, 'admin', '2021-01-03 12:24:37', 'admin', '2021-03-07 18:20:36', 'test1备注');
INSERT INTO `sys_user` VALUES (4, NULL, 'usertest2', 'test2', '00', '', '123', '2', '', '$2a$10$OXLHOf8WzbuEHCU6Zmmf6Odr7/cSpLa54jvt7ufXHA.8v4nKCNHtS', '0', '0', '', NULL, 'admin', '2021-01-03 12:33:11', '', NULL, 'test2备注');
INSERT INTO `sys_user` VALUES (5, NULL, 'test3user', 'test3', '00', 'test3@ff.cn', '123131', '2', '', '$2a$10$bHVzot6jpip1nwI8iVtJx.VbkW156a7cnBWnra1Y6egM9RwmIvB/u', '0', '0', '', NULL, 'admin', '2021-01-03 12:36:36', '', NULL, 'test3备注');
INSERT INTO `sys_user` VALUES (6, NULL, 'usertest4', 'test4', '00', 'test4@pwd.red', '424324234', '1', '', '$2a$10$TOTdDrHa6qM2URAM0hvLWOpzGyxS6ICicY2omjo7uWrbNG1yc73lO', '0', '0', '', NULL, 'admin', '2021-01-03 12:38:11', '', NULL, 'test4备注');
INSERT INTO `sys_user` VALUES (7, NULL, 'usertest5', 'test5', '00', 'test5@qq.cn', '137test5', '0', '', '$2a$10$csCiQMgORA9TbeqN0v3ymOiNwQqrPAnGMDqikeVe8l0Enyor8G4Nq', '0', '0', '', NULL, 'admin', '2021-01-03 13:46:49', '', NULL, 'test5备注');
INSERT INTO `sys_user` VALUES (8, NULL, 'usertest6', 'test6', '00', 'test6@qq.com', '1231312', '0', '', '$2a$10$85v9CjA2a3UV9W5vEdW1tuzjUtfd8npsndKRR1Clr.EOngTZcrNXO', '0', '0', '', NULL, 'admin', '2021-01-04 16:53:14', '', NULL, 'test6备注');
INSERT INTO `sys_user` VALUES (9, NULL, 'usertest7', 'test7', '00', 'test7@qq.cn', 'test7', '1', '', '$2a$10$OT98zCq6xc3XRVuHLhH.OOHei.7xbAfnjfGB8LlotF21pgbPmK7bm', '0', '2', '', NULL, 'admin', '2021-01-04 16:53:45', '', NULL, 'test7备注');
INSERT INTO `sys_user` VALUES (10, NULL, 'usertest8', 'test8', '00', 'test8@dd.cn', '12312313', '2', '', '$2a$10$vOj0/kEvaPXmeTTsUPDFaORtZFmjyQqt0YdC.eM3Eh9lWCxz/G5gS', '0', '2', '', NULL, 'admin', '2021-01-04 16:54:18', '', NULL, 'test8备注');
INSERT INTO `sys_user` VALUES (11, NULL, 'usertest9', 'test9', '00', 'test9@rr.cn', '4424242342', '0', '', '$2a$10$V/.UbzmtRy6x/AaLoZn0COWHC0QGLzDM7eef5te5XcBN88MUpgqwy', '0', '2', '', NULL, 'admin', '2021-01-04 16:54:54', '', NULL, 'test9备注');
INSERT INTO `sys_user` VALUES (12, NULL, 'usertest101', 'test101', '00', 'test10@ww1.cn', '23231311', '0', '', '1', '0', '2', '', NULL, 'admin', '2021-01-04 16:57:21', 'admin', '2021-01-09 15:07:31', 'test10备注1aaa1');
INSERT INTO `sys_user` VALUES (13, NULL, 'test11', 'test11', '00', 'test11@22.com', '12321313213', '0', '', '$2a$10$hgS0Anq478jQMjfMtNWwFuJBRUL5Gh5oTAM1ZPX2ZPC7K/yFPWLLy', '0', '2', '', NULL, 'admin', '2021-01-10 02:11:54', '', NULL, 'test11备注');
INSERT INTO `sys_user` VALUES (14, NULL, 'zhangsan', '张三', '00', '564131564@qq.com', '', '0', '', '$2a$10$q3vDwv67R76nH2/OPNjO0eclzHzQXM3jfkkl1k0vxC/XpTU7gdWha', '0', '0', '', NULL, 'admin', '2021-01-12 14:14:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (15, NULL, 'zhangsan2', '张三2', '00', '564131534@qq.com', '234234324', '1', '', '123456', '0', '0', '', NULL, 'admin', '2021-01-12 14:15:38', 'admin', '2021-01-12 14:35:34', NULL);
INSERT INTO `sys_user` VALUES (16, NULL, 'zhangsan3', '张三3', '00', '6856462@qq.com', '5465115', '0', '', '$2a$10$xlm.vCr.fnZ8RjYXmajpwOc.viRaNmXNcUDjaaTJD3s0XkEB8W0k6', '0', '0', '', NULL, 'admin', '2021-01-12 14:16:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (17, NULL, 'usertest14', 'usertest14', '00', 'usertest8@qq.cn', 'usertest8', '0', '', '$2a$10$NrlmSqCRWyZt6s0cqpu8WuC4eP6bIfB3uUWNOaBnSP4LfAobJnQoe', '0', '2', '', NULL, 'admin', '2021-01-15 20:28:51', '', NULL, 'usertest8备注');
INSERT INTO `sys_user` VALUES (18, NULL, 'test20', 'test20', '00', 'test20@q.com', 'test20213', '0', '', '123456', '0', '2', '', NULL, 'admin', '2021-01-16 15:02:35', 'admin', '2021-01-16 17:25:01', 'test20备注哈哈哈11122333ddaagggg');
INSERT INTO `sys_user` VALUES (19, NULL, 'wl', 'zhangsan', '00', 'gourddoll176@gmail.com', '17608043865', '0', '', '$2a$10$VBo2iP8sjiOoujCJqn7uBueF6VFvxtX2gqcQ4Qzx7fukRBjNcn6dO', '0', '0', '', NULL, 'admin', '2021-01-21 09:13:14', 'admin', '2021-01-21 09:13:45', '32423');

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
INSERT INTO `sys_user_role` VALUES (3, 13);
INSERT INTO `sys_user_role` VALUES (4, 2);

SET FOREIGN_KEY_CHECKS = 1;
