package io.guangsoft.web.modules.sms.service.impl;

import io.guangsoft.web.modules.sms.entity.SmsSendLog;
import io.guangsoft.web.modules.sms.mapper.SmsSendLogMapper;
import io.guangsoft.web.modules.sms.service.ISmsSendLogService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("smssendlogService")
public class SmsSendLogServiceImpl  extends CommonServiceImpl<SmsSendLogMapper,SmsSendLog> implements  ISmsSendLogService {

}