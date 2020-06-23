package io.guangsoft.media.dao;

import java.util.List;

import io.guangsoft.media.entity.Organization;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrganizationMapper extends BaseTreeMapper<Organization> {

	List<Organization> findListByUserId(String userId);
}