package examples.demo;

import com.intuit.karate.junit5.Karate;

public class CallJavaFunctionRunner {
    @Karate.Test
    Karate testDemo() {
        return new Karate().feature("callJavaFunction").relativeTo(getClass());
    }
}
