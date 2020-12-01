package com.gourddoll.blog;

import com.gourddoll.common.security.annotation.EnableCustomConfig;
import com.gourddoll.common.security.annotation.EnableRyFeignClients;
import com.gourddoll.common.swagger.annotation.EnableCustomSwagger2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * 博客模块
 * 
 * @author gourddoll
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringCloudApplication
@MapperScan(value = "com.gourddoll.blog.mapper")
@EnableFeignClients(basePackages = "com.gourddoll")
public class BlogApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(BlogApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  博客模块启动成功   ლ(´ڡ`ლ)ﾞ");
    }
}
