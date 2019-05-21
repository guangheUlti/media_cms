package io.guangsoft.web.modules.email.service.impl;

import io.guangsoft.web.modules.email.entity.EmailTemplate;
import io.guangsoft.web.modules.email.mapper.EmailTemplateMapper;
import io.guangsoft.web.modules.email.service.IEmailTemplateService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
*/
@Transactional
@Service("emailtemplateService")
public class EmailTemplateServiceImpl  extends CommonServiceImpl<EmailTemplateMapper,EmailTemplate> implements  IEmailTemplateService {

}