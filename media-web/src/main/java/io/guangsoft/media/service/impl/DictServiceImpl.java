package io.guangsoft.media.service.impl;

import io.guangsoft.media.dao.DictMapper;
import io.guangsoft.media.entity.Dict;
import io.guangsoft.media.service.IDictService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("dictService")
public class DictServiceImpl extends CommonServiceImpl<DictMapper, Dict> implements IDictService {

	@Override
	public List<Dict> selectDictList() {
		return baseMapper.selectDictList();
	}

}
