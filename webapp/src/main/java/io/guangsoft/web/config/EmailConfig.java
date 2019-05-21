package io.guangsoft.web.config;

import io.guangsoft.web.modules.email.dao.EmailDaoImpl;
import io.guangsoft.common.email.disruptor.EmailDao;
import io.guangsoft.common.email.disruptor.EmailHelper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 */
@Configuration
public class EmailConfig {

    @Bean
    public EmailDao emailDao(){
        EmailDao emailDao=  new EmailDaoImpl();
        return emailDao;
    }

    @Bean
    public EmailHelper emailHelper(EmailDao emailDao){
        EmailHelper emailHelper=  new EmailHelper();
        emailHelper.setHandlerCount(1);
        emailHelper.setBufferSize(1024);
        emailHelper.setEmailDao(emailDao);
        return emailHelper;
    }

}
