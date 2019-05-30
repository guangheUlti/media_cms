package io.guangsoft.web.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import io.guangsoft.common.mvc.controller.BaseController;
import io.guangsoft.web.security.shiro.credential.RetryLimitHashedCredentialsMatcher;
import io.guangsoft.web.security.shiro.filter.authc.FormAuthenticationFilter;
import io.guangsoft.web.security.shiro.realm.UserRealm;
import io.guangsoft.web.utils.LoginLogUtils;
import io.guangsoft.web.utils.UserUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("login")
public class LoginController extends BaseController {

    @Autowired
    private RetryLimitHashedCredentialsMatcher retryLimitHashedCredentialsMatcher;

    @RequestMapping("")
    public String login() {
        UserRealm.Principal principal = UserUtils.getPrincipal();
        //判断用户是否已登录
        if (principal != null && !principal.isMobileLogin()) {
            return "redirect:/index";
        }
        return "/static/login.html";
    }

    @ResponseBody
    @RequestMapping(value = "login")
    public JSONObject login(HttpServletRequest request) {
        JSONObject result = new JSONObject();
        //经过了登录过滤器的校验，如果已经登录，则跳转到首页
        UserRealm.Principal principal = UserUtils.getPrincipal();
        if (principal != null && !principal.isMobileLogin()) {
            result.put("code", 0);
            result.put("msg", "登录成功！");
        } else {
            String errorMsg = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_ERROR_PARAM);
            result.put("code", -1);
            result.put("msg", "登录失败：" + errorMsg);
        }
        return result;
    }

    /**
     * 手动注销
     */
    @ResponseBody
    @RequestMapping("/logout")
    public JSONObject logout() {
        JSONObject result = new JSONObject();
        result.put("code", 0);
        result.put("msg", "注销成功！");
        try {
            Subject subject = SecurityUtils.getSubject();
            if (subject != null && subject.isAuthenticated()) {
                LoginLogUtils.recordLogoutLoginLog(UserUtils.getUser().getUsername(), "退出成功");
                subject.logout();
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.put("code", -1);
            result.put("mag", e.getMessage());
        }
        return result;
    }

}
