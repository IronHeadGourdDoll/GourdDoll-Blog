package com.gourddoll.auth;

import com.gourddoll.common.security.annotation.EnableRyFeignClients;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * 认证授权中心
 * 
 * @author gourddoll
 */
@EnableRyFeignClients
@SpringCloudApplication
@EnableFeignClients(basePackages = "com.gourddoll")
public class AuthApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(AuthApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  认证授权中心启动成功   ლ(´ڡ`ლ)ﾞ");
    }
}
