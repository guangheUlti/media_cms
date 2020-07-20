package io.guangsoft.media.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "guangsoft.shiro")
public class ShiroConfigProperties {
    //最大尝试次数
    private Integer maxRetryCount = 3;
    //第几次时需要使用验证码
    private Integer showCaptchaRetryCount = 2;
    //凭证匹配器-算法
    private String credentialsHashAlgorithmName = "md5";
    //生成Hash值的迭代次数
    private Integer credentialsHashIterations = 2;
    //表示是否存储散列后的密码为16进制，需要和生成密码时的一样
    private Boolean credentialsStoredCredentialsHexEncoded = Boolean.TRUE;
    //全局session超时时间 1000*30*60milliseconds = 30 分钟（1800000）
    private Integer sessionGlobalSessionTimeout = 1800000;
    //session验证时间间隔(即验证会话是否还有效) 1000*60*60milliseconds = 1小时（3600000）
    private Integer sessionValidationInterval = 3600000;
    //session 缓存的名字
    private String activeSessionCacheName = "activeSessionCache";
    //CookieName
    private String sessionIdCookieName = "sessionId";
    //CookieName
    private String sessionIdCookieDomain = "";
    private String sessionIdCookiePath = "/";
    private Boolean sessionIdCookieHttpOnly = Boolean.TRUE;
    //默认uid cookie 浏览器关闭后销毁
    private Integer sessionIdCookieMaxAge = -1;
    //rememeber me cookie 名字
    private String rememeberMeCookieName = "rememeberMe";
    private String rememeberMeCookieDomain = "";
    private String rememeberMeCookiePath = "/";
    private Boolean rememeberMeCookieHttpOnly = Boolean.TRUE;
    //默认 rememberMe cookie 60 * 60 * 24 * 30 （30天）
    private Integer rememeberMeCookieMaxAge = 2592000;
    //cipherKey
    private String rememeberMeCookieBase64CipherKey = "KU471rVNQ6k7PQL4SqxgJg==";
    //登录地址
    private String loginUrl = "/login";
    //退出地址
    private String logoutSuccessUrl = "/login?logout=1";
    //用户删除后
    private String userNotfoundUrl = "/login?notfound=1";
    //用户锁定地址
    private String userLockedUrl = "/login?blocked=1";
    //未知错误地址
    private String userUnknownErrorUrl = "/login?unknown=1";
    //未知错误地址
    private String userForceLogoutUrl = "/login?forcelogout=1";
    //没有授权地址
    private String unauthorizedUrl = "/unauthorized";
    //默认的登录成功页
    private String defaultSuccessUrl = "/index";
    //验证码是否开启
    private Boolean jcaptchaEnable = Boolean.TRUE;
    //验证码错误时重定向的地址
    private String jcaptchaErrorUrl = "/login?jcaptchaError=1";
    //权限
    private String filterChainDefinitions = "";
}
