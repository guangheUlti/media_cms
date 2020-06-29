package io.guangsoft.media.service.impl;

import io.guangsoft.media.dao.UserRoleMapper;
import io.guangsoft.media.entity.UserRole;
import io.guangsoft.media.service.IUserRoleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl extends CommonServiceImpl<UserRoleMapper,UserRole> implements IUserRoleService {

}
