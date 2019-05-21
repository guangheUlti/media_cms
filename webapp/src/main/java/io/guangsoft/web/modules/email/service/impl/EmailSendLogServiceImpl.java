package io.guangsoft.web.modules.email.service.impl;

import io.guangsoft.web.modules.email.entity.EmailSendLog;
import io.guangsoft.web.modules.email.mapper.EmailSendLogMapper;
import io.guangsoft.web.modules.email.service.IEmailSendLogService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("emailsendlogService")
public class EmailSendLogServiceImpl  extends CommonServiceImpl<EmailSendLogMapper,EmailSendLog> implements  IEmailSendLogService {

}