package io.guangsoft.web.config;

import io.guangsoft.web.modules.sms.dao.SmsDaoImpl;
import io.guangsoft.common.sms.client.AliyunSmsClient;
import io.guangsoft.common.sms.client.ISmsClient;
import io.guangsoft.common.sms.config.SmsConfigProperties;
import io.guangsoft.common.sms.disruptor.SmsDao;
import io.guangsoft.common.sms.disruptor.SmsHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 */
@Configuration
@EnableConfigurationProperties({SmsConfigProperties.class})
public class SmsConfig {
    @Autowired
    private SmsConfigProperties smsConfigProperties;

    @Bean
    public SmsDao smsDao(){
        SmsDao smsDao=  new SmsDaoImpl();
        return smsDao;
    }
    @Bean
    public ISmsClient smsClient(){
        ISmsClient smsClient=  new AliyunSmsClient();
        smsClient.init(smsConfigProperties);
        return smsClient;
    }

    @Bean
    public SmsHelper smsHelper(ISmsClient smsClient,SmsDao smsDao){
        SmsHelper smsHelper=  new SmsHelper();
        smsHelper.setHandlerCount(1);
        smsHelper.setBufferSize(1024);
        smsHelper.setSmsClient(smsClient);
        smsHelper.setSmsDao(smsDao);
        return smsHelper;
    }

}
