package io.guangsoft.media.service;

import io.guangsoft.media.entity.Role;

import java.util.List;

public interface IRoleService extends ICommonService<Role> {
	/**
	 * 通过用户ID查找角色
	 */
	public List<Role> findListByUserId(String userid);
}
