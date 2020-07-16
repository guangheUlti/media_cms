package io.guangsoft.media.service.impl;

import io.guangsoft.common.crm.service.impl.TreeCommonServiceImpl;
import io.guangsoft.media.entity.Organization;
import io.guangsoft.media.dao.OrganizationMapper;
import io.guangsoft.media.service.IOrganizationService;
import io.guangsoft.web.modules.sys.entity.Organization;
import io.guangsoft.web.modules.sys.mapper.OrganizationMapper;
import io.guangsoft.web.modules.sys.service.IOrganizationService;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("organizationService")
public class OrganizationServiceImpl extends TreeCommonServiceImpl<OrganizationMapper, Organization, String>
		implements IOrganizationService {

	@Override
	public List<Organization> findListByUserId(String userid) {
		return baseMapper.findListByUserId(userid);
	}

}
