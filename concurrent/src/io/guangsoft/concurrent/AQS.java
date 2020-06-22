package io.guangsoft.concurrent;

import java.util.concurrent.atomic.AtomicInteger;

public class AQS {

    static AtomicInteger val = new AtomicInteger(0);

    public static void main(String args[]) {
        //创建十个线程，执行简单的自加操作
        for(int i = 0; i < 10; i++) {
            new Thread(() -> {
                for(int j = 0; j < 1000; j++) {
                    val.getAndIncrement();
                }
            }).start();
        }
        //保证之前启动的全部线程执行完毕
        while(Thread.activeCount() > 1) {
            System.out.println(Thread.activeCount());
            Thread.yield();
        }
        System.out.println(val);
    }
}
