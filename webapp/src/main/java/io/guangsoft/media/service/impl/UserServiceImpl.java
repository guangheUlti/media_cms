package io.guangsoft.media.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.guangsoft.common.utils.StringUtils;
import io.guangsoft.media.dao.UserMapper;
import io.guangsoft.media.entity.User;
import io.guangsoft.media.entity.UserOrganization;
import io.guangsoft.media.entity.UserRole;
import io.guangsoft.media.service.IUserOrganizationService;
import io.guangsoft.media.service.IUserRoleService;
import io.guangsoft.media.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Collection;

@Transactional
@Service("userService")
public class UserServiceImpl extends CommonServiceImpl<UserMapper, User> implements IUserService {
	@Autowired
	PasswordService passwordService;
	@Autowired
	private IUserOrganizationService userOrganizationService;
	@Autowired
	private IUserRoleService userRoleService;

	@Override
	public void changePassword(String userid, String newPassword) {
		User user = super.getById(userid);
		if (user != null) {
			user.setPassword(newPassword);
			passwordService.encryptPassword(user);
		}
		super.saveOrUpdate(user);
	}

	@Override
	public User findByUsername(String username) {
		if (StringUtils.isEmpty(username)) {
			return null;
		}
		return super.getOne(new QueryWrapper<User>().eq("username", username));
	}

	@Override
	public User findByEmail(String email) {
		if (StringUtils.isEmpty(email)) {
			return null;
		}
		return super.getOne(new QueryWrapper<User>().eq("email", email));
	}

	@Override
	public User findByPhone(String phone) {
		if (StringUtils.isEmpty(phone)) {
			return null;
		}
		return super.getOne(new QueryWrapper<User>().eq("phone", phone));
	}

	@Override
	public boolean save(User user) {
		passwordService.encryptPassword(user);
		return super.save(user);
	}

	@Override
	public boolean removeById(Serializable id) {
		// 删除角色关联
		userRoleService.remove(new QueryWrapper<UserRole>().eq("userId", id));
		// 删除部门关联
		userOrganizationService.remove(new QueryWrapper<UserOrganization>().eq("userId", id));
		return super.removeById(id);
	}

	@Override
	public boolean removeByIds(Collection<? extends Serializable> idList) {
		for (Object id : idList) {
			this.removeById((Serializable) id);
		}
		return true;
	}
}
