package io.guangsoft.common.disruptor;

import com.lmax.disruptor.WorkHandler;

/**
 */
public class TaskHandler implements WorkHandler<TaskEvent> {

	@Override
	public void onEvent(TaskEvent event) throws Exception {
		//运行任务
		event.getTask().run();
	}

}