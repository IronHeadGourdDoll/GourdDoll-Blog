package com.gourddoll.search;

import com.gourddoll.common.security.annotation.EnableCustomConfig;
import com.gourddoll.common.security.annotation.EnableRyFeignClients;
import com.gourddoll.common.swagger.annotation.EnableCustomSwagger2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;


@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringCloudApplication
@EnableFeignClients(basePackages = "com.gourddoll")
public class SearchApplication
{
    public static void main(String[] args)
    {
        /*
         * Springboot整合Elasticsearch 在项目启动前设置一下的属性，防止报错
         * 解决netty冲突后初始化client时还会抛出异常
         * java.lang.IllegalStateException: availableProcessors is already set to [12], rejecting [12]
         */
        System.setProperty("es.set.netty.runtime.available.processors", "false");
        SpringApplication.run(SearchApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  搜索模块启动成功   ლ(´ڡ`ლ)ﾞ");
    }

}
