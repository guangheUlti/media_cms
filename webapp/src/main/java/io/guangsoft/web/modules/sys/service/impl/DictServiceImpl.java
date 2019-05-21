package io.guangsoft.web.modules.sys.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.web.modules.sys.entity.Dict;
import io.guangsoft.web.modules.sys.mapper.DictMapper;
import io.guangsoft.web.modules.sys.service.IDictService;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("dictService")
public class DictServiceImpl extends CommonServiceImpl<DictMapper, Dict> implements IDictService {

	@Override
	public List<Dict> selectDictList() {
		return baseMapper.selectDictList();
	}

}
