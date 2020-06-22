package io.guangsoft.media.web.modules.sys.service;

import io.guangsoft.common.crm.service.ICommonService;
import io.guangsoft.web.modules.sys.entity.User;

/**
 */
public interface IUserService extends ICommonService<User> {
	/**
	 * 修改密码
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(String userid, String newPassword);

	/**
	 * 根据用户名查找用户
	 * @param username
	 * @return
	 */
	public User findByUsername(String username);

	/**
	 * 根据Email查找用户
	 * @param username
	 * @return
	 */
	public User findByEmail(String email);

	/**
	 * 根据Email查找用户
	 * @param username
	 * @return
	 */
	public User findByPhone(String phone);

}
