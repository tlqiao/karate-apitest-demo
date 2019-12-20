package examples.demo;
import com.intuit.karate.junit5.Karate;

public class DemoRunner {
    @Karate.Test
    Karate testDemo() {
        return new Karate().feature("demo").relativeTo(getClass());
    }
}
