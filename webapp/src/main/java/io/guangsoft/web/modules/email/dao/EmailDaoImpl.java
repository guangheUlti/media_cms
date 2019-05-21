package io.guangsoft.web.modules.email.dao;

import io.guangsoft.web.modules.email.entity.EmailSendLog;
import io.guangsoft.web.modules.email.service.IEmailSendLogService;
import io.guangsoft.common.email.data.EmailResult;
import io.guangsoft.common.email.disruptor.EmailDao;
import io.guangsoft.common.email.disruptor.EmailData;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 */
public class EmailDaoImpl implements EmailDao {

    @Autowired
    private IEmailSendLogService emailSendLogService;

    @Override
    public void doResult(String eventId, EmailData emailData, EmailResult smsResult) {
        try {
            EmailSendLog sendLog = emailSendLogService.selectById(eventId);
            sendLog.setMsg(smsResult.getMsg());
            if (smsResult.isSuccess()) {
                sendLog.setStatus(EmailSendLog.EMAIL_SEND_STATUS_SUCCESS);
            } else {
                sendLog.setStatus(EmailSendLog.EMAIL_SEND_STATUS_FAIL);
            }
            sendLog.setResponseDate(new Date());
            emailSendLogService.insertOrUpdate(sendLog);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}