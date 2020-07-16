package io.guangsoft.media.service;

import io.guangsoft.media.entity.Organization;

import java.util.List;

public interface IOrganizationService extends ICommonService<Organization> {
	/**
	 * 通过用户ID查找角色
	 */
	public List<Organization> findListByUserId(String userid);
}
