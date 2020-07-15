package io.guangsoft.media.shiro.filter.authc;

import io.guangsoft.media.utils.IpUtils;
import io.guangsoft.media.utils.StringUtils;
import io.guangsoft.media.shiro.exception.RepeatAuthenticationException;
import io.guangsoft.media.web.utils.LoginLogUtils;
import io.guangsoft.media.web.utils.UserUtils;
import io.guangsoft.web.security.shiro.exception.RepeatAuthenticationException;
import io.guangsoft.web.security.shiro.realm.UserRealm;
import io.guangsoft.web.utils.LoginLogUtils;
import io.guangsoft.web.utils.UserUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class FormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter {

    public static final String DEFAULT_CAPTCHA_PARAM = "captcha";
    public static final String DEFAULT_MOBILE_PARAM = "mobileLogin";
    public static final String DEFAULT_MESSAGE_ERROR_PARAM = "error";
    public static final String DEFAULT_MESSAGE_SUCCESS_PARAM = "success";
    public static final String DEFAULT_MESSAGE_NORMAL_PARAM = "normal";

    private String captchaParam = DEFAULT_CAPTCHA_PARAM;
    private String mobileLoginParam = DEFAULT_MOBILE_PARAM;
    private String messageErrorParam = DEFAULT_MESSAGE_ERROR_PARAM;
    private String messageSuccessParam = DEFAULT_MESSAGE_SUCCESS_PARAM;
    private String messageNormallParam = DEFAULT_MESSAGE_NORMAL_PARAM;

    public String getCaptchaParam() {
        return captchaParam;
    }

    public void setCaptchaParam(String captchaParam) {
        this.captchaParam = captchaParam;
    }

    public void setMobileLoginParam(String mobileLoginParam) {
        this.mobileLoginParam = mobileLoginParam;
    }

    public void setMessageErrorParam(String messageErrorParam) {
        this.messageErrorParam = messageErrorParam;
    }

    public void setMessageSuccessParam(String messageSuccessParam) {
        this.messageSuccessParam = messageSuccessParam;
    }

    public void setMessageNormallParam(String messageNormallParam) {
        this.messageNormallParam = messageNormallParam;
    }

    public String getMessageErrorParam() {
        return messageErrorParam;
    }

    public String getMessageSuccessParam() {
        return messageSuccessParam;
    }

    public String getMessageNormallParam() {
        return messageNormallParam;
    }

    protected String getCaptcha(ServletRequest request) {
        return WebUtils.getCleanParam(request, getCaptchaParam());
    }

    public String getMobileLoginParam() {
        return mobileLoginParam;
    }

    protected boolean isMobileLogin(ServletRequest request) {
        return WebUtils.isTrue(request, getMobileLoginParam());
    }

    public String getSuccessUrl() {
        return super.getSuccessUrl();
    }

    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {
        String username = getUsername(request);
        String password = getPassword(request);
        if (password == null) {
            password = "";
        }
        boolean rememberMe = isRememberMe(request);
        String host = IpUtils.getIpAddr((HttpServletRequest) request);
        String captcha = getCaptcha(request);
        boolean mobile = isMobileLogin(request);
        return new org.apache.shiro.authc.UsernamePasswordToken(username, password.toCharArray(), rememberMe, host, captcha, mobile);
    }

    @Override
    protected void issueSuccessRedirect(ServletRequest request, ServletResponse response) throws Exception {
        UserRealm.Principal p = UserUtils.getPrincipal();
        UserUtils.clearCache();
        if (p != null && !p.isMobileLogin()) {
            LoginLogUtils.recordSuccessLoginLog(p.getUsername(), "登陆成功");
            WebUtils.issueRedirect(request, response, getSuccessUrl(), null, true);
        }
    }

    /**
     * 真正登录的方法
     */
    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        String msg = "登录成功！";
        try {
            AuthenticationToken token = createToken(request, response);
            if (token != null) {
                Subject subject = getSubject(request, response);
                subject.login(token);
            }
        } catch (UnknownAccountException e) {
            e.printStackTrace();
            msg = "账号不存在！";
        } catch (LockedAccountException e) {
            e.printStackTrace();
            msg = "账号被锁定！";
        } catch (DisabledAccountException e) {
            e.printStackTrace();
            msg = "账号被禁用！";
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            msg = "凭证/密码错误！";
        } catch (ExpiredCredentialsException e) {
            e.printStackTrace();
            msg = "凭证/密码过期！";
        } catch (ExcessiveAttemptsException e) {
            e.printStackTrace();
            msg = "登录失败次数过多！";
        } catch (RepeatAuthenticationException e) {
            e.printStackTrace();
            msg = "验证码错误！";
        }
        request.setAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_ERROR_PARAM, msg);
        return true;
    }

    /**
     * 登录失败调用事件
     */
    @Override
    protected boolean onLoginFailure(AuthenticationToken token, AuthenticationException e, ServletRequest request,
                                     ServletResponse response) {
        super.onLoginFailure(token, e, request, response);
        org.apache.shiro.authc.UsernamePasswordToken authcToken = (UsernamePasswordToken) token;
        if (!authcToken.isMobileLogin()) {
            String className = e.getClass().getName(), message = "";
            if (IncorrectCredentialsException.class.getName().equals(className)
                    || UnknownAccountException.class.getName().equals(className)) {
                message = "用户或密码错误, 请重试.";
            } else if (RepeatAuthenticationException.class.getName().equals(className)) {
                message = "请勿重复提交认证.";
            } else if (ExcessiveAttemptsException.class.getName().equals(className)) {
                message = "请勿重复提交认证,请半小时之后登录";
            } else if (StringUtils.isNoneBlank(e.getMessage())) {
                message = e.getMessage();
            } else {
                message = "系统出现点问题，请稍后再试！";
                e.printStackTrace(); // 输出到控制台
            }
            LoginLogUtils.recordFailLoginLog(authcToken.getUsername(), message);
            request.setAttribute(getFailureKeyAttribute(), className);
            request.setAttribute(getMessageErrorParam(), message);
            return true;
        } else {
            return false;
        }
    }

}