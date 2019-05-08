package io.guangsoft.common.disruptor;

import com.lmax.disruptor.EventFactory;

/**
 * 
 *
 * @description: 定义事件工厂
 * @version V1.0
 */
public class TaskEventFactory implements EventFactory<TaskEvent> {
	public TaskEvent newInstance() {
		return new TaskEvent();
	}
}