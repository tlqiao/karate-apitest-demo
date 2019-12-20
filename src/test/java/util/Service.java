package util;

import static java.lang.Thread.sleep;
public class Service {
    public void defaultWait(int i) throws InterruptedException {
        sleep(1000 * i);
        System.out.println("wait " + i + " seconds");
    }

    public String returnHello(String name) {
        return "Hello " + name;
    }
}

