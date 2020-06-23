package io.guangsoft.media.service.impl;

import io.guangsoft.web.modules.sys.entity.OperationLog;
import io.guangsoft.web.modules.sys.mapper.OperationLogMapper;
import io.guangsoft.web.modules.sys.service.IOperationLogService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("operationlogService")
public class OperationLogServiceImpl  extends CommonServiceImpl<OperationLogMapper,OperationLog> implements  IOperationLogService {

}