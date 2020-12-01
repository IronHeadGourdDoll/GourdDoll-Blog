package com.gourddoll.system;

import com.gourddoll.common.security.annotation.EnableCustomConfig;
import com.gourddoll.common.security.annotation.EnableRyFeignClients;
import com.gourddoll.common.swagger.annotation.EnableCustomSwagger2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * 系统模块
 * 
 * @author gourddoll
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringCloudApplication
@MapperScan(value = "com.gourddoll.system.mapper")
@EnableFeignClients(basePackages = "com.gourddoll")
public class SystemApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(SystemApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  系统模块启动成功   ლ(´ڡ`ლ)ﾞ");
    }
}
