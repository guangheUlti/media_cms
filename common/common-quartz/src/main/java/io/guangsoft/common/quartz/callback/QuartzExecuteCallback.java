package io.guangsoft.common.quartz.callback;

import io.guangsoft.common.quartz.data.ScheduleJob;

/**
 */
public interface QuartzExecuteCallback {

    /**
     * 执行开始
     * @param scheduleJob
     */
    void onStart(ScheduleJob scheduleJob);
    /**
     * 当执行成功
     * @param scheduleJob
     * @param message
     */
    void onSuccess(ScheduleJob scheduleJob, String message);

    /**
     * 执行失败
     * @param scheduleJob
     * @param e
     * @param message
     */
    void onFailure(ScheduleJob scheduleJob, Exception e, String message);
}
