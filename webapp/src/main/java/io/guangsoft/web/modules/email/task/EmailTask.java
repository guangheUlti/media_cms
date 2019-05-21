package io.guangsoft.web.modules.email.task;

import org.springframework.stereotype.Component;

/**
 */
@Component("emailTask")
public class EmailTask {

    public void run(){
        System.out.println("邮件发送任务！");
    }
}
