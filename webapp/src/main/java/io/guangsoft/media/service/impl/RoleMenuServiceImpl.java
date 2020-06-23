package io.guangsoft.media.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.media.entity.RoleMenu;
import io.guangsoft.media.dao.RoleMenuMapper;
import io.guangsoft.media.service.IRoleMenuService;
import io.guangsoft.web.modules.sys.entity.RoleMenu;
import io.guangsoft.web.modules.sys.mapper.RoleMenuMapper;
import io.guangsoft.web.modules.sys.service.IRoleMenuService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("roleMenuService")
public class RoleMenuServiceImpl extends CommonServiceImpl<RoleMenuMapper,RoleMenu> implements IRoleMenuService {

}
