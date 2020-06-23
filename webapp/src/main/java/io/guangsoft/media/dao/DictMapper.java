package io.guangsoft.media.dao;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import io.guangsoft.web.modules.sys.entity.Dict;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DictMapper extends BaseMapper<Dict> {
	List<Dict> selectDictList();
}