package io.guangsoft.web.config;

import io.guangsoft.common.disruptor.TaskHelper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 */
@Configuration
public class TaskConfig {

    @Bean
    public TaskHelper taskHelper(){
        TaskHelper taskHelper=  new TaskHelper();
        taskHelper.setHandlerCount(1);
        taskHelper.setBufferSize(1024);
        return taskHelper;
    }

}
