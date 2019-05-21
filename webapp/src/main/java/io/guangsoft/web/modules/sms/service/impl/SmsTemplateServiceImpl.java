package io.guangsoft.web.modules.sms.service.impl;

import io.guangsoft.web.modules.sms.entity.SmsTemplate;
import io.guangsoft.web.modules.sms.mapper.SmsTemplateMapper;
import io.guangsoft.web.modules.sms.service.ISmsTemplateService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("smstemplateService")
public class SmsTemplateServiceImpl  extends CommonServiceImpl<SmsTemplateMapper,SmsTemplate> implements  ISmsTemplateService {

}