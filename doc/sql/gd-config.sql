/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : gd-config

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 01/12/2020 21:38:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (1, 'application-dev.yml', 'DEFAULT_GROUP', 'spring:\n  main:\n    allow-bean-definition-overriding: true\n\n#请求处理的超时时间\nribbon:\n  ReadTimeout: 10000\n  ConnectTimeout: 10000\n\n# feign 配置\nfeign:\n  sentinel:\n    enabled: true\n  okhttp:\n    enabled: true\n  httpclient:\n    enabled: false\n  client:\n    config:\n      default:\n        connectTimeout: 10000\n        readTimeout: 10000\n  compression:\n    request:\n      enabled: true\n    response:\n      enabled: true\n\n# 暴露监控端点\nmanagement:\n  endpoints:\n    web:\n      exposure:\n        include: \'*\'\n', '57470c6d167154919418fa150863b7fb', '2019-11-29 16:31:20', '2020-09-01 09:14:30', NULL, '0:0:0:0:0:0:0:1', '', '', '通用配置', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (2, 'gourddoll-gateway-dev.yml', 'DEFAULT_GROUP', 'spring:\n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  cloud:\n    gateway:\n      discovery:\n        locator:\n          lowerCaseServiceId: true\n          enabled: true\n      routes:\n        # 认证中心\n        - id: gourddoll-auth\n          uri: lb://gourddoll-auth\n          predicates:\n            - Path=/auth/**\n          filters:\n            # 验证码处理\n            - CacheRequestFilter\n            - ValidateCodeFilter\n            - StripPrefix=1\n        # 代码生成\n        - id: gourddoll-gen\n          uri: lb://gourddoll-gen\n          predicates:\n            - Path=/code/**\n          filters:\n            - StripPrefix=1\n        # 定时任务\n        - id: gourddoll-job\n          uri: lb://gourddoll-job\n          predicates:\n            - Path=/schedule/**\n          filters:\n            - StripPrefix=1\n        # 系统模块\n        - id: gourddoll-system\n          uri: lb://gourddoll-system\n          predicates:\n            - Path=/system/**\n          filters:\n            - StripPrefix=1\n        # 博客模块\n        - id: gourddoll-blog\n          uri: lb://gourddoll-blog\n          #为访问url添加前缀\n          predicates:\n            - Path=/blog/**\n          filters:\n            - StripPrefix=1\n\n# 不校验白名单\nignore:\n  whites:\n    - /auth/logout\n    - /auth/login\n    - /*/v2/api-docs\n    - /csrf\n', 'ef925bc228828e8681aff8f82e42dc53', '2020-05-14 14:17:55', '2020-11-29 13:40:56', NULL, '0:0:0:0:0:0:0:1', '', '', '网关模块', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (3, 'gourddoll-auth-dev.yml', 'DEFAULT_GROUP', 'spring: \n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n', '9dea93af936fca974b8e6d147567f738', '2020-05-14 13:20:49', '2020-11-15 15:36:31', NULL, '0:0:0:0:0:0:0:1', '', '', '认证中心', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (4, 'gourddoll-monitor-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  security:\n    user:\n      name: gourddoll\n      password: 123456\n  boot:\n    admin:\n      ui:\n        title: 葫芦娃服务状态监控\n', '2630eb31a4c6079d2417f5b28eea8c55', '2020-05-19 15:14:01', '2020-11-15 14:54:18', NULL, '0:0:0:0:0:0:0:1', '', '', '监控中心', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (5, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'c9aabcd87bc90c157e6e01c883848fd5', '2020-05-14 13:37:04', '2020-11-28 16:41:48', NULL, '0:0:0:0:0:0:0:1', '', '', '系统模块', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (6, 'gourddoll-gen-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource: \n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.gen.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 代码生成接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n\n# 代码生成\ngen: \n  # 作者\n  author: gourddoll\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\n  packageName: com.gourddoll.system\n  # 自动去除表前缀，默认是false\n  autoRemovePre: false\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\n  tablePrefix: sys_\n', '7c1de3cde0181f2611dc756e6c74b1d7', '2020-05-14 13:54:50', '2020-11-28 15:32:43', NULL, '0:0:0:0:0:0:0:1', '', '', '代码生成', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (7, 'gourddoll-job-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.job.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 定时任务接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n', '919529f69d8601a26a58cd1c841dcc22', '2020-05-14 13:58:46', '2020-11-29 12:04:29', NULL, '0:0:0:0:0:0:0:1', '', '', '定时任务', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (8, 'sentinel-gourddoll-gateway', 'DEFAULT_GROUP', '[\n    {\n        \"resource\": \"gourddoll-auth\",\n        \"count\": 500,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    },\n	{\n        \"resource\": \"gourddoll-system\",\n        \"count\": 1000,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    },\n	{\n        \"resource\": \"gourddoll-gen\",\n        \"count\": 200,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    },\n	{\n        \"resource\": \"gourddoll-job\",\n        \"count\": 300,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    }\n]', '3b4178ea29c89cd9e18fd15f79911759', '2020-06-09 12:14:01', '2020-11-15 14:56:05', NULL, '0:0:0:0:0:0:0:1', '', '', 'null', 'null', 'null', 'json', 'null');
INSERT INTO `config_info` VALUES (10, 'gourddoll-blog-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'c9aabcd87bc90c157e6e01c883848fd5', '2020-11-28 16:40:57', '2020-11-28 16:41:28', NULL, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');
INSERT INTO `config_info` VALUES (13, 'gourddoll-search-dev.yml', 'DEFAULT_GROUP', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  elasticsearch:\n      cluster-nodes: 39.99.195.107\n      # 9200端口是用来让HTTP REST API来访问ElasticSearch，而9300端口是传输层监听的默认端口，这里9200改为9250\n      cluster-port: 9250\n      username: docker-cluster\n      password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n  main:\n    allow-bean-definition-overriding: true #当遇到同样名字的时候，是否允许覆盖注册\n\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', '0a6e52b07e6d95c1fad104c06b424e71', '2020-11-29 18:04:41', '2020-11-29 18:10:25', NULL, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfoaggr_datagrouptenantdatum`(`data_id`, `group_id`, `tenant_id`, `datum_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '增加租户字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfobeta_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_beta' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfotag_datagrouptenanttag`(`data_id`, `group_id`, `tenant_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_tag' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `uk_configtagrelation_configidtag`(`id`, `tag_name`, `tag_type`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
  `id` bigint(64) UNSIGNED NOT NULL,
  `nid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `idx_gmt_create`(`gmt_create`) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified`) USING BTREE,
  INDEX `idx_did`(`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES (6, 1, 'ruoyi-gen-dev.yml', 'DEFAULT_GROUP', '', '# Spring\r\nspring: \r\n  redis:\r\n    host: localhost\r\n    port: 6379\r\n    password: \r\n  datasource: \r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\r\n    username: root\r\n    password: password\r\n\r\n# Mybatis配置\r\nmybatis:\r\n    # 搜索指定包别名\r\n    typeAliasesPackage: com.ruoyi.gen.domain\r\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\r\n    mapperLocations: classpath:mapper/**/*.xml\r\n\r\n# swagger 配置\r\nswagger:\r\n  title: 代码生成接口文档\r\n  license: Powered By ruoyi\r\n  licenseUrl: https://ruoyi.vip\r\n  authorization:\r\n    name: RuoYi OAuth\r\n    auth-regex: ^.*$\r\n    authorization-scope-list:\r\n      - scope: server\r\n        description: 客户端授权范围\r\n    token-url-list:\r\n      - http://localhost:8080/auth/oauth/token\r\n\r\n# 代码生成\r\ngen: \r\n  # 作者\r\n  author: ruoyi\r\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\r\n  packageName: com.ruoyi.system\r\n  # 自动去除表前缀，默认是false\r\n  autoRemovePre: false\r\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\r\n  tablePrefix: sys_\r\n', '02b9be6ad01ca44c992c41a020ec81aa', '2020-11-11 21:55:15', '2020-11-11 21:55:15', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (7, 2, 'ruoyi-job-dev.yml', 'DEFAULT_GROUP', '', '# Spring\r\nspring: \r\n  redis:\r\n    host: localhost\r\n    port: 6379\r\n    password: \r\n  datasource:\r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\r\n    username: root\r\n    password: password\r\n\r\n# Mybatis配置\r\nmybatis:\r\n    # 搜索指定包别名\r\n    typeAliasesPackage: com.ruoyi.job.domain\r\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\r\n    mapperLocations: classpath:mapper/**/*.xml\r\n\r\n# swagger 配置\r\nswagger:\r\n  title: 定时任务接口文档\r\n  license: Powered By ruoyi\r\n  licenseUrl: https://ruoyi.vip\r\n  authorization:\r\n    name: RuoYi OAuth\r\n    auth-regex: ^.*$\r\n    authorization-scope-list:\r\n      - scope: server\r\n        description: 客户端授权范围\r\n    token-url-list:\r\n      - http://localhost:8080/auth/oauth/token\r\n', '5033cbfb2c38780ac23f74954588ec4f', '2020-11-11 22:49:14', '2020-11-11 22:49:14', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (6, 3, 'ruoyi-gen-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: localhost\n    port: 6379\n    password: \n  datasource: \n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.ruoyi.gen.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 代码生成接口文档\n  license: Powered By ruoyi\n  licenseUrl: https://ruoyi.vip\n  authorization:\n    name: RuoYi OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n\n# 代码生成\ngen: \n  # 作者\n  author: ruoyi\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\n  packageName: com.ruoyi.system\n  # 自动去除表前缀，默认是false\n  autoRemovePre: false\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\n  tablePrefix: sys_\n', 'd6a7e5ad93a4b5abdeb0d17c181ab4d6', '2020-11-11 22:51:10', '2020-11-11 22:51:11', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (5, 4, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '', '# Spring\r\nspring: \r\n  redis:\r\n    host: 39.99.195.107\r\n    port: 6379\r\n    password: 123456\r\n  datasource:\r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\r\n    username: root\r\n    password: 123456\r\n\r\n# Mybatis配置\r\nmybatis:\r\n    # 搜索指定包别名\r\n    typeAliasesPackage: com.ruoyi.system\r\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\r\n    mapperLocations: classpath:mapper/**/*.xml\r\n\r\n# swagger 配置\r\nswagger:\r\n  title: 系统模块接口文档\r\n  license: Powered By ruoyi\r\n  licenseUrl: https://ruoyi.vip\r\n  authorization:\r\n    name: RuoYi OAuth\r\n    auth-regex: ^.*$\r\n    authorization-scope-list:\r\n      - scope: server\r\n        description: 客户端授权范围\r\n    token-url-list:\r\n      - http://localhost:8080/auth/oauth/token\r\n', 'cc0bc3aa2a36680380b549339439601b', '2020-11-15 14:52:25', '2020-11-15 14:52:25', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (2, 5, 'gourddoll-gateway-dev.yml', 'DEFAULT_GROUP', '', 'spring:\r\n  redis:\r\n    host: 39.99.195.107\r\n    port: 6379\r\n    password: 123456\r\n  cloud:\r\n    gateway:\r\n      discovery:\r\n        locator:\r\n          lowerCaseServiceId: true\r\n          enabled: true\r\n      routes:\r\n        # 认证中心\r\n        - id: ruoyi-auth\r\n          uri: lb://ruoyi-auth\r\n          predicates:\r\n            - Path=/auth/**\r\n          filters:\r\n            # 验证码处理\r\n            - CacheRequestFilter\r\n            - ValidateCodeFilter\r\n            - StripPrefix=1\r\n        # 代码生成\r\n        - id: ruoyi-gen\r\n          uri: lb://ruoyi-gen\r\n          predicates:\r\n            - Path=/code/**\r\n          filters:\r\n            - StripPrefix=1\r\n        # 定时任务\r\n        - id: ruoyi-job\r\n          uri: lb://ruoyi-job\r\n          predicates:\r\n            - Path=/schedule/**\r\n          filters:\r\n            - StripPrefix=1\r\n        # 系统模块\r\n        - id: ruoyi-system\r\n          uri: lb://ruoyi-system\r\n          predicates:\r\n            - Path=/system/**\r\n          filters:\r\n            - StripPrefix=1\r\n\r\n# 不校验白名单\r\nignore:\r\n  whites:\r\n    - /auth/logout\r\n    - /auth/login\r\n    - /*/v2/api-docs\r\n    - /csrf\r\n', '300e7be3235abb85544182f6fa5e91b0', '2020-11-15 14:53:26', '2020-11-15 14:53:26', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (3, 6, 'gourddoll-auth-dev.yml', 'DEFAULT_GROUP', '', 'spring: \r\n  datasource:\r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\r\n    username: root\r\n    password: 123456\r\n  redis:\r\n    host: 39.99.195.107\r\n    port: 6379\r\n    password: 123456\r\n', '7ad829b0ac492d277885f573052035d9', '2020-11-15 14:53:45', '2020-11-15 14:53:46', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (4, 7, 'gourddoll-monitor-dev.yml', 'DEFAULT_GROUP', '', '# Spring\r\nspring: \r\n  security:\r\n    user:\r\n      name: ruoyi\r\n      password: 123456\r\n  boot:\r\n    admin:\r\n      ui:\r\n        title: 若依服务状态监控\r\n', '8e49d78998a7780d780305aeefe4fb1b', '2020-11-15 14:54:18', '2020-11-15 14:54:18', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (6, 8, 'gourddoll-gen-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource: \n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.ruoyi.gen.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 代码生成接口文档\n  license: Powered By ruoyi\n  licenseUrl: https://ruoyi.vip\n  authorization:\n    name: RuoYi OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n\n# 代码生成\ngen: \n  # 作者\n  author: ruoyi\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\n  packageName: com.ruoyi.system\n  # 自动去除表前缀，默认是false\n  autoRemovePre: false\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\n  tablePrefix: sys_\n', '628feced6a8e9f693b718baefd069d1e', '2020-11-15 14:55:02', '2020-11-15 14:55:02', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (7, 9, 'gourddoll-job-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/ry-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.ruoyi.job.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 定时任务接口文档\n  license: Powered By ruoyi\n  licenseUrl: https://ruoyi.vip\n  authorization:\n    name: RuoYi OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n', '31944303e7aba6cd81d140c9cc47faa7', '2020-11-15 14:55:40', '2020-11-15 14:55:41', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (8, 10, 'sentinel-gourddoll-gateway', 'DEFAULT_GROUP', '', '[\r\n    {\r\n        \"resource\": \"ruoyi-auth\",\r\n        \"count\": 500,\r\n        \"grade\": 1,\r\n        \"limitApp\": \"default\",\r\n        \"strategy\": 0,\r\n        \"controlBehavior\": 0\r\n    },\r\n	{\r\n        \"resource\": \"ruoyi-system\",\r\n        \"count\": 1000,\r\n        \"grade\": 1,\r\n        \"limitApp\": \"default\",\r\n        \"strategy\": 0,\r\n        \"controlBehavior\": 0\r\n    },\r\n	{\r\n        \"resource\": \"ruoyi-gen\",\r\n        \"count\": 200,\r\n        \"grade\": 1,\r\n        \"limitApp\": \"default\",\r\n        \"strategy\": 0,\r\n        \"controlBehavior\": 0\r\n    },\r\n	{\r\n        \"resource\": \"ruoyi-job\",\r\n        \"count\": 300,\r\n        \"grade\": 1,\r\n        \"limitApp\": \"default\",\r\n        \"strategy\": 0,\r\n        \"controlBehavior\": 0\r\n    }\r\n]', '9f3a3069261598f74220bc47958ec252', '2020-11-15 14:56:05', '2020-11-15 14:56:05', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (5, 11, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.system\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdGoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n', 'cfea3e9c2ae5acb0422c12394bf5b53b', '2020-11-15 15:35:53', '2020-11-15 15:35:53', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (3, 12, 'gourddoll-auth-dev.yml', 'DEFAULT_GROUP', '', 'spring: \n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n', '1ab32ef704394a4ebbc9da059a7b4d3f', '2020-11-15 15:36:31', '2020-11-15 15:36:31', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (6, 13, 'gourddoll-gen-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource: \n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.gen.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 代码生成接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n\n# 代码生成\ngen: \n  # 作者\n  author: gourddoll\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\n  packageName: com.gourddoll.system\n  # 自动去除表前缀，默认是false\n  autoRemovePre: false\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\n  tablePrefix: sys_\n', '4d8ec627b053a9458d53d3c01f648823', '2020-11-15 15:36:55', '2020-11-15 15:36:55', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (7, 14, 'gourddoll-job-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-cloud?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.job.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 定时任务接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n', 'a43c3c00eb5a174ca13b13fb9d9a9eaf', '2020-11-15 15:37:23', '2020-11-15 15:37:24', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (5, 15, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.system\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'b42ed9c75f143fa4a59a244c9488ae0b', '2020-11-15 15:38:52', '2020-11-15 15:38:52', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (5, 16, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.system.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'ff39db22035f54ce89f4de1bc72a1502', '2020-11-15 15:50:32', '2020-11-15 15:50:32', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (6, 17, 'gourddoll-gen-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource: \n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.gen.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 代码生成接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n\n# 代码生成\ngen: \n  # 作者\n  author: gourddoll\n  # 默认生成包路径 system 需改成自己的模块名称 如 system monitor tool\n  packageName: com.gourddoll.system\n  # 自动去除表前缀，默认是false\n  autoRemovePre: false\n  # 表前缀（生成类名不会包含表前缀，多个用逗号分隔）\n  tablePrefix: sys_\n', '046ce2658433a5317bd01be60ef27c1a', '2020-11-28 15:32:43', '2020-11-28 15:32:43', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 18, 'gourddoll-blog-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', '1d385307293b4932c54e01158dbe1ed4', '2020-11-28 16:40:56', '2020-11-28 16:40:57', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (10, 19, 'gourddoll-blog-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', '1d385307293b4932c54e01158dbe1ed4', '2020-11-28 16:41:28', '2020-11-28 16:41:28', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (5, 20, 'gourddoll-system-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', '1d385307293b4932c54e01158dbe1ed4', '2020-11-28 16:41:48', '2020-11-28 16:41:48', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (7, 21, 'gourddoll-job-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll.job.domain\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 定时任务接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.vip\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token\n', 'c3813869a011b02dbc6c00673acb91fe', '2020-11-29 12:04:29', '2020-11-29 12:04:29', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (2, 22, 'gourddoll-gateway-dev.yml', 'DEFAULT_GROUP', '', 'spring:\n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  cloud:\n    gateway:\n      discovery:\n        locator:\n          lowerCaseServiceId: true\n          enabled: true\n      routes:\n        # 认证中心\n        - id: gourddoll-auth\n          uri: lb://gourddoll-auth\n          predicates:\n            - Path=/auth/**\n          filters:\n            # 验证码处理\n            - CacheRequestFilter\n            - ValidateCodeFilter\n            - StripPrefix=1\n        # 代码生成\n        - id: gourddoll-gen\n          uri: lb://gourddoll-gen\n          predicates:\n            - Path=/code/**\n          filters:\n            - StripPrefix=1\n        # 定时任务\n        - id: gourddoll-job\n          uri: lb://gourddoll-job\n          predicates:\n            - Path=/schedule/**\n          filters:\n            - StripPrefix=1\n        # 系统模块\n        - id: gourddoll-system\n          uri: lb://gourddoll-system\n          predicates:\n            - Path=/system/**\n          filters:\n            - StripPrefix=1\n\n# 不校验白名单\nignore:\n  whites:\n    - /auth/logout\n    - /auth/login\n    - /*/v2/api-docs\n    - /csrf\n', '91c9331daf72fab2e1488efee92823de', '2020-11-29 13:40:55', '2020-11-29 13:40:56', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 23, 'gourddoll-search-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'c9aabcd87bc90c157e6e01c883848fd5', '2020-11-29 18:04:40', '2020-11-29 18:04:41', NULL, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info` VALUES (13, 24, 'gourddoll-search-dev.yml', 'DEFAULT_GROUP', '', '# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n\n# Mybatis配置\nmybatis:\n    # 搜索指定包别名\n    typeAliasesPackage: com.gourddoll\n    # 配置mapper的扫描，找到所有的mapper.xml映射文件\n    mapperLocations: classpath:mapper/**/*.xml\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', 'c9aabcd87bc90c157e6e01c883848fd5', '2020-11-29 18:09:47', '2020-11-29 18:09:47', NULL, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info` VALUES (13, 25, 'gourddoll-search-dev.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 9205\n  tomcat:\n    uri-encoding: utf-8\n  servlet:\n    context-path: /@project.artifactId@\n# Spring\nspring: \n  redis:\n    host: 39.99.195.107\n    port: 6379\n    password: 123456\n  elasticsearch:\n      cluster-nodes: 39.99.195.107\n      # 9200端口是用来让HTTP REST API来访问ElasticSearch，而9300端口是传输层监听的默认端口，这里9200改为9250\n      cluster-port: 9250\n      username: docker-cluster\n      password: 123456\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/gd-blog?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8\n    username: root\n    password: 123456\n  main:\n    allow-bean-definition-overriding: true #当遇到同样名字的时候，是否允许覆盖注册\n\n\n# swagger 配置\nswagger:\n  title: 系统模块接口文档\n  license: Powered By gourddoll\n  licenseUrl: https://gourddoll.com\n  authorization:\n    name: GourdDoll OAuth\n    auth-regex: ^.*$\n    authorization-scope-list:\n      - scope: server\n        description: 客户端授权范围\n    token-url-list:\n      - http://localhost:8080/auth/oauth/token', '2385e5aedd86d814daa1475c2d0c6268', '2020-11-29 18:10:24', '2020-11-29 18:10:25', NULL, '0:0:0:0:0:0:0:1', 'U', '');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `uk_role_permission`(`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `idx_user_role`(`username`, `role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp`, `tenant_id`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);

SET FOREIGN_KEY_CHECKS = 1;
