package io.guangsoft.common.disruptor;

import com.lmax.disruptor.WorkHandler;

/**
 * 
 *
 * @description: 内容消费者
 * @version V1.0
 */
public class TaskHandler implements WorkHandler<TaskEvent> {

	@Override
	public void onEvent(TaskEvent event) throws Exception {
		//运行任务
		event.getTask().run();
	}

}