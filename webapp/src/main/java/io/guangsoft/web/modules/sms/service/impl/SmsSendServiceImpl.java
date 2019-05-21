package io.guangsoft.web.modules.sms.service.impl;

import io.guangsoft.web.modules.sms.entity.SmsSendLog;
import io.guangsoft.web.modules.sms.entity.SmsTemplate;
import io.guangsoft.web.modules.sms.service.ISmsSendLogService;
import io.guangsoft.web.modules.sms.service.ISmsSendService;
import io.guangsoft.web.modules.sms.service.ISmsTemplateService;
import io.guangsoft.common.crm.wrapper.EntityWrapper;
import io.guangsoft.common.sms.disruptor.SmsHelper;
import io.guangsoft.common.utils.mapper.JsonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 */
@Service("smsSendService")
public class SmsSendServiceImpl implements ISmsSendService {

	@Autowired
	private ISmsTemplateService smsTemplateService;
	@Autowired
	private ISmsSendLogService smsSendLogService;
	@Autowired
	private SmsHelper smsHelper; //自动注入的Bean

	@Override
	public void send(String phone, String code, Map<String, Object> datas) {
		String[] phones = { phone };
		send(phones,code,datas);
	}

	@Override
	public void send(String[] phones, String code, Map<String, Object> datas) {
		SmsTemplate template = smsTemplateService.selectOne(new EntityWrapper<SmsTemplate>().eq("code", code));
		if (datas == null) {
			datas = new HashMap<>();
		}
		if (template == null){
			return ;
		}
		for (String phone: phones) {
			SmsSendLog smsSendLog = new SmsSendLog();
			smsSendLog.setPhone(phone);
			smsSendLog.setTemplateName(template.getName());
			smsSendLog.setMsg("发送成功");
			smsSendLog.setSendCode(code);
			smsSendLog.setResponseDate(new Date());
			smsSendLog.setSendData(JsonMapper.toJsonString(datas));
			smsSendLog.setStatus(SmsSendLog.SMS_SEND_STATUS_IN);
			smsSendLog.setTryNum(0);
			smsSendLog.setDelFlag("0");
			smsSendLogService.insert(smsSendLog);
			// 发送邮件,这里以后需要判断类型
			smsHelper.sendAsyncSms(smsSendLog.getId(),phone,template.getTemplateContent(),null,datas);
		}
	}
}