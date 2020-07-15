package io.guangsoft.media.dao;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.guangsoft.media.entity.Dict;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DictMapper extends BaseMapper<Dict> {
	List<Dict> selectDictList();
}