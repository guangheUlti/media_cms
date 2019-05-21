package io.guangsoft.web.modules.sms.task;

import org.springframework.stereotype.Component;

/**
 */
@Component("smsTask")
public class SmsTask {

    public void run(){
        System.out.println("SmsTask 运行啦！");
    }
}
