package io.guangsoft.web.tags;

import javax.servlet.http.Cookie;
import io.guangsoft.common.utils.ServletUtils;
import io.guangsoft.common.utils.SpringContextHolder;
import io.guangsoft.common.utils.StringUtils;
import org.springframework.core.env.Environment;

/**
 */
public class SysFunctions {

	/**
	 * 获得后台地址
	 * @return
	 * @return: String
	 */
	public static String getAdminUrlPrefix() {
		Environment env= SpringContextHolder.getBean(Environment.class);
		String adminUrlPrefix = env.getProperty("jeeweb.admin.url.prefix");
		return adminUrlPrefix;
	}

	/**
	 * 加载风格
	 * @return
	 * @return: String
	 */
	public static String getTheme() {
		// 默认风格
		Environment env= SpringContextHolder.getBean(Environment.class);
		String theme = env.getProperty("jeeweb.admin.default.theme");
		if (StringUtils.isEmpty(theme)) {
			theme = "uadmin";
		}
		// cookies配置中的模版
		Cookie[] cookies = ServletUtils.getRequest().getCookies();
		for (Cookie cookie : cookies) {
			if (cookie == null || StringUtils.isEmpty(cookie.getName())) {
				continue;
			}
			if (cookie.getName().equalsIgnoreCase("theme")) {
				theme = cookie.getValue();
			}
		}
		return theme;
	}
}
