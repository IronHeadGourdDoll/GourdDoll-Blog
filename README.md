## 项目介绍

​		葫芦娃博客，一个基于分布式微服务的前后分离的多人博客系统，前端使用VUE + Ant Design Vue，后端使用Spring Cloud、Spring Cloud Alibaba、Spring Security、Mybatis。

## 运行配置

### 后端配置

1、导入GourdDoll-Blog到Idea，
2、创建数据库gd-blog并导入数据脚本gd-blog.sql（必须），quartz.sql（可选）
3、创建数据库gd-config并导入数据脚本gd-config.sql（必须）
4、配置nacos持久化，修改conf/application.properties文件，增加支持mysql数据源配置

```
# db mysql
spring.datasource.platform=mysql
db.num=1
db.url.0=jdbc:mysql://localhost:3306/gd-config?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true
db.user=root
db.password=123456
```

在nacos的bin目录下cmd运行：startup.cmd -m standalone

5、打开运行基础模块（启动没有先后顺序）

- GatewayApplication （网关模块 必须）
- BlogApplication （博客模块 必须）
- AuthApplication （认证模块 必须）
- SystemApplication （系统模块 必须）
- MonitorApplication （监控中心 可选）
- GenApplication （代码生成 可选）
- JobApplication （定时任务 可选）

### 前端配置



## 项目结构

### 架构图

xxx

### 文件结构

#### 后端结构

```
com.gourddoll     
├── gourddoll-ui              // 前端
	    └── front                                         // 前台前端 [80]
	    └── rear-end                                      // 后台前端 [81]
├── gourddoll-gateway         // 网关模块 [8080]
├── gourddoll-auth            // 认证中心 [9200]
├── gourddoll-api             // 接口模块
│       └── gourddoll-api-system                          // 系统接口
├── gourddoll-common          // 通用模块
│       └── gourddoll-common-core                         // 核心模块
│       └── gourddoll-common-datascope                    // 权限范围
│       └── gourddoll-common-log                          // 日志记录
│       └── gourddoll-common-redis                        // 缓存服务
│       └── gourddoll-common-security                     // 安全模块
│       └── gourddoll-common-swagger                      // 系统接口
├── gourddoll-modules         // 业务模块
│       └── gourddoll-system                              // 系统模块 [9201]
│       └── gourddoll-gen                                 // 代码生成 [9202]
│       └── gourddoll-job                                 // 定时任务 [9203]
│       └── gourddoll-blog                                // 博客模块 [9204]
│       └── gourddoll-search                              // 搜索模块 [9205]
├── gourddoll-visual          // 图形化管理模块
│       └── gourddoll-visual-monitor                      // 监控中心 [9100]
├──pom.xml                    // 公共依赖
```

#### 前端结构

## 项目技术

### 后端技术

| 技术                 | 版本          | 说明                        | 地址                                                         |
| -------------------- | ------------- | --------------------------- | ------------------------------------------------------------ |
| Spring Cloud         | Hoxton.SR8    | 微服务框架                  | https://spring.io/projects/spring-cloud/                     |
| Spring Cloud Alibaba | 2.2.3.RELEASE | 微服务框架                  | https://spring.io/projects/spring-cloud-alibaba              |
| Spring Security      |               | 安全框架                    | https://spring.io/projects/spring-security                   |
| Mybatis              |               | ORM框架                     | https://mybatis.org/mybatis-3/zh/index.html                  |
| Mysql                | 5.7.27        | 数据库                      | https://www.mysql.com/                                       |
| Redis                |               | nosql数据库                 | https://redis.io/                                            |
| ElasticSearch        | 6.8.7         | 搜索引擎                    | https://www.elastic.co/guide/en/elasticsearch/client/java-rest/6.8/java-rest-high.html |
| Nacos                | 1.4           | 服务注册                    | https://nacos.io/zh-cn/index.html                            |
| Sentinel             | 1.8           | 流量卫兵                    | https://github.com/alibaba/Sentinel/                         |
| Openfeign            |               | 服务调用                    | https://spring.io/projects/spring-cloud-openfeign            |
| Quartz               |               | 任务调度                    | http://www.quartz-scheduler.org/                             |
| RabbitMQ             |               | 消息中间件                  | https://www.rabbitmq.com/                                    |
| swagger              | 2.9.2         | RESTful 风格的 Web 服务框架 | https://swagger.io/                                          |

### 

| 技术                            | 版本  | 说明                      | 地址                                             |
| ------------------------------- | ----- | ------------------------- | ------------------------------------------------ |
| Vue                             | 3.0.2 | JavaScript框架            | https://www.vue3js.cn/docs/zh/                   |
| TypeScript                      | 3.1   | JavaScript框架            | https://www.tslang.cn/                           |
| Ant Design Vue                  | 2.0.0 | 基于vue3的UI框架          | https://2x.antdv.com/docs/vue/introduce-cn/      |
| Vue-router                      | 4.5.2 | 路由框架                  | https://router.vuejs.org/                        |
| Vuex                            |       | 全局状态管理框架          | https://vuex.vuejs.org/                          |
| Axios                           |       | 前端HTTP框架              | https://github.com/axios/axios                   |
| Echarts                         |       | 图表框架                  | www.echartsjs.com                                |
| Nuxt.js                         |       | 创建服务端渲染 (SSR) 应用 | https://zh.nuxtjs.org/                           |
| vue-emoji-comment               |       | Vue Emoji表情评论组件     | https://github.com/pppercyWang/vue-emoji-comment |
| clipboard.js                    |       | 现代化的拷贝文字          | http://www.clipboardjs.cn/                       |
| Vditor                          |       | Markdown编辑器            | https://github.com/Vanessa219/vditor             |
| vue-side-catalog                |       | 导航栏插件                | https://github.com/yaowei9363/vue-side-catalog   |
| markdown-it/github-markdown-css |       | markdown显示美化          | http://markdown-it.docschina.org/                |

## 开发进度

+ [x] 博客、评论、点赞、留言

* [x] 博客分词搜索
* [ ] 增加博客详情页目录导航
* [ ] 增加评论表情
* [ ] 增加代码生成器
* [ ] 自定义博客界面风格
* [ ] 增加用户积分、勋章、排名、关注、收藏模块
* [ ] 增加用户个人商城
* [ ] 增加论坛功能
* [ ] 完善博客社区、商城社区

## 网站截图

暂无

## 致谢

本项目前端开发者[碌云](https://github.com/cluyun)

感谢[ruoyi](https://gitee.com/y_project/RuoYi-Cloud)的后端框架