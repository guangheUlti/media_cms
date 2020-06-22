package io.guangsoft.media.web.modules.sys.service;

import java.util.List;

import io.guangsoft.common.crm.service.ICommonService;
import io.guangsoft.web.modules.sys.entity.Role;

/**
 * @date 2014-12-20 21:33:15
 */
public interface IRoleService extends ICommonService<Role> {
	/**
	 * 通过用户ID查找角色
	 */
	public List<Role> findListByUserId(String userid);
}
