package io.guangsoft.media.web.modules.sys.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.media.web.modules.sys.entity.Role;
import io.guangsoft.media.web.modules.sys.mapper.RoleMapper;
import io.guangsoft.media.web.modules.sys.service.IRoleService;
import io.guangsoft.web.modules.sys.entity.Role;
import io.guangsoft.web.modules.sys.mapper.RoleMapper;
import io.guangsoft.web.modules.sys.service.IRoleService;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("roleService")
public class RoleServiceImpl extends CommonServiceImpl<RoleMapper, Role> implements IRoleService {

	@Override
	public List<Role> findListByUserId(String userid) {
		return baseMapper.findRoleByUserId(userid);
	}

}
