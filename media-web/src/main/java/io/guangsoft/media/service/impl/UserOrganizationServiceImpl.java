package io.guangsoft.media.service.impl;

import io.guangsoft.media.dao.UserOrganizationMapper;
import io.guangsoft.media.entity.UserOrganization;
import io.guangsoft.media.service.IUserOrganizationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("userOrganizationService")
public class UserOrganizationServiceImpl extends CommonServiceImpl<UserOrganizationMapper, UserOrganization>
		implements IUserOrganizationService {

}
