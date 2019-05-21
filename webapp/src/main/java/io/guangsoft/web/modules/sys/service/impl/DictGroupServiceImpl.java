package io.guangsoft.web.modules.sys.service.impl;

import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.web.modules.sys.entity.DictGroup;
import io.guangsoft.web.modules.sys.mapper.DictGroupMapper;
import io.guangsoft.web.modules.sys.service.IDictGroupService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("dictGroupService")
public class DictGroupServiceImpl extends CommonServiceImpl<DictGroupMapper,DictGroup> implements IDictGroupService {
}
