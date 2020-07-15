package io.guangsoft.media.dao;


import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.guangsoft.media.entity.Role;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RoleMapper extends BaseMapper<Role> {

	List<Role> findRoleByUserId(String userId);
}
