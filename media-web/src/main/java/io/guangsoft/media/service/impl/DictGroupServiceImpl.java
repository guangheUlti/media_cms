package io.guangsoft.media.service.impl;

import io.guangsoft.media.dao.DictGroupMapper;
import io.guangsoft.media.entity.DictGroup;
import io.guangsoft.media.service.IDictGroupService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("dictGroupService")
public class DictGroupServiceImpl extends CommonServiceImpl<DictGroupMapper,DictGroup> implements IDictGroupService {
}
