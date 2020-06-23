package io.guangsoft.media.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.media.entity.UserRole;
import io.guangsoft.media.dao.UserRoleMapper;
import io.guangsoft.media.service.IUserRoleService;
import io.guangsoft.web.modules.sys.entity.UserRole;
import io.guangsoft.web.modules.sys.mapper.UserRoleMapper;
import io.guangsoft.web.modules.sys.service.IUserRoleService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl extends CommonServiceImpl<UserRoleMapper,UserRole> implements IUserRoleService {

}
