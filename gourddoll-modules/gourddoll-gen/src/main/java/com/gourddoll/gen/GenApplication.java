package com.gourddoll.gen;

import com.gourddoll.common.security.annotation.EnableCustomConfig;
import com.gourddoll.common.security.annotation.EnableRyFeignClients;
import com.gourddoll.common.swagger.annotation.EnableCustomSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * 代码生成
 *
 * @author gourddoll
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringCloudApplication
public class GenApplication {
    public static void main(String[] args) {
        SpringApplication.run(GenApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  代码生成模块启动成功   ლ(´ڡ`ლ)ﾞ");
    }
}
