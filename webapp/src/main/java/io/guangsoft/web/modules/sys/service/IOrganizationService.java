package io.guangsoft.web.modules.sys.service;

import java.util.List;

import io.guangsoft.common.crm.service.ITreeCommonService;
import io.guangsoft.web.modules.sys.entity.Organization;

/**
 * @date 2014-12-20 21:33:51
 */
public interface IOrganizationService extends ITreeCommonService<Organization, String> {
	/**
	 * 通过用户ID查找角色
	 */
	public List<Organization> findListByUserId(String userid);
}
