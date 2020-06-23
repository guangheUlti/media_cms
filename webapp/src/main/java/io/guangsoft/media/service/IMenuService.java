package io.guangsoft.media.service;

import java.util.List;

import io.guangsoft.common.crm.service.ITreeCommonService;
import io.guangsoft.web.modules.sys.entity.Menu;

/**
 * @date 2014-12-20 21:33:32
 */
public interface IMenuService extends ITreeCommonService<Menu, String> {

	/**
	 * 通过用户ID查找菜单
	 * @return
	 */
	List<Menu> findMenuByUserId(String userId);

	/**
	 * 通过角色查找菜单
	 * @return
	 */
	List<Menu> findMenuByRoleId(String roleId);

	/**
	 * 通过用户ID查找菜单
	 * @return
	 */
	List<String> findPermissionByUserId(String userId);

	/**
	 * 通过用户ID查找菜单
	 * @return
	 */
	List<String> findPermissionByRoleId(String roleId);
}
