package io.guangsoft.concurrent;

public class Volatile {

    static volatile int val = 0;

    public static void main(String args[]) {
        //创建十个线程，执行简单的自加操作
        for(int i = 0; i < 10; i++) {
            new Thread(() -> {
                synchronized ((Object)val) {
                    for(int j = 0; j < 1000; j++) {
                        val++;
                    }
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
