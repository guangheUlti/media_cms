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
		String adminUrlPrefix = env.getProperty("cms.admin.url.prefix");
		return adminUrlPrefix;
	}

}
