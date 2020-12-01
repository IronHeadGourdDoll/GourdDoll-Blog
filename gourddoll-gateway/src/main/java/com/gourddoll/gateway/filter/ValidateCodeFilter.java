package com.gourddoll.gateway.filter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gourddoll.common.core.utils.StringUtils;
import com.gourddoll.common.core.web.domain.AjaxResult;
import com.gourddoll.gateway.service.ValidateCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.core.io.buffer.DataBufferUtils;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicReference;

/**
 * 验证码过滤器
 * 
 * @author gourddoll
 */
@Component
public class ValidateCodeFilter extends AbstractGatewayFilterFactory<Object>
{
    private final static String AUTH_URL = "/auth/login";

    @Autowired
    private ValidateCodeService validateCodeService;

    private static final String CODE = "code";

    private static final String UUID = "uuid";

    @Override
    public GatewayFilter apply(Object config)
    {
        // grab configuration from Config object
        return (exchange, chain) -> {
            ServerHttpRequest request = exchange.getRequest();

            // 非登录请求，不处理
            if (!StringUtils.containsIgnoreCase(request.getURI().getPath(), AUTH_URL))
            {
                return chain.filter(exchange);
            }

            try
            {
                String rspStr = resolveBodyFromRequest(request);
                JSONObject obj = JSONObject.parseObject(rspStr);
                validateCodeService.checkCapcha(obj.getString(CODE), obj.getString(UUID));//校验验证码与uuid是否有效
            }
            catch (Exception e)
            {
                ServerHttpResponse response = exchange.getResponse();
                response.getHeaders().add("Content-Type", "application/json;charset=UTF-8");
                return exchange.getResponse().writeWith(
                        Mono.just(response.bufferFactory().wrap(JSON.toJSONBytes(AjaxResult.error(e.getMessage())))));//返回异常
            }
            return chain.filter(exchange);
        };
    }

    private String resolveBodyFromRequest(ServerHttpRequest serverHttpRequest)
    {
        // 获取请求体
        Flux<DataBuffer> body = serverHttpRequest.getBody();
        AtomicReference<String> bodyRef = new AtomicReference<>();
        body.subscribe(buffer -> {
            CharBuffer charBuffer = StandardCharsets.UTF_8.decode(buffer.asByteBuffer());
            DataBufferUtils.release(buffer);
            bodyRef.set(charBuffer.toString());
        });
        return bodyRef.get();
    }
}
