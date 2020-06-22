package io.guangsoft.media.web.modules.task.utils;


import io.guangsoft.media.web.modules.task.entity.ScheduleJob;
import io.guangsoft.web.modules.task.entity.ScheduleJob;

public class ScheduleJobUtils {
     public static io.guangsoft.common.quartz.data.ScheduleJob entityToData(ScheduleJob scheduleJobEntity){
    	 io.guangsoft.common.quartz.data.ScheduleJob scheduleJob=new io.guangsoft.common.quartz.data.ScheduleJob();
		 scheduleJob.setJobId(scheduleJobEntity.getId());
    	 scheduleJob.setCronExpression(scheduleJobEntity.getCronExpression());
    	 scheduleJob.setDescription(scheduleJobEntity.getDescription());
    	 scheduleJob.setIsConcurrent(scheduleJobEntity.getIsConcurrent());
    	 scheduleJob.setJobName(scheduleJobEntity.getJobName());
		 scheduleJob.setLoadWay(scheduleJobEntity.getLoadWay());
    	 scheduleJob.setJobGroup(scheduleJobEntity.getJobGroup());
    	 scheduleJob.setJobStatus(scheduleJobEntity.getJobStatus());
    	 scheduleJob.setMethodName(scheduleJobEntity.getMethodName());
		 scheduleJob.setMethodParams(scheduleJobEntity.getMethodParams());
		 scheduleJob.setMisfirePolicy(scheduleJobEntity.getMisfirePolicy());
    	 scheduleJob.setExecuteClass(scheduleJobEntity.getExecuteClass());
    	 return scheduleJob;
     }
}
