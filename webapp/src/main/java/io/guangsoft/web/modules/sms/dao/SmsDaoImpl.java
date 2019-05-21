package io.guangsoft.web.modules.sms.dao;

import io.guangsoft.web.modules.sms.entity.SmsSendLog;
import io.guangsoft.web.modules.sms.service.ISmsSendLogService;
import io.guangsoft.common.sms.data.SmsResult;
import io.guangsoft.common.sms.disruptor.SmsDao;
import io.guangsoft.common.sms.disruptor.SmsData;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 */
public class SmsDaoImpl implements SmsDao {

    @Autowired
    private ISmsSendLogService smsSendLogService;

    @Override
    public void doResult(String eventId, SmsData smsData, SmsResult smsResult) {
        try {
            SmsSendLog sendLog = smsSendLogService.selectById(eventId);
            sendLog.setMsg(smsResult.getMsg());
            if (smsResult.isSuccess()) {
                sendLog.setStatus(SmsSendLog.SMS_SEND_STATUS_SUCCESS);
            } else {
                sendLog.setStatus(SmsSendLog.SMS_SEND_STATUS_FAIL);
            }
            sendLog.setSmsid(smsResult.getSmsid());
            sendLog.setResponseDate(new Date());
            smsSendLogService.insertOrUpdate(sendLog);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}