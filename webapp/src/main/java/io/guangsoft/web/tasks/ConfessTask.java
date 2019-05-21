package io.guangsoft.web.tasks;

import org.springframework.stereotype.Component;

@Component("confessTask")
public class ConfessTask {

    public void run(){
        System.out.println("我们好像在哪儿见过，你记得吗？");
    }

}
