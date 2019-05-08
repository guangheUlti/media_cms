package io.guangsoft.common.disruptor;

/**
 * 
 *
 * @description: 内容传递
 * @version V1.0
 */
public class TaskEvent {
   private Task task;

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }
}