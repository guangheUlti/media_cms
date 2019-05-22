package io.guangsoft.web.modules.task.service.impl;

import io.guangsoft.web.modules.task.entity.ScheduleJobLog;
import io.guangsoft.web.modules.task.mapper.ScheduleJobLogMapper;
import io.guangsoft.web.modules.task.service.IScheduleJobLogService;
import io.guangsoft.common.crm.service.impl.CommonServiceImpl;
import io.guangsoft.common.quartz.callback.QuartzExecuteCallback;
import io.guangsoft.common.quartz.data.ScheduleJob;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Transactional
@Service("schedulejoblogService")
public class ScheduleJobLogServiceImpl
        extends CommonServiceImpl<ScheduleJobLogMapper,ScheduleJobLog>
        implements  IScheduleJobLogService,QuartzExecuteCallback{

    @Override
    public void onStart(ScheduleJob scheduleJob) {
        //ScheduleJobLog scheduleJobLog = newJobLog(scheduleJob);
        //scheduleJobLog.setJobMessage(scheduleJob.getJobName() + "运行开始!");
        //scheduleJobLog.setStatus(ScheduleJobLog.SCHEDULE_JOB_LOG_RUN_NOMAL);
        //insert(scheduleJobLog);
    }

    @Override
    public void onSuccess(ScheduleJob scheduleJob, String message) {
        ScheduleJobLog scheduleJobLog = newJobLog(scheduleJob);
        scheduleJobLog.setJobMessage(message);
        scheduleJobLog.setStatus(ScheduleJobLog.SCHEDULE_JOB_LOG_RUN_SUCCESS);
        insert(scheduleJobLog);
    }

    @Override
    public void onFailure(ScheduleJob scheduleJob, Exception e, String message) {
        ScheduleJobLog scheduleJobLog = newJobLog(scheduleJob);
        scheduleJobLog.setJobMessage(message);
        scheduleJobLog.setStatus(ScheduleJobLog.SCHEDULE_JOB_LOG_RUN_FAIL);
        scheduleJobLog.setExceptionInfo(e.getMessage());
        insert(scheduleJobLog);
    }

    private ScheduleJobLog newJobLog(ScheduleJob scheduleJob){
        ScheduleJobLog scheduleJobLog = new ScheduleJobLog();
        scheduleJobLog.setJobName(scheduleJob.getJobName());
        scheduleJobLog.setJobGroup(scheduleJob.getJobGroup());
        scheduleJobLog.setMethodName(scheduleJob.getMethodName());
        scheduleJobLog.setMethodParams(scheduleJob.getMethodParams());
        scheduleJobLog.setCreateTime(new Date());
        return scheduleJobLog;
    }
}