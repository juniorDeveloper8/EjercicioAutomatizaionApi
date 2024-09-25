package api.feature;

import com.intuit.karate.junit5.Karate;

public class RunnerTest {
    @Karate.Test
    Karate testSignup() {
        return Karate.run("signup").relativeTo(getClass());
    }

    @Karate.Test
    Karate testLogin() {
        return Karate.run("login").relativeTo(getClass());
    }

}
