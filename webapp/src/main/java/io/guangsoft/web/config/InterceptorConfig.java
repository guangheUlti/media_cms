package io.guangsoft.web.config;

import io.guangsoft.common.interceptor.EncodingInterceptor;
import io.guangsoft.common.security.shiro.interceptor.PermissionInterceptorAdapter;
import io.guangsoft.common.utils.SpringContextHolder;
import io.guangsoft.web.interceptor.WebInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    /**
     * 编码拦截器
     */
    @Bean
    public HandlerInterceptor encodingInterceptor() {
        EncodingInterceptor encodingInterceptor = new EncodingInterceptor();
        return encodingInterceptor;
    }

    /**
     * 安全验证拦截器
     */
    @Bean
    public PermissionInterceptorAdapter permissionInterceptorAdapter() {
        PermissionInterceptorAdapter permissionInterceptorAdapter = new PermissionInterceptorAdapter();
        return permissionInterceptorAdapter;
    }

    /**
     * 静态资源拦截器
     */
    @Bean
    public WebInterceptor webInterceptor() {
        WebInterceptor webInterceptor = new WebInterceptor();
        return webInterceptor;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //编码拦截器
        registry.addInterceptor(encodingInterceptor()).addPathPatterns("/**").excludePathPatterns("/upload/**", "/static/**");
        //安全验证拦截器
        registry.addInterceptor(permissionInterceptorAdapter()).addPathPatterns("/**").excludePathPatterns("/upload/**", "/static/**");
        //web拦截器
        registry.addInterceptor(webInterceptor()).addPathPatterns("/**").excludePathPatterns("/upload/**", "/static/**");
    }

    /**
     * 添加静态资源文件，外部可以直接访问地址
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //第一个方法设置访问路径前缀，第二个方法设置资源路径
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
        //添加对上传文件的直接访问
        Environment env = SpringContextHolder.getBean(Environment.class);
        String uploadFilePath = env.getProperty("upload-file-path");
        registry.addResourceHandler("/upload/**").addResourceLocations("file:" + uploadFilePath);
    }

}
