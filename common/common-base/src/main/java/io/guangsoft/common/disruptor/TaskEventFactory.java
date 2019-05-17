package io.guangsoft.common.disruptor;

import com.lmax.disruptor.EventFactory;

/**
 */
public class TaskEventFactory implements EventFactory<TaskEvent> {
	public TaskEvent newInstance() {
		return new TaskEvent();
	}
}