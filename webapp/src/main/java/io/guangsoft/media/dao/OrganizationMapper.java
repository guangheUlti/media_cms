package io.guangsoft.media.dao;

import java.util.List;

import io.guangsoft.common.crm.mapper.BaseTreeMapper;
import io.guangsoft.web.modules.sys.entity.Organization;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrganizationMapper extends BaseTreeMapper<Organization> {
	
	/**
	 * @param userId
	 * @return
	 * @return: List<Organization>
	 */
	List<Organization> findListByUserId(String userId);
}