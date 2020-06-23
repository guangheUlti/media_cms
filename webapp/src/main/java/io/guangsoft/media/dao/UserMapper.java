package io.guangsoft.media.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.guangsoft.media.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
	
}