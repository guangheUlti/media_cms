package io.guangsoft.media.service.impl;

import io.guangsoft.media.dao.OrganizationMapper;
import io.guangsoft.media.entity.Organization;
import io.guangsoft.media.service.IOrganizationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("organizationService")
public class OrganizationServiceImpl extends CommonServiceImpl<OrganizationMapper, Organization> implements IOrganizationService{

	@Override
	public List<Organization> findListByUserId(String userid) {
		return baseMapper.findListByUserId(userid);
	}

}
