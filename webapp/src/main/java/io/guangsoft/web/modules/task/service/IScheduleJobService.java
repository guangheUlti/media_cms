package io.guangsoft.web.modules.task.service;


import io.guangsoft.web.modules.task.entity.ScheduleJob;
import io.guangsoft.common.crm.service.ICommonService;
import org.quartz.SchedulerException;

/**
 * @date 2017-05-09 23:22:51
 */
public interface IScheduleJobService extends ICommonService<ScheduleJob> {
	/**
	 * @throws SchedulerException
	 * @return: void
	 */
	void initSchedule();

	/**
	 * 更改状态
	 * @throws SchedulerException
	 */
	void changeStatus(String jobId, String cmd);

	/**
	 * 更改任务 cron表达式
	 * @throws SchedulerException
	 */
	void updateCron(String jobId);

	/**
	 * 执行一次
	 * @throws SchedulerException
	 */
	void runAJobNow(String jobId);

	/**
	 * 刷新任务
	 * @throws SchedulerException
	 */
	void refreshTask();
}
