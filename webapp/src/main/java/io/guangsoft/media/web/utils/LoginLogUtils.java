package io.guangsoft.media.web.utils;

import io.guangsoft.media.web.modules.sys.entity.LoginLog;
import io.guangsoft.media.web.modules.sys.service.ILoginLogService;
import io.guangsoft.web.modules.sys.entity.LoginLog;
import io.guangsoft.web.modules.sys.service.ILoginLogService;
import io.guangsoft.common.disruptor.Task;
import io.guangsoft.common.disruptor.TaskHelper;
import io.guangsoft.common.utils.AddressUtils;
import io.guangsoft.common.utils.IpUtils;
import io.guangsoft.common.utils.ServletUtils;
import io.guangsoft.common.utils.SpringContextHolder;
import eu.bitwalker.useragentutils.UserAgent;

import java.util.Date;

public class LoginLogUtils {

    /**
     * 登录成功
     */
    public static final String LOGIN_SUCCESS = "1";

    /**
     * 注销
     */
    public static final String LOGOUT = "0";

    /**
     * 登录失败
     */
    public static final String LOGIN_FAIL = "-1";

    /**
     * 记录登陆成功日志
     *
     * @param username 用户名
     * @param message  消息
     */
    public static void recordSuccessLoginLog(String username, String message) {
        recordLoginLog(username, LoginLogUtils.LOGIN_SUCCESS, message);
    }

    /**
     * 记录登陆日志
     *
     * @param username 用户名
     * @param message  消息
     */
    public static void recordFailLoginLog(String username, String message) {
        recordLoginLog(username, LoginLogUtils.LOGIN_FAIL, message);
    }

    /**
     * 记录退出日志
     *
     * @param username 用户名
     * @param message  消息
     */
    public static void recordLogoutLoginLog(String username, String message) {
        recordLoginLog(username, LoginLogUtils.LOGOUT, message);
    }

    /**
     * 记录登陆日志
     *
     * @param username 用户名
     * @param status   状态
     * @param message  消息
     */
    public static void recordLoginLog(String username, String status, String message) {
        final UserAgent userAgent = UserAgent.parseUserAgentString(ServletUtils.getRequest().getHeader("User-Agent"));
        final String ip = IpUtils.getIpAddr(ServletUtils.getRequest());
        //创建异步任务
        Task task = new Task() {
            @Override
            public void run() {
                // 获取客户端操作系统
                String os = userAgent.getOperatingSystem().getName();
                // 获取客户端浏览器
                String browser = userAgent.getBrowser().getName();
                // 封装对象
                LoginLog loginLog = new LoginLog();
                loginLog.setLoginName(username);
                loginLog.setLoginIp(ip);
                loginLog.setLoginLocation(AddressUtils.getRealAddressByIP(ip));
                loginLog.setBrowser(browser);
                loginLog.setOs(os);
                loginLog.setMsg(message);
                loginLog.setStatus(status);
                loginLog.setLoginTime(new Date());
                SpringContextHolder.getBean(ILoginLogService.class).insert(loginLog);
            }
        };
        // 运行任务
        SpringContextHolder.getBean(TaskHelper.class).doTask(task);
    }
}
